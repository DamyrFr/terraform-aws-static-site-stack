resource "aws_iam_user" "cd" {
  name = "deployment"
  path = "/"

  tags = {
    project = var.domain
  }
}

resource "aws_iam_user_policy" "cloudfront" {
  name = "site-publisher-${var.domain}-cloudfront"
  user = aws_iam_user.cd.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "cloudfront:ListInvalidations",
                "cloudfront:GetInvalidation",
                "cloudfront:CreateInvalidation"
            ],
            "Resource": "${var.cdn_arn}"
        }
    ]
}
EOF
}

resource "aws_iam_user_policy" "s3" {
  name = "site-publisher-${var.domain}-s3"
  user = aws_iam_user.cd.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:PutObjectTagging"
            ],
            "Resource": "${var.bucket_arn}/*"
        }
    ]
}
EOF
}
