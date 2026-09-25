variable "aws_region" {
    type        = string 
    description = "AWS region in which the resources are deployed to"
    default     = "ap-south-1"
}

variable "bucket_name" {
    type        = string 
    description = "Name of the S3 bucket" 
    default     = "cloudfront-terraform-multiple-env-staging"
}

variable "dynamo_table" {
    type        = string
    description = "Name of the dynamoDB table"
    default     = "cloudfront-terraform-multiple-env-table"
}
