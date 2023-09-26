# iac/airflow/main.tf

resource "aws_instance" "airflow_server" {
  ami           = "ami-0123456789abcdef0"  # Replace with a suitable AMI
  instance_type = "t2.micro"  # Adjust instance type as needed
  key_name      = "your-key-pair"  # Replace with your SSH key pair
  security_groups = [aws_security_group.airflow.id]
}

resource "aws_security_group" "airflow" {
  name_prefix = "airflow-sg-"

  // Define security group rules as needed
  // Example: allow incoming SSH (port 22) and Airflow UI (port 8080) access
}
