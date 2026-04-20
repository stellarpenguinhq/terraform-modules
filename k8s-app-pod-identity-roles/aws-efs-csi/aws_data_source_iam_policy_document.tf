################################################################################
#
# External DNS Route53 permissions  
#
################################################################################
data "aws_iam_policy_document" "route53_access" {

  statement {
    actions   = ["route53:ListHostedZones", "route53:ListResourceRecordSets"]
    resources = ["*"]
  }

  statement {
    actions   = ["route53:ChangeResourceRecordSets"]
    resources = ["arn:aws:route53:::hostedzone/*"]
  }
}
