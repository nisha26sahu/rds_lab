data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_vpc" "ta_vpc" {
  filter {
    name   = "tag:Name"
    values = ["lab-vpc"]
  }
}

data "aws_subnet" "public" {
  filter {
    name   = "tag:Name"
    values = ["public"]
  }
}

data "aws_subnet" "private" {
  filter {
    name   = "tag:Name"
    values = ["private"]
  }
}