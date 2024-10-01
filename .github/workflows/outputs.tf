output "ec2_public_ip" {

  value = aws_instance.webapp_ec2.public_ip

}
 
output "ecr_repository_url" {

  value = aws_ecr_repository.webapp_repo.repository_url

}