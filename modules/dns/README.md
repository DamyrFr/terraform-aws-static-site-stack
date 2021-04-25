# Local module : Route53

Module used for deploy the Route53 zone.

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
| domain | The domain name | `string` | `"exemple.org"` | no |

## Outputs

| Name | Description |
|------|-------------|
| zone\_id | ZoneId for DNS |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
