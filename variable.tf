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
    type = map  
   #default = {}
} 

variable "vpc_tags" {
    default = {}
  
}

variable "igw_tags" {
    default = {}
  
}