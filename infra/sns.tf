

module "sns_email_topic" {
  source = "./modules/tf_sns_email"

  display_name    = "Cost Alert SNS Topic"
  email_address_1 = var.email_address_1
  email_address_2 = var.email_address_2
  owner           = "formacao-sre-iac:formacao-sre-cost-alarm-sns-iac"
  stack_name      = "formacao-sre-cost-alarm-sns-iac"
}