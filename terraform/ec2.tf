resource "aws_instance" "web" {
  ami                         = "ami-084568db4383264d4"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.clave_telematica.key_name
  user_data                   = <<-EOF
                              #!/bin/bash
                              curl -fsSL https://get.docker.com -o get-docker.sh
                              sh get-docker.sh
                              usermod -aG docker ubuntu
                              systemctl enable docker
                              systemctl start docker
                              EOF
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  tags = { Name = "web-server" }
}
