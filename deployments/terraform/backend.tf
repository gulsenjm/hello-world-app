terraform {
  backend "gcs" {
    bucket  = "fuchicorp-blue-bucket"
    prefix  = "dev/hello-world"
    project = "valued-clarity-288316"
  }
}