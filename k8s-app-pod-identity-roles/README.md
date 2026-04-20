<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.14.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.22.0 |

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_ack_iam_controller"></a> [ack\_iam\_controller](#module\_ack\_iam\_controller) | ./ack-iam-controller | n/a |
| <a name="module_aws_ebs_csi"></a> [aws\_ebs\_csi](#module\_aws\_ebs\_csi) | ./aws-ebs-csi | n/a |
| <a name="module_aws_efs_csi"></a> [aws\_efs\_csi](#module\_aws\_efs\_csi) | ./aws-efs-csi | n/a |
| <a name="module_aws_load_balancer_controller"></a> [aws\_load\_balancer\_controller](#module\_aws\_load\_balancer\_controller) | ./aws-load-balancer-controller | n/a |
| <a name="module_aws_vpc_cni"></a> [aws\_vpc\_cni](#module\_aws\_vpc\_cni) | ./aws-vpc-cni | n/a |
| <a name="module_external_dns"></a> [external\_dns](#module\_external\_dns) | ./external-dns | n/a |
| <a name="module_external_secrets"></a> [external\_secrets](#module\_external\_secrets) | ./external-secrets | n/a |

## Resources

| Name | Type |
| ---- | ---- |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_ack_iam_controller"></a> [ack\_iam\_controller](#input\_ack\_iam\_controller) | Config for the ack-iam-controller pod identity role. Pass only the keys you want to override (e.g. service\_account\_name = "foo"). | <pre>object({<br/>    enabled                   = bool<br/>    role_name                 = optional(string, "ack-iam-controller")<br/>    service_account_name      = optional(string, "ack-iam-controller")<br/>    service_account_namespace = optional(string, "default")<br/>  })</pre> | n/a | yes |
| <a name="input_aws_ebs_csi"></a> [aws\_ebs\_csi](#input\_aws\_ebs\_csi) | Config for the aws-ebs-csi pod identity role. Pass only the keys you want to override (e.g. service\_account\_name = "foo"). | <pre>object({<br/>    enabled                   = bool<br/>    role_name                 = optional(string, "aws-ebs-csi")<br/>    service_account_name      = optional(string, "ebs-csi-controller-sa")<br/>    service_account_namespace = optional(string, "kube-system")<br/>  })</pre> | n/a | yes |
| <a name="input_aws_efs_csi"></a> [aws\_efs\_csi](#input\_aws\_efs\_csi) | Config for the aws-efs-csi pod identity role. Pass only the keys you want to override (e.g. service\_account\_name = "foo"). | <pre>object({<br/>    enabled                   = bool<br/>    role_name                 = optional(string, "aws-efs-csi")<br/>    service_account_name      = optional(string, "efs-csi-controller-sa")<br/>    service_account_namespace = optional(string, "kube-system")<br/>  })</pre> | n/a | yes |
| <a name="input_aws_load_balancer_controller"></a> [aws\_load\_balancer\_controller](#input\_aws\_load\_balancer\_controller) | Config for the aws-load-balancer-controller pod identity role. Pass only the keys you want to override (e.g. service\_account\_name = "foo"). | <pre>object({<br/>    enabled                   = bool<br/>    role_name                 = optional(string, "aws-load-balancer-controller")<br/>    service_account_name      = optional(string, "aws-load-balancer-controller")<br/>    service_account_namespace = optional(string, "default")<br/>  })</pre> | n/a | yes |
| <a name="input_aws_vpc_cni"></a> [aws\_vpc\_cni](#input\_aws\_vpc\_cni) | Config for the aws-vpc-cni pod identity role. Pass only the keys you want to override (e.g. service\_account\_name = "foo"). | <pre>object({<br/>    enabled                   = bool<br/>    role_name                 = optional(string, "aws-vpc-cni")<br/>    service_account_name      = optional(string, "aws-node")<br/>    service_account_namespace = optional(string, "kube-system")<br/>  })</pre> | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the cluster, used in all named resources | `string` | n/a | yes |
| <a name="input_external_dns"></a> [external\_dns](#input\_external\_dns) | Config for the external-dns pod identity role. Pass only the keys you want to override (e.g. service\_account\_name = "foo"). | <pre>object({<br/>    enabled                   = bool<br/>    role_name                 = optional(string, "external-dns")<br/>    service_account_name      = optional(string, "external-dns")<br/>    service_account_namespace = optional(string, "default")<br/>  })</pre> | n/a | yes |
| <a name="input_external_secrets"></a> [external\_secrets](#input\_external\_secrets) | Config for the external-secrets pod identity role. Pass only the keys you want to override (e.g. service\_account\_name = "foo"). ssm\_kms\_arn is required when using external-secrets. | <pre>object({<br/>    enabled                   = bool<br/>    role_name                 = optional(string, "external-secrets")<br/>    service_account_name      = optional(string, "external-secrets")<br/>    service_account_namespace = optional(string, "default")<br/>    allow_secrets_write       = optional(bool, false)<br/>    ssm_kms_arn               = string<br/>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_ack_iam_controller_role_arn"></a> [ack\_iam\_controller\_role\_arn](#output\_ack\_iam\_controller\_role\_arn) | ARN of the ACK IAM controller IAM role (null if disabled) |
| <a name="output_aws_ebs_csi_role_arn"></a> [aws\_ebs\_csi\_role\_arn](#output\_aws\_ebs\_csi\_role\_arn) | ARN of the EBS CSI driver IAM role (null if disabled) |
| <a name="output_aws_efs_csi_role_arn"></a> [aws\_efs\_csi\_role\_arn](#output\_aws\_efs\_csi\_role\_arn) | ARN of the EFS CSI driver IAM role (null if disabled) |
| <a name="output_aws_load_balancer_controller_role_arn"></a> [aws\_load\_balancer\_controller\_role\_arn](#output\_aws\_load\_balancer\_controller\_role\_arn) | ARN of the AWS Load Balancer Controller IAM role (null if disabled) |
| <a name="output_aws_vpc_cni_role_arn"></a> [aws\_vpc\_cni\_role\_arn](#output\_aws\_vpc\_cni\_role\_arn) | ARN of the VPC CNI IAM role (null if disabled) |
| <a name="output_external_dns_role_arn"></a> [external\_dns\_role\_arn](#output\_external\_dns\_role\_arn) | ARN of the External DNS IAM role (null if disabled) |
| <a name="output_external_secrets_role_arn"></a> [external\_secrets\_role\_arn](#output\_external\_secrets\_role\_arn) | ARN of the External Secrets IAM role (null if disabled) |
<!-- END_TF_DOCS -->