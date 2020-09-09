variable "deployment_image" {
  default = "docker.indianagulu.com/hello-world-app-dev-feature:ae982de"
}
variable "deployment_environment" {
    default = "stage"
}

variable "deployment_endpoint" {
  type = "map"

  default = {
    dev  = "dev.hello-world"
    qa   = "qa.hello-world"
    prod = "hello-world"
    stage = "stage.hello-world"
  }
}

variable "google_domain_name" {
    default = "indianagulu.com"
}

output "application_endpoint" {
  value = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}.${var.google_domain_name}"
}