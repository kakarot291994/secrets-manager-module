resource "google_secret_manager_secret" "secret" {
  project = var.project_id
  for_each = toset(var.secret_id )
  secret_id = each.key
  labels = var.labels
  replication {
    user_managed {
        replicas {
            location = var.location
        }
    }
  }
}

resource "google_secret_manager_secret_iam_member" "secret_membre" {
  project = var.project_id
  for_each = toset(var.secret_id)
  secret_id = google_secret_manager_secret.secret[each.key].secret_id
  role = "roles/secretmanager.secretVersionManager"
  member = var.members_id

}