terraform {
  backend "s3" {
    bucket         = "ybdatastore"
    region         = "us-east-1"
    key            = "Reddit-Project/Jenkins-server-TF/terraform.tfstate"
    #dynamodb_table = "Lock-Files"
    #encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
