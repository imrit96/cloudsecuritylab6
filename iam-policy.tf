# Define the IAM policy document
data "aws_iam_policy_document" "my_policy_document" {
  statement {
    actions   = ["s3:PutObject", "s3:GetObject"]
    resources = ["arn:aws:s3:::example-bucket/*"]
  }
}

# Create the IAM policy
resource "aws_iam_policy" "my_policy" {
  name   = "my-iam-policy"
  policy = data.aws_iam_policy_document.my_policy_document.json
}

# Attach the IAM policy to the IAM role
resource "aws_iam_policy_attachment" "my_policy_attachment" {
  name       = "my-policy-attachment"
  roles      = [aws_iam_role.my_role.name]
  policy_arn = aws_iam_policy.my_policy.arn
  
}
