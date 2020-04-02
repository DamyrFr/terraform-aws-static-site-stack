# Terraform for create a static website (S3 / Cloudfront / ACM)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain | The domain of static website | `string` | n/a | yes |
| error | The name of website error files | `string` | `"error.html"` | no |
| https\_redirect | Select if the site is redirect to https | `bool` | `true` | no |
| index | The name of website index files | `string` | `"index.html"` | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket\_domain\_name | The full domain for S3 |
| bucket\_id | The id of website S3 bucket |
| cdn\_arn | The cloudfront distribution arn |
| cdn\_domain | AWS domain for cloudfront |
| cdn\_id | The cloudfront distribution id |
| cert\_arn | The domain ARN |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
