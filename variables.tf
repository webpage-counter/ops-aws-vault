variable "aws_access_key" {
}

variable "aws_secret_key" {
}

variable "instance_type" {
}

variable "region" {
  description = "Default AWS region"
  default     = "us-east-1"
}

variable "dcname" {
  type        = map(string)
  description = "Datacenter name of the Consul cluster"

  default = {
    "dc1" = "dc1"
    "dc2" = "dc2"
  }
}

variable "IP_dc1" {
  type        = map(string)
  description = "IP segment based on if node is a server or a client."

  default = {
    "vault" = "10.123.2.5"
    "client" = "10.123.2.1"
    "server" = "10.123.1.1"
  }
}

variable "IP_dc2" {
  type        = map(string)
  description = "IP segment based on if node is a server or a client."

  default = {
    "client" = "10.123.2.100"
    "server" = "10.123.1.100"
  }
}

variable "join_wan" {
  description = "Variable used to properly assign tags for auto join."

  default = "dc1"
}

variable "token" {
  description = "Token for getting remote state"
}

