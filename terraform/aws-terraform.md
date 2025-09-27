# AWS and TF

##

--endpoint http://aws:4566

```
provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    iam                       = "http://aws:4566"
  }
}

```

Anything before this I did not add the notes as i have break sessions

## TF functions

- read the file.
- length
- testing functions
- toset

### Most common functions

- Numeric functions - set, ceil,
- String function - split, lower, upper, title, substr, join
- Map functions

### Conditional operators

- Math operators,
- equality operrators
- Logical operators

## Terraform workspace

- repeatable tasks wil be further reduced.
