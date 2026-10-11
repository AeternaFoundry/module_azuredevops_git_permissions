output "git_permissions_id" {
  description = "Map of id values across all git_permissions, keyed the same as var.git_permissions except keys with no id are omitted"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "git_permissions_branch_name" {
  description = "Map of branch_name values across all git_permissions, keyed the same as var.git_permissions except keys with no branch_name are omitted"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.branch_name if v.branch_name != null && length(v.branch_name) > 0 }
}
output "git_permissions_permissions" {
  description = "Map of permissions values across all git_permissions, keyed the same as var.git_permissions except keys with no permissions are omitted"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "git_permissions_principal" {
  description = "Map of principal values across all git_permissions, keyed the same as var.git_permissions except keys with no principal are omitted"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.principal if v.principal != null && length(v.principal) > 0 }
}
output "git_permissions_project_id" {
  description = "Map of project_id values across all git_permissions, keyed the same as var.git_permissions except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "git_permissions_replace" {
  description = "Map of replace values across all git_permissions, keyed the same as var.git_permissions except keys with no replace are omitted"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.replace if v.replace != null }
}
output "git_permissions_repository_id" {
  description = "Map of repository_id values across all git_permissions, keyed the same as var.git_permissions except keys with no repository_id are omitted"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}

