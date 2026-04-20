variable "cluster_name" {
  description = "The name of the cluster, used in all named resources"
  type        = string
}

variable "role_name_override" {
  description = "Override IAM role name genration"
  type        = string
  default     = ""
}

variable "role_name" {
  description = "The IAM role name; unless the override variable is used, this will be appended to a generated role name"
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

variable "inline_policies" {
  description = "Map of inline policies, where key is the policy name and value is the JSON formatted policy document"
  type        = map(string)
  default     = {}

}

variable "managed_policies" {
  description = "String set of managed policy ARNs to attach to the role"
  type        = set(string)
  default     = []
}

variable "create_pod_identity_association" {
  description = "Whether or not to create the Pod Identity Association (set to false for addons)"
  type        = bool
  default     = true
}
