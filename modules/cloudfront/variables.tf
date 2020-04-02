variable "bucket_id" {
  description = "The S3 backend Id"
  type        = string
}

variable "domain" {
  description = "The website domain"
  type        = string
}

variable "bucket_domain" {
  description = "Full domain of S3 bucket"
  type        = string
}

variable "http_ver" {
  description = "HTTP version for Cloudfront distribution"
  type        = string
  default     = "http2"
}

variable "certificate" {
  description = "Certificate ARN"
  type        = string
}

variable "index" {
  description = "The name of website index files"
  type        = string
  default     = "index.html"
}

variable "error" {
  description = "The name of website error files"
  type        = string
  default     = "error.html"
}

variable "ttl_min" {
  description = "Minimal ttl"
  type        = number
  default     = 0
}

variable "ttl_def" {
  description = "Default ttl"
  type        = number
  default     = 3600
}

variable "ttl_max" {
  description = "Maximum ttl"
  type        = number
  default     = 86400
}
