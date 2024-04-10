variable "resource_group_name" {
  type        = string
  description = "Name Function"
}

variable "subnet-id" {
  type        = string
  description = "Subnet ID"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "Location"
}

variable "user" {
  type        = string
  default     = "testadmin"
  description = "Admin user"
}

variable "password" {
  type        = string
  default     = "Password1234!"
  description = "Admin password"
}