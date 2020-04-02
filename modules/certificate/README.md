

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain | The blog domain | `string` | n/a | yes |
| validation | Type of validation | `string` | `"DNS"` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | Certificate ARN |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
