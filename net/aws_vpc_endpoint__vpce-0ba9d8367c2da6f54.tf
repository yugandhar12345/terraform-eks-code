# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_vpc_endpoint.vpce-0ba9d8367c2da6f54:
resource "aws_vpc_endpoint" "vpce-0ba9d8367c2da6f54" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.sg-073762dd312483127.id,
  ]
  service_name = "com.amazonaws.eu-west-1.logs"
  subnet_ids = [
    aws_subnet.subnet-p3.id,
    aws_subnet.subnet-p1.id,
    aws_subnet.subnet-p2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.vpc-mycluster1.id

  timeouts {}
}
