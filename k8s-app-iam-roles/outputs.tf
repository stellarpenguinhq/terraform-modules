output "aws_load_balancer_controller_role_arn" {
  description = "IAM role ARN for aws-load-balancer-controller"
  value       = var.aws_load_balancer_controller.enabled ? module.aws_load_balancer_controller[0].role_arn : "not-enabled"
}

output "external_dns_role_arn" {
  description = "IAM role ARN for external-dns"
  value       = var.external_dns.enabled ? module.external_dns[0].role_arn : "not-enabled"
}

output "external_secrets_role_arn" {
  description = "IAM role ARN for external-secrets"
  value       = var.external_secrets.enabled ? module.external_secrets[0].role_arn : "not-enabled"
}

output "eks_addon_vpc_cni_role_arn" {
  description = "IAM role ARN for eks-addon-vpc-cni"
  value       = var.eks_addon_vpc_cni.enabled ? module.eks_addon_vpc_cni[0].role_arn : "not-enabled"
}

output "eks_iam_operator_role_arn" {
  description = "IAM role ARN for eks-iam-operator"
  value       = var.eks_addon_vpc_cni.enabled ? module.eks_addon_vpc_cni[0].role_arn : "not-enabled"
}

output "eks_addon_ebs_csi_role_arn" {
  description = "IAM role ARN for eks-addon-ebs-csi"
  value       = var.eks_addon_ebs_csi.enabled ? module.eks_addon_ebs_csi[0].role_arn : "not-enabled"
}
