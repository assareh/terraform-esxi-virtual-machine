#############################
## Application - Variables ##
#############################

# application name
variable "app_name" {
  type        = string
  description = "This variable defines the application name used to build resources"
}

# description
variable "description" {
  type        = string
  description = "Provide a description of the resource"
}

# environment
variable "environment" {
  type        = string
  description = "This variable defines the environment to be built"
}

# owner
variable "owner" {
  type        = string
  description = "Specify the owner of the resource"
}

# vm image
variable "vm_image" {
  type        = string
  description = "Provide the virtual machine image to deploy"
  default = "https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64.ova"
}

################################
## Administrative - Variables ##
################################

variable "esxi_host" {
}

variable "esxi_password" {
}

variable "esxi_username" {
}
