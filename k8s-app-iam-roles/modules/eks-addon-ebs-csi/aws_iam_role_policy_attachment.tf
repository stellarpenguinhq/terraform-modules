###############################################################################
#
# Attach AWS managed poicy for EBS CSI add=on to role
#
###############################################################################
resource "aws_iam_role_policy_attachment" "this_AmazonEBSCSIDriverPolicy" {
  role       = aws_iam_role.this.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
}
