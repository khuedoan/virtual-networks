resource "zerotier_network" "private" {
  name        = "private"
  description = "Private network"
  private     = true
}

resource "zerotier_network" "public" {
  name        = "public"
  description = "Public network"
  private     = false
}
