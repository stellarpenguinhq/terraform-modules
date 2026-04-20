locals {
  role_name = var.role_name_override != "" ? var.role_name_override : "eks-${var.cluster_name}-${data.aws_region.current.region}-${var.role_name}"
}
