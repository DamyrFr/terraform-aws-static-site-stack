resource "aws_s3_bucket" "this" {
  bucket = var.name
  acl    = "public-read"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }

  policy = <<EOF
{
  "Id": "bucket_policy_site",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "bucket_policy_site_main",
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${var.name}/*",
      "Principal": "*"
    }
  ]
}
EOF
  website {
    index_document = var.index
    error_document = var.error
  }

  tags = {
    project = var.name
  }
}
