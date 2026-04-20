<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.14.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 6 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_eks_pod_identity_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_pod_identity_association) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.inline](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.managed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.trust](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the cluster, used in all named resources | `string` | n/a | yes |
| <a name="input_create_pod_identity_association"></a> [create\_pod\_identity\_association](#input\_create\_pod\_identity\_association) | Whether or not to create the Pod Identity Association (set to false for addons) | `bool` | `true` | no |
| <a name="input_inline_policies"></a> [inline\_policies](#input\_inline\_policies) | Map of inline policies, where key is the policy name and value is the JSON formatted policy document | `map(string)` | `{}` | no |
| <a name="input_managed_policies"></a> [managed\_policies](#input\_managed\_policies) | String set of managed policy ARNs to attach to the role | `set(string)` | `[]` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The IAM role name; unless the override variable is used, this will be appended to a generated role name | `string` | n/a | yes |
| <a name="input_role_name_override"></a> [role\_name\_override](#input\_role\_name\_override) | Override IAM role name genration | `string` | `""` | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | Service account name used in the cluster to assume this IAM role | `string` | n/a | yes |
| <a name="input_service_account_namespace"></a> [service\_account\_namespace](#input\_service\_account\_namespace) | Namespace of the service account used in the cluster to assume this IAM role | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | ARN of the IAM role for EKS pod identity |
<!-- END_TF_DOCS -->