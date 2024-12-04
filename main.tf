resource "aws_s3_bucket" "bucket1" {
	bucket = "somya-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {    
}

provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "somya-s3bucket-0412"
    key            = "somya/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "somya-0412-dblocks"
    encrypt        = true
  }
}
