###############################################################################
#
# AWS EKS Pod Identity Association trust policy
#
###############################################################################
data "aws_iam_policy_document" "trust" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["pods.eks.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole",
      "sts:TagSession"
    ]
  }
}
