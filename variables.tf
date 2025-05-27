variable "ec2_instance_type"{
    default = "t2.micro"

}

variable "ec2_root_storage_size" {
    default = 15
    type = number
  
}

variable "ec2_ami_id" {
    default = ""
    type = string
  
}