# Resource block
# Create S3 resource Bucket

resource "random_pet" "petname" {
    length = 5
    separator = "-"
}

resource "aws_s3_bucket" "saurabh_bucket_1" {
    bucket = random_pet.petname.id
    acl = "public-read"
   # region = "us-east-1"
}