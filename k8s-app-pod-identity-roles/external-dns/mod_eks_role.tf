###############################################################################
#
# EKS Role: External DNS
#
###############################################################################
module "eks_role" {
  source                    = "git@github.com:stellarpenguin/terraform-modules.git//eks-role?ref=eks-role-v1.0.0"
  cluster_name              = var.cluster_name
  role_name                 = var.role_name
  service_account_namespace = var.service_account_namespace
  service_account_name      = var.service_account_name
  inline_policies = {
    route53-access = data.aws_iam_policy_document.route53_access.json
  }
}

