terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.66.1"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox_url
  username = var.proxmox_user
  password = var.proxmox_password
  insecure = true
}

# ====================
# HOST
# ====================
# NASI UDUK
resource "proxmox_virtual_environment_vm" "nasi-uduk-D05" {
  name            = "nasi-uduk-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "nasi-uduk-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "nasi-uduk-D05")
        gateway = lookup(var.gateaway_list, "nasi-uduk-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

resource "proxmox_virtual_environment_vm" "nasi-uduk-D05" {
  name            = "nasi-uduk-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "nasi-uduk-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "nasi-uduk-D05")
        gateway = lookup(var.gateaway_list, "nasi-uduk-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

# GEPREK
resource "proxmox_virtual_environment_vm" "geprek-D05" {
  name            = "geprek-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "geprek-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "geprek-D05")
        gateway = lookup(var.gateaway_list, "geprek-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

resource "proxmox_virtual_environment_vm" "geprek-D05" {
  name            = "geprek-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "geprek-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "geprek-D05")
        gateway = lookup(var.gateaway_list, "geprek-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

# KWETIAW
resource "proxmox_virtual_environment_vm" "kwetiaw-D05" {
  name            = "kwetiaw-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "kwetiaw-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "kwetiaw-D05")
        gateway = lookup(var.gateaway_list, "kwetiaw-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

# TAHU TEK
resource "proxmox_virtual_environment_vm" "tahu-tek-D05" {
  name            = "tahu-tek-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "tahu-tek-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "tahu-tek-D05")
        gateway = lookup(var.gateaway_list, "tahu-tek-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

# SEGO JAMUR
resource "proxmox_virtual_environment_vm" "sego-jamur-D05" {
  name            = "sego-jamur-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "sego-jamur-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "sego-jamur-D05")
        gateway = lookup(var.gateaway_list, "sego-jamur-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

# IKAN FILLET
resource "proxmox_virtual_environment_vm" "ikan-fillet-D05" {
  name            = "ikan-fillet-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "ikan-fillet-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "ikan-fillet-D05")
        gateway = lookup(var.gateaway_list, "ikan-fillet-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

# NASPAD
resource "proxmox_virtual_environment_vm" "naspad-D05" {
  name            = "naspad-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "naspad-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "naspad-D05")
        gateway = lookup(var.gateaway_list, "naspad-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

# PANGSIT
resource "proxmox_virtual_environment_vm" "pangsit-D05" {
  name            = "pangsit-D05"
  node_name       = "its"
  on_boot         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"
  vm_id           = lookup(var.vm_id_list, "pangsit-D05")

  agent {
    enabled = false
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "pangsit-D05")
        gateway = lookup(var.gateaway_list, "pangsit-D05")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}

# ROUTER
resource "proxmox_virtual_environment_vm" "router" {
  name                = "router"
  node_name           = "its"
  on_boot             = true
  stop_on_destroy     = true
  scsi_hardware       = "virtio-scsi-single"
  vm_id               = lookup(var.vm_id_list, "router")
  hook_script_file_id = proxmox_virtual_environment_file.script1.id

  agent {
    enabled = true
  }

  initialization {
    ip_config { #eth0
      ipv4 {
        address = lookup(var.ip_list, "router1-eth0")
      }
    }
    ip_config { #eth1
      ipv4 {
        address = lookup(var.ip_list, "router1-eth1")
      }
    }
    ip_config { #eth2
      ipv4 {
        address = lookup(var.ip_list, "router1-eth2")
      }
    }
    user_account {
      username = "ukashitam"
      password = "hitamlegam"
    }
  }

  cpu {
    cores = 1
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 1024 # 1GB
    floating  = 1024
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/focal-server-cloudimg-amd64.img"
    file_format  = "raw"
    interface    = "virtio0"
    iothread     = true
    size         = 3 # GB
  }

  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
  network_device {
    enabled  = true
    firewall = false
    bridge   = "vmbr0"
  }
}
