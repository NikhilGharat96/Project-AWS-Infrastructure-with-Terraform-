resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr
}

resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.subnet-1_cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.subnet-2_cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet2"
  }
}
resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.myvpc.id

}
resource "aws_route_table" "myRT" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }

}

resource "aws_route_table_association" "sub1RT" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.myRT.id
}

resource "aws_route_table_association" "sub2RT" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.myRT.id
}