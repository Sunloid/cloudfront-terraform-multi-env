module "s3_origin" {
    source                      = "../../modules/s3-origin"
    bucket_name                 = var.bucket_name
    cloudfront_distribution_arn = module.cloudfront.distribution_arn
}

module "cloudfront" {
    source                          = "../../modules/cloudfront"
    s3_bucket_regional_domain_name  = module.s3_origin.bucket_regional_domain_name
    environment                     = "prod"
}