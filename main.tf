provider "aws" {
    region = "eu-west-3"
}

resource "aws_instance" "example" {
    ami = "ami-0e55e373"
    instance_type = "t2.micro"
    tags {
        Name = "terraform-example"
    }
}