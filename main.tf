module "dns" {
  source = "./modules/dns"

  domain = var.domain
}

module "s3" {
  source = "./modules/s3"

  name  = var.domain
  index = var.index
  error = var.error
}

module "acm" {
  source = "./modules/acm"

  zone_id = module.dns.zone_id
  domain  = var.domain
}

module "cloudfront" {
  source = "./modules/cloudfront"

  bucket_id     = module.s3.bucket_id
  bucket_domain = module.s3.bucket_domain_name
  certificate   = module.acm.certificate_arn
  domain        = var.domain
  index         = var.index
  error         = var.error
}

module "iam" {
  source = "./modules/iam"

  domain     = var.domain
  cdn_arn    = module.cloudfront.cdn_arn
  bucket_arn = module.s3.bucket_arn
}
