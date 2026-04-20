###############################################################################
#
# Pod Identity Asssociation - links role to service
#
###############################################################################
resource "aws_eks_pod_identity_association" "this" {
  count = var.create_pod_identity_association ? 1 : 0

  cluster_name    = var.cluster_name
  namespace       = var.service_account_namespace
  service_account = var.service_account_name
  role_arn        = aws_iam_role.this.arn
}
