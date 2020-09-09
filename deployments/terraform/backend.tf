terraform {
  backend "gcs" {
    bucket  = "fuchicorp-blue-bucket"
    prefix  = "prod/hello-world"
    project = "valued-clarity-288316"
  }
}
