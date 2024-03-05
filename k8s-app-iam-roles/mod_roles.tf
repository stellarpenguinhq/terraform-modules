################################################################################
#
# AWS Load Balancer Controller role
#
################################################################################
module "aws_load_balancer_controller" {
  source = "./modules/aws-load-balancer-controller"
  count  = var.aws_load_balancer_controller.enabled ? 1 : 0

  kubernetes_namespace           = var.aws_load_balancer_controller.kubernetes_namespace
  kubernetes_service_acount_name = var.aws_load_balancer_controller.kubernetes_service_acount_name
  eks_cluster_oidc_provider_arn  = var.eks_cluster_oidc_provider_arn
  eks_cluster_oidc_issuer_url    = var.eks_cluster_oidc_issuer_url
  iam_role_prefix                = var.iam_role_prefix
}

################################################################################
#
# External Secrets role
#
################################################################################
module "external_secrets" {
  source = "./modules/external-secrets"
  count  = var.external_secrets.enabled ? 1 : 0

  kubernetes_namespace           = var.external_secrets.kubernetes_namespace
  kubernetes_service_acount_name = var.external_secrets.kubernetes_service_acount_name
  kms_key_arns                   = var.external_secrets.kms_key_arns
  ssm_parameter_arns             = var.external_secrets.ssm_parameter_arns
  secretsmanager_secret_arns     = var.external_secrets.secretsmanager_secret_arns
  eks_cluster_oidc_provider_arn  = var.eks_cluster_oidc_provider_arn
  eks_cluster_oidc_issuer_url    = var.eks_cluster_oidc_issuer_url
  iam_role_prefix                = var.iam_role_prefix
}

################################################################################
#
# External DNS role
#
################################################################################
module "external_dns" {
  source = "./modules/external-dns"
  count  = var.external_dns.enabled ? 1 : 0

  kubernetes_namespace           = var.external_dns.kubernetes_namespace
  kubernetes_service_acount_name = var.external_dns.kubernetes_service_acount_name
  eks_cluster_oidc_provider_arn  = var.eks_cluster_oidc_provider_arn
  eks_cluster_oidc_issuer_url    = var.eks_cluster_oidc_issuer_url
  iam_role_prefix                = var.iam_role_prefix
}

################################################################################
#
# VPC CNI
#
################################################################################
module "eks_addon_vpc_cni" {
  source = "./modules/eks-addon-vpc-cni"
  count  = var.eks_addon_vpc_cni.enabled ? 1 : 0

  kubernetes_namespace           = var.eks_addon_vpc_cni.kubernetes_namespace
  kubernetes_service_acount_name = var.eks_addon_vpc_cni.kubernetes_service_acount_name
  eks_cluster_oidc_provider_arn  = var.eks_cluster_oidc_provider_arn
  eks_cluster_oidc_issuer_url    = var.eks_cluster_oidc_issuer_url
  iam_role_prefix                = var.iam_role_prefix
}
