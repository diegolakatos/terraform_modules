variable "asgname" {
  default = "autoscalling"
}

variable "launchconfiguration" {
  default = "launchconfig"
}
variable "asgminsize" {
  default = 1
}

variable "asgmaxsize" {
  default = 1
}
variable "subnets" {
  default = "subnet-123"
}

variable "target_group_arns" {
  default = "123"

}