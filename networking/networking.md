# Networking basics and brushup

## OSI layers mapped to AWS Services.

# OSI Model Mapped to AWS Services

| **OSI Layer**       | **Function**                                             | **AWS Examples**                                                                                                                                                         |
| ------------------- | -------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **7. Application**  | User-facing protocols (HTTP, DNS, SMTP, APIs).           | - Amazon Route 53 (DNS)<br>- API Gateway (API mgmt)<br>- AppSync (GraphQL APIs)<br>- SES (email)<br>- WorkSpaces / AppStream (app delivery)                              |
| **6. Presentation** | Data translation, encryption, compression.               | - AWS Certificate Manager (TLS/SSL)<br>- KMS (encryption keys)<br>- CloudFront (TLS termination, compression)<br>- Elastic Transcoder / MediaConvert (format conversion) |
| **5. Session**      | Session control, authentication, connections.            | - Cognito (auth/session tokens)<br>- IAM / STS (temporary credentials)<br>- App Mesh (service-to-service sessions)<br>- AWS Client VPN (VPN sessions)                    |
| **4. Transport**    | Reliable delivery, segmentation, flow control (TCP/UDP). | - Elastic Load Balancer (NLB)<br>- Global Accelerator (TCP/UDP acceleration)<br>- AWS VPN (UDP-based tunnels)                                                            |
| **3. Network**      | Logical addressing, routing, forwarding (IP).            | - VPC Route Tables<br>- Transit Gateway<br>- VPC Peering / Cloud WAN<br>- Direct Connect                                                                                 |
| **2. Data Link**    | MAC addressing, switching, ARP, error detection.         | - ENI (Elastic Network Interfaces)<br>- VPC Networking (handles ARP, L2 abstractions)<br>- AWS Outposts Networking                                                       |
| **1. Physical**     | Transmission of raw bits (cables, fiber, RF).            | - Direct Connect (fiber links)<br>- AWS Global Infrastructure (data centers, AZ links)<br>- Outposts (edge hardware)                                                     |

# OSI Model vs AWS Services (Visual)

```mermaid
graph TD
    A7["Layer 7: Application<br/>Route 53, API Gateway, AppSync, SES, WorkSpaces"]
    A6["Layer 6: Presentation<br/>ACM, KMS, CloudFront, MediaConvert"]
    A5["Layer 5: Session<br/>Cognito, IAM/STS, App Mesh, Client VPN"]
    A4["Layer 4: Transport<br/>NLB, Global Accelerator, AWS VPN"]
    A3["Layer 3: Network<br/>VPC Route Tables, Transit Gateway, Direct Connect"]
    A2["Layer 2: Data Link<br/>ENI, VPC Networking, Outposts Networking"]
    A1["Layer 1: Physical<br/>Direct Connect, AWS Global Infra, Outposts"]

    A7 --> A6 --> A5 --> A4 --> A3 --> A2 --> A1
```
