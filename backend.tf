terraform {
  backend "s3" {
    bucket = "talent-academy-nishasahu-lab-tfstates"
    key = "talent-academy/rds_lab/terraform.tfstates"
    region = "eu-west-1"
    dynamodb_table = "terraform-lock"
  }
}