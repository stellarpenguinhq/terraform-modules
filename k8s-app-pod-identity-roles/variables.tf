variable "cluster_name" {
  description = "The name of the cluster, used in all named resources"
  type        = string
}

variable "external_secrets" {
  description = "Config for the external-secrets pod identity role. Pass only the keys you want to override (e.g. service_account_name = \"foo\"). ssm_kms_arn is required when using external-secrets."
  type = object({
    enabled                   = bool
    role_name                 = optional(string, "external-secrets")
    service_account_name      = optional(string, "external-secrets")
    service_account_namespace = optional(string, "default")
    allow_secrets_write       = optional(bool, false)
    ssm_kms_arn               = string
  })
}

variable "external_dns" {
  description = "Config for the external-dns pod identity role. Pass only the keys you want to override (e.g. service_account_name = \"foo\")."
  type = object({
    enabled                   = bool
    role_name                 = optional(string, "external-dns")
    service_account_name      = optional(string, "external-dns")
    service_account_namespace = optional(string, "default")
  })
}

variable "aws_load_balancer_controller" {
  description = "Config for the aws-load-balancer-controller pod identity role. Pass only the keys you want to override (e.g. service_account_name = \"foo\")."
  type = object({
    enabled                   = bool
    role_name                 = optional(string, "aws-load-balancer-controller")
    service_account_name      = optional(string, "aws-load-balancer-controller")
    service_account_namespace = optional(string, "default")
  })
}

variable "ack_iam_controller" {
  description = "Config for the ack-iam-controller pod identity role. Pass only the keys you want to override (e.g. service_account_name = \"foo\")."
  type = object({
    enabled                     = bool
    controlled_roles_iam_prefix = string
    role_name                   = optional(string, "ack-iam-controller")
    service_account_name        = optional(string, "ack-iam-controller")
    service_account_namespace   = optional(string, "default")
  })
}

variable "aws_vpc_cni" {
  description = "Config for the aws-vpc-cni pod identity role. Pass only the keys you want to override (e.g. service_account_name = \"foo\")."
  type = object({
    enabled                   = bool
    role_name                 = optional(string, "aws-vpc-cni")
    service_account_name      = optional(string, "aws-node")
    service_account_namespace = optional(string, "kube-system")
  })
}

variable "aws_ebs_csi" {
  description = "Config for the aws-ebs-csi pod identity role. Pass only the keys you want to override (e.g. service_account_name = \"foo\")."
  type = object({
    enabled                   = bool
    role_name                 = optional(string, "aws-ebs-csi")
    service_account_name      = optional(string, "ebs-csi-controller-sa")
    service_account_namespace = optional(string, "kube-system")
  })
}

variable "aws_efs_csi" {
  description = "Config for the aws-efs-csi pod identity role. Pass only the keys you want to override (e.g. service_account_name = \"foo\")."
  type = object({
    enabled                   = bool
    role_name                 = optional(string, "aws-efs-csi")
    service_account_name      = optional(string, "efs-csi-controller-sa")
    service_account_namespace = optional(string, "kube-system")
  })
}
