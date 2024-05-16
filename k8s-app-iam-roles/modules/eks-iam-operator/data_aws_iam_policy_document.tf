################################################################################
#
# EKS IAM Operator trust policy
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
# EKS IAM Operator IAM permissions
#
################################################################################
data "aws_iam_policy_document" "iam_access" {

  statement {
    actions = [
      "iam:CreateRole",
      "iam:DeleteRole",
      "iam:DeleteRolePolicy",
      "iam:GetRole",
      "iam:GetRolePolicy",
      "iam:ListRolePolicies",
      "iam:PutRolePolicy",
      "iam:TagRole",
      "iam:UpdateAssumeRolePolicy",
      "iam:UpdateRole",
    ]

    resources = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${var.controlled_roles_iam_prefix}*"]
  }
}
