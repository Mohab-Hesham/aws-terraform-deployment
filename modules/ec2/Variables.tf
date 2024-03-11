variable "ami" {
  description = "The ID of the AMI to use for the EC2 instance"
}

variable "instance_type" {
  description = "The type of the EC2 instance"
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched"
}

variable "tags" {
  description = "A map of tags to apply to the EC2 instance"
  type        = map(string)
  default     = {}
}
