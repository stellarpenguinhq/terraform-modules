###############################################################################
#
# Attaches inline policies to role
#
###############################################################################
resource "aws_iam_role_policy" "inline" {
  for_each = var.inline_policies
  name     = each.key
  role     = aws_iam_role.this.name
  policy   = each.value
}
