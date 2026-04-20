variable "cluster_name" {
  description = "The name of the cluster, used in all named resources"
  type        = string
}

variable "role_name" {
  description = "The IAM role name; will be appended to a generated role name"
  type        = string
}

variable "service_account_name" {
  description = "Service account name used in the cluster to assume this IAM role"
  type        = string
}

variable "service_account_namespace" {
  description = "Namespace of the service account used in the cluster to assume this IAM role"
  type        = string
}

variable "ssm_kms_arn" {
  description = "The ARN of the KMS used for secret value storage."
  type        = string

  # Note, we perform validation rather than relying on default, as default is set 
  # from parent as empty string, in case this module is not used.
  validation {
    condition = (
      length(var.ssm_kms_arn) > 0
    )
    error_message = "ssm_kms_arn parameter must be set"
  }
}

variable "allow_secrets_write" {
  type        = bool
  description = "Allow the writing (and deletion) of secrets in secrets manager and parameter store"
  default     = false
}
