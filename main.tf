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

data "aws_subnet" "data" {
  filter {
    name   = "tag:Name"
    values = ["data"]
  }
}

data "aws_secretsmanager_secret" "mysql_passwd" {
  name = "rds_mysql"
}

data "aws_secretsmanager_secret_version" "mysql_passwd_version" {
  secret_id = data.aws_secretsmanager_secret.mysql_passwd.id
}