variable "name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "static-blog"
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

