# Terraform for create a static website

Simple module to deploy a static hosting stack (witch access logs and user for deployment).

This stack is composed by there services :

* `Cloudfront` : used as front entry point CDN
* `S3` : for two founction, static asset hosting and Cloudfront access logs
* `ACM` : create certificate for the website
* `Route53` : for the DNS management
* `IAM` : Create IAM user with rigths for deployment (update S3 assets and invalid cache)

Each of services has a modules on `./modules`.

![AWS SCHEMA](./AWS-modules.png)

This module was originally design for this article (in French) : [link](https://www.damyr.fr/posts/premier-module-terraform/)

## Exemple

```hcl
module "site" {
  source  = "terraform-aws-statc-stack/static/aws"
  version = "2.0.0"
	domain  = "yourdomain"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

AWS

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain | The domain of static website | `string` | n/a | yes |
| error | The name of website error files | `string` | `"error.html"` | no |
| index | The name of website index files | `string` | `"index.html"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
