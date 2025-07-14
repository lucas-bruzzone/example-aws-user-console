variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "devops"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "example-aws-user-console"
}

variable "admin_username" {
  description = "Admin user name for console access"
  type        = string
  default     = "admin-console"

  validation {
    condition     = can(regex("^[a-zA-Z0-9+=,.@_-]+$", var.admin_username)) && length(var.admin_username) >= 1 && length(var.admin_username) <= 64
    error_message = "Username must be 1-64 characters and contain only alphanumeric characters and +=,.@_- symbols."
  }
}