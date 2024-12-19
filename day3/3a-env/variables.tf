variable "org_name" {
  description = "Azure organization name"
  type        = string
  default     = "ts"
}

variable "rg_prefix" {
  description = "Prefix for resource group"
  type        = string
  default     = "rg"
}

variable "st_prefix" {
  description = "Prefix for storage account"
  type        = string
  default     = "st"
}

variable "sb_prefix" {
  description = "Prefix for service bus"
  type        = string
  default     = "sb"
}

variable "env" {
  description = "Environment for resources"
  type        = string
  default     = "dev"
}

variable "main_project" {
  description = "Main project name"
  type        = string
  default     = "netflix"
}

variable "sub_project" {
  description = "Sub-project identifier"
  type        = string
  default     = "001"
}

variable "location" {
  description = "Azure region to deploy resources in"
  type        = string
  default     = "eastus"
}
