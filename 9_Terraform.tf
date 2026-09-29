provider.tf

provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}


main.tf

locals {
  instances = {
    "web-1" = {
      ami           = "ami-0fef201115eefe936"
      instance_type = "t3.micro"
    }

    "web-2" = {
      ami           = "ami-0fef201115eefe936"
      instance_type = "t3.small"
    }

    "web-3" = {
      ami           = "ami-0fef201115eefe936"
      instance_type = "t3.micro"
    }
  }
}

resource "aws_instance" "my_web" {
  for_each = local.instances

  ami           = each.value.ami
  instance_type = each.value.instance_type

  tags = {
    Name = each.key
  }
}
