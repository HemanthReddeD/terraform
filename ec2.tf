provider "aws" {
  region = "eu-central-1"
  access_key = "AKIAJDWGOKL52MHIMRGQ"
  secret_key = "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"
}

resource "aws_instance" "instance-1a" {
  count = 2
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = "${element(var.subnet_1a,count.index)}"
  availability_zone = "${element(var.azones_1a,count.index)}"
  security_groups = "${element(var.sg_1a,count.index)}"
  key_name = var.key_name


  tags = {
    Name  = "${element(var.tags_1a, count.index)}"
  }
}




resource "aws_instance" "instance-1b" {
  count = 3
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = "${element(var.subnet_1b,count.index)}"
  availability_zone = "${element(var.azones_1b,count.index)}"
  security_groups = "${element(var.sg_1b,count.index)}"
  key_name = var.key_name


  tags = {
    Name  = "${element(var.tags_1b, count.index)}"
  }
}

resource "aws_instance" "instance-1c" {
  count = 3
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = "${element(var.subnet_1c,count.index)}"
  availability_zone = "${element(var.azones_1c,count.index)}"
  security_groups = "${element(var.sg_1c,count.index)}"
  key_name = var.key_name


  tags = {
    Name  = "${element(var.tags_1c, count.index)}"
  }
}



