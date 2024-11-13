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
    "nasi-uduk-D05"        = H4H4H4H4
    "geprek-D05"           = H4H4H4H4
    "kwetiaw-D05"          = H4H4H4H4
    "tahu-tek-D05"         = H4H4H4H4
    "sego-jamur-D05"       = H4H4H4H4
    "ikan-fillet-D05"      = H4H4H4H4
    "naspad-D05"           = H4H4H4H4
    "pangsit-D05"          = H4H4H4H4
    "alfamart-D05-eth0"    = H4H4H4H4
    "alfamart-D05-eth1"    = H4H4H4H4
    "alfamart-D05-eth2"    = H4H4H4H4
    "indomaret-D05-eth0"   = H4H4H4H4
    "indomaret-D05-eth1"   = H4H4H4H4
    "family-mart-D05-eth0" = H4H4H4H4
    "family-mart-D05-eth1" = H4H4H4H4
    "family-mart-D05-eth2" = H4H4H4H4
    "its-mart-D05-eth0"    = H4H4H4H4
    "its-mart-D05-eth1"    = H4H4H4H4
    "superindo-D05-eth0"   = H4H4H4H4
    "superindo-D05-eth1"   = H4H4H4H4
    "superindo-D05-eth2"   = H4H4H4H4
    "sakinah-D05-eth0"     = H4H4H4H4
    "sakinah-D05-eth1"     = H4H4H4H4
  }
}

variable "gateaway_list" {
  type = map(string)
  default = {
    "nasi-uduk-D05"   = H4H4H4H4
    "geprek-D05"      = H4H4H4H4
    "kwetiaw-D05"     = H4H4H4H4
    "tahu-tek-D05"    = H4H4H4H4
    "sego-jamur-D05"  = H4H4H4H4
    "ikan-fillet-D05" = H4H4H4H4
    "naspad-D05"      = H4H4H4H4
    "pangsit-D05"     = H4H4H4H4
  }
}
