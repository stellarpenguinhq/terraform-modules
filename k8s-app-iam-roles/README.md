## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.19 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ack_iam_controller"></a> [ack\_iam\_controller](#module\_ack\_iam\_controller) | ./modules/ack-iam-controller | n/a |
| <a name="module_aws_load_balancer_controller"></a> [aws\_load\_balancer\_controller](#module\_aws\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks_addon_ebs_csi"></a> [eks\_addon\_ebs\_csi](#module\_eks\_addon\_ebs\_csi) | ./modules/eks-addon-ebs-csi | n/a |
| <a name="module_eks_addon_vpc_cni"></a> [eks\_addon\_vpc\_cni](#module\_eks\_addon\_vpc\_cni) | ./modules/eks-addon-vpc-cni | n/a |
| <a name="module_eks_iam_operator"></a> [eks\_iam\_operator](#module\_eks\_iam\_operator) | ./modules/eks-iam-operator | n/a |
| <a name="module_external_dns"></a> [external\_dns](#module\_external\_dns) | ./modules/external-dns | n/a |
| <a name="module_external_secrets"></a> [external\_secrets](#module\_external\_secrets) | ./modules/external-secrets | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ack_iam_controller"></a> [ack\_iam\_controller](#input\_ack\_iam\_controller) | n/a | <pre>object({<br/>    enabled                        = bool<br/>    kubernetes_service_acount_name = optional(string, "ack-iam-controller")<br/>    kubernetes_namespace           = optional(string, "default")<br/>    controlled_roles_iam_prefix    = optional(string, "")<br/>  })</pre> | <pre>{<br/>  "enabled": false<br/>}</pre> | no |
| <a name="input_aws_load_balancer_controller"></a> [aws\_load\_balancer\_controller](#input\_aws\_load\_balancer\_controller) | n/a | <pre>object({<br/>    enabled                        = bool<br/>    kubernetes_service_acount_name = optional(string, "aws-load-balancer-controller")<br/>    kubernetes_namespace           = optional(string, "default")<br/>  })</pre> | <pre>{<br/>  "enabled": false<br/>}</pre> | no |
| <a name="input_eks_addon_ebs_csi"></a> [eks\_addon\_ebs\_csi](#input\_eks\_addon\_ebs\_csi) | n/a | <pre>object({<br/>    enabled                        = bool<br/>    kubernetes_service_acount_name = optional(string, "ebs-csi-controller-sa")<br/>    kubernetes_namespace           = optional(string, "default")<br/>  })</pre> | <pre>{<br/>  "enabled": false<br/>}</pre> | no |
| <a name="input_eks_addon_vpc_cni"></a> [eks\_addon\_vpc\_cni](#input\_eks\_addon\_vpc\_cni) | n/a | <pre>object({<br/>    enabled                        = bool<br/>    kubernetes_service_acount_name = optional(string, "aws-node")<br/>    kubernetes_namespace           = optional(string, "default")<br/>  })</pre> | <pre>{<br/>  "enabled": false<br/>}</pre> | no |
| <a name="input_eks_cluster_oidc_issuer_url"></a> [eks\_cluster\_oidc\_issuer\_url](#input\_eks\_cluster\_oidc\_issuer\_url) | Issuer URL of the cluster's OIDC provider | `string` | n/a | yes |
| <a name="input_eks_cluster_oidc_provider_arn"></a> [eks\_cluster\_oidc\_provider\_arn](#input\_eks\_cluster\_oidc\_provider\_arn) | ARN of the cluster's OIDC provider | `string` | n/a | yes |
| <a name="input_eks_iam_operator"></a> [eks\_iam\_operator](#input\_eks\_iam\_operator) | n/a | <pre>object({<br/>    enabled                        = bool<br/>    kubernetes_service_acount_name = optional(string, "eks-iam-operator")<br/>    kubernetes_namespace           = optional(string, "default")<br/>    controlled_roles_iam_prefix    = optional(string, "")<br/>  })</pre> | <pre>{<br/>  "enabled": false<br/>}</pre> | no |
| <a name="input_external_dns"></a> [external\_dns](#input\_external\_dns) | n/a | <pre>object({<br/>    enabled                        = bool<br/>    kubernetes_service_acount_name = optional(string, "external-dns")<br/>    kubernetes_namespace           = optional(string, "default")<br/>  })</pre> | <pre>{<br/>  "enabled": false<br/>}</pre> | no |
| <a name="input_external_secrets"></a> [external\_secrets](#input\_external\_secrets) | n/a | <pre>object({<br/>    enabled                        = bool<br/>    allow_secrets_write            = optional(bool, false)<br/>    kubernetes_service_acount_name = optional(string, "external-secrets")<br/>    kubernetes_namespace           = optional(string, "default")<br/>    ssm_parameter_arns             = optional(list(string), [])<br/>    kms_key_arns                   = optional(list(string), [])<br/>    secretsmanager_secret_arns     = optional(list(string), [])<br/>  })</pre> | <pre>{<br/>  "enabled": false<br/>}</pre> | no |
| <a name="input_iam_role_prefix"></a> [iam\_role\_prefix](#input\_iam\_role\_prefix) | Prefix for generated IAM role name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_load_balancer_controller_role_arn"></a> [aws\_load\_balancer\_controller\_role\_arn](#output\_aws\_load\_balancer\_controller\_role\_arn) | IAM role ARN for aws-load-balancer-controller |
| <a name="output_eks_addon_ebs_csi_role_arn"></a> [eks\_addon\_ebs\_csi\_role\_arn](#output\_eks\_addon\_ebs\_csi\_role\_arn) | IAM role ARN for eks-addon-ebs-csi |
| <a name="output_eks_addon_vpc_cni_role_arn"></a> [eks\_addon\_vpc\_cni\_role\_arn](#output\_eks\_addon\_vpc\_cni\_role\_arn) | IAM role ARN for eks-addon-vpc-cni |
| <a name="output_eks_iam_operator_role_arn"></a> [eks\_iam\_operator\_role\_arn](#output\_eks\_iam\_operator\_role\_arn) | IAM role ARN for eks-iam-operator |
| <a name="output_external_dns_role_arn"></a> [external\_dns\_role\_arn](#output\_external\_dns\_role\_arn) | IAM role ARN for external-dns |
| <a name="output_external_secrets_role_arn"></a> [external\_secrets\_role\_arn](#output\_external\_secrets\_role\_arn) | IAM role ARN for external-secrets |
