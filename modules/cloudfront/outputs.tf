output "cdn_id" {
  description = "The cloudfront distribution id"
  value       = aws_cloudfront_distribution.this.id
}

output "cdn_arn" {
  description = "The cloudfront distribution arn"
  value       = aws_cloudfront_distribution.this.arn
}

output "cdn_domain" {
	description = "AWS domain for cloudfront"
	value		= aws_cloudfront_distribution.this.domain_name
}
