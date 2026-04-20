output "ack_iam_controller_role_arn" {
  description = "ARN of the ACK IAM controller IAM role (null if disabled)"
  value       = try(module.ack_iam_controller[0].role_arn, null)
}

output "aws_ebs_csi_role_arn" {
  description = "ARN of the EBS CSI driver IAM role (null if disabled)"
  value       = try(module.aws_ebs_csi[0].role_arn, null)
}

output "aws_efs_csi_role_arn" {
  description = "ARN of the EFS CSI driver IAM role (null if disabled)"
  value       = try(module.aws_efs_csi[0].role_arn, null)
}

output "aws_load_balancer_controller_role_arn" {
  description = "ARN of the AWS Load Balancer Controller IAM role (null if disabled)"
  value       = try(module.aws_load_balancer_controller[0].role_arn, null)
}

output "aws_vpc_cni_role_arn" {
  description = "ARN of the VPC CNI IAM role (null if disabled)"
  value       = try(module.aws_vpc_cni[0].role_arn, null)
}

output "external_dns_role_arn" {
  description = "ARN of the External DNS IAM role (null if disabled)"
  value       = try(module.external_dns[0].role_arn, null)
}

output "external_secrets_role_arn" {
  description = "ARN of the External Secrets IAM role (null if disabled)"
  value       = try(module.external_secrets[0].role_arn, null)
}

