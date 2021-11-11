# Virtual Networks

## Prerequisites

- Accounts:
  - ZeroTier <https://zerotier.com/>
  - Terraform Cloud <https://app.terraform.io>
- Create a Terraform workspace named `virtual-networks`
- Create a ZeroTier Central API Token at <https://my.zerotier.com/account>
- Create an environment variable for the token:
  - Key: `ZEROTIER_CENTRAL_TOKEN`
  - Value: `abcdefghijklmnopqrstuvwxyz` (from the previous step)
  - Sensitive: `true`
  - Description: `ZeroTier Central API Token`

## Setup GitHub Actions

- Create another Terraform Cloud API token named `github-actions`
- Go to GitHub project Settings -> Secrets -> New repository secret:
  - Name: `TF_API_TOKEN`
  - Value: `mysupersecret.token.abcdefghijklmnop` (from the previous step)
