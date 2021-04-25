module "s3" {
  source = "./modules/s3"

  name  = var.domain
  index = var.index
  error = var.error
}

module "acm" {
  source = "./modules/acm"

  zone_id = var.zone_id
  domain  = var.domain
}

module "cloudfront" {
  source = "./modules/cloudfront"

  bucket_id      = module.s3.bucket_id
  bucket_domain  = module.s3.bucket_domain_name
  certificate    = module.acm.certificate_arn
  logs_retention = var.logs_retention
  ttl_min        = var.ttl_min
  ttl_max        = var.ttl_max
  ttl_def        = var.ttl_def
  domain         = var.domain
  index          = var.index
  error          = var.error
}

module "iam" {
  source = "./modules/iam"

  domain     = var.domain
  cdn_arn    = module.cloudfront.cdn_arn
  bucket_arn = module.s3.bucket_arn
}
