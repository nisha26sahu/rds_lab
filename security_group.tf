resource "aws_security_group" "db-sg" {
  name        = "Database Security Group"
  description = "Allow access to DB instance"
  vpc_id      = data.aws_vpc.ta_vpc.id

  ingress {
    description     = "Allow connection for RDS EC2 Instance"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = ["sg-01fb9f5ccf328be57"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds-mysql-server"
  }
}