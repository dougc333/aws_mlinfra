#aws.tf create instance
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}


provider "aws" {
  region = "us-east-1"
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET_KEY}"
}

resource aws_key_pair terraform{
  key_name = "terraform_key"
  public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDrDn95wLgqsIbRINnMzQIiRBF9ToGVep+QEcLtNL5FhVVpowE5ukbc05P4ftTsVtvMg/3otWkasFwYKjHKd6FTp04VxybrGwA/WZS9d7QBX1CRQHjz//p5cFm/St4VA5chcZUQrbL+n8jWNkoV91GBqwGx5ZNHyjG3nhXmUt4IjhMSboP7K4R1cYWHGjm7oeAFj94VFFy2RgLXl8zqCfeO8K1v+mvxtj4sEsbSv07mQYklDKkSVzNPskuBHrPa4CTdSPuyzlAbBoT5Amf/zZmwTi0CSVa98b2HJnhx7A7Ek4yu641U+uwKE1a5gzm3NC6HIxKH6VD1NJpu+msQfpK/ dc@localhost"

}


resource "aws_instance" "web" {
  ami = "ami-97c5b0ed"
  instance_type = "t2.micro"
  tags {
   Name="test aws terraform"
  }
}
