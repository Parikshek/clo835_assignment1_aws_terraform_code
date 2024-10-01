provider "aws" {
  region = "us-east-1"
}
 
resource "aws_ecr_repository" "webapp_repo" {
  name = "clo835.assignment1"
}
 
resource "aws_instance" "webapp_ec2" {
  ami           = "ami-0e54eba7c51c234f6"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  key_name      = "clo835.assignment1"
 
  tags = {
    Name = "WebAppEC2"
  }
}