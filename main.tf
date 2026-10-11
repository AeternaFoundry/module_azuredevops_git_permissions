resource "azuredevops_git_permissions" "git_permissions" {
  for_each = var.git_permissions

  permissions   = each.value.permissions
  principal     = each.value.principal
  project_id    = each.value.project_id
  branch_name   = each.value.branch_name
  replace       = each.value.replace
  repository_id = each.value.repository_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

