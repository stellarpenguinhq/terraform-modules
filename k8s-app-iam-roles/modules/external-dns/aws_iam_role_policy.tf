################################################################################
#
# Attaches Route563 access policy to External DNS role
#
################################################################################
resource "aws_iam_role_policy" "route53_access" {
  name   = "route53-access"
  role   = aws_iam_role.this.name
  policy = data.aws_iam_policy_document.route53_access.json
}
