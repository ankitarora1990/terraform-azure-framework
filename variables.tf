variable "env" {
  default = "dev"
  description = "The prefix used for all resources."
}

variable "location" {
  default = "eastus"
  description = "The Azure location where all resources should be created."
}

variable "sku" {
  default = "Basic"
  description = "The Azure pricing tier for the container registery."
}
