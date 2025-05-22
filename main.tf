# define an input variable for the EC2 instance type

variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"
}

# Define an input for the EC2 instance AMI ID
 variable "ami_id" {
    description = "EC2 AMI ID"
    type = string
 }

 # configure the aws provider using the input variables
 provider "aws" {
    alias = "west"
    region = "us-east-1"

 }

 #create an EC2 instance using the input variables
 resource "aws_instance" "example_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
   
 }

 #define an output variable to expose the public Ip address of the EC2 instance
 output "public_ip" {
    description = "public IP address of the EC2 instance"
    value = aws_instance.example_instance.public_ip   
 }