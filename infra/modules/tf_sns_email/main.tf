## Locals

locals {
  default_tags = {
    "Terraform"        = "true"
    "Terraform-Module" = "deanwilson-sns-email"
  }
}

data "template_file" "cloudformation_sns_stack" {
  template = file("${path.module}/templates/email-sns-stack.json.tpl")

  vars = {
    display_name    = var.display_name
    email_address_1 = var.email_address_1
    email_address_2 = var.email_address_2
    protocol        = var.protocol
  }
}

resource "aws_cloudformation_stack" "sns-topic" {
  name          = var.stack_name
  template_body = data.template_file.cloudformation_sns_stack.rendered

  tags = merge(
    local.default_tags,
    var.additional_tags,
    {
      "Name" = var.stack_name
    },
  )
}

