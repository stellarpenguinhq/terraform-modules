################################################################################
#
# Attaches IAM access policy to operator role
#
################################################################################
resource "aws_iam_role_policy" "iam_access" {
  name   = "iam-access"
  role   = aws_iam_role.this.name
  policy = data.aws_iam_policy_document.iam_access.json
}
