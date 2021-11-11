terraform {
  required_version = "~> 1.0.0"

  backend "remote" {
    organization = "khuedoan"

    workspaces {
      name = "virtual-networks"
    }
  }

  required_providers {
    zerotier = {
      source = "zerotier/zerotier"
      version = "~> 1.2.0"
    }
  }
}

provider "zerotier" {
  zerotier_central_token = var.zerotier_central_token
}
