variable "domain" {
  description = "The blog domain"
  type        = string
}

variable "validation" {
  description = "Type of validation"
  type        = string
  default     = "DNS"
}
