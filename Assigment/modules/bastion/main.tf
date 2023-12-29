resource "aws_security_group" "bastion-sg" {
  name        = "bastion-security-group"
  description = "Security group for the EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "bastion_host" {
  ami           = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id
  key_name      = "bastion_key"
  vpc_security_group_ids = [aws_security_group.bastion-sg.id]
}