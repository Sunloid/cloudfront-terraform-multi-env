module "s3_origin" {
    source      = "../../modules/s3-origin"
    bucket_name = var.bucket_name
}