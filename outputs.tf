output "dataproc_session_templates_id" {
  description = "Map of id values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no id are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataproc_session_templates_create_time" {
  description = "Map of create_time values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no create_time are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "dataproc_session_templates_creator" {
  description = "Map of creator values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no creator are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.creator if v.creator != null && length(v.creator) > 0 }
}
output "dataproc_session_templates_deletion_policy" {
  description = "Map of deletion_policy values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dataproc_session_templates_effective_labels" {
  description = "Map of effective_labels values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no effective_labels are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "dataproc_session_templates_environment_config" {
  description = "Map of environment_config values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no environment_config are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => one(v.environment_config) if v.environment_config != null && length(v.environment_config) > 0 }
}
output "dataproc_session_templates_jupyter_session" {
  description = "Map of jupyter_session values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no jupyter_session are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => one(v.jupyter_session) if v.jupyter_session != null && length(v.jupyter_session) > 0 }
}
output "dataproc_session_templates_labels" {
  description = "Map of labels values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no labels are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "dataproc_session_templates_location" {
  description = "Map of location values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no location are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dataproc_session_templates_name" {
  description = "Map of name values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no name are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataproc_session_templates_project" {
  description = "Map of project values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no project are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dataproc_session_templates_runtime_config" {
  description = "Map of runtime_config values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no runtime_config are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => one(v.runtime_config) if v.runtime_config != null && length(v.runtime_config) > 0 }
}
output "dataproc_session_templates_spark_connect_session" {
  description = "Map of spark_connect_session values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no spark_connect_session are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => one(v.spark_connect_session) if v.spark_connect_session != null && length(v.spark_connect_session) > 0 }
}
output "dataproc_session_templates_terraform_labels" {
  description = "Map of terraform_labels values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no terraform_labels are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "dataproc_session_templates_update_time" {
  description = "Map of update_time values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no update_time are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "dataproc_session_templates_uuid" {
  description = "Map of uuid values across all dataproc_session_templates, keyed the same as var.dataproc_session_templates except keys with no uuid are omitted"
  value       = { for k, v in google_dataproc_session_template.dataproc_session_templates : k => v.uuid if v.uuid != null && length(v.uuid) > 0 }
}

