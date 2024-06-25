terraform {
  backend "s3" {
    bucket = "terraform-state-amp"
    key    = "amp-03-infra-cost-alarm.tfstate"
    region = "us-east-1"
  }
}