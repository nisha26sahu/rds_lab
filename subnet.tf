resource "aws_subnet" "frontend" {
  vpc_id     = data.aws_vpc.ta_vpc.id
  cidr_block = "192.168.4.0/24"

  tags = {
    Name = "frontend"
  }
}

resource "aws_subnet" "backend" {
  vpc_id     = data.aws_vpc.ta_vpc.id
  cidr_block = "192.168.5.0/24"

  tags = {
    Name = "backend"
  }
}