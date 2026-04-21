###############################################################################
#
# EKS Role: EFS CSI (EKS AddOn)
#
###############################################################################
module "eks_role" {
  source                    = "git@github.com:stellarpenguinhq/terraform-modules.git//eks-role?ref=eks-role-v1.0.0"
  cluster_name              = var.cluster_name
  role_name                 = var.role_name
  service_account_namespace = var.service_account_namespace
  service_account_name      = var.service_account_name
  managed_policies = [
    "arn:aws:iam::aws:policy/service-role/AmazonEFSCSIDriverPolicy",
    "arn:aws:iam::aws:policy/service-role/AmazonS3FilesCSIDriverPolicy",
  ]
  create_pod_identity_association = false
}

###############################################################################
#
# EKS Role: EFS CSI (EKS AddOn)
#
###############################################################################
module "eks_role" {
  source                    = "git@github.com:stellarpenguinhq/terraform-modules.git//eks-role?ref=eks-role-v1.0.0"
  cluster_name              = var.cluster_name
  role_name                 = "${var.role_name}-node"
  service_account_namespace = var.service_account_namespace
  service_account_name      = var.service_account_name
  managed_policies = [
    "arn:aws:iam::aws:policy/AmazonElasticFileSystemsUtils",
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
  ]
  create_pod_identity_association = false
}

