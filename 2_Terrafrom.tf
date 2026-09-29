provider.tf

provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}


main.tf

resource "aws_instance" "my_app" {
	ami="${var.ami}"
	instance_type="${var.instance_type}"
	key_name="${var.key_name}"
	tags = {
	Name = "my_web_app"
	}
}

input.tf

variable "ami" {
	description="AMI"
	default="ami-0fef201115eefe936"
}

variable "instance_type" {
	description="AWS_INSTANCE"
	default="t3.micro"
}

variable "key_name" {
	description="KEY"
	default="kops"
}
