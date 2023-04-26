################################
####### IAM user Creation ######
################################

resource "aws_iam_user" "my_user" {
  name = "my_iam_user" # Change this to the desired username
}

resource "aws_iam_policy" "s3_full_access_policy" {
  name = "s3_full_access_policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:*"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_policy" "ec2_full_access_policy" {
  name = "ec2_full_access_policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:*"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "s3_full_access_attachment" {
  user       = aws_iam_user.my_user.name
  policy_arn = aws_iam_policy.s3_full_access_policy.arn
}

resource "aws_iam_user_policy_attachment" "ec2_full_access_attachment" {
  user       = aws_iam_user.my_user.name
  policy_arn = aws_iam_policy.ec2_full_access_policy.arn
}

output "iam_user_arn" {
  value = aws_iam_user.my_user.arn
}
