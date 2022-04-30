resource "zerotier_network" "private" {
  name        = "private"
  description = "Private network"
  private     = true

  route {
    target = "192.168.191.0/24"
  }

  route {
    target = "192.168.1.0/24"
    via    = local.router_ip
  }
}

resource "zerotier_network" "public" {
  name        = "public"
  description = "Public network"
  private     = false
}
