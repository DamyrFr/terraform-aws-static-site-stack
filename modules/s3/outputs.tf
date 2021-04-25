output "bucket_id" {
  description = "The id of S3 bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The arn of S3 bucket"
  value       = aws_s3_bucket.this.arn
}

output "bucket_domain_name" {
  description = "The full domain for S3"
  value       = aws_s3_bucket.this.bucket_domain_name
}
