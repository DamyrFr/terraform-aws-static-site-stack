

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| aws.acm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain | The domain name | `string` | `"exemple.org"` | no |
| zone\_id | The zone ID for the route53 | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| certificate\_arn | The ARN of the certificate |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
