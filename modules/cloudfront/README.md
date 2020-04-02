

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
| bucket\_domain | Full domain of S3 bucket | `string` | n/a | yes |
| bucket\_id | The S3 backend Id | `string` | n/a | yes |
| certificate | Certificate ARN | `string` | n/a | yes |
| domain | The website domain | `string` | n/a | yes |
| error | The name of website error files | `string` | `"error.html"` | no |
| http\_ver | HTTP version for Cloudfront distribution | `string` | `"http2"` | no |
| index | The name of website index files | `string` | `"index.html"` | no |
| ttl\_def | Default ttl | `number` | `3600` | no |
| ttl\_max | Maximum ttl | `number` | `86400` | no |
| ttl\_min | Minimal ttl | `number` | `0` | no |

## Outputs

| Name | Description |
|------|-------------|
| cdn\_arn | The cloudfront distribution arn |
| cdn\_domain | AWS domain for cloudfront |
| cdn\_id | The cloudfront distribution id |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
