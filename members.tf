resource "zerotier_member" "router" {
  network_id = zerotier_network.private.id
  name       = "router"
  member_id  = "235eb72d6f"
}

resource "zerotier_member" "laptop" {
  network_id = zerotier_network.private.id
  name       = "laptop"
  member_id  = "4e464fc534"
}

resource "zerotier_member" "desktop" {
  network_id = zerotier_network.private.id
  name       = "desktop"
  member_id  = "1fbc0d6a4c"
}

resource "zerotier_member" "phone" {
  network_id = zerotier_network.private.id
  name       = "phone"
  member_id  = "20b7684e3b"
}

resource "zerotier_member" "macbook" {
  network_id = zerotier_network.private.id
  name       = "macbook"
  member_id  = "82312852d0"
}
