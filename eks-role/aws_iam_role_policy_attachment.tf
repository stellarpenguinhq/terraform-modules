###############################################################################
#
# Attaches managed policies to role
#
###############################################################################
resource "aws_iam_role_policy_attachment" "managed" {
  for_each   = var.managed_policies
  role       = aws_iam_role.this.name
  policy_arn = each.value
}
