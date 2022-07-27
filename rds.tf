resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "database subnet"
  subnet_ids = [data.aws_subnet.private.id, data.aws_subnet.data.id]
  tags = {
    Name = "My DB subnet group"
  }
}
# Create Database Instancegit
resource "aws_db_instance" "database-instance" {
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  port = "3306"
  identifier              = "movies-db-01"
  db_name                 = "movies_db"
  username                = "admin"
  password                = "admin1234"
  multi_az                = true
  db_subnet_group_name    = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids  = [aws_security_group.db-sg.id]
  skip_final_snapshot     = true
  backup_retention_period = 1
}