resource "aws_route53_zone" "example" {
  name = "devops-challenge-dev"
}


resource "aws_route53_record" "example" {
  name    = "example.com"
  type    = "A"
  zone_id = aws_route53_zone.example.zone_id

  alias {
    name                   = aws_lb.example.dns_name
    zone_id                = aws_lb.example.zone_id
    evaluate_target_health = true
  }
}

resource "aws_acm_certificate_validation" "example" {
  certificate_arn = aws_acm_certificate.example.arn

  timeouts {
    create = "30m"
  }

  depends_on = [aws_route53_record.example]
}