

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
| error | The name of website error files | `string` | `"error.html"` | no |
| index | The name of website index files | `string` | `"index.html"` | no |
| name | The name of the S3 bucket | `string` | `"static-blog"` | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket\_arn | The arn of S3 bucket |
| bucket\_domain\_name | The full domain for S3 |
| bucket\_id | The id of S3 bucket |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
