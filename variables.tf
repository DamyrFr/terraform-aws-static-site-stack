variable "domain" {
  description = "The domain of static website"
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

variable "https_redirect" {
  description = "Select if the site is redirect to https"
  type        = bool
  default     = true
}
