output "cert_arn" {
  description = "The domain ARN"
  value       = module.certificate.arn
}

output "cdn_id" {
  description = "The cloudfront distribution id"
  value       = module.cloudfront.cdn_id
}

output "cdn_arn" {
  description = "The cloudfront distribution arn"
  value       = module.cloudfront.cdn_arn
}

output "cdn_domain" {
  description = "AWS domain for cloudfront"
  value       = module.cloudfront.cdn_domain
}

output "bucket_id" {
  description = "The id of website S3 bucket"
  value       = module.s3.bucket_id
}

output "bucket_domain_name" {
  description = "The full domain for S3"
  value       = module.s3.bucket_domain_name
}
