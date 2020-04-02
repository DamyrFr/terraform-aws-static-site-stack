module "s3" {
  source = "./modules/s3"

  name  = var.domain
  index = var.index
  error = var.error
}

module "cloudfront" {
  source = "./modules/cloudfront"

  bucket_id     = module.s3.bucket_id
  bucket_domain = module.s3.bucket_domain_name
  certificate   = var.certificate
  domain        = var.domain
  index         = var.index
  error         = var.error
}

module "redirect" {
  source = "./modules/redirect"

  domain = var.domain
  enable = var.https_redirect
}
