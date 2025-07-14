# Usuário admin para console
resource "aws_iam_user" "admin_console" {
  name = var.admin_username
  path = "/"

  tags = {
    Name        = var.admin_username
    Environment = var.environment
    Purpose     = "Console Administration"
    ManagedBy   = "terraform"
  }
}

# Política de administrador
resource "aws_iam_user_policy_attachment" "admin_console" {
  user       = aws_iam_user.admin_console.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Login profile para console (senha inicial temporária)
resource "aws_iam_user_login_profile" "admin_console" {
  user                    = aws_iam_user.admin_console.name
  password_reset_required = true
  password_length         = 12
}

# Access keys (para CLI/API se necessário)
resource "aws_iam_access_key" "admin_console" {
  user = aws_iam_user.admin_console.name
}