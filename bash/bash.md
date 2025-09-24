# Bash in EMC

- While in EMC, I worked on remediation report which was heavy toilsome work. Hence had to automate it.
  - Ran the grabs i.e. diagnostic files on all the Windows, HPUX, AIX, ESX and other servers.
  - This would create a logs in zip and tar.gz archive.
  * Upload these logs to the ftp.
  * Auto download these files on another machine when they become available.
  * Cron job set to download from the ftp.
- Few automation in Openstack installation.
  - Services included.
    - Nova - compute
    - Neutron - networking
    - Block storage - Cinder
    - Object storage - Swift
    - Identity - keystone
    - Image service - Glance
    - Dashboard - Horizon
    - Orchestration - Heart
    - Database - trove.
    - Telemetry - Ceilometer
  - Installing all the above on all the hosts was manual. So I created a bash script to install by just dropping the script and running it via ssh.
  - Most of the script was simple

    ```
        #!bin/bash
        sudo apt update && sudo apt upgrade -y
        supo apt install <package> -y
        sudo cp <file1> <file>
        sudo tee <path/file> <<EOF <lines of config>
        EOF
        sudo systemctl restart <service>

    ```
  * ViPR SRM installation.
  * Frontend module. (complex)
  * Installation itself was easy. But creating the connection to the DBs was hard to login and manually update the config files.
  * Backend module. (most complex)
  * Installing the DB instances based on the solution architecture.
  * Collectors (easiest)

# Bash was also used in Cloud formation.

- A huge stack was created for clients. We used AEM (Adobe email marketing something).
- Stored all the packages to install in S3 bucket.
- It was difficult to login to all the EC2 instances and install. Wanted to avoid ssh into the machine as much as we can. Hence used the "UserData" option in Cloudformation.

```
Resources:
    MyEC2Intance:
        Type:
        Properties:
            InstanceType:
            ImageID:
            KeyName:
            SecurityGroupIds:
            SubnetIDs:
            UserData:
                Fn::Base64: |
                    #!/bin/bash
                    set -e # Exit on error

                    #update and install AWS CLI
                    apt update -y
                    apt install -y python unzip
                    pip install --upgrade awscli

                    #Copy packages from the S3 bucket
                    aws S3 cp s3://<bucketname>/ . --recursive --region <bucketregion>

                    #Install the packages
                    apt install <package> -y

                    systemctl restart <>
```
