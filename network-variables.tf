##############################
## Core Network - Variables ##
##############################

variable "network-vnet-cidr" {
  type        = string
  description = "The CIDR of the network VNET"
}

variable "network-endpoint-subnet-cidr" {
  type        = string
  description = "The CIDR for the network subnet"
}

