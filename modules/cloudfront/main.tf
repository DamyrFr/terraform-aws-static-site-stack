resource "aws_cloudfront_distribution" "this" {

  origin {
    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
    domain_name = var.bucket_domain
    origin_id   = var.bucket_id
  }

  enabled             = true
  default_root_object = var.index
  aliases             = [var.domain]

  custom_error_response {
    error_code         = 404
    response_code      = 200
    response_page_path = "/${var.error}"
  }

  http_version = var.http_ver

  default_cache_behavior {
    allowed_methods  = ["HEAD", "GET", "OPTIONS"]
    cached_methods   = ["HEAD", "GET", "OPTIONS"]
    target_origin_id = var.bucket_id

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    min_ttl                = var.ttl_min
    default_ttl            = var.ttl_def
    max_ttl                = var.ttl_max
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn      = var.certificate
    minimum_protocol_version = "TLSv1.2_2018"
    ssl_support_method       = "sni-only"
  }

  tags = {
    project = var.domain
  }
}
