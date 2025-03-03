resource "ec_deployment_traffic_filter" "basic" {
  name   = "%s"
  region = "%s"
  type   = "ip"

  rule {
    source = "0.0.0.0/0"
  }
}

data "ec_trafficfilter" "name" {
  id = ec_deployment_traffic_filter.basic.id
}
