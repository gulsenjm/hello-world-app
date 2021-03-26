variable "deployment_environment" {
    default = "dev"
    }

variable "deployment_name" {
    default = "hello-world"
    description = "- (Optional) The name of the deployment."
}

variable "deployment_image" {
    default = "fsadykov/hello-world:latest"
    description = "- (Optional) The docker image of the deployment."
}

variable "deployment_endpoint" {
    type = "map"
    default = {
        dev     = "dev.hello"
        qa      = "qa.hello"
        prod    = "hello"
        stage   = "stage.hello"
    }
}
variable "google_domain_name" {
    default = "tapjangul.com"
}
