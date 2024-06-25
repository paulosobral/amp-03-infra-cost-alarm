resource "aws_cloudwatch_metric_alarm" "cost_alert" {
  alarm_name          = var.alarm_name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  metric_name         = var.metric_name
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.threshold
  alarm_description   = var.alarm_description

  alarm_actions = [
    module.sns_email_topic.arn
  ]

  ok_actions = [
    module.sns_email_topic.arn
  ]

  insufficient_data_actions = []

  dimensions = {
    ServiceName = "Amazon Elastic Compute Cloud - Compute"
  }
}