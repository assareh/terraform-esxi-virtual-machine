terraform {
  required_version = ">= 0.13"
  required_providers {
    esxi = {
      source = "josenk/esxi"
      version = ">= 1.7.1"
    }
  }
}

provider "esxi" {
  esxi_hostname = var.esxi_host
  esxi_hostport = "22"
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}

resource "esxi_guest" "guest" {
  guestos        = "ubuntu-64"
  guest_name     = var.app_name
  disk_store     = "datastore2"
  boot_disk_type = "thin"
  boot_disk_size = "20"
  memsize        = "512"
  numvcpus       = "1"
  virthwver      = "15"

  guest_startup_timeout = "60"
  ovf_source = var.vm_image

  network_interfaces {
    virtual_network = "Private (v20)"
    nic_type        = "vmxnet3"
  }
}
