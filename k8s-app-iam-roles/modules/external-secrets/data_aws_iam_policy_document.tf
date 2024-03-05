################################################################################
#
# External Secrets trust policy
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
# External Secrets KMS permissions
#
################################################################################
data "aws_iam_policy_document" "kms_access" {

  statement {
    resources = var.kms_key_arns
    actions   = ["kms:Decrypt"]
  }
}

################################################################################
#
# External Secrets SSM permissions
#
################################################################################
data "aws_iam_policy_document" "ssm_access" {

  statement {

    resources = var.ssm_parameter_arns

    actions = [
      "ssm:GetParameters",
      "ssm:GetParameter"
    ]
  }

}

################################################################################
#
# External Secrets Secrets Manager permissions
#
################################################################################
data "aws_iam_policy_document" "secretsmanager_access" {
  statement {

    resources = var.secretsmanager_secret_arns

    actions = [
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret",
    ]
  }
}
