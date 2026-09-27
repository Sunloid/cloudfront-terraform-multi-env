module "s3_origin" {
    source      = "../../modules/s3-origin"
    bucket_name = var.bucket_name
    cloudfront_distribution_arn = module.cloudfront.distribution_arn
}