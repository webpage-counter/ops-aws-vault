data "terraform_remote_state" "nw" {
  backend = "remote"

  config = {
    organization = "webpage-counter"
    workspaces = {
      name = "ops-aws-network"
    }
    token = var.token
  }
}

module "dc1" {
  source  = "app.terraform.io/webpage-counter/vault/aws"
  version = ">= 0.0.1"
  instance_type     = var.instance_type
  region            = var.region
  dcname            = var.dcname["dc1"]
  IP                = var.IP_dc1
  join_wan          = var.join_wan
  token             = var.token
}

output "ami" {
  value = module.dc1.ami
}

output "dcname" {
  value = module.dc1.dcname
}

output "IP_client" {
  value = module.dc1.IP_client
}


output "data_rendered" {
  value = module.dc1.data_rendered
}

