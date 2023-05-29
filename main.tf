provider "aws" {
  region = "us-east-1"
} #Region en la que se encuentra la ami seleccionada

resource "aws_security_group" "instance" {
  name = "terraform-example-sg"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #dar paso desde cualquier ip
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #-1 dar salida a cualquier lugar
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami = "ami-06a0cd9728546d178" #ami de la region elegida
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id] # grupo de seguridad por defecto

  user_data = <<-EOF
              #!/bin/bash
              sudo amazon-linux-extras install nginx1.12 -y
              sudo service nginx start
              EOF

  tags = {
    Name = "Hola LinkedIn"
  }
}
