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
| [aws_iam_role_policy.kms_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.secretsmanager_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.ssm_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_policy_document.kms_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.secretsmanager_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.ssm_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.trust](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_oidc_issuer_url"></a> [eks\_cluster\_oidc\_issuer\_url](#input\_eks\_cluster\_oidc\_issuer\_url) | Issuer URL of the cluster's OIDC provider | `string` | n/a | yes |
| <a name="input_eks_cluster_oidc_provider_arn"></a> [eks\_cluster\_oidc\_provider\_arn](#input\_eks\_cluster\_oidc\_provider\_arn) | ARN of the cluster's OIDC provider | `string` | n/a | yes |
| <a name="input_iam_role_prefix"></a> [iam\_role\_prefix](#input\_iam\_role\_prefix) | Prefix for generated IAM role name - will be appended with '-aws-load-balancer-controller' | `string` | n/a | yes |
| <a name="input_kms_key_arns"></a> [kms\_key\_arns](#input\_kms\_key\_arns) | List of KMS keys that the created role should have access to | `list(string)` | n/a | yes |
| <a name="input_kubernetes_namespace"></a> [kubernetes\_namespace](#input\_kubernetes\_namespace) | The namespace where the AWS Load Balancer Controller pods are deployed | `string` | n/a | yes |
| <a name="input_kubernetes_service_acount_name"></a> [kubernetes\_service\_acount\_name](#input\_kubernetes\_service\_acount\_name) | The name of the service account attached to the AWS Load Balancer Controller deployment | `string` | n/a | yes |
| <a name="input_secretsmanager_secrets_arns"></a> [secretsmanager\_secrets\_arns](#input\_secretsmanager\_secrets\_arns) | List of Secrets Manager Secret ARNs that the created role should have access to | `list(string)` | n/a | yes |
| <a name="input_ssm_parameter_arns"></a> [ssm\_parameter\_arns](#input\_ssm\_parameter\_arns) | List of SSM Parameter ARNs that the created role should have access to | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | IAM role ARN of created role |
