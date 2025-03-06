resource "aws_instance" "webserver-1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet-1_id
  user_data              = base64encode(file("userdata.sh"))
  tags = {
    Name = "webserver1"
  }
}

resource "aws_instance" "webserver-2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet-2_id
  user_data              = base64encode(file("userdata1.sh"))
  tags = {
    Name = "webserver2"
  }
}


