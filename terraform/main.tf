module "cdn" {
  source  = "cloudposse/cloudfront-s3-cdn/aws"
  version = "0.84.0"

  namespace           = "kq4afy"
  stage               = "use1"
  name                = "cdn"
  origin_bucket       = data.aws_s3_bucket.this.bucket
  aliases             = [data.aws_route53_zone.this.name]
  dns_alias_enabled   = true
  parent_zone_name    = data.aws_route53_zone.this.name
  acm_certificate_arn = data.aws_acm_certificate.this.arn
}