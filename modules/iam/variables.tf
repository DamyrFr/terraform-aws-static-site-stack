variable "domain" {
  description = "The domain name"
  type        = string
  default     = "exemple.org"
}

variable "cdn_arn" {
  description = "Cloudfront distribution ARN"
  type        = string
  default     = "arn:aws:cloudfront::*:*/*"
}

variable "bucket_arn" {
  description = "Hosting bucket ARN"
  type        = string
  default     = "arn:aws:s3:::*/*"
}
