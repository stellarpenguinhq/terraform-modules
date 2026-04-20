###############################################################################
#
# EKS Role: EBS CSI (EKS AddOn)
#
###############################################################################
module "eks_role" {
  source                          = "git@github.com:stellarpenguin/terraform-modules.git//eks-role?ref=eks-role-v1.0.0"
  cluster_name                    = var.cluster_name
  role_name                       = var.role_name
  service_account_namespace       = var.service_account_namespace
  service_account_name            = var.service_account_name
  managed_policies                = ["arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"]
  create_pod_identity_association = false
}

