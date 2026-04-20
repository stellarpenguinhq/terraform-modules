###############################################################################
#
# EKS Role: AWS Load Balancer Controller
#
###############################################################################
module "eks_role" {
  source                    = "git@github.com:stellarpenguinhq/terraform-modules.git//eks-role?ref=eks-role-v1.0.0"
  cluster_name              = var.cluster_name
  role_name                 = var.role_name
  service_account_namespace = var.service_account_namespace
  service_account_name      = var.service_account_name
  inline_policies = {
    default-access = data.aws_iam_policy_document.default_access.json
  }
}
