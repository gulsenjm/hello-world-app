terraform {
  backend "gcs" {
    bucket  = "fuchicorp-blue-bucket"
    prefix  = "qa/hello-world"
    project = "valued-clarity-288316"
  }
}
