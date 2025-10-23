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
