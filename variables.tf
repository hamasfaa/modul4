variable "proxmox_url" {
  description = "The URL of the Proxmox API"
  type        = string
}

variable "proxmox_user" {
  description = "The username to authenticate with the Proxmox API"
  type        = string
}

variable "proxmox_password" {
  description = "The password to authenticate with the Proxmox API"
  type        = string
}

# NODE
variable "nasi-uduk-D05" {
  description = "The name of the VM"
  type        = string
}

variable "vm_id_list" {
  type = map(number)
  default = {
    "nasi-uduk-D05"   = 256
    "geprek-D05"      = 257
    "kwetiaw-D05"     = 258
    "tahu-tek-D05"    = 259
    "sego-jamur-D05"  = 260
    "ikan-fillet-D05" = 261
    "naspad-D05"      = 262
    "pangsit-D05"     = 263
    "alfamart-D05"    = 264
    "indomaret-D05"   = 265
    "family-mart-D05" = 266
    "its-mart-D05"    = 267
    "superindo-D05"   = 268
    "sakinah-D05"     = 269
  }
}

variable "ip_list" {
  type = map(string)
  default = {
    "nasi-uduk-D05"        = "192.168.5.26/29"
    "geprek-D05"           = "192.168.5.27/29"
    "kwetiaw-D05"          = "192.168.5.2/30"
    "tahu-tek-D05"         = "192.168.5.50/29"
    "sego-jamur-D05"       = "192.168.5.51/29"
    "ikan-fillet-D05"      = "192.168.5.42/29"
    "naspad-D05"           = "192.168.5.35/29"
    "pangsit-D05"          = "192.168.5.34/29"
    "alfamart-D05-eth0"    = "192.168.5.5/30"
    "alfamart-D05-eth1"    = "192.168.5.25/29"
    "alfamart-D05-eth2"    = "192.168.5.1/30"
    "indomaret-D05-eth0"   = "192.168.5.9/30"
    "indomaret-D05-eth1"   = "192.168.5.6/30"
    #"family-mart-D05-eth0" = H4H4H4H4
    "family-mart-D05-eth1" = "192.168.5.10/30"
    "family-mart-D05-eth2" = "192.168.5.13/30"
    "its-mart-D05-eth0"    = "192.168.5.43/29"
    "its-mart-D05-eth1"    = "192.168.5.49/29"
    "superindo-D05-eth0"   = "192.168.5.14/30"
    "superindo-D05-eth1"   = "192.168.5.17/30"
    "superindo-D05-eth2"   = "192.168.5.41/29"
    "sakinah-D05-eth0"     = "192.168.5.18/30"
    "sakinah-D05-eth1"     = "192.168.5.33/29"
  }
}

variable "gateaway_list" {
  type = map(string)
  default = {
    "nasi-uduk-D05"   = "192.168.5.25/29"
    "geprek-D05"      = "192.168.5.25/29"
    "kwetiaw-D05"     = "192.168.5.1/30"
    "tahu-tek-D05"    = "192.168.5.49/29"
    "sego-jamur-D05"  = "192.168.5.49/29"
    "ikan-fillet-D05" = "192.168.5.41/29"
    "naspad-D05"      = "192.168.5.33/29"
    "pangsit-D05"     = "192.168.5.33/29"
  }
}
