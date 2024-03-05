################################################################################
#
# AWS VPC CNI trust policy
#
################################################################################
data "aws_iam_policy_document" "trust" {

  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = [var.eks_cluster_oidc_provider_arn]
    }

    condition {
      test     = "StringEquals"
      variable = "${substr(var.eks_cluster_oidc_provider_arn, 8, -1)}:aud"
      values   = ["sts.amazonaws.com"]
    }

    condition {
      test     = "StringLike"
      variable = "${substr(var.eks_cluster_oidc_issuer_url, 8, -1)}:sub"
      values   = ["system:serviceaccount:${var.kubernetes_namespace}:${var.kubernetes_service_acount_name}"]
    }
  }
}

