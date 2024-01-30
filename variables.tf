variable "location" {
  description = "Location info and alias to resources deploy"
  type = object({
    name  = string
    alias = string
  })
}


variable "spoke" {
  description = "Count Spoke"
  type = object({
    name  = string
    alias = string
  })
}

variable "subnets" {
  type = list(object({
    name              = string
    index             = number
    type              = optional(string, "private")
    cidr              = optional(string, null)
    service_endpoints = list(string)
    delegations = list(object({
      name = string
      subnet_delegation = list(object({
        name    = string
        actions = list(string)
      }))
    }))
  }))
}

variable "default_subnets_cidr_exceptions" {
  type = list(object({
    name              = string
    cidr              = string
  }))
  default = []
}


variable "virtual_network_name" {
  type = string
  description = ""
} 

variable "resource_group_name" {
  type = string
  description = ""
}

variable "address_space" {
  description = "Address Spaces set for deploy spokes"
  type        = string
}

variable "subnet_prefix" {
  description = "subnet prefix namming "
  type        = string
  default = null
}

