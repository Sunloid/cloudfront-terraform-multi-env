variable "aws_region" {
    description = "AWS region to deploy into" 
    type = string
    default = "ap-south-1"
}

variable "project_name" {
    description = "Name used to prefix/tag all resources" 
    type = string
    default = "cloudfront-terraform-mul-env"
}

variable "bucket_name" {
    type = string
    description = "Name of the common bucket"
}