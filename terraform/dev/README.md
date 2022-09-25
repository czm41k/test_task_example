## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.15.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_all-infra"></a> [all-infra](#module\_all-infra) | ../modules/test-task-infra | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Name of application to be uploaded to ECR | `string` | `"python-webserver"` | no |
| <a name="input_ecr_retention"></a> [ecr\_retention](#input\_ecr\_retention) | How many version of images to keep | `number` | `5` | no |
| <a name="input_env"></a> [env](#input\_env) | Whether to force destroy s3 state bucket or not | `string` | `"dev"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"czm41k"` | no |
| <a name="input_user_arns_access_list"></a> [user\_arns\_access\_list](#input\_user\_arns\_access\_list) | List of ARNs to grant access to infra | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_url"></a> [cluster\_url](#output\_cluster\_url) | HTTPS endpoint of EKS cluster we created |
| <a name="output_registry_url"></a> [registry\_url](#output\_registry\_url) | HTTPS endpoint of EKS cluster we created |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.15.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_all-infra"></a> [all-infra](#module\_all-infra) | ../modules/test-task-infra | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Name of application to be uploaded to ECR | `string` | `"python-webserver"` | no |
| <a name="input_ecr_retention"></a> [ecr\_retention](#input\_ecr\_retention) | How many version of images to keep | `number` | `5` | no |
| <a name="input_env"></a> [env](#input\_env) | Whether to force destroy s3 state bucket or not | `string` | `"dev"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"czm41k"` | no |
| <a name="input_user_arns_access_list"></a> [user\_arns\_access\_list](#input\_user\_arns\_access\_list) | List of ARNs to grant access to infra | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_url"></a> [cluster\_url](#output\_cluster\_url) | HTTPS endpoint of EKS cluster we created |
| <a name="output_registry_url"></a> [registry\_url](#output\_registry\_url) | HTTPS endpoint of EKS cluster we created |
