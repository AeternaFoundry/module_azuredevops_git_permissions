variable "git_permissions" {
  description = <<EOT
Map of git_permissions, attributes below
Required:
    - permissions
    - principal
    - project_id
Optional:
    - branch_name
    - replace
    - repository_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    permissions   = map(string)
    principal     = string
    project_id    = string
    branch_name   = optional(string)
    replace       = optional(bool)
    repository_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.git_permissions : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_permissions : (
        v.repository_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.repository_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_permissions : (
        v.branch_name == null || (length(trimspace(v.branch_name)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

