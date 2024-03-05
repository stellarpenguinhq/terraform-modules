###############################################################################
#
# Attach AWS managed poicy for VPC CNI add on to role
#
###############################################################################
resource "aws_iam_role_policy_attachment" "this_AmazonEKS_CNI_Policy" {
  role       = aws_iam_role.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}
