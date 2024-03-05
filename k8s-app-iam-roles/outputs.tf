output "aws_load_balancer_controller_role_arn" {
  description = "IAM role ARN for aws-load-balancer-controller"
  value       = module.aws_load_balancer_controller.role_arn
}

output "external_dns_role_arn" {
  description = "IAM role ARN for external-dns"
  value       = module.external_dns.role_arn
}

output "external_secrets_role_arn" {
  description = "IAM role ARN for external-secrets"
  value       = module.external_secrets.role_arn
}
