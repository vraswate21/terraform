provider "aws" {
    region ="us-east-1"
    access_key = ""
    secret_key = ""


}

resource "aws_instance" "example"{
    ami   = "ami-0c02fb55956c7d314"
    instance_type = "t2.micro"

    tags = {
        name = "myec2instance"
    }
}