## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.19 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.19 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.this_AmazonEBSCSIDriverPolicy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.trust](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_oidc_issuer_url"></a> [eks\_cluster\_oidc\_issuer\_url](#input\_eks\_cluster\_oidc\_issuer\_url) | Issuer URL of the cluster's OIDC provider | `string` | n/a | yes |
| <a name="input_eks_cluster_oidc_provider_arn"></a> [eks\_cluster\_oidc\_provider\_arn](#input\_eks\_cluster\_oidc\_provider\_arn) | ARN of the cluster's OIDC provider | `string` | n/a | yes |
| <a name="input_iam_role_prefix"></a> [iam\_role\_prefix](#input\_iam\_role\_prefix) | Prefix for generated IAM role name - will be appended with '-aws-ebs-csi' | `string` | n/a | yes |
| <a name="input_kubernetes_namespace"></a> [kubernetes\_namespace](#input\_kubernetes\_namespace) | The namespace where the AWS EBS CSI pods are deployed | `string` | n/a | yes |
| <a name="input_kubernetes_service_acount_name"></a> [kubernetes\_service\_acount\_name](#input\_kubernetes\_service\_acount\_name) | The name of the service account attached to the AWS EBS CSI daemonset | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | IAM role ARN of created role |
