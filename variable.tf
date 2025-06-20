variable "vpc_cidr" {

}

variable "enable_dns_hostnames" {
  default = true
}

variable "project_name" {

}

variable "environment" {

}

variable "common_tags" {
  type = map(any)
  #default = {}
}

variable "vpc_tags" {
  default = {}
}

variable "igw_tags" {
  default = {}
}

 variable "public_subnet_cidr" {
  type = list
    validation {
        condition     = length(var.public_subnet_cidr) == 2
        error_message = "please provider valid subnet_cidr"
  }
}

variable "public_subnet_tags" {
  default = {}
  
}
 
 variable "private_subnet_cidr" {
  type = list
    validation {
        condition     = length(var.private_subnet_cidr) == 2
        error_message = "please provider valid subnet_cidr"
  }
}

variable "private_subnet_tags" {
  default = {}
  
}

variable "database_subnet_cidr" {
  type = list
    validation {
        condition     = length(var.database_subnet_cidr) == 2
        error_message = "please provider valid subnet_cidr"
  }
}

variable "database_subnet_tags" {
  default = {}

}
 