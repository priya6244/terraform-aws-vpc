output "vpc_id" {
    value = aws_vpc.main.id
}

output "az_information" {
    value = data.aws_availability_zones.available
}

output "default_vpc_information" {
    value = data.aws_vpc.default
}

output "main_route_table_information" {
    value = data. aws_route_table.main
}