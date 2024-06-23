# General Variables
variable "region" {
  type        = string
  description = "Defines the AWS region."
  default     = "us-east-1"
}

# CloudWatch Metric Alarm Variables
variable "alarm_name" {
  type        = string
  description = "The name of the alarm."
  default     = "Cost Alert"
}

variable "comparison_operator" {
  type        = string
  description = "The arithmetic operation to use when comparing the specified statistic and threshold."
  default     = "GreaterThanThreshold"
}

variable "evaluation_periods" {
  type        = number
  description = "The number of periods over which data is compared to the specified threshold."
  default     = 1
}

variable "metric_name" {
  type        = string
  description = "The name of the metric associated with the alarm."
  default     = "EstimatedCharges"
}

variable "namespace" {
  type        = string
  description = "The namespace of the metric associated with the alarm."
  default     = "AWS/Billing"
}

variable "period" {
  type        = number
  description = "The length of time in seconds that the metric associated with the alarm is evaluated."
  default     = 86400
}

variable "statistic" {
  type        = string
  description = "The statistic to apply to the metric associated with the alarm."
  default     = "Maximum"
}

variable "threshold" {
  type        = number
  description = "The value against which the specified statistic is compared."
  default     = 1
}

variable "alarm_description" {
  type        = string
  description = "The description of the alarm."
  default     = "This metric monitors estimated charges and sends an email when the threshold is exceeded."
}

# SNS Topic Variables
variable "sns_topic_name" {
  type    = string
  default = "cost_alert"
}

variable "email_address_1" {
  type    = string
  default = "xxx@yyyy.com"
}

variable "email_address_2" {
  type    = string
  default = "xxx@yyyy.com"
}