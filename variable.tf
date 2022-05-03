variable "secrets" {
  type = map(object( {
    project_id = string
    secrets_id = string
    labels = map(string) 
    member_id = string
  }))
} 


variable "location" {
  type = string
  description = "Add The Location for secrets manager"
}

