variable "domain_name" {
  type        = string
  description = "The domain name to host site"
}

variable "aliases" {
  type        = list(string)
  description = "Additional aliases for Cloudfront"
  default     = []
}
