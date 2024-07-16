# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KafkaConnect do
  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin_summary() :: %{
        "creationTime" => non_neg_integer(),
        "customPluginArn" => String.t(),
        "customPluginState" => String.t(),
        "description" => String.t(),
        "latestRevision" => custom_plugin_revision_summary(),
        "name" => String.t()
      }

  """
  @type custom_plugin_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_client_authentication() :: %{
        "authenticationType" => String.t()
      }

  """
  @type kafka_cluster_client_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_client_authentication_description() :: %{
        "authenticationType" => String.t()
      }

  """
  @type kafka_cluster_client_authentication_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scale_in_policy() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_in_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_worker_configuration_response() :: %{
        optional("creationTime") => non_neg_integer(),
        optional("description") => String.t(),
        optional("latestRevision") => worker_configuration_revision_description(),
        optional("name") => String.t(),
        optional("workerConfigurationArn") => String.t(),
        optional("workerConfigurationState") => String.t()
      }

  """
  @type describe_worker_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connectors_response() :: %{
        optional("connectors") => list(connector_summary()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin() :: %{
        "customPlugin" => custom_plugin()
      }

  """
  @type plugin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      capacity_description() :: %{
        "autoScaling" => auto_scaling_description(),
        "provisionedCapacity" => provisioned_capacity_description()
      }

  """
  @type capacity_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_custom_plugin_response() :: %{
        optional("creationTime") => non_neg_integer(),
        optional("customPluginArn") => String.t(),
        optional("customPluginState") => String.t(),
        optional("description") => String.t(),
        optional("latestRevision") => custom_plugin_revision_summary(),
        optional("name") => String.t(),
        optional("stateDescription") => state_description()
      }

  """
  @type describe_custom_plugin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      worker_configuration_description() :: %{
        "revision" => float(),
        "workerConfigurationArn" => String.t()
      }

  """
  @type worker_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc() :: %{
        "securityGroups" => list(String.t()()),
        "subnets" => list(String.t()())
      }

  """
  @type vpc() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_connector_response() :: %{
        optional("capacity") => capacity_description(),
        optional("connectorArn") => String.t(),
        optional("connectorConfiguration") => map(),
        optional("connectorDescription") => String.t(),
        optional("connectorName") => String.t(),
        optional("connectorState") => String.t(),
        optional("creationTime") => non_neg_integer(),
        optional("currentVersion") => String.t(),
        optional("kafkaCluster") => kafka_cluster_description(),
        optional("kafkaClusterClientAuthentication") => kafka_cluster_client_authentication_description(),
        optional("kafkaClusterEncryptionInTransit") => kafka_cluster_encryption_in_transit_description(),
        optional("kafkaConnectVersion") => String.t(),
        optional("logDelivery") => log_delivery_description(),
        optional("plugins") => list(plugin_description()()),
        optional("serviceExecutionRoleArn") => String.t(),
        optional("stateDescription") => state_description(),
        optional("workerConfiguration") => worker_configuration_description()
      }

  """
  @type describe_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connector_request() :: %{
        required("capacity") => capacity_update(),
        required("currentVersion") => String.t()
      }

  """
  @type update_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_configuration() :: %{
        "revision" => float(),
        "workerConfigurationArn" => String.t()
      }

  """
  @type worker_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_configuration_summary() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "latestRevision" => worker_configuration_revision_summary(),
        "name" => String.t(),
        "workerConfigurationArn" => String.t(),
        "workerConfigurationState" => String.t()
      }

  """
  @type worker_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scale_in_policy_description() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_in_policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_custom_plugin_response() :: %{
        optional("customPluginArn") => String.t(),
        optional("customPluginState") => String.t()
      }

  """
  @type delete_custom_plugin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connectors_request() :: %{
        optional("connectorNamePrefix") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      capacity() :: %{
        "autoScaling" => auto_scaling(),
        "provisionedCapacity" => provisioned_capacity()
      }

  """
  @type capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_scaling_update() :: %{
        "maxWorkerCount" => integer(),
        "mcuCount" => integer(),
        "minWorkerCount" => integer(),
        "scaleInPolicy" => scale_in_policy_update(),
        "scaleOutPolicy" => scale_out_policy_update()
      }

  """
  @type auto_scaling_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster() :: %{
        "apacheKafkaCluster" => apache_kafka_cluster()
      }

  """
  @type kafka_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_worker_configurations_response() :: %{
        optional("nextToken") => String.t(),
        optional("workerConfigurations") => list(worker_configuration_summary()())
      }

  """
  @type list_worker_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_encryption_in_transit_description() :: %{
        "encryptionType" => String.t()
      }

  """
  @type kafka_cluster_encryption_in_transit_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provisioned_capacity_description() :: %{
        "mcuCount" => integer(),
        "workerCount" => integer()
      }

  """
  @type provisioned_capacity_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_encryption_in_transit() :: %{
        "encryptionType" => String.t()
      }

  """
  @type kafka_cluster_encryption_in_transit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scale_out_policy_description() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_out_policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_description() :: %{
        "securityGroups" => list(String.t()()),
        "subnets" => list(String.t()())
      }

  """
  @type vpc_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_custom_plugins_response() :: %{
        optional("customPlugins") => list(custom_plugin_summary()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_custom_plugins_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_scaling_description() :: %{
        "maxWorkerCount" => integer(),
        "mcuCount" => integer(),
        "minWorkerCount" => integer(),
        "scaleInPolicy" => scale_in_policy_description(),
        "scaleOutPolicy" => scale_out_policy_description()
      }

  """
  @type auto_scaling_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_log_delivery_description() :: %{
        "enabled" => boolean(),
        "logGroup" => String.t()
      }

  """
  @type cloud_watch_logs_log_delivery_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      apache_kafka_cluster() :: %{
        "bootstrapServers" => String.t(),
        "vpc" => vpc()
      }

  """
  @type apache_kafka_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scale_out_policy_update() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_out_policy_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      firehose_log_delivery_description() :: %{
        "deliveryStream" => String.t(),
        "enabled" => boolean()
      }

  """
  @type firehose_log_delivery_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provisioned_capacity() :: %{
        "mcuCount" => integer(),
        "workerCount" => integer()
      }

  """
  @type provisioned_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      state_description() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type state_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connector_response() :: %{
        optional("connectorArn") => String.t(),
        optional("connectorName") => String.t(),
        optional("connectorState") => String.t()
      }

  """
  @type create_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      capacity_update() :: %{
        "autoScaling" => auto_scaling_update(),
        "provisionedCapacity" => provisioned_capacity_update()
      }

  """
  @type capacity_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_configuration_revision_description() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "propertiesFileContent" => String.t(),
        "revision" => float()
      }

  """
  @type worker_configuration_revision_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucketArn" => String.t(),
        "fileKey" => String.t(),
        "objectVersion" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_delivery_description() :: %{
        "workerLogDelivery" => worker_log_delivery_description()
      }

  """
  @type log_delivery_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_connector_request() :: %{}

  """
  @type describe_connector_request() :: %{}

  @typedoc """

  ## Example:

      custom_plugin_description() :: %{
        "customPluginArn" => String.t(),
        "revision" => float()
      }

  """
  @type custom_plugin_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_scaling() :: %{
        "maxWorkerCount" => integer(),
        "mcuCount" => integer(),
        "minWorkerCount" => integer(),
        "scaleInPolicy" => scale_in_policy(),
        "scaleOutPolicy" => scale_out_policy()
      }

  """
  @type auto_scaling() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_custom_plugin_request() :: %{}

  """
  @type delete_custom_plugin_request() :: %{}

  @typedoc """

  ## Example:

      provisioned_capacity_update() :: %{
        "mcuCount" => integer(),
        "workerCount" => integer()
      }

  """
  @type provisioned_capacity_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scale_in_policy_update() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_in_policy_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_log_delivery() :: %{
        "bucket" => String.t(),
        "enabled" => boolean(),
        "prefix" => String.t()
      }

  """
  @type s3_log_delivery() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_configuration_revision_summary() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "revision" => float()
      }

  """
  @type worker_configuration_revision_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connector_request() :: %{
        optional("connectorDescription") => String.t(),
        optional("logDelivery") => log_delivery(),
        optional("tags") => map(),
        optional("workerConfiguration") => worker_configuration(),
        required("capacity") => capacity(),
        required("connectorConfiguration") => map(),
        required("connectorName") => String.t(),
        required("kafkaCluster") => kafka_cluster(),
        required("kafkaClusterClientAuthentication") => kafka_cluster_client_authentication(),
        required("kafkaClusterEncryptionInTransit") => kafka_cluster_encryption_in_transit(),
        required("kafkaConnectVersion") => String.t(),
        required("plugins") => list(plugin()()),
        required("serviceExecutionRoleArn") => String.t()
      }

  """
  @type create_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_worker_configuration_response() :: %{
        optional("workerConfigurationArn") => String.t(),
        optional("workerConfigurationState") => String.t()
      }

  """
  @type delete_worker_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_log_delivery() :: %{
        "cloudWatchLogs" => cloud_watch_logs_log_delivery(),
        "firehose" => firehose_log_delivery(),
        "s3" => s3_log_delivery()
      }

  """
  @type worker_log_delivery() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin_description() :: %{
        "customPlugin" => custom_plugin_description()
      }

  """
  @type plugin_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_connector_response() :: %{
        optional("connectorArn") => String.t(),
        optional("connectorState") => String.t()
      }

  """
  @type delete_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connector_summary() :: %{
        "capacity" => capacity_description(),
        "connectorArn" => String.t(),
        "connectorDescription" => String.t(),
        "connectorName" => String.t(),
        "connectorState" => String.t(),
        "creationTime" => non_neg_integer(),
        "currentVersion" => String.t(),
        "kafkaCluster" => kafka_cluster_description(),
        "kafkaClusterClientAuthentication" => kafka_cluster_client_authentication_description(),
        "kafkaClusterEncryptionInTransit" => kafka_cluster_encryption_in_transit_description(),
        "kafkaConnectVersion" => String.t(),
        "logDelivery" => log_delivery_description(),
        "plugins" => list(plugin_description()()),
        "serviceExecutionRoleArn" => String.t(),
        "workerConfiguration" => worker_configuration_description()
      }

  """
  @type connector_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_log_delivery() :: %{
        "enabled" => boolean(),
        "logGroup" => String.t()
      }

  """
  @type cloud_watch_logs_log_delivery() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      worker_log_delivery_description() :: %{
        "cloudWatchLogs" => cloud_watch_logs_log_delivery_description(),
        "firehose" => firehose_log_delivery_description(),
        "s3" => s3_log_delivery_description()
      }

  """
  @type worker_log_delivery_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_delivery() :: %{
        "workerLogDelivery" => worker_log_delivery()
      }

  """
  @type log_delivery() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connector_response() :: %{
        optional("connectorArn") => String.t(),
        optional("connectorState") => String.t()
      }

  """
  @type update_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_custom_plugin_request() :: %{}

  """
  @type describe_custom_plugin_request() :: %{}

  @typedoc """

  ## Example:

      create_worker_configuration_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("propertiesFileContent") => String.t()
      }

  """
  @type create_worker_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_description() :: %{
        "apacheKafkaCluster" => apache_kafka_cluster_description()
      }

  """
  @type kafka_cluster_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_custom_plugin_response() :: %{
        optional("customPluginArn") => String.t(),
        optional("customPluginState") => String.t(),
        optional("name") => String.t(),
        optional("revision") => float()
      }

  """
  @type create_custom_plugin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin_location_description() :: %{
        "s3Location" => s3_location_description()
      }

  """
  @type custom_plugin_location_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin() :: %{
        "customPluginArn" => String.t(),
        "revision" => float()
      }

  """
  @type custom_plugin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connector_request() :: %{
        optional("currentVersion") => String.t()
      }

  """
  @type delete_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      firehose_log_delivery() :: %{
        "deliveryStream" => String.t(),
        "enabled" => boolean()
      }

  """
  @type firehose_log_delivery() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_worker_configuration_response() :: %{
        optional("creationTime") => non_neg_integer(),
        optional("latestRevision") => worker_configuration_revision_summary(),
        optional("name") => String.t(),
        optional("workerConfigurationArn") => String.t(),
        optional("workerConfigurationState") => String.t()
      }

  """
  @type create_worker_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_worker_configuration_request() :: %{}

  """
  @type delete_worker_configuration_request() :: %{}

  @typedoc """

  ## Example:

      s3_log_delivery_description() :: %{
        "bucket" => String.t(),
        "enabled" => boolean(),
        "prefix" => String.t()
      }

  """
  @type s3_log_delivery_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_custom_plugins_request() :: %{
        optional("maxResults") => integer(),
        optional("namePrefix") => String.t(),
        optional("nextToken") => String.t()
      }

  """
  @type list_custom_plugins_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      apache_kafka_cluster_description() :: %{
        "bootstrapServers" => String.t(),
        "vpc" => vpc_description()
      }

  """
  @type apache_kafka_cluster_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location_description() :: %{
        "bucketArn" => String.t(),
        "fileKey" => String.t(),
        "objectVersion" => String.t()
      }

  """
  @type s3_location_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_worker_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("namePrefix") => String.t(),
        optional("nextToken") => String.t()
      }

  """
  @type list_worker_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin_location() :: %{
        "s3Location" => s3_location()
      }

  """
  @type custom_plugin_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scale_out_policy() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_out_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin_file_description() :: %{
        "fileMd5" => String.t(),
        "fileSize" => float()
      }

  """
  @type custom_plugin_file_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_custom_plugin_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("contentType") => String.t(),
        required("location") => custom_plugin_location(),
        required("name") => String.t()
      }

  """
  @type create_custom_plugin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_worker_configuration_request() :: %{}

  """
  @type describe_worker_configuration_request() :: %{}

  @typedoc """

  ## Example:

      custom_plugin_revision_summary() :: %{
        "contentType" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "fileDescription" => custom_plugin_file_description(),
        "location" => custom_plugin_location_description(),
        "revision" => float()
      }

  """
  @type custom_plugin_revision_summary() :: %{String.t() => any()}

  @type create_connector_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_custom_plugin_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_worker_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_connector_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_custom_plugin_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_worker_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_connector_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_custom_plugin_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_worker_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_connectors_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_custom_plugins_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_worker_configurations_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_connector_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2021-09-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kafkaconnect",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "KafkaConnect",
      signature_version: "v4",
      signing_name: "kafkaconnect",
      target_prefix: nil
    }
  end

  @doc """
  Creates a connector using the specified properties.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20CreateConnector&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_connector(AWS.Client.t(), create_connector_request(), Keyword.t()) ::
          {:ok, create_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connector_errors()}
  def create_connector(%Client{} = client, input, options \\ []) do
    url_path = "/v1/connectors"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a custom plugin using the specified properties.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20CreateCustomPlugin&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_custom_plugin(AWS.Client.t(), create_custom_plugin_request(), Keyword.t()) ::
          {:ok, create_custom_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_plugin_errors()}
  def create_custom_plugin(%Client{} = client, input, options \\ []) do
    url_path = "/v1/custom-plugins"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a worker configuration using the specified properties.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20CreateWorkerConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_worker_configuration(
          AWS.Client.t(),
          create_worker_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, create_worker_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_worker_configuration_errors()}
  def create_worker_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/worker-configurations"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20DeleteConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connector_arn` (`t:string`) The Amazon Resource Name (ARN) of the connector
    that you want to delete.

  ## Optional parameters:
  * `:current_version` (`t:string`) The current version of the connector that you
    want to delete.
  """
  @spec delete_connector(AWS.Client.t(), String.t(), delete_connector_request(), Keyword.t()) ::
          {:ok, delete_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connector_errors()}
  def delete_connector(%Client{} = client, connector_arn, input, options \\ []) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []

    {query_params, input} =
      [
        {"currentVersion", "currentVersion"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:current_version])

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a custom plugin.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20DeleteCustomPlugin&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:custom_plugin_arn` (`t:string`) The Amazon Resource Name (ARN) of the custom
    plugin that you want to delete.

  ## Optional parameters:
  """
  @spec delete_custom_plugin(
          AWS.Client.t(),
          String.t(),
          delete_custom_plugin_request(),
          Keyword.t()
        ) ::
          {:ok, delete_custom_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_plugin_errors()}
  def delete_custom_plugin(%Client{} = client, custom_plugin_arn, input, options \\ []) do
    url_path = "/v1/custom-plugins/#{AWS.Util.encode_uri(custom_plugin_arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified worker configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20DeleteWorkerConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:worker_configuration_arn` (`t:string`) The Amazon Resource Name (ARN) of the
    worker configuration that you want to delete.

  ## Optional parameters:
  """
  @spec delete_worker_configuration(
          AWS.Client.t(),
          String.t(),
          delete_worker_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, delete_worker_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_worker_configuration_errors()}
  def delete_worker_configuration(
        %Client{} = client,
        worker_configuration_arn,
        input,
        options \\ []
      ) do
    url_path = "/v1/worker-configurations/#{AWS.Util.encode_uri(worker_configuration_arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns summary information about the connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20DescribeConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connector_arn` (`t:string`) The Amazon Resource Name (ARN) of the connector
    that you want to describe.

  ## Optional parameters:
  """
  @spec describe_connector(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connector_errors()}
  def describe_connector(%Client{} = client, connector_arn, options \\ []) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A summary description of the custom plugin.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20DescribeCustomPlugin&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:custom_plugin_arn` (`t:string`) Returns information about a custom plugin.

  ## Optional parameters:
  """
  @spec describe_custom_plugin(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_custom_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_custom_plugin_errors()}
  def describe_custom_plugin(%Client{} = client, custom_plugin_arn, options \\ []) do
    url_path = "/v1/custom-plugins/#{AWS.Util.encode_uri(custom_plugin_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a worker configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20DescribeWorkerConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:worker_configuration_arn` (`t:string`) The Amazon Resource Name (ARN) of the
    worker configuration that you want to get information about.

  ## Optional parameters:
  """
  @spec describe_worker_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_worker_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_worker_configuration_errors()}
  def describe_worker_configuration(%Client{} = client, worker_configuration_arn, options \\ []) do
    url_path = "/v1/worker-configurations/#{AWS.Util.encode_uri(worker_configuration_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all the connectors in this account and Region. The list is
  limited to connectors whose name starts with the specified prefix. The
  response also includes a description of each of the listed connectors.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20ListConnectors&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:connector_name_prefix` (`t:string`) The name prefix that you want to use to
    search for and list connectors.
  * `:max_results` (`t:integer`) The maximum number of connectors to list in one
    response.
  * `:next_token` (`t:string`) If the response of a ListConnectors operation is
    truncated, it will include a NextToken. Send this NextToken in a subsequent
    request to continue listing from where the previous operation left off.
  """
  @spec list_connectors(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_connectors_errors()}
  def list_connectors(%Client{} = client, options \\ []) do
    url_path = "/v1/connectors"

    # Validate optional parameters
    optional_params = [connector_name_prefix: nil, max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :connector_name_prefix) do
        [{"connectorNamePrefix", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:connector_name_prefix, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all of the custom plugins in this account and Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20ListCustomPlugins&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of custom plugins to list in
    one response.
  * `:name_prefix` (`t:string`) Lists custom plugin names that start with the
    specified text string.
  * `:next_token` (`t:string`) If the response of a ListCustomPlugins operation is
    truncated, it will include a NextToken. Send this NextToken in a subsequent
    request to continue listing from where the previous operation left off.
  """
  @spec list_custom_plugins(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_custom_plugins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_custom_plugins_errors()}
  def list_custom_plugins(%Client{} = client, options \\ []) do
    url_path = "/v1/custom-plugins"

    # Validate optional parameters
    optional_params = [max_results: nil, name_prefix: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name_prefix) do
        [{"namePrefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :name_prefix, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the tags attached to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
    for which you want to list all attached tags.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all of the worker configurations in this account and Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20ListWorkerConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of worker configurations to
    list in one response.
  * `:name_prefix` (`t:string`) Lists worker configuration names that start with
    the specified text string.
  * `:next_token` (`t:string`) If the response of a ListWorkerConfigurations
    operation is truncated, it will include a NextToken. Send this NextToken in
    a subsequent request to continue listing from where the previous operation
    left off.
  """
  @spec list_worker_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_worker_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_worker_configurations_errors()}
  def list_worker_configurations(%Client{} = client, options \\ []) do
    url_path = "/v1/worker-configurations"

    # Validate optional parameters
    optional_params = [max_results: nil, name_prefix: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name_prefix) do
        [{"namePrefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :name_prefix, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Attaches tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource to
    which you want to attach tags.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
    from which you want to remove tags.
  * `:tag_keys` (`t:list[com.amazonaws.kafkaconnect#TagKey]`) The keys of the tags
    that you want to remove from the resource.

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafkaconnect%20UpdateConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connector_arn` (`t:string`) The Amazon Resource Name (ARN) of the connector
    that you want to update.
  * `:current_version` (`t:string`) The current version of the connector that you
    want to update.

  ## Optional parameters:
  """
  @spec update_connector(AWS.Client.t(), String.t(), update_connector_request(), Keyword.t()) ::
          {:ok, update_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connector_errors()}
  def update_connector(%Client{} = client, connector_arn, input, options \\ []) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []

    {query_params, input} =
      [
        {"currentVersion", "currentVersion"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
