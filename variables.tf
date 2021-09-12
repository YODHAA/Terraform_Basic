
variable "cidrIp" {
  default = "10.0.0.0/24"

}

variable "instancetype" {
 type = string
}

variable "versionnumber" {
  type = number
}

variable "filtervalue" {
  type = list
}

variable "tagsname" {
  type = map
}

variable "allports" {
   type = list(number)
}