variable "project_id" {
  type = string
  description = "The Name of project where secrets manager needs to be created"
}

variable "secret_id" {
  type = list(string)
  default = []
  description = "The Name of the secrets shells to be created"
}

variable "labels" {
  type = map(string)
  description = "Add Labels to secrets Id"
  default = {}
  
}

variable "location" {
  type = string
  description = "Add The Location for secrets manager"
}

variable "members_id" {
    type = string
    default = ""
    description = "The Names of membre who wants to manage the secrets version"
}