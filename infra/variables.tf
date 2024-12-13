variable "ami" {
  default = "ami-0453ec754f44f9a4a"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "ssh_key_name" {
  type    = string
  default = "vockey"
}

variable "sg_map" {
  default = {
        "GitHub_Runner" = {
            extra_ports = [ 443 ]
        },
        "K8S_Cluster" = {30080}
    }
}

variable "ec2_map" {
  default = {
        "GitHub_Runner" = {}
        "K8S_Cluster" = {}
    }
}

