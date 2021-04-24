output "certificate_arn" {
  description = "The ARN of the certificate"
  value       = aws_acm_certificate_validation.this.certificate_arn
  #  value       = element(concat(aws_acm_certificate_validation.this.*.certificate_arn, aws_acm_certificate.this.*.arn, [""]), 0)
}
