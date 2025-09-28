# Potential questions

## How would you design a highly available ECS or EC2 deployment for trading platform? (Highly Available ECS/EC2 Deployment)

```mermaid
graph TD
    subgraph Public
        ALB[Application Load Balancer<br/>Cross-AZ, Health Checks]
        IGW[Internet Gateway]
    end

    subgraph Private App Subnets 3 AZs
        EC2_1[EC2 / ECS Tasks AZ1]
        EC2_2[EC2 / ECS Tasks AZ2]
        EC2_3[EC2 / ECS Tasks AZ3]
    end

    subgraph Private Data Subnets 3 AZs
        DB_1[RDS / DynamoDB / ElastiCache AZ1]
        DB_2[RDS / DynamoDB / ElastiCache AZ2]
        DB_3[RDS / DynamoDB / ElastiCache AZ3]
    end

    IGW --> ALB
    ALB --> EC2_1
    ALB --> EC2_2
    ALB --> EC2_3
    EC2_1 --> DB_1
    EC2_2 --> DB_2
    EC2_3 --> DB_3

    classDef public fill:#c6f0ff,stroke:#1e90ff,stroke-width:2px;
    classDef private fill:#e2f7e2,stroke:#28a745,stroke-width:2px;
    class ALB,IGW public;
    class EC2_1,EC2_2,EC2_3,DB_1,DB_2,DB_3 private;
```
