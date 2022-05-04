locals "secrets" {
  application = var.application_name
  environment = var.environment_name
  secrets = {
    for pair in setproduct(local.application, local.environment) : "${pair[0]}-${pair[1]}" => {
      environment = pair[0]
      application = pair[1]
    }
  }
}


resource "google_secret_manager_secret" "secret"  {
    secret_id = each.key
    project = var.project_id
    replication {
      user_managed {
        replicas {
            location = var.location
        }
    labels = {
        "application_name" = each.value.application
    }
  
}
    }
}
