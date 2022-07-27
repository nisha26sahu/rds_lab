# resource "aws_subnet" "data-a" {
#   vpc_id     = data.aws_vpc.ta_vpc.id
#   cidr_block = "192.168.5.0/24"
#   availability_zone = "eu-west-1b"
#   tags = {
#     Name = "data-a"
#   }
# }

# resource "aws_subnet" "data-b" {
#   vpc_id     = data.aws_vpc.ta_vpc.id
#   cidr_block = "192.168.6.0/24"
#   availability_zone = "eu-west-1b"
#   tags = {
#     Name = "data-b"
#   }
# }