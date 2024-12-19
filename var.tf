variable "ami" {
  description = "The AMI to use for the instance"
  default     = "ami-id"  # Replace with your desired AMI ID
}

variable "instance_type" {
  description = "The type of instance to use"
  default     = "t2.micro"  # Replace with your desired instance type
}
