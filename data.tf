data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
  default = true
}

# resource "aws_default_route_table" "main" {
#   default_route_table_id = aws_vpc.main.default_route_table_id

#   tags = {
#     Name = "example"
#   }
# }

data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.default.id
  filter{
    name = "association.main"
    values = ["true"]
  }
}