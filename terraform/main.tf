module "cdn" {
  source  = "cloudposse/cloudfront-s3-cdn/aws"
  version = "0.84.0"

  origin_bucket     = data.aws_s3_bucket.this.bucket
  aliases           = [data.aws_route53_zone.this.name]
  dns_alias_enabled = true
  parent_zone_name  = data.aws_route53_zone.this.name
}