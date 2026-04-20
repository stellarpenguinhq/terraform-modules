################################################################################
#
# AWS IAM Role
#
################################################################################
output "role_arn" {
  description = "ARN of the IAM role for EKS pod identity"
  value       = module.eks_role.role_arn
}
