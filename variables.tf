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

variable "logs_retention" {
  description = "Number of days for logs retention"
  type        = number
  default     = 31
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
