variable "aws_region" {
	description = "AWS region"
	type = string
	default = "ap-southeast-1"
}

variable "instance_type" {
	description = "EC2 instance type"
	type = string
	default = "t3.micro"
}

variable "my_ip" {
	description = "Your public IP for SSH access (CIDR format)"
	type = string
}

variable "key_name" {
	description = "Name of the existing EC2 key pair"
	type = string
	default = "devops-keypair"
}
