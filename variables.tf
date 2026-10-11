variable "dataproc_session_templates" {
  description = <<EOT
Map of dataproc_session_templates, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - labels
    - location
    - project
    - environment_config (block):
        - execution_config (optional, block):
            - authentication_config (optional, block):
                - user_workload_authentication_type (optional)
            - idle_ttl (optional)
            - kms_key (optional)
            - network_tags (optional)
            - service_account (optional)
            - staging_bucket (optional)
            - subnetwork_uri (optional)
            - ttl (optional)
        - peripherals_config (optional, block):
            - metastore_service (optional)
            - spark_history_server_config (optional, block):
                - dataproc_cluster (optional)
    - jupyter_session (block):
        - display_name (optional)
        - kernel (optional)
    - runtime_config (block):
        - container_image (optional)
        - properties (optional)
        - version (optional)
    - spark_connect_session (block):
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    labels          = optional(map(string))
    location        = optional(string)
    project         = optional(string)
    environment_config = optional(object({
      execution_config = optional(object({
        authentication_config = optional(object({
          user_workload_authentication_type = optional(string)
        }))
        idle_ttl        = optional(string)
        kms_key         = optional(string)
        network_tags    = optional(list(string))
        service_account = optional(string)
        staging_bucket  = optional(string)
        subnetwork_uri  = optional(string)
        ttl             = optional(string)
      }))
      peripherals_config = optional(object({
        metastore_service = optional(string)
        spark_history_server_config = optional(object({
          dataproc_cluster = optional(string)
        }))
      }))
    }))
    jupyter_session = optional(object({
      display_name = optional(string)
      kernel       = optional(string)
    }))
    runtime_config = optional(object({
      container_image = optional(string)
      properties      = optional(map(string))
      version         = optional(string)
    }))
    spark_connect_session = optional(object({
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

