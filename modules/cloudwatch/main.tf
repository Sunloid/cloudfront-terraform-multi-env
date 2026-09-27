resource "aws_sns_topic" "this" {
  name = "${var.environment}-cloudfront-alerts"
}

resource "aws_sns_topic_subscription" "email" {
  topic_arn = aws_sns_topic.this.arn
  protocol  = "email"
  endpoint  = var.alarm_email
}

resource "aws_cloudwatch_metric_alarm" "error_rate" {
  alarm_name          = "${var.environment}-cloudfront-5xx-errors"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "5xxErrorRate"
  namespace           = "AWS/CloudFront"
  period              = 300
  statistic           = "Average"
  threshold           = 5
  alarm_description   = "Alerts when 5xx error rate exceeds 5% for 10 minutes"
  alarm_actions       = [aws_sns_topic.this.arn]

  dimensions = {
    DistributionId = var.distribution_id
    Region         = "Global"
  }
}

resource "aws_cloudwatch_dashboard" "this" {
  dashboard_name = "${var.environment}-cloudfront-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6
        properties = {
          metrics = [
            ["AWS/CloudFront", "Requests", "DistributionId", var.distribution_id, "Region", "Global"]
          ]
          period = 300
          stat   = "Sum"
          region = "us-east-1"
          title  = "Requests"
        }
      },
      {
        type   = "metric"
        x      = 12
        y      = 0
        width  = 12
        height = 6
        properties = {
          metrics = [
            ["AWS/CloudFront", "5xxErrorRate", "DistributionId", var.distribution_id, "Region", "Global"]
          ]
          period = 300
          stat   = "Average"
          region = "us-east-1"
          title  = "5xx Error Rate"
        }
      }
    ]
  })
}