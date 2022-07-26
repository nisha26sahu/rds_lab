# resource "aws_instance" "rds_instance" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t3.medium"

#   vpc_security_group_ids = [aws_security_group.rds_sg.id]
#   key_name = "talent_academy_lab"

#   subnet_id = data.aws_subnet.private.id

#   tags = {
#     Name = "Rds-MySql-Server"
#   }
# }

# resource "aws_eip" "rds_instance_eip" {
#   instance = aws_instance.rds_instance.id
#   vpc      = true
# }