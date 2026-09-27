variable "distribution_id" {
    type = string
    description = "The CloudFront distribution to monitor"
}

variable "environment" {
    type = string 
    description = "For naming the dashboard/alarms"
}

variable "alarm_email" {
    type = string 
    description = "where SNS should send alerts"
}