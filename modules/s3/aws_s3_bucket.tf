resource "aws_s3_bucket" "this" {
    bucket = "tete-sample-bucket" 
    tags = {
        Name        = "MaMa bucket"
        Environment = "Dev"
    }
    acl = "private"
}