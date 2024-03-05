variable "eks_cluster_oidc_provider_arn" {
  description = "ARN of the cluster's OIDC provider"
  type        = string
}

variable "eks_cluster_oidc_issuer_url" {
  description = "Issuer URL of the cluster's OIDC provider"
  type        = string
}

variable "kubernetes_namespace" {
  description = "The namespace where the External Secrets pods are deployed"
  type        = string
}

variable "kubernetes_service_acount_name" {
  description = "The name of the service account attached to the External Secrets deployment"
  type        = string
}

variable "iam_role_prefix" {
  description = "Prefix for generated IAM role name - will be appended with '-external-secrets'"
  type        = string
}

variable "kms_key_arns" {
  description = "List of KMS keys that the created role should have access to"
  type        = list(string)
}

variable "ssm_parameter_arns" {
  description = "List of SSM Parameter ARNs that the created role should have access to"
  type        = list(string)
}

variable "secretsmanager_secret_arns" {
  description = "List of Secrets Manager Secret ARNs that the created role should have access to"
  type        = list(string)
}
