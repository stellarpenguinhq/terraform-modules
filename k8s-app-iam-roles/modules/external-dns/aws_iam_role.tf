################################################################################
#
# External DNS IAM role
#
################################################################################
resource "aws_iam_role" "this" {
  name               = "${var.iam_role_prefix}-external-dns"
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.trust.json
}
