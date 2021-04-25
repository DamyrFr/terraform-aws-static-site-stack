# Terraform for create a static website (S3 / Cloudfront)

Simple module to deploy a S3 and Cloudfront stack on AWS.

![AWS SCHEMA](./AWS-modules.png)

This module was originally design for this article (in French) : [link](https://www.damyr.fr/posts/premier-module-terraform/)

Feel free to contribute !

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
| index | The name of website index files | `string` | `"index.html"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
