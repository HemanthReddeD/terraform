#instance variables
variable "ami" {
  type = string
  description = "instance creation"
  default = "ami-0ace5544897bcc140"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "azones_1a" {
  type = list(string)
  default = ["eu-central-1a"]
}
variable "azones_1b" {
  type = list(string)
  default = ["eu-central-1b"]
}
variable "azones_1c" {
  type = list(string)
  default = ["eu-central-1c"]
}

variable "ec2_count" {
  type = string
  default = "8"
}

variable "subnet_1a" {
  type = list(string)
  default = ["subnet-00b43f6a"]
}

variable "subnet_1b" {
  type = list(string)
  default = ["subnet-4742843b"]
}

variable "subnet_1c" {
  type = list(string)
  default = ["subnet-df459093"]
}

variable "key_name" {
  type = string
  description = "key pair"
  default = "eu-central"
}


variable "tags_1a" {
  type = list(string)
  default = ["Instance","indexer"]
}

variable "tags_1b" {
  type = list(string)
  default = ["Instance","indexer","DeploymentManager"]
}

variable "tags_1c" {
  type = list(string)
  default = ["searchHead","indexer","clusterMaster"]
}

variable "sg_1a" {
  type = list(string)
  description = "security group for az 1a"
  default = ["sg-04969c80e3a8fd72f","sg-047670e78fa5c6d95"]
}

variable "sg_1b" {
  type = list(string)
  description = "security group for AZ 1b"
  default = ["sg-04969c80e3a8fd72f","sg-047670e78fa5c6d95","sg-07f86e527245ad57f"]
}

variable "sg_1c" {
  type = list(string)
  description = "security group for az 1c"
  default = ["sg-0662b05fbae2aa014","sg-047670e78fa5c6d95","sg-07a9fbdb4e06b8943"]
}