output "role_arn" {
  description = "IAM role ARN of created role"
  value       = aws_iam_role.this.arn
}
