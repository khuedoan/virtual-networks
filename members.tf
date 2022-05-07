locals {
  router_ip = "192.168.191.131"
}

# TODO automate this on the router
#
#  docker run \                                                                                                                                                         <<<
# --name zerotier \
# -d \
# --rm \
# --cap-add=NET_ADMIN \
# --device /dev/net/tun \
# --volume zerotier-data:/var/lib/zerotier-one \
# zerotier/zerotier:latest \
# xxx
#
# docker exec -it zerotier bash
#
# export PHY_IFACE=eth0
# export ZT_IFACE=xxx
#
# apt install -y iptables
#
# iptables -t nat -A POSTROUTING -o $PHY_IFACE -j MASQUERADE
# iptables -A FORWARD -i $PHY_IFACE -o $ZT_IFACE -m state --state RELATED,ESTABLISHED -j ACCEPT
# iptables -A FORWARD -i $ZT_IFACE -o $PHY_IFACE -j ACCEPT
resource "zerotier_member" "router" {
  network_id              = zerotier_network.private.id
  name                    = "router"
  member_id               = "423d0ed97d"
  allow_ethernet_bridging = true
  no_auto_assign_ips      = true
  ip_assignments = [
    local.router_ip
  ]
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
  member_id  = "57b0c801d7"
}
