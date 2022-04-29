resource "zerotier_member" "laptop" {
  network_id = zerotier_network.private.id
  name       = "laptop"
  member_id  = "4e464fc534"
}

resource "zerotier_member" "desktop" {
  network_id = zerotier_network.private.id
  name       = "desktop"
  member_id  = "d71e2ad8f9"
}

resource "zerotier_member" "phone" {
  network_id = zerotier_network.private.id
  name       = "phone"
  member_id  = "2dca25d5e2"
}

resource "zerotier_member" "macbook" {
  network_id = zerotier_network.private.id
  name       = "macbook"
  member_id  = "82312852d0"
}
