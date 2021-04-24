variable "domain" {
  description = "The domain name"
  type        = string
  default     = "exemple.org"
}

variable "zone_id" {
  description = "The zone ID for the route53"
  type        = string
}
