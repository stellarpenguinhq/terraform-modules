################################################################################
#
# AWS IAM Role
#
################################################################################
resource "aws_iam_role" "this" {
  name               = local.role_name
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.trust.json
}
