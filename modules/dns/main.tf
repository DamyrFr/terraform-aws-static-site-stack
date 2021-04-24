resource "aws_route53_zone" "this" {
  name = var.domain

  tags = {
    project = var.domain
  }
}
