variable "resource_group_name" {
  type        = string
  description = "Name Function"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "Location"
}

variable "user" {
  type        = string
  default     = "modules/vm/main.tf"
  description = "Name Function"
}

variable "password" {
  type        = string
  default     = "Password1234!"
  description = "Name Function"
}