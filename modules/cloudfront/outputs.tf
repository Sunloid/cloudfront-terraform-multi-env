output "distribution_arn" {
  value       = aws_cloudfront_distribution.this.arn
  description = "ARN of the CloudFront distribution, used to scope the S3 bucket policy"
}

output "distribution_id" {
  value       = aws_cloudfront_distribution.this.id
  description = "ID of the CloudFront distribution"
}

output "domain_name" {
  value       = aws_cloudfront_distribution.this.domain_name
  description = "The *.cloudfront.net URL you'll actually visit"
}