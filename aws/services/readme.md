## Direct Connect

#### Why use it in first place?

- Directly links on prem with AWS without using internet routing like a VPN.
- greater throughput and security, stable connection than VPN over internet.
- Charges per port hour and outbound data transfer

#### how does it work?

- refer to below image.

* Customer will be hosting a "customer gateway"
* it will connect to the "customer router" in a "Direct connect DX location". this location is not AWS or customer owned, it could be a 3rd party which is being rented out to AWS for hosting their routers.
* AWS router will be installed in DX location.
* Customer router port to AWS router port connection will be established. This connection is called "Cross connect"
* Traffic will then flow from Customer Gateway -> Customer router -> AWS router -> AWS backbone -> AWS cloud/DC
* AWS Backbone is a special network laid by AWS folks to carry this type of traffic.

![Alt text](/aws/services/images/direct_connect.png)

## VPN

#### How does it work?

- If we want to connect the Private subnet in AWS to the On prem, we can make use of VPN (virtual private network)
- VPN Gateway is installed and connected to the VPN with IP 2.2.2.2 in this case.
- Customer gateway will be installed on the On prem side with an IP of 1.1.1.1 in this case.
- there will be IP sec tunnel open between these 2 entities and they can let the traffic flow.
- We can route the traffic between VPC and On prem using the "static" way of routing i.e. using Routing tables in AWS and adding 192.168.0.0/16 as destination. I personally think that is not good way, we could use dynamic
- Dynamic routing is another where [BGP](https://github.com/maverickdevops/interview_and_core_concepts/blob/main/networking/networking.md#bgp-border-gateway-protocol) is used to share the network details and they can communicate.

* All of this happens over the internet, unlike the "Direct Connect"

  ![Alt text](/aws/services/images/direct_connect.png)

#### VPN Limits

- 1.25 Gbps - max bandwidth per VPN tunnel.
- 140,000 - max packets per second.
- MTU(max transmission unit) - +1400

- we can scale it by using [ECMP](https://github.com/maverickdevops/interview_and_core_concepts/blob/main/networking/networking.md#ecmp-equal-cost-multipath-routing) via multiple VPN tunnels.

## VPC Peering

- 2 or more VPCs cannot talk to each other by itself. this is by design.
- use VPC peering to make them talk.
  - Between VPCs in same region
  - VPCs in different regions.
  - VPCs in different AWS accounts.
- No charge for creating VPC peering.
- but data transfer using the peering between AZs is charged. within same AZ its not charged.
- VPC 1 wants to peer with VPC2, VPC owner will need to raise a peering request. VPC2 owner wil get notified and has to accept the request.
- In order to make 1 and 2 talk to each other, we need to create a routing table.
  - VPC1
    - destination - CIDR of VPC2.
    - target - "peering name"
  - VPC2
    - destination - CIDR of VPC1
    - target - "peering name"

![Alt text](/aws/services/images/vpc-peering.png)
