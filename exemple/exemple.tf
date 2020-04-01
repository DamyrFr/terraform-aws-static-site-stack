provider "aws" {
  region = "eu-west-1"
}

module "exemple" {
  source = "../"
  domain = "exemple.damyr.fr"
}
