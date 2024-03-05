################################################################################
#
# External DNS trust policy
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
      test     = "StringLike"
      variable = "${substr(var.eks_cluster_oidc_issuer_url, 8, -1)}:sub"
      values   = ["system:serviceaccount:${var.kubernetes_namespace}:${var.kubernetes_service_acount_name}"]
    }
  }
}

################################################################################
#
# External DNS Route53 permissions
#
################################################################################
data "aws_iam_policy_document" "route53_access" {

  statement {
    resources = ["*"]
    actions = [
      "route53:ListHostedZones",
      "route53:ListResourceRecordSets",
    ]
  }

  statement {
    resources = ["arn:aws:route53:::hostedzone/*"]
    actions   = ["route53:ChangeResourceRecordSets"]
  }
}
