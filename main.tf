locals {
  secrets = flatten([
    for secrets in var.secrets : {
      secrets_id = secrets.secrets_id
      project_id = secrets.project_id
      labels = secrets.labels
      member = secrets.member_id
    }
  ])
}

resource "google_secret_manager_secret" "secret" {
  for_each = {
    for sec in local.secrets : "${sec.secrets_id}.${sec.project_id}" => sec
  }
  secret_id = each.value.secrets_id
  project = each.value.project_id
  labels = each.value.labels
  replication {
    user_managed {
        replicas {
            location = var.location
        }
    }
  }
}

resource "google_secret_manager_secret_iam_member" "secrets-membre" {
 for_each = {
    for sec in local.secrets : "${sec.secrets_id}.${sec.project_id}" => sec
  }
  depends_on = [google_secret_manager_secret.secret]
  secret_id = each.value.secrets_id
  project = each.value.project_id
  role = "roles/secretmanager.secretVersionManager"
  member = each.value.member
  }





