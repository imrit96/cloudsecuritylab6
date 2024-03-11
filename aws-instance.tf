# EC2 instance definition
resource "aws_instance" "my_instance" {
  ami           = "ami-0639d0300c73bb369" # Update with your desired AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "my-ec2-instance"
  }

  iam_instance_profile = aws_iam_instance_profile.my_instance_profile.name # Associate instance with IAM instance profile
}

# IAM instance profile definition
resource "aws_iam_instance_profile" "my_instance_profile" {
  name = "my-iam-instance-profile"

  role = aws_iam_role.my_role.name # Associate instance profile with IAM role
}

# S3 bucket definition
resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-22171"
  acl    = "private"
  tags = {
    Name = "my-s3-bucket"
  }
}
