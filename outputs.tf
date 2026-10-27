output "git_permissions_id" {
  description = "Map of id values across all git_permissions, keyed the same as var.git_permissions"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.id }
}
output "git_permissions_branch_name" {
  description = "Map of branch_name values across all git_permissions, keyed the same as var.git_permissions"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.branch_name }
}
output "git_permissions_permissions" {
  description = "Map of permissions values across all git_permissions, keyed the same as var.git_permissions"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.permissions }
}
output "git_permissions_principal" {
  description = "Map of principal values across all git_permissions, keyed the same as var.git_permissions"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.principal }
}
output "git_permissions_project_id" {
  description = "Map of project_id values across all git_permissions, keyed the same as var.git_permissions"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.project_id }
}
output "git_permissions_replace" {
  description = "Map of replace values across all git_permissions, keyed the same as var.git_permissions"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.replace }
}
output "git_permissions_repository_id" {
  description = "Map of repository_id values across all git_permissions, keyed the same as var.git_permissions"
  value       = { for k, v in azuredevops_git_permissions.git_permissions : k => v.repository_id }
}

