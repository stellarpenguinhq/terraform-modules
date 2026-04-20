################################################################################
#
# AWS IAM Role
#
################################################################################
output "role_arn" {
  description = "ARN of the IAM role for EKS pod identity"
  value       = aws_iam_role.this.arn
}
