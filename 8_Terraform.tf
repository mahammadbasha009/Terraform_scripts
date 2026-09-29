provider.tf

provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}

main.tf

resource "aws_instance" "web_app" {
  count=3
  ami           = "ami-0fef201115eefe936"
  instance_type = "t3.micro"

  tags = {
    Name = "example-${count.index+1}"
  }
}
