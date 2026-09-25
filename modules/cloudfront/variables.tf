variable "s3_bucket_regional_domain_name" {
    type        = string
    description = "Regional domain name of the S3 bucket CloudFront will use as its origin"
}

variable "environment" {
    type        = string 
    description = "Environment name (dev, staging, prod) used for naming and tagging" 
}