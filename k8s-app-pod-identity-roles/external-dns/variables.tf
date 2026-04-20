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
