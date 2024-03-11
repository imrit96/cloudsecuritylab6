provider "aws" {
  region = "ca-central-1" # Update with your desired region
}

# Include IAM policy configuration
terraform {
  required_version = ">= 0.13"
}

# Include IAM role configuration
terraform {
  required_version = ">= 0.13"
}

# Include EC2 instance configuration
terraform {
  required_version = ">= 0.13"
}