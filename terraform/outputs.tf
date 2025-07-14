output "admin_username" {
  description = "Admin username"
  value       = aws_iam_user.admin_console.name
}

output "admin_console_password" {
  description = "Admin console password (temporary - must be changed on first login)"
  value       = aws_iam_user_login_profile.admin_console.password
  sensitive   = true
}

output "access_key_id" {
  description = "Access Key ID for CLI/API access"
  value       = aws_iam_access_key.admin_console.id
  sensitive   = true
}

output "secret_access_key" {
  description = "Secret Access Key for CLI/API access"
  value       = aws_iam_access_key.admin_console.secret
  sensitive   = true
}

output "console_url" {
  description = "AWS Console login URL"
  value       = "https://console.aws.amazon.com/"
}

output "user_arn" {
  description = "ARN of the created user"
  value       = aws_iam_user.admin_console.arn
}