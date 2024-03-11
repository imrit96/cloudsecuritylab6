resource "aws_iam_policy_attachment" "my_policy" {
  count = 0 
  name       = "my-policy-detachment"
  roles      = [aws_iam_role.my_role.name]
  policy_arn = aws_iam_policy.my_policy.arn
  
}


  
