terraform {
    backend "s3" {
        bucket = "cloudfront-terraform-multiple-env"
        key = "prod/terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "cloudfront-terraform-multiple-env-table"
        encrypt = true
    }
}