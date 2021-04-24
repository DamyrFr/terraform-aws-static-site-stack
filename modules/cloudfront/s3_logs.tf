resource "aws_s3_bucket" "logs" {
  bucket = "cloudfront-logs-${var.domain}"
  acl    = "private"

  lifecycle_rule {
    id      = "cleanup"
    enabled = true

    expiration {
      days = var.logs_retention
    }
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.logs.id

  block_public_acls   = true
  block_public_policy = true
}
