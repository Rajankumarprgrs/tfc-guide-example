# provider "aws" {
#   version = "2.33.0"

#   region = var.aws_region
# }

# provider "random" {
#   version = "2.2"
# }


# resource "random_pet" "table_name" {}

# resource "aws_dynamodb_table" "tfc_example_table" {
#   name = "${var.db_table_name}-${random_pet.table_name.id}"

#   read_capacity  = var.db_read_capacity
#   write_capacity = var.db_write_capacity
#   hash_key       = "UUID"

#   attribute {
#     name = "UUID"
#     type = "S"
#   }
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  #ami           = "ami-00ddb0e5626798373"
  ami           = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"
}
