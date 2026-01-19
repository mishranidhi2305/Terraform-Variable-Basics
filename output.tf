
// Define outputs for AWS instance ID and VPC ID

output "aws_instance_id" {
  value = aws_instance.instance.id
}
output "aws_vpc_id" {
    value = aws_vpc.vpctest.id
  
}