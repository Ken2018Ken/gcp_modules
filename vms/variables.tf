variable "project" {
  type        = string
  description = ""
}
variable "region" {
  type        = string
  description = ""
}
variable "zone" {
  type        = string
  description = ""
}

variable "instance_name" {
  type        = string
  description = ""
}

variable "machine_type" {
  type        = string
  description = ""
}

variable "vpc_network_name" {
  type        = string
  description = ""
}

variable "image" {
  type        = string
  description = "Image with which to spin up the VM"
}

variable "startupscript" {
  type        = string
  description = ""
}

variable "kname" {
  type        = string
  description = ""

}

variable "keyvaliu" {
  type        = string
  description = ""
}
variable "usertovm" {
  type        = string
  description = ""

}

variable "taget_taggs" {
  type        = string
  description = ""

}