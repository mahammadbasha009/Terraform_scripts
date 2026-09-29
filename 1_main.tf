provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "web_app" {
  ami           = ""
  instance_type = ""

  tags = {
    Name = "Terra"
  }
}
