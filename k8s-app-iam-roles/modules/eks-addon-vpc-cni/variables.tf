variable "eks_cluster_oidc_provider_arn" {
  description = "ARN of the cluster's OIDC provider"
  type        = string
}

variable "eks_cluster_oidc_issuer_url" {
  description = "Issuer URL of the cluster's OIDC provider"
  type        = string
}

variable "kubernetes_namespace" {
  description = "The namespace where the AWS VPC CNI pods are deployed"
  type        = string
}

variable "kubernetes_service_acount_name" {
  description = "The name of the service account attached to the AWS VPC CNI daemonset"
  type        = string
}

variable "iam_role_prefix" {
  description = "Prefix for generated IAM role name - will be appended with '-aws-vpc-cni'"
  type        = string
}

