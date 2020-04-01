variable "domain" {
  description = "The website domain"
  type        = string
}

variable "enable" {
  description = "Define if the https redirect is enable or not"
  type        = bool
  default     = true
}
