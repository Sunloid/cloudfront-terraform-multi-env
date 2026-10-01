output "cloudfront_domain_name" {
  value = module.cloudfront.domain_name
}

output "bucket_regional_domain_name" {
  value = module.s3_origin.bucket_regional_domain_name
}

