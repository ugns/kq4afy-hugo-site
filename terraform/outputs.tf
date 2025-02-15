output "cloudFrontDistributionID" {
  value = module.cdn.cf_id
}

output "URL" {
  value = module.cdn.s3_bucket
}

output "hostname" {
  value = module.cdn.aliases[0]
}
