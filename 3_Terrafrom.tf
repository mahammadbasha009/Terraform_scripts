provider.tf

provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}

main.tf

resource "aws_instance" "web_app" {
  ami           = "ami-0fef201115eefe936"
  instance_type = "t3.micro"

  tags = {
    Name = "Terra"
  }
}

output "public_ip" {
	value = aws_instance.web_app.public_ip
	sensitive = true
}

output "Message" {
	value = "Hi"
}
