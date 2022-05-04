variable "application_name" {
    type = list(string)
    description = "Name of the application"
}

variable "environment_name" {
    type = list(string)
    description = "Name of the environment"
}

variable "project_id" {
    type = string
    description = "Name of the project"
}

variable "location" {
    type = string
    description = "Location of the secret shell"
}
