################################################################################
#
# EKS IAM Operator IAM role
#
################################################################################
resource "aws_iam_role" "this" {
  name               = "${var.iam_role_prefix}-ack-iam-controller"
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.trust.json
}
