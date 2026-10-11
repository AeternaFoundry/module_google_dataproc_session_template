resource "google_dataproc_session_template" "dataproc_session_templates" {
  for_each = var.dataproc_session_templates

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  labels          = each.value.labels
  location        = each.value.location
  project         = each.value.project

  dynamic "environment_config" {
    for_each = each.value.environment_config != null ? [each.value.environment_config] : []
    content {
      dynamic "execution_config" {
        for_each = environment_config.value.execution_config != null ? [environment_config.value.execution_config] : []
        content {
          dynamic "authentication_config" {
            for_each = execution_config.value.authentication_config != null ? [execution_config.value.authentication_config] : []
            content {
              user_workload_authentication_type = authentication_config.value.user_workload_authentication_type
            }
          }
          idle_ttl        = execution_config.value.idle_ttl
          kms_key         = execution_config.value.kms_key
          network_tags    = execution_config.value.network_tags
          service_account = execution_config.value.service_account
          staging_bucket  = execution_config.value.staging_bucket
          subnetwork_uri  = execution_config.value.subnetwork_uri
          ttl             = execution_config.value.ttl
        }
      }
      dynamic "peripherals_config" {
        for_each = environment_config.value.peripherals_config != null ? [environment_config.value.peripherals_config] : []
        content {
          metastore_service = peripherals_config.value.metastore_service
          dynamic "spark_history_server_config" {
            for_each = peripherals_config.value.spark_history_server_config != null ? [peripherals_config.value.spark_history_server_config] : []
            content {
              dataproc_cluster = spark_history_server_config.value.dataproc_cluster
            }
          }
        }
      }
    }
  }

  dynamic "jupyter_session" {
    for_each = each.value.jupyter_session != null ? [each.value.jupyter_session] : []
    content {
      display_name = jupyter_session.value.display_name
      kernel       = jupyter_session.value.kernel
    }
  }

  dynamic "runtime_config" {
    for_each = each.value.runtime_config != null ? [each.value.runtime_config] : []
    content {
      container_image = runtime_config.value.container_image
      properties      = runtime_config.value.properties
      version         = runtime_config.value.version
    }
  }

  dynamic "spark_connect_session" {
    for_each = each.value.spark_connect_session != null ? [each.value.spark_connect_session] : []
    content {
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

