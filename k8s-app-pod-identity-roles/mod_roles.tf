module "external_secrets" {
  source = "./external-secrets"
  count  = var.external_secrets.enabled ? 1 : 0

  cluster_name              = var.cluster_name
  role_name                 = var.external_secrets.role_name
  allow_secrets_write       = var.external_secrets.allow_secrets_write
  ssm_kms_arn               = var.external_secrets.ssm_kms_arn
  service_account_name      = var.external_secrets.service_account_name
  service_account_namespace = var.external_secrets.service_account_namespace
}

module "external_dns" {
  source = "./external-dns"
  count  = var.external_dns.enabled ? 1 : 0

  cluster_name              = var.cluster_name
  role_name                 = var.external_dns.role_name
  service_account_name      = var.external_dns.service_account_name
  service_account_namespace = var.external_dns.service_account_namespace
}

module "aws_load_balancer_controller" {
  source = "./aws-load-balancer-controller"
  count  = var.aws_load_balancer_controller.enabled ? 1 : 0

  cluster_name              = var.cluster_name
  role_name                 = var.aws_load_balancer_controller.role_name
  service_account_name      = var.aws_load_balancer_controller.service_account_name
  service_account_namespace = var.aws_load_balancer_controller.service_account_namespace
}

module "ack_iam_controller" {
  source = "./ack-iam-controller"
  count  = var.ack_iam_controller.enabled ? 1 : 0

  cluster_name                = var.cluster_name
  role_name                   = var.ack_iam_controller.role_name
  service_account_name        = var.ack_iam_controller.service_account_name
  service_account_namespace   = var.ack_iam_controller.service_account_namespace
  controlled_roles_iam_prefix = var.ack_iam_controller.controlled_roles_iam_prefix
}

module "aws_vpc_cni" {
  source = "./aws-vpc-cni"
  count  = var.aws_vpc_cni.enabled ? 1 : 0

  cluster_name              = var.cluster_name
  role_name                 = var.aws_vpc_cni.role_name
  service_account_name      = var.aws_vpc_cni.service_account_name
  service_account_namespace = var.aws_vpc_cni.service_account_namespace
}

module "aws_ebs_csi" {
  source = "./aws-ebs-csi"
  count  = var.aws_ebs_csi.enabled ? 1 : 0

  cluster_name              = var.cluster_name
  role_name                 = var.aws_ebs_csi.role_name
  service_account_name      = var.aws_ebs_csi.service_account_name
  service_account_namespace = var.aws_ebs_csi.service_account_namespace
}

module "aws_efs_csi" {
  source = "./aws-efs-csi"
  count  = var.aws_efs_csi.enabled ? 1 : 0

  cluster_name              = var.cluster_name
  role_name                 = var.aws_efs_csi.role_name
  service_account_name      = var.aws_efs_csi.service_account_name
  service_account_namespace = var.aws_efs_csi.service_account_namespace
}
