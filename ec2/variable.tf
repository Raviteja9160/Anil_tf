variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "vpc_name" {
  default = "my-vpc"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0fcf52bcf5db7b003"
}

variable "key_name" {
  default = "my-keypair"
}

variable "volume_size" {
  default = 10
}

variable "volume_type" {
  default = "gp2"
}

variable "availability_zone" {
  default = "us-west-2a"
}
