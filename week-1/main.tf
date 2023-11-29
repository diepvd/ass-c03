terraform {
	backend "local" {
		path = "terraform.tfstate"
	}
}

provider "aws" {
	region		= "${var.REGION}"
	access_key	= "${var.ACCESS_KEY}"
	secret_key	= "${var.ACCESS_SECRET}"
}

resource "aws_s3_bucket" "bucket-s3" {
	bucket 	= "${var.BUCKET}"
}