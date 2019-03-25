terraform {
  backend "s3" {
    bucket = "<BUCKET_NAME>"
    key    = "kops"
    #region = "ap-southeast-1"
    #shared_credentials_file = "/Users/nasonov/.aws/credentials"
    #profile = "rmdev"
  }
}
