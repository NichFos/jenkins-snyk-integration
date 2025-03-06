resource "aws_internet_gateway" "prod-igw" {
  vpc_id = aws_vpc.vpcs[var.prod-igw].id

  tags = {
    Name    = "${var.prod-igw}-igw"
  }
}