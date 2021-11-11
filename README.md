# Virtual Networks

## Prerequisites

- Create a ZeroTier Central API Token at <https://my.zerotier.com/account>

## Setup GitHub Actions

- Create another Terraform Cloud API token named `github-actions`
- Go to GitHub project Settings -> Secrets -> New repository secret:
  - Name: `TF_API_TOKEN`
  - Value: `mysupersecret.token.abcdefghijklmnop` (from the previous step)
