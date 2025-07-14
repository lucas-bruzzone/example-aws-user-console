variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "admin_username" {
  description = "Admin user name for console access"
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9+=,.@_-]+$", var.admin_username)) && length(var.admin_username) >= 1 && length(var.admin_username) <= 64
    error_message = "Username must be 1-64 characters and contain only alphanumeric characters and +=,.@_- symbols."
  }
}