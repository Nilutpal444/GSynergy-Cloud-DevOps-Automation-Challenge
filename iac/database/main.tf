# iac/database/main.tf

provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_redshift_cluster" "example" {
  cluster_identifier      = "example-cluster"
  node_type               = "dc2.large"
  master_username         = "admin"
  master_password         = "Password123"  # Replace with a secure password
  skip_final_snapshot     = true
  cluster_subnet_group_name = "default"
  vpc_security_group_ids  = [aws_security_group.example.id]
}

resource "aws_security_group" "example" {
  name_prefix = "example-sg-"

  // Define security group rules as needed
  // Example: allow incoming connections on port 5439 (Redshift)
}
