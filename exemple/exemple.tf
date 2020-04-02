provider "aws" {
  region = "eu-west-1"
}

module "exemple" {
  source = "../"

  domain      = "exemple.damyr.fr"
  certificate = "arn:aws:acm:us-east-1:523123124:certificate/543c435v-90zr-3r5f-t410-cb6zf97fd23"
}
