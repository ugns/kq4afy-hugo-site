variable "gh_action_role" {
  type        = string
  description = "AWS IAM ARN for Terraform GitHub Actions"
}

variable "domain_name" {
  type        = string
  description = "The domain name to host site"
}

variable "aliases" {
  type        = list(string)
  description = "Additional aliases for Cloudfront"
  default     = []
}
