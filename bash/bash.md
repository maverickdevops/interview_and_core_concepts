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

# Bash used in IP Masquerade for making the EC2 work as a Gateway between Client and internal EC2s.

```
    UserData:
  Fn::Base64: |
    #!/bin/bash
    set -e

    # Enable IP forwarding
    echo "1" > /proc/sys/net/ipv4/ip_forward

    # Make it persistent across reboots
    if ! grep -q "^net.ipv4.ip_forward=1" /etc/sysctl.conf; then
      echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
    fi
    sysctl -p

    # Define network interfaces
    # eth0 -> public interface
    # eth1 -> private interface (adjust as needed)
    PUBLIC_IF="eth0"
    PRIVATE_IF="eth1"

    # Enable IP Masquerade (NAT)
    iptables -t nat -A POSTROUTING -o $PUBLIC_IF -j MASQUERADE
    iptables -A FORWARD -i $PUBLIC_IF -o $PRIVATE_IF -m state --state RELATED,ESTABLISHED -j ACCEPT
    iptables -A FORWARD -i $PRIVATE_IF -o $PUBLIC_IF -j ACCEPT

    # Save iptables rules to survive reboot (Ubuntu/Debian)
    apt update -y
    apt install -y iptables-persistent
    netfilter-persistent save

    echo "IP Masquerade enabled successfully"


```

- echo 1 > /proc/sys/net/ipv4/ip_forward enables packet forwarding immediately.
- Adding it to /etc/sysctl.conf makes it persistent across reboots.
- iptables rules:
  - POSTROUTING MASQUERADE handles NAT for outbound traffic.
  - FORWARD rules allow traffic from private to public and back.
- iptables-persistent or netfilter-persistent saves rules across reboots.
- Adjust PUBLIC_IF and PRIVATE_IF according to your EC2 network interfaces.
