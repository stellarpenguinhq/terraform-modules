variable "eks_cluster_oidc_provider_arn" {
  description = "ARN of the cluster's OIDC provider"
  type        = string
}

variable "eks_cluster_oidc_issuer_url" {
  description = "Issuer URL of the cluster's OIDC provider"
  type        = string
}

variable "iam_role_prefix" {
  description = "Prefix for generated IAM role name"
  type        = string
}

variable "aws_load_balancer_controller" {
  type = object({
    enabled                        = bool
    kubernetes_service_acount_name = optional(string, "aws-load-balancer-controller")
    kubernetes_namespace           = optional(string, "default")
  })
  default = {
    enabled = false
  }
}

variable "external_secrets" {
  type = object({
    enabled                        = bool
    allow_secrets_write            = optional(bool, false)
    kubernetes_service_acount_name = optional(string, "external-secrets")
    kubernetes_namespace           = optional(string, "default")
    ssm_parameter_arns             = optional(list(string), [])
    kms_key_arns                   = optional(list(string), [])
    secretsmanager_secret_arns     = optional(list(string), [])
  })

  default = {
    enabled = false
  }
}

variable "external_dns" {
  type = object({
    enabled                        = bool
    kubernetes_service_acount_name = optional(string, "external-dns")
    kubernetes_namespace           = optional(string, "default")
  })
  default = {
    enabled = false
  }
}

variable "eks_addon_vpc_cni" {
  type = object({
    enabled                        = bool
    kubernetes_service_acount_name = optional(string, "aws-node")
    kubernetes_namespace           = optional(string, "default")
  })
  default = {
    enabled = false
  }
}

variable "eks_iam_operator" {
  type = object({
    enabled                        = bool
    kubernetes_service_acount_name = optional(string, "eks-iam-operator")
    kubernetes_namespace           = optional(string, "default")
    controlled_roles_iam_prefix    = optional(string, "")
  })
  default = {
    enabled = false
  }
}

variable "ack_iam_controller" {
  type = object({
    enabled                        = bool
    kubernetes_service_acount_name = optional(string, "ack-iam-controller")
    kubernetes_namespace           = optional(string, "default")
    controlled_roles_iam_prefix    = optional(string, "")
  })
  default = {
    enabled = false
  }
}

variable "eks_addon_ebs_csi" {
  type = object({
    enabled                        = bool
    kubernetes_service_acount_name = optional(string, "ebs-csi-controller-sa")
    kubernetes_namespace           = optional(string, "default")
  })
  default = {
    enabled = false
  }
}
