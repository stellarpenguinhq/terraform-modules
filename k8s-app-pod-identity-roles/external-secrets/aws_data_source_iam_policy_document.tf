################################################################################
#
# External Secrets KMS permissions
#
################################################################################
data "aws_iam_policy_document" "kms_access" {

  statement {
    resources = [var.ssm_kms_arn]
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

    resources = ["arn:aws:ssm:${data.aws_region.current.region}:${data.aws_caller_identity.current.id}:parameter/*"]

    actions = [
      "ssm:GetParameters",
      "ssm:GetParameter"
    ]
  }

  dynamic "statement" {
    for_each = var.allow_secrets_write ? [0] : []
    content {
      resources = ["arn:aws:ssm:${data.aws_region.current.region}:${data.aws_caller_identity.current.id}:parameter/*"]

      actions = [
        "ssm:AddTagsToResource",
        "ssm:ListTagsForResource",
        "ssm:PutParameter",
        "ssm:PutParameters",
      ]
    }
  }
}

################################################################################
#
# External Secrets Secrets Manager permissions
#
################################################################################
data "aws_iam_policy_document" "secretsmanager_access" {
  statement {

    resources = ["arn:aws:secretsmanager:${data.aws_region.current.region}:${data.aws_caller_identity.current.id}:secret:*"]

    actions = [
      "secretsmanager:BatchGetSecretValue",
      "secretsmanager:DescribeSecret",
      "secretsmanager:GetResourcePolicy",
      "secretsmanager:GetSecretValue",
      "secretsmanager:ListSecretVersionIds",
    ]
  }


  dynamic "statement" {
    for_each = var.allow_secrets_write ? [0] : []
    content {
      resources = ["arn:aws:secretsmanager:${data.aws_region.current.region}:${data.aws_caller_identity.current.id}:secret:*"]

      actions = [
        "secretsmanager:CreateSecret",
        "secretsmanager:PutSecretValue",
        "secretsmanager:TagResource",
      ]
    }
  }

  dynamic "statement" {
    for_each = var.allow_secrets_write ? [0] : []
    content {
      resources = ["arn:aws:secretsmanager:${data.aws_region.current.region}:${data.aws_caller_identity.current.id}:secret:*"]
      actions   = ["secretsmanager:DeleteSecret"]
      condition {
        test     = "StringEquals"
        variable = "secretsmanager:ResourceTag/managed-by"
        values   = ["external-secrets"]
      }
    }
  }
}
