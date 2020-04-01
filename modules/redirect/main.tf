resource "aws_s3_bucket" "this" {
  count  = var.enable ? 1 : 0
  bucket = "${var.domain}-redirect"

  website {
    redirect_all_requests_to = "https://${var.domain}"
  }
}
