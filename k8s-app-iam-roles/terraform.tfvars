eks_cluster_oidc_provider_arn = "this:is:a:provider:arn"
eks_cluster_oidc_issuer_url   = "this:is:an:issuer:url"
iam_role_prefix               = "oooh-region-cluster"


external_secrets = {
  enabled      = true
  kms_key_arns = ["rando", "rando2"]
}
