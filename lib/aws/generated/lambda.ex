# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Lambda do
  @moduledoc """
  Lambda **Overview**
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_functions_by_code_signing_config_response() :: %{
        "FunctionArns" => list(String.t()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_functions_by_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_usage() :: %{
        "FunctionCount" => float(),
        "TotalCodeSize" => float()
      }
      
  """
  @type account_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      function_event_invoke_config() :: %{
        optional("DestinationConfig") => destination_config(),
        optional("FunctionArn") => String.t(),
        optional("LastModified") => non_neg_integer(),
        optional("MaximumEventAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer()
      }
      
  """
  @type function_event_invoke_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_response() :: %{
        "Aliases" => list(alias_configuration()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_media_type_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type unsupported_media_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_disabled_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type kms_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_request() :: %{
        optional("FunctionVersion") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      function_code() :: %{
        "ImageUri" => String.t(),
        "S3Bucket" => String.t(),
        "S3Key" => String.t(),
        "S3ObjectVersion" => String.t(),
        "ZipFile" => binary()
      }
      
  """
  @type function_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_security_group_id_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type invalid_security_group_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_event_source_mapping_request() :: %{
        optional("BatchSize") => integer(),
        optional("BisectBatchOnFunctionError") => boolean(),
        optional("DestinationConfig") => destination_config(),
        optional("DocumentDBEventSourceConfig") => document_db_event_source_config(),
        optional("Enabled") => boolean(),
        optional("FilterCriteria") => filter_criteria(),
        optional("FunctionName") => String.t(),
        optional("FunctionResponseTypes") => list(list(any())()),
        optional("MaximumBatchingWindowInSeconds") => integer(),
        optional("MaximumRecordAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("ParallelizationFactor") => integer(),
        optional("ScalingConfig") => scaling_config(),
        optional("SourceAccessConfigurations") => list(source_access_configuration()()),
        optional("TumblingWindowInSeconds") => integer()
      }
      
  """
  @type update_event_source_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      runtime_version_config() :: %{
        "Error" => runtime_version_error(),
        "RuntimeVersionArn" => String.t()
      }
      
  """
  @type runtime_version_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snap_start() :: %{
        "ApplyOn" => list(any())
      }
      
  """
  @type snap_start() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_code_signing_config_request() :: %{}
      
  """
  @type get_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:
      
      remove_layer_version_permission_request() :: %{
        optional("RevisionId") => String.t()
      }
      
  """
  @type remove_layer_version_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_function_code_signing_config_request() :: %{}
      
  """
  @type delete_function_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:
      
      environment_response() :: %{
        "Error" => environment_error(),
        "Variables" => map()
      }
      
  """
  @type environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_concurrency_config_list_item() :: %{
        "AllocatedProvisionedConcurrentExecutions" => integer(),
        "AvailableProvisionedConcurrentExecutions" => integer(),
        "FunctionArn" => String.t(),
        "LastModified" => String.t(),
        "RequestedProvisionedConcurrentExecutions" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type provisioned_concurrency_config_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_alias_request() :: %{
        optional("Description") => String.t(),
        optional("FunctionVersion") => String.t(),
        optional("RevisionId") => String.t(),
        optional("RoutingConfig") => alias_routing_configuration()
      }
      
  """
  @type update_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_functions_response() :: %{
        "Functions" => list(function_configuration()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_functions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_function_concurrency_request() :: %{
        required("ReservedConcurrentExecutions") => integer()
      }
      
  """
  @type put_function_concurrency_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_length_exceeded_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type policy_length_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_provisioned_concurrency_configs_response() :: %{
        "NextMarker" => String.t(),
        "ProvisionedConcurrencyConfigs" => list(provisioned_concurrency_config_list_item()())
      }
      
  """
  @type list_provisioned_concurrency_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_code_signing_configs_response() :: %{
        "CodeSigningConfigs" => list(code_signing_config()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_code_signing_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_managed_kafka_event_source_config() :: %{
        "ConsumerGroupId" => String.t()
      }
      
  """
  @type amazon_managed_kafka_event_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_with_response_stream_response() :: %{
        "EventStream" => list(),
        "ExecutedVersion" => String.t(),
        "ResponseStreamContentType" => String.t(),
        "StatusCode" => integer()
      }
      
  """
  @type invoke_with_response_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_criteria() :: %{
        "Filters" => list(filter()())
      }
      
  """
  @type filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      function_code_location() :: %{
        "ImageUri" => String.t(),
        "Location" => String.t(),
        "RepositoryType" => String.t(),
        "ResolvedImageUri" => String.t()
      }
      
  """
  @type function_code_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_request() :: %{}
      
  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      create_alias_request() :: %{
        optional("Description") => String.t(),
        optional("RoutingConfig") => alias_routing_configuration(),
        required("FunctionVersion") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_layer_version_policy_response() :: %{
        "Policy" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type get_layer_version_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_response() :: %{
        "AccountLimit" => account_limit(),
        "AccountUsage" => account_usage()
      }
      
  """
  @type get_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_request() :: %{
        optional("Qualifier") => String.t()
      }
      
  """
  @type get_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_layer_version_response() :: %{
        optional("CompatibleArchitectures") => list(list(any())()),
        optional("CompatibleRuntimes") => list(list(any())()),
        optional("Content") => layer_version_content_output(),
        optional("CreatedDate") => String.t(),
        optional("Description") => String.t(),
        optional("LayerArn") => String.t(),
        optional("LayerVersionArn") => String.t(),
        optional("LicenseInfo") => String.t(),
        optional("Version") => float()
      }
      
  """
  @type get_layer_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_function_event_invoke_config_request() :: %{
        optional("DestinationConfig") => destination_config(),
        optional("MaximumEventAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("Qualifier") => String.t()
      }
      
  """
  @type put_function_event_invoke_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_async_request() :: %{
        required("InvokeArgs") => binary()
      }
      
  """
  @type invoke_async_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_layers_response() :: %{
        "Layers" => list(layers_list_item()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_layers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_access_configuration() :: %{
        "Type" => list(any()),
        "URI" => String.t()
      }
      
  """
  @type source_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_layer_version_policy_request() :: %{}
      
  """
  @type get_layer_version_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      list_code_signing_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_code_signing_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_version_content_output() :: %{
        "CodeSha256" => String.t(),
        "CodeSize" => float(),
        "Location" => String.t(),
        "SigningJobArn" => String.t(),
        "SigningProfileVersionArn" => String.t()
      }
      
  """
  @type layer_version_content_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invocation_response() :: %{
        "ExecutedVersion" => String.t(),
        "FunctionError" => String.t(),
        "LogResult" => String.t(),
        "Payload" => binary(),
        "StatusCode" => integer()
      }
      
  """
  @type invocation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_function_url_config_request() :: %{
        optional("Qualifier") => String.t()
      }
      
  """
  @type delete_function_url_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_access_denied_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type ec2_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_function_url_config_request() :: %{
        optional("AuthType") => list(any()),
        optional("Cors") => cors(),
        optional("InvokeMode") => list(any()),
        optional("Qualifier") => String.t()
      }
      
  """
  @type update_function_url_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      self_managed_kafka_event_source_config() :: %{
        "ConsumerGroupId" => String.t()
      }
      
  """
  @type self_managed_kafka_event_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snap_start_not_ready_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type snap_start_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_configuration_request() :: %{
        optional("Qualifier") => String.t()
      }
      
  """
  @type get_function_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_response() :: %{
        "Code" => function_code_location(),
        "Concurrency" => concurrency(),
        "Configuration" => function_configuration(),
        "Tags" => map()
      }
      
  """
  @type get_function_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_config() :: %{
        "ApplicationLogLevel" => list(any()),
        "LogFormat" => list(any()),
        "LogGroup" => String.t(),
        "SystemLogLevel" => list(any())
      }
      
  """
  @type logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_function_concurrency_request() :: %{}
      
  """
  @type delete_function_concurrency_request() :: %{}

  @typedoc """

  ## Example:
      
      image_config() :: %{
        "Command" => list(String.t()()),
        "EntryPoint" => list(String.t()()),
        "WorkingDirectory" => String.t()
      }
      
  """
  @type image_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_function_url_config_response() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t(),
        "FunctionArn" => String.t(),
        "FunctionUrl" => String.t(),
        "InvokeMode" => list(any()),
        "LastModifiedTime" => String.t()
      }
      
  """
  @type update_function_url_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "Reason" => list(any()),
        "Type" => String.t(),
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_code_signing_config_request() :: %{}
      
  """
  @type get_function_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:
      
      destination_config() :: %{
        "OnFailure" => on_failure(),
        "OnSuccess" => on_success()
      }
      
  """
  @type destination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snap_start_timeout_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type snap_start_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_provisioned_concurrency_config_request() :: %{
        required("ProvisionedConcurrentExecutions") => integer(),
        required("Qualifier") => String.t()
      }
      
  """
  @type put_provisioned_concurrency_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_layer_version_request() :: %{}
      
  """
  @type delete_layer_version_request() :: %{}

  @typedoc """

  ## Example:
      
      create_code_signing_config_response() :: %{
        "CodeSigningConfig" => code_signing_config()
      }
      
  """
  @type create_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_response_stream_update() :: %{
        "Payload" => binary()
      }
      
  """
  @type invoke_response_stream_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_function_event_invoke_configs_response() :: %{
        "FunctionEventInvokeConfigs" => list(function_event_invoke_config()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_function_event_invoke_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_concurrency_response() :: %{
        "ReservedConcurrentExecutions" => integer()
      }
      
  """
  @type get_function_concurrency_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_source_mapping_request() :: %{}
      
  """
  @type delete_event_source_mapping_request() :: %{}

  @typedoc """

  ## Example:
      
      recursive_invocation_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type recursive_invocation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_runtime_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type invalid_runtime_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_concurrency_request() :: %{}
      
  """
  @type get_function_concurrency_request() :: %{}

  @typedoc """

  ## Example:
      
      get_alias_request() :: %{}
      
  """
  @type get_alias_request() :: %{}

  @typedoc """

  ## Example:
      
      on_failure() :: %{
        "Destination" => String.t()
      }
      
  """
  @type on_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_source_mappings_response() :: %{
        "EventSourceMappings" => list(event_source_mapping_configuration()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_event_source_mappings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_runtime_management_config_request() :: %{
        optional("Qualifier") => String.t()
      }
      
  """
  @type get_runtime_management_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_content_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_request_content_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_runtime_management_config_request() :: %{
        optional("Qualifier") => String.t(),
        optional("RuntimeVersionArn") => String.t(),
        required("UpdateRuntimeOn") => list(any())
      }
      
  """
  @type put_runtime_management_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_request() :: %{
        optional("Qualifier") => String.t()
      }
      
  """
  @type get_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_layer_version_response() :: %{
        "CompatibleArchitectures" => list(list(any())()),
        "CompatibleRuntimes" => list(list(any())()),
        "Content" => layer_version_content_output(),
        "CreatedDate" => String.t(),
        "Description" => String.t(),
        "LayerArn" => String.t(),
        "LayerVersionArn" => String.t(),
        "LicenseInfo" => String.t(),
        "Version" => float()
      }
      
  """
  @type publish_layer_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_db_event_source_config() :: %{
        "CollectionName" => String.t(),
        "DatabaseName" => String.t(),
        "FullDocument" => list(any())
      }
      
  """
  @type document_db_event_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_code_signing_config_request() :: %{}
      
  """
  @type delete_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:
      
      create_function_url_config_response() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t(),
        "FunctionArn" => String.t(),
        "FunctionUrl" => String.t(),
        "InvokeMode" => list(any())
      }
      
  """
  @type create_function_url_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_signing_config_not_found_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type code_signing_config_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment() :: %{
        "Variables" => map()
      }
      
  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_function_request() :: %{
        optional("Qualifier") => String.t()
      }
      
  """
  @type delete_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_version_request() :: %{
        optional("CodeSha256") => String.t(),
        optional("Description") => String.t(),
        optional("RevisionId") => String.t()
      }
      
  """
  @type publish_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_function_code_signing_config_response() :: %{
        "CodeSigningConfigArn" => String.t(),
        "FunctionName" => String.t()
      }
      
  """
  @type put_function_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alias_configuration() :: %{
        "AliasArn" => String.t(),
        "Description" => String.t(),
        "FunctionVersion" => String.t(),
        "Name" => String.t(),
        "RevisionId" => String.t(),
        "RoutingConfig" => alias_routing_configuration()
      }
      
  """
  @type alias_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_function_code_request() :: %{
        optional("Architectures") => list(list(any())()),
        optional("DryRun") => boolean(),
        optional("ImageUri") => String.t(),
        optional("Publish") => boolean(),
        optional("RevisionId") => String.t(),
        optional("S3Bucket") => String.t(),
        optional("S3Key") => String.t(),
        optional("S3ObjectVersion") => String.t(),
        optional("ZipFile") => binary()
      }
      
  """
  @type update_function_code_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_code_signing_config_request() :: %{
        optional("CodeSigningPolicies") => code_signing_policies(),
        optional("Description") => String.t(),
        required("AllowedPublishers") => allowed_publishers()
      }
      
  """
  @type create_code_signing_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_source_mapping_configuration() :: %{
        "AmazonManagedKafkaEventSourceConfig" => amazon_managed_kafka_event_source_config(),
        "BatchSize" => integer(),
        "BisectBatchOnFunctionError" => boolean(),
        "DestinationConfig" => destination_config(),
        "DocumentDBEventSourceConfig" => document_db_event_source_config(),
        "EventSourceArn" => String.t(),
        "FilterCriteria" => filter_criteria(),
        "FunctionArn" => String.t(),
        "FunctionResponseTypes" => list(list(any())()),
        "LastModified" => non_neg_integer(),
        "LastProcessingResult" => String.t(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "MaximumRecordAgeInSeconds" => integer(),
        "MaximumRetryAttempts" => integer(),
        "ParallelizationFactor" => integer(),
        "Queues" => list(String.t()()),
        "ScalingConfig" => scaling_config(),
        "SelfManagedEventSource" => self_managed_event_source(),
        "SelfManagedKafkaEventSourceConfig" => self_managed_kafka_event_source_config(),
        "SourceAccessConfigurations" => list(source_access_configuration()()),
        "StartingPosition" => list(any()),
        "StartingPositionTimestamp" => non_neg_integer(),
        "State" => String.t(),
        "StateTransitionReason" => String.t(),
        "Topics" => list(String.t()()),
        "TumblingWindowInSeconds" => integer(),
        "UUID" => String.t()
      }
      
  """
  @type event_source_mapping_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_source_mapping_request() :: %{
        optional("AmazonManagedKafkaEventSourceConfig") => amazon_managed_kafka_event_source_config(),
        optional("BatchSize") => integer(),
        optional("BisectBatchOnFunctionError") => boolean(),
        optional("DestinationConfig") => destination_config(),
        optional("DocumentDBEventSourceConfig") => document_db_event_source_config(),
        optional("Enabled") => boolean(),
        optional("EventSourceArn") => String.t(),
        optional("FilterCriteria") => filter_criteria(),
        optional("FunctionResponseTypes") => list(list(any())()),
        optional("MaximumBatchingWindowInSeconds") => integer(),
        optional("MaximumRecordAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("ParallelizationFactor") => integer(),
        optional("Queues") => list(String.t()()),
        optional("ScalingConfig") => scaling_config(),
        optional("SelfManagedEventSource") => self_managed_event_source(),
        optional("SelfManagedKafkaEventSourceConfig") => self_managed_kafka_event_source_config(),
        optional("SourceAccessConfigurations") => list(source_access_configuration()()),
        optional("StartingPosition") => list(any()),
        optional("StartingPositionTimestamp") => non_neg_integer(),
        optional("Topics") => list(String.t()()),
        optional("TumblingWindowInSeconds") => integer(),
        required("FunctionName") => String.t()
      }
      
  """
  @type create_event_source_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_function_url_config_request() :: %{
        optional("Cors") => cors(),
        optional("InvokeMode") => list(any()),
        optional("Qualifier") => String.t(),
        required("AuthType") => list(any())
      }
      
  """
  @type create_function_url_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer() :: %{
        "Arn" => String.t(),
        "CodeSize" => float(),
        "SigningJobArn" => String.t(),
        "SigningProfileVersionArn" => String.t()
      }
      
  """
  @type layer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_provisioned_concurrency_config_response() :: %{
        "AllocatedProvisionedConcurrentExecutions" => integer(),
        "AvailableProvisionedConcurrentExecutions" => integer(),
        "LastModified" => String.t(),
        "RequestedProvisionedConcurrentExecutions" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type get_provisioned_concurrency_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "Ipv6AllowedForDualStack" => boolean(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }
      
  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_layer_version_request() :: %{
        optional("CompatibleArchitectures") => list(list(any())()),
        optional("CompatibleRuntimes") => list(list(any())()),
        optional("Description") => String.t(),
        optional("LicenseInfo") => String.t(),
        required("Content") => layer_version_content_input()
      }
      
  """
  @type publish_layer_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_ip_address_limit_reached_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type subnet_ip_address_limit_reached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_permission_request() :: %{
        optional("Qualifier") => String.t(),
        optional("RevisionId") => String.t()
      }
      
  """
  @type remove_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_limit() :: %{
        "CodeSizeUnzipped" => float(),
        "CodeSizeZipped" => float(),
        "ConcurrentExecutions" => integer(),
        "TotalCodeSize" => float(),
        "UnreservedConcurrentExecutions" => integer()
      }
      
  """
  @type account_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_function_event_invoke_config_request() :: %{
        optional("DestinationConfig") => destination_config(),
        optional("MaximumEventAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("Qualifier") => String.t()
      }
      
  """
  @type update_function_event_invoke_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_code_signing_config_response() :: %{}
      
  """
  @type delete_code_signing_config_response() :: %{}

  @typedoc """

  ## Example:
      
      file_system_config() :: %{
        "Arn" => String.t(),
        "LocalMountPath" => String.t()
      }
      
  """
  @type file_system_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tracing_config() :: %{
        "Mode" => list(any())
      }
      
  """
  @type tracing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_layer_version_by_arn_request() :: %{
        required("Arn") => String.t()
      }
      
  """
  @type get_layer_version_by_arn_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_verification_failed_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type code_verification_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ephemeral_storage() :: %{
        "Size" => integer()
      }
      
  """
  @type ephemeral_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_provisioned_concurrency_config_response() :: %{
        "AllocatedProvisionedConcurrentExecutions" => integer(),
        "AvailableProvisionedConcurrentExecutions" => integer(),
        "LastModified" => String.t(),
        "RequestedProvisionedConcurrentExecutions" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type put_provisioned_concurrency_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Pattern" => String.t()
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_versions_list_item() :: %{
        "CompatibleArchitectures" => list(list(any())()),
        "CompatibleRuntimes" => list(list(any())()),
        "CreatedDate" => String.t(),
        "Description" => String.t(),
        "LayerVersionArn" => String.t(),
        "LicenseInfo" => String.t(),
        "Version" => float()
      }
      
  """
  @type layer_versions_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_layer_versions_response() :: %{
        "LayerVersions" => list(layer_versions_list_item()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_layer_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_async_response() :: %{
        "Status" => integer()
      }
      
  """
  @type invoke_async_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_versions_by_function_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_versions_by_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_too_large_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type request_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_config() :: %{
        "MaximumConcurrency" => integer()
      }
      
  """
  @type scaling_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_response() :: %{
        "Policy" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type get_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_provisioned_concurrency_config_request() :: %{
        required("Qualifier") => String.t()
      }
      
  """
  @type get_provisioned_concurrency_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_functions_request() :: %{
        optional("FunctionVersion") => list(any()),
        optional("Marker") => String.t(),
        optional("MasterRegion") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_functions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_layer_version_permission_request() :: %{
        optional("OrganizationId") => String.t(),
        optional("RevisionId") => String.t(),
        required("Action") => String.t(),
        required("Principal") => String.t(),
        required("StatementId") => String.t()
      }
      
  """
  @type add_layer_version_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_functions_by_code_signing_config_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_functions_by_code_signing_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_source_mappings_request() :: %{
        optional("EventSourceArn") => String.t(),
        optional("FunctionName") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_event_source_mappings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_access_denied_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type kms_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_code_signing_config_request() :: %{
        optional("AllowedPublishers") => allowed_publishers(),
        optional("CodeSigningPolicies") => code_signing_policies(),
        optional("Description") => String.t()
      }
      
  """
  @type update_code_signing_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_function_code_signing_config_request() :: %{
        required("CodeSigningConfigArn") => String.t()
      }
      
  """
  @type put_function_code_signing_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_layer_version_permission_response() :: %{
        "RevisionId" => String.t(),
        "Statement" => String.t()
      }
      
  """
  @type add_layer_version_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_source_mapping_request() :: %{}
      
  """
  @type get_event_source_mapping_request() :: %{}

  @typedoc """

  ## Example:
      
      invocation_request() :: %{
        optional("ClientContext") => String.t(),
        optional("InvocationType") => list(any()),
        optional("LogType") => list(any()),
        optional("Payload") => binary(),
        optional("Qualifier") => String.t()
      }
      
  """
  @type invocation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_zip_file_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type invalid_zip_file_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_with_response_stream_complete_event() :: %{
        "ErrorCode" => String.t(),
        "ErrorDetails" => String.t(),
        "LogResult" => String.t()
      }
      
  """
  @type invoke_with_response_stream_complete_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_not_found_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type kms_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_with_response_stream_request() :: %{
        optional("ClientContext") => String.t(),
        optional("InvocationType") => list(any()),
        optional("LogType") => list(any()),
        optional("Payload") => binary(),
        optional("Qualifier") => String.t()
      }
      
  """
  @type invoke_with_response_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_url_config_request() :: %{
        optional("Qualifier") => String.t()
      }
      
  """
  @type get_function_url_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_code_signing_config_response() :: %{
        "CodeSigningConfig" => code_signing_config()
      }
      
  """
  @type update_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dead_letter_config() :: %{
        "TargetArn" => String.t()
      }
      
  """
  @type dead_letter_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_f_s_mount_timeout_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type e_f_s_mount_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_provisioned_concurrency_config_request() :: %{
        required("Qualifier") => String.t()
      }
      
  """
  @type delete_provisioned_concurrency_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_config_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type image_config_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_layers_request() :: %{
        optional("CompatibleArchitecture") => list(any()),
        optional("CompatibleRuntime") => list(any()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_layers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_concurrency_config_not_found_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type provisioned_concurrency_config_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_code_signing_config_response() :: %{
        "CodeSigningConfig" => code_signing_config()
      }
      
  """
  @type get_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      runtime_version_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type runtime_version_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_layer_version_request() :: %{}
      
  """
  @type get_layer_version_request() :: %{}

  @typedoc """

  ## Example:
      
      function_configuration() :: %{
        "VpcConfig" => vpc_config_response(),
        "TracingConfig" => tracing_config_response(),
        "MemorySize" => integer(),
        "Version" => String.t(),
        "Handler" => String.t(),
        "KMSKeyArn" => String.t(),
        "SigningProfileVersionArn" => String.t(),
        "MasterArn" => String.t(),
        "Role" => String.t(),
        "PackageType" => list(any()),
        "StateReason" => String.t(),
        "State" => list(any()),
        "LastUpdateStatus" => list(any()),
        "Architectures" => list(list(any())()),
        "Environment" => environment_response(),
        "Timeout" => integer(),
        "LastModified" => String.t(),
        "StateReasonCode" => list(any()),
        "DeadLetterConfig" => dead_letter_config(),
        "EphemeralStorage" => ephemeral_storage(),
        "Layers" => list(layer()()),
        "CodeSha256" => String.t(),
        "FileSystemConfigs" => list(file_system_config()()),
        "LastUpdateStatusReason" => String.t(),
        "LastUpdateStatusReasonCode" => list(any()),
        "SnapStart" => snap_start_response(),
        "Runtime" => list(any()),
        "ImageConfigResponse" => image_config_response(),
        "Description" => String.t(),
        "RevisionId" => String.t(),
        "FunctionArn" => String.t(),
        "SigningJobArn" => String.t(),
        "LoggingConfig" => logging_config(),
        "CodeSize" => float(),
        "RuntimeVersionConfig" => runtime_version_config(),
        "FunctionName" => String.t()
      }
      
  """
  @type function_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_f_s_mount_connectivity_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type e_f_s_mount_connectivity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_runtime_management_config_response() :: %{
        "FunctionArn" => String.t(),
        "RuntimeVersionArn" => String.t(),
        "UpdateRuntimeOn" => list(any())
      }
      
  """
  @type get_runtime_management_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_runtime_management_config_response() :: %{
        "FunctionArn" => String.t(),
        "RuntimeVersionArn" => String.t(),
        "UpdateRuntimeOn" => list(any())
      }
      
  """
  @type put_runtime_management_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_n_i_limit_reached_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type e_n_i_limit_reached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_function_url_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_function_url_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_layer_versions_request() :: %{
        optional("CompatibleArchitecture") => list(any()),
        optional("CompatibleRuntime") => list(any()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_layer_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_function_event_invoke_config_request() :: %{
        optional("Qualifier") => String.t()
      }
      
  """
  @type delete_function_event_invoke_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_f_s_mount_failure_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type e_f_s_mount_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cors() :: %{
        "AllowCredentials" => boolean(),
        "AllowHeaders" => list(String.t()()),
        "AllowMethods" => list(String.t()()),
        "AllowOrigins" => list(String.t()()),
        "ExposeHeaders" => list(String.t()()),
        "MaxAge" => integer()
      }
      
  """
  @type cors() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      function_url_config() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t(),
        "FunctionArn" => String.t(),
        "FunctionUrl" => String.t(),
        "InvokeMode" => list(any()),
        "LastModifiedTime" => String.t()
      }
      
  """
  @type function_url_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_success() :: %{
        "Destination" => String.t()
      }
      
  """
  @type on_success() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      self_managed_event_source() :: %{
        "Endpoints" => map()
      }
      
  """
  @type self_managed_event_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_function_configuration_request() :: %{
        optional("DeadLetterConfig") => dead_letter_config(),
        optional("Description") => String.t(),
        optional("Environment") => environment(),
        optional("EphemeralStorage") => ephemeral_storage(),
        optional("FileSystemConfigs") => list(file_system_config()()),
        optional("Handler") => String.t(),
        optional("ImageConfig") => image_config(),
        optional("KMSKeyArn") => String.t(),
        optional("Layers") => list(String.t()()),
        optional("LoggingConfig") => logging_config(),
        optional("MemorySize") => integer(),
        optional("RevisionId") => String.t(),
        optional("Role") => String.t(),
        optional("Runtime") => list(any()),
        optional("SnapStart") => snap_start(),
        optional("Timeout") => integer(),
        optional("TracingConfig") => tracing_config(),
        optional("VpcConfig") => vpc_config()
      }
      
  """
  @type update_function_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_code_signing_config_response() :: %{
        "CodeSigningConfigArn" => String.t(),
        "FunctionName" => String.t()
      }
      
  """
  @type get_function_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_code_signature_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type invalid_code_signature_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_function_url_configs_response() :: %{
        "FunctionUrlConfigs" => list(function_url_config()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_function_url_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allowed_publishers() :: %{
        "SigningProfileVersionArns" => list(String.t()())
      }
      
  """
  @type allowed_publishers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_versions_by_function_response() :: %{
        "NextMarker" => String.t(),
        "Versions" => list(function_configuration()())
      }
      
  """
  @type list_versions_by_function_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_config_response() :: %{
        "Ipv6AllowedForDualStack" => boolean(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "VpcId" => String.t()
      }
      
  """
  @type vpc_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_unexpected_exception() :: %{
        "EC2ErrorCode" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type ec2_unexpected_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_url_config_response() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t(),
        "FunctionArn" => String.t(),
        "FunctionUrl" => String.t(),
        "InvokeMode" => list(any()),
        "LastModifiedTime" => String.t()
      }
      
  """
  @type get_function_url_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_function_event_invoke_config_request() :: %{
        optional("Qualifier") => String.t()
      }
      
  """
  @type get_function_event_invoke_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_function_request() :: %{
        optional("Architectures") => list(list(any())()),
        optional("CodeSigningConfigArn") => String.t(),
        optional("DeadLetterConfig") => dead_letter_config(),
        optional("Description") => String.t(),
        optional("Environment") => environment(),
        optional("EphemeralStorage") => ephemeral_storage(),
        optional("FileSystemConfigs") => list(file_system_config()()),
        optional("Handler") => String.t(),
        optional("ImageConfig") => image_config(),
        optional("KMSKeyArn") => String.t(),
        optional("Layers") => list(String.t()()),
        optional("LoggingConfig") => logging_config(),
        optional("MemorySize") => integer(),
        optional("PackageType") => list(any()),
        optional("Publish") => boolean(),
        optional("Runtime") => list(any()),
        optional("SnapStart") => snap_start(),
        optional("Tags") => map(),
        optional("Timeout") => integer(),
        optional("TracingConfig") => tracing_config(),
        optional("VpcConfig") => vpc_config(),
        required("Code") => function_code(),
        required("FunctionName") => String.t(),
        required("Role") => String.t()
      }
      
  """
  @type create_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type environment_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_throttled_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type ec2_throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_request() :: %{}
      
  """
  @type list_tags_request() :: %{}

  @typedoc """

  ## Example:
      
      e_f_s_i_o_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type e_f_s_i_o_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_invalid_state_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type kms_invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layers_list_item() :: %{
        "LatestMatchingVersion" => layer_versions_list_item(),
        "LayerArn" => String.t(),
        "LayerName" => String.t()
      }
      
  """
  @type layers_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alias_routing_configuration() :: %{
        "AdditionalVersionWeights" => map()
      }
      
  """
  @type alias_routing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_config_response() :: %{
        "Error" => image_config_error(),
        "ImageConfig" => image_config()
      }
      
  """
  @type image_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_subnet_id_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type invalid_subnet_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snap_start_response() :: %{
        "ApplyOn" => list(any()),
        "OptimizationStatus" => list(any())
      }
      
  """
  @type snap_start_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_storage_exceeded_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type code_storage_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_version_content_input() :: %{
        "S3Bucket" => String.t(),
        "S3Key" => String.t(),
        "S3ObjectVersion" => String.t(),
        "ZipFile" => binary()
      }
      
  """
  @type layer_version_content_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_ready_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type resource_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_signing_policies() :: %{
        "UntrustedArtifactOnDeployment" => list(any())
      }
      
  """
  @type code_signing_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      precondition_failed_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type precondition_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_function_event_invoke_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_function_event_invoke_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_conflict_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrency() :: %{
        optional("ReservedConcurrentExecutions") => integer()
      }
      
  """
  @type concurrency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_alias_request() :: %{}
      
  """
  @type delete_alias_request() :: %{}

  @typedoc """

  ## Example:
      
      list_provisioned_concurrency_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_provisioned_concurrency_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_permission_request() :: %{
        optional("EventSourceToken") => String.t(),
        optional("FunctionUrlAuthType") => list(any()),
        optional("PrincipalOrgID") => String.t(),
        optional("Qualifier") => String.t(),
        optional("RevisionId") => String.t(),
        optional("SourceAccount") => String.t(),
        optional("SourceArn") => String.t(),
        required("Action") => String.t(),
        required("Principal") => String.t(),
        required("StatementId") => String.t()
      }
      
  """
  @type add_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tracing_config_response() :: %{
        "Mode" => list(any())
      }
      
  """
  @type tracing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snap_start_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type snap_start_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_permission_response() :: %{
        "Statement" => String.t()
      }
      
  """
  @type add_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_signing_config() :: %{
        "AllowedPublishers" => allowed_publishers(),
        "CodeSigningConfigArn" => String.t(),
        "CodeSigningConfigId" => String.t(),
        "CodeSigningPolicies" => code_signing_policies(),
        "Description" => String.t(),
        "LastModified" => String.t()
      }
      
  """
  @type code_signing_config() :: %{String.t() => any()}

  @type add_layer_version_permission_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | policy_length_exceeded_exception()

  @type add_permission_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | policy_length_exceeded_exception()

  @type create_alias_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_code_signing_config_errors() ::
          service_exception() | invalid_parameter_value_exception()

  @type create_event_source_mapping_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_function_errors() ::
          resource_conflict_exception()
          | code_storage_exceeded_exception()
          | invalid_code_signature_exception()
          | code_verification_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_function_url_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_alias_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type delete_code_signing_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type delete_event_source_mapping_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type delete_function_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_function_code_signing_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_function_concurrency_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_function_event_invoke_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_function_url_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_layer_version_errors() :: service_exception() | too_many_requests_exception()

  @type delete_provisioned_concurrency_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_account_settings_errors() :: service_exception() | too_many_requests_exception()

  @type get_alias_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_code_signing_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type get_event_source_mapping_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_code_signing_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_concurrency_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_configuration_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_event_invoke_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_url_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_layer_version_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_layer_version_by_arn_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_layer_version_policy_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_policy_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_provisioned_concurrency_config_errors() ::
          provisioned_concurrency_config_not_found_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_runtime_management_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type invoke_errors() ::
          snap_start_exception()
          | resource_conflict_exception()
          | resource_not_ready_exception()
          | invalid_subnet_id_exception()
          | kms_invalid_state_exception()
          | e_f_s_i_o_exception()
          | ec2_throttled_exception()
          | ec2_unexpected_exception()
          | e_f_s_mount_failure_exception()
          | e_n_i_limit_reached_exception()
          | e_f_s_mount_connectivity_exception()
          | e_f_s_mount_timeout_exception()
          | kms_not_found_exception()
          | invalid_zip_file_exception()
          | kms_access_denied_exception()
          | request_too_large_exception()
          | subnet_ip_address_limit_reached_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | invalid_request_content_exception()
          | invalid_runtime_exception()
          | recursive_invocation_exception()
          | snap_start_timeout_exception()
          | too_many_requests_exception()
          | snap_start_not_ready_exception()
          | ec2_access_denied_exception()
          | invalid_security_group_id_exception()
          | kms_disabled_exception()
          | unsupported_media_type_exception()

  @type invoke_async_errors() ::
          resource_conflict_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_request_content_exception()
          | invalid_runtime_exception()

  @type invoke_with_response_stream_errors() ::
          snap_start_exception()
          | resource_conflict_exception()
          | resource_not_ready_exception()
          | invalid_subnet_id_exception()
          | kms_invalid_state_exception()
          | e_f_s_i_o_exception()
          | ec2_throttled_exception()
          | ec2_unexpected_exception()
          | e_f_s_mount_failure_exception()
          | e_n_i_limit_reached_exception()
          | e_f_s_mount_connectivity_exception()
          | e_f_s_mount_timeout_exception()
          | kms_not_found_exception()
          | invalid_zip_file_exception()
          | kms_access_denied_exception()
          | request_too_large_exception()
          | subnet_ip_address_limit_reached_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | invalid_request_content_exception()
          | invalid_runtime_exception()
          | recursive_invocation_exception()
          | snap_start_timeout_exception()
          | too_many_requests_exception()
          | snap_start_not_ready_exception()
          | ec2_access_denied_exception()
          | invalid_security_group_id_exception()
          | kms_disabled_exception()
          | unsupported_media_type_exception()

  @type list_aliases_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_code_signing_configs_errors() ::
          service_exception() | invalid_parameter_value_exception()

  @type list_event_source_mappings_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_function_event_invoke_configs_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_function_url_configs_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_functions_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type list_functions_by_code_signing_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type list_layer_versions_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_layers_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type list_provisioned_concurrency_configs_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_tags_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_versions_by_function_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type publish_layer_version_errors() ::
          code_storage_exceeded_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type publish_version_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | code_storage_exceeded_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_function_code_signing_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_function_concurrency_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_function_event_invoke_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_provisioned_concurrency_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_runtime_management_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type remove_layer_version_permission_errors() ::
          precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type remove_permission_errors() ::
          precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type tag_resource_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_alias_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_code_signing_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type update_event_source_mapping_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type update_function_code_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | code_storage_exceeded_exception()
          | invalid_code_signature_exception()
          | code_verification_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_function_configuration_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | invalid_code_signature_exception()
          | code_verification_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_function_event_invoke_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_function_url_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2015-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lambda",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lambda",
      signature_version: "v4",
      signing_name: "lambda",
      target_prefix: nil
    }
  end

  @doc """
  Adds permissions to the resource-based policy of a version of an [Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  Use this action to grant layer usage permission to other accounts. You can
  grant permission to a single account, all accounts in an organization, or all
  Amazon Web Services accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20AddLayerVersionPermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:layer_name` (`t:string`) The name or Amazon Resource Name (ARN) of the
  layer.
  * `:version_number` (`t:long`) The version number.

  ## Optional parameters:
  * `:revision_id` (`t:string`) Only update the policy if the revision ID matches
  the ID specified. Use this option to avoid modifying a policy that has
  changed since you last read it.
  """

  @spec add_layer_version_permission(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, add_layer_version_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_layer_version_permission_errors()}

  def add_layer_version_permission(%Client{} = client, layer_name, version_number, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}/policy"

    # Validate optional parameters
    optional_params = [revision_id: nil]

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
      if opt_val = Keyword.get(options, :revision_id) do
        [{"RevisionId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:revision_id])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Grants an Amazon Web Service, Amazon Web Services account, or Amazon Web
  Services organization permission to use a function. You can apply the policy
  at the function level, or specify a qualifier to restrict access to a single
  version or alias. If you use a qualifier, the invoker must use the full Amazon
  Resource Name (ARN) of that version or alias to invoke the function. Note:
  Lambda does not support adding policies to version $LATEST. To grant
  permission to another account, specify the account ID as the `Principal`. To
  grant permission to an organization defined in Organizations, specify the
  organization ID as the `PrincipalOrgID`. For Amazon Web Services, the
  principal is a domain-style identifier that the service defines, such as
  `s3.amazonaws.com` or `sns.amazonaws.com`. For Amazon Web Services, you can
  also specify the ARN of the associated resource as the `SourceArn`. If you
  grant permission to a service principal without specifying the source, other
  accounts could potentially configure resources in their account to invoke your
  Lambda function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20AddPermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.

  ## Optional parameters:
  * `:qualifier` (`t:string`) Specify a version or alias to add permissions to a
  published version of the function.
  """

  @spec add_permission(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, add_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_permission_errors()}

  def add_permission(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates an
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
  for a Lambda function version. Use aliases to provide clients with a function
  identifier that you can update to invoke a different version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20CreateAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec create_alias(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, alias_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_alias_errors()}

  def create_alias(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a code signing configuration. A [code signing
  configuration](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html)
  defines a list of allowed signing profiles and defines the code-signing
  validation policy (action to be taken if deployment validation checks fail).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20CreateCodeSigningConfig&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_code_signing_config(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_code_signing_config_errors()}

  def create_code_signing_config(%Client{} = client, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a mapping between an event source and an Lambda function. Lambda reads
  items from the event source and invokes the function. For details about how to
  configure different event sources, see the following topics.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20CreateEventSourceMapping&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_event_source_mapping(AWS.Client.t(), Keyword.t()) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_source_mapping_errors()}

  def create_event_source_mapping(%Client{} = client, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Creates a Lambda function. To create a function, you need a [deployment
  package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html)
  and an [execution
  role](https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role).
  The deployment package is a .zip file archive or container image that contains
  your function code. The execution role grants the function permission to use
  Amazon Web Services, such as Amazon CloudWatch Logs for log streaming and
  X-Ray for request tracing. If the deployment package is a [container
  image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html), then
  you set the package type to `Image`. For a container image, the code property
  must include the URI of a container image in the Amazon ECR registry. You do
  not need to specify the handler and runtime properties. If the deployment
  package is a [.zip file
  archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip),
  then you set the package type to `Zip`. For a .zip file archive, the code
  property specifies the location of the .zip file. You must also specify the
  handler and runtime properties. The code in the deployment package must be
  compatible with the target instruction set architecture of the function
  (`x86-64` or `arm64`). If you do not specify the architecture, then the
  default value is `x86-64`. When you create a function, Lambda provisions an
  instance of the function and its supporting resources. If your function
  connects to a VPC, this process can take a minute or so. During this time, you
  can't invoke or modify the function. The `State`, `StateReason`, and
  `StateReasonCode` fields in the response from `GetFunctionConfiguration`
  indicate when the function is ready to invoke. For more information, see
  [Lambda function
  states](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20CreateFunction&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_function(AWS.Client.t(), Keyword.t()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_function_errors()}

  def create_function(%Client{} = client, options \\ []) do
    url_path = "/2015-03-31/functions"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a Lambda function URL with the specified configuration parameters. A
  function URL is a dedicated HTTP(S) endpoint that you can use to invoke your
  function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20CreateFunctionUrlConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:qualifier` (`t:string`) The alias name.
  """

  @spec create_function_url_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_function_url_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_function_url_config_errors()}

  def create_function_url_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deletes a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.
  * `:name` (`t:string`) The name of the alias.

  ## Optional parameters:
  """

  @spec delete_alias(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_alias_errors()}

  def delete_alias(%Client{} = client, function_name, name, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

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

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Deletes the code signing configuration. You can delete the code signing
  configuration only if no function is using it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteCodeSigningConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:code_signing_config_arn` (`t:string`) The The Amazon Resource Name (ARN) of
  the code signing configuration.

  ## Optional parameters:
  """

  @spec delete_code_signing_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_code_signing_config_errors()}

  def delete_code_signing_config(%Client{} = client, code_signing_config_arn, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"

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

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Deletes an [event source
  mapping](https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html).
  You can get the identifier of a mapping from the output of
  `ListEventSourceMappings`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteEventSourceMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:uuid` (`t:string`) The identifier of the event source mapping.

  ## Optional parameters:
  """

  @spec delete_event_source_mapping(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_source_mapping_errors()}

  def delete_event_source_mapping(%Client{} = client, uuid, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"

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

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      202
    )
  end

  @doc """
  Deletes a Lambda function. To delete a specific function version, use the
  `Qualifier` parameter. Otherwise, all versions and aliases are deleted. This
  doesn't require the user to have explicit permissions for `DeleteAlias`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteFunction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function or
  version.

  ## Optional parameters:
  * `:qualifier` (`t:string`) Specify a version to delete. You can't delete a
  version that an alias references.
  """

  @spec delete_function(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_errors()}

  def delete_function(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Removes the code signing configuration from the function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteFunctionCodeSigningConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec delete_function_code_signing_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_code_signing_config_errors()}

  def delete_function_code_signing_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"

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

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Removes a concurrent execution limit from a function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteFunctionConcurrency&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec delete_function_concurrency(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_concurrency_errors()}

  def delete_function_concurrency(%Client{} = client, function_name, options \\ []) do
    url_path = "/2017-10-31/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"

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

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Deletes the configuration for asynchronous invocation for a function, version,
  or alias.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteFunctionEventInvokeConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.

  ## Optional parameters:
  * `:qualifier` (`t:string`) A version number or alias name.
  """

  @spec delete_function_event_invoke_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_event_invoke_config_errors()}

  def delete_function_event_invoke_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Deletes a Lambda function URL. When you delete a function URL, you can't recover
  it. Creating a new function URL results in a different URL address.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteFunctionUrlConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:qualifier` (`t:string`) The alias name.
  """

  @spec delete_function_url_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_url_config_errors()}

  def delete_function_url_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Deletes a version of an [Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  Deleted versions can no longer be viewed or added to functions. To avoid
  breaking functions, a copy of the version remains in Lambda until no functions
  refer to it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteLayerVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:layer_name` (`t:string`) The name or Amazon Resource Name (ARN) of the
  layer.
  * `:version_number` (`t:long`) The version number.

  ## Optional parameters:
  """

  @spec delete_layer_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_layer_version_errors()}

  def delete_layer_version(%Client{} = client, layer_name, version_number, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}"

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

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Deletes the provisioned concurrency configuration for a function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20DeleteProvisionedConcurrencyConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.
  * `:qualifier` (`t:string`) The version number or alias name.

  ## Optional parameters:
  """

  @spec delete_provisioned_concurrency_config(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_provisioned_concurrency_config_errors()}

  def delete_provisioned_concurrency_config(
        %Client{} = client,
        function_name,
        qualifier,
        options \\ []
      )
      when is_binary(qualifier) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

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
    query_params = [{"Qualifier", qualifier}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Retrieves details about your account's
  [limits](https://docs.aws.amazon.com/lambda/latest/dg/limits.html) and usage
  in an Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetAccountSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_account_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_settings_errors()}

  def get_account_settings(%Client{} = client, options \\ []) do
    url_path = "/2016-08-19/account-settings"

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
  Returns details about a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.
  * `:name` (`t:string`) The name of the alias.

  ## Optional parameters:
  """

  @spec get_alias(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, alias_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_alias_errors()}

  def get_alias(%Client{} = client, function_name, name, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

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
  Returns information about the specified code signing configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetCodeSigningConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:code_signing_config_arn` (`t:string`) The The Amazon Resource Name (ARN) of
  the code signing configuration.

  ## Optional parameters:
  """

  @spec get_code_signing_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_code_signing_config_errors()}

  def get_code_signing_config(%Client{} = client, code_signing_config_arn, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"

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
  Returns details about an event source mapping. You can get the identifier of a
  mapping from the output of `ListEventSourceMappings`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetEventSourceMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:uuid` (`t:string`) The identifier of the event source mapping.

  ## Optional parameters:
  """

  @spec get_event_source_mapping(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_event_source_mapping_errors()}

  def get_event_source_mapping(%Client{} = client, uuid, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"

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
  Returns information about the function or function version, with a link to
  download the deployment package that's valid for 10 minutes. If you specify a
  function version, only details that are specific to that version are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetFunction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.

  ## Optional parameters:
  * `:qualifier` (`t:string`) Specify a version or alias to get details about a
  published version of the function.
  """

  @spec get_function(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_errors()}

  def get_function(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the code signing configuration for the specified function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetFunctionCodeSigningConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec get_function_code_signing_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_function_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_code_signing_config_errors()}

  def get_function_code_signing_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"

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
  Returns details about the reserved concurrency configuration for a function. To
  set a concurrency limit for a function, use `PutFunctionConcurrency`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetFunctionConcurrency&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec get_function_concurrency(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_function_concurrency_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_concurrency_errors()}

  def get_function_concurrency(%Client{} = client, function_name, options \\ []) do
    url_path = "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"

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
  Returns the version-specific settings of a Lambda function or version. The
  output includes only options that can vary between versions of a function. To
  modify these settings, use `UpdateFunctionConfiguration`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetFunctionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.

  ## Optional parameters:
  * `:qualifier` (`t:string`) Specify a version or alias to get details about a
  published version of the function.
  """

  @spec get_function_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_configuration_errors()}

  def get_function_configuration(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/configuration"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration for asynchronous invocation for a function, version,
  or alias.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetFunctionEventInvokeConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.

  ## Optional parameters:
  * `:qualifier` (`t:string`) A version number or alias name.
  """

  @spec get_function_event_invoke_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, function_event_invoke_config(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_event_invoke_config_errors()}

  def get_function_event_invoke_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a Lambda function URL.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetFunctionUrlConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:qualifier` (`t:string`) The alias name.
  """

  @spec get_function_url_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_function_url_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_url_config_errors()}

  def get_function_url_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a version of an [Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
  with a link to download the layer archive that's valid for 10 minutes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetLayerVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:layer_name` (`t:string`) The name or Amazon Resource Name (ARN) of the
  layer.
  * `:version_number` (`t:long`) The version number.

  ## Optional parameters:
  """

  @spec get_layer_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_layer_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_layer_version_errors()}

  def get_layer_version(%Client{} = client, layer_name, version_number, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}"

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
  Returns information about a version of an [Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
  with a link to download the layer archive that's valid for 10 minutes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetLayerVersionByArn&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The ARN of the layer version.

  ## Optional parameters:
  """

  @spec get_layer_version_by_arn(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_layer_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_layer_version_by_arn_errors()}

  def get_layer_version_by_arn(%Client{} = client, arn, options \\ []) when is_binary(arn) do
    url_path = "/2018-10-31/layers?find=LayerVersion"

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
    query_params = [{"Arn", arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the permission policy for a version of an [Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  For more information, see `AddLayerVersionPermission`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetLayerVersionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:layer_name` (`t:string`) The name or Amazon Resource Name (ARN) of the
  layer.
  * `:version_number` (`t:long`) The version number.

  ## Optional parameters:
  """

  @spec get_layer_version_policy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_layer_version_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_layer_version_policy_errors()}

  def get_layer_version_policy(%Client{} = client, layer_name, version_number, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}/policy"

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
  Returns the [resource-based IAM
  policy](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
  for a function, version, or alias.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.

  ## Optional parameters:
  * `:qualifier` (`t:string`) Specify a version or alias to get the policy for
  that resource.
  """

  @spec get_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_policy_errors()}

  def get_policy(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the provisioned concurrency configuration for a function's alias or
  version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetProvisionedConcurrencyConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.
  * `:qualifier` (`t:string`) The version number or alias name.

  ## Optional parameters:
  """

  @spec get_provisioned_concurrency_config(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_provisioned_concurrency_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_provisioned_concurrency_config_errors()}

  def get_provisioned_concurrency_config(
        %Client{} = client,
        function_name,
        qualifier,
        options \\ []
      )
      when is_binary(qualifier) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

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
    query_params = [{"Qualifier", qualifier}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the runtime management configuration for a function's version. If the
  runtime update mode is **Manual**, this includes the ARN of the runtime
  version and the runtime update mode. If the runtime update mode is **Auto** or
  **Function update**, this includes the runtime update mode and `null` is
  returned for the ARN. For more information, see [Runtime
  updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20GetRuntimeManagementConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:qualifier` (`t:string`) Specify a version of the function. This can be
  $LATEST or a published version number. If no value is specified, the
  configuration for the $LATEST version is returned.
  """

  @spec get_runtime_management_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_runtime_management_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_runtime_management_config_errors()}

  def get_runtime_management_config(%Client{} = client, function_name, options \\ []) do
    url_path =
      "/2021-07-20/functions/#{AWS.Util.encode_uri(function_name)}/runtime-management-config"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Invokes a Lambda function. You can invoke a function synchronously (and wait for
  the response), or asynchronously. By default, Lambda invokes your function
  synchronously (i.e. the`InvocationType` is `RequestResponse`). To invoke a
  function asynchronously, set `InvocationType` to `Event`. Lambda passes the
  `ClientContext` object to your function for synchronous invocations only. For
  [synchronous
  invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html),
  details about the function response, including errors, are included in the
  response body and headers. For either invocation type, you can find more
  information in the [execution
  log](https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html)
  and [trace](https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html).
  When an error occurs, your function may be invoked multiple times. Retry
  behavior varies by error type, client, event source, and invocation type. For
  example, if you invoke a function asynchronously and it returns an error,
  Lambda executes the function up to two more times. For more information, see
  [Error handling and automatic retries in
  Lambda](https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20Invoke&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.
  * `:input` (`t:map | nil`):
    * `:payload` (`t:blob`) The JSON that you want to provide to your Lambda
  function as input.

  ## Optional parameters:
  * `:qualifier` (`t:string`) Specify a version or alias to invoke a published
  version of the function.
  * `:client_context` (`t:string`) Up to 3,583 bytes of base64-encoded data about
  the invoking client to pass to the function in the context object. Lambda
  passes the ClientContext object to your function for synchronous invocations
  only.
  * `:invocation_type` (`t:enum["DryRun|Event|RequestResponse"]`) Choose from the
  following options.
  * `:log_type` (`t:enum["None|Tail"]`) Set to Tail to include the execution log
  in the response. Applies to synchronously invoked functions only.
  """

  @spec invoke(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, invocation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_errors()}

  def invoke(%Client{} = client, function_name, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/invocations"

    # Validate optional parameters
    optional_params = [qualifier: nil, client_context: nil, invocation_type: nil, log_type: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :log_type) do
        [{"X-Amz-Log-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :invocation_type) do
        [{"X-Amz-Invocation-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :client_context) do
        [{"X-Amz-Client-Context", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amz-Executed-Version", "ExecutedVersion"},
          {"X-Amz-Function-Error", "FunctionError"},
          {"X-Amz-Log-Result", "LogResult"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amz-Executed-Version", "ExecutedVersion"},
          {"X-Amz-Function-Error", "FunctionError"},
          {"X-Amz-Log-Result", "LogResult"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier, :client_context, :invocation_type, :log_type])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  For asynchronous function invocation, use `Invoke`. Invokes a function
  asynchronously.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20InvokeAsync&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.
  * `:input` (`t:map`):
    * `:invoke_args` (`t:blob`) The JSON that you want to provide to your Lambda
  function as input.

  ## Optional parameters:
  """

  @spec invoke_async(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, invoke_async_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_async_errors()}

  def invoke_async(%Client{} = client, function_name, input, options \\ []) when is_map(input) do
    url_path = "/2014-11-13/functions/#{AWS.Util.encode_uri(function_name)}/invoke-async"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Configure your Lambda functions to stream response payloads back to clients. For
  more information, see [Configuring a Lambda function to stream
  responses](https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html).
  This operation requires permission for the
  [lambda:InvokeFunction](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html)
  action. For details on how to set up permissions for cross-account
  invocations, see [Granting function access to other
  accounts](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20InvokeWithResponseStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.
  * `:input` (`t:map | nil`):
    * `:payload` (`t:blob`) The JSON that you want to provide to your Lambda
  function as input.

  ## Optional parameters:
  * `:qualifier` (`t:string`) The alias name.
  * `:client_context` (`t:string`) Up to 3,583 bytes of base64-encoded data about
  the invoking client to pass to the function in the context object.
  * `:invocation_type` (`t:enum["DryRun|RequestResponse"]`) Use one of the
  following options:
  * `:log_type` (`t:enum["None|Tail"]`) Set to Tail to include the execution log
  in the response. Applies to synchronously invoked functions only.
  """

  @spec invoke_with_response_stream(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, invoke_with_response_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_with_response_stream_errors()}

  def invoke_with_response_stream(%Client{} = client, function_name, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path =
      "/2021-11-15/functions/#{AWS.Util.encode_uri(function_name)}/response-streaming-invocations"

    # Validate optional parameters
    optional_params = [qualifier: nil, client_context: nil, invocation_type: nil, log_type: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :log_type) do
        [{"X-Amz-Log-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :invocation_type) do
        [{"X-Amz-Invocation-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :client_context) do
        [{"X-Amz-Client-Context", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amz-Executed-Version", "ExecutedVersion"},
          {"Content-Type", "ResponseStreamContentType"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amz-Executed-Version", "ExecutedVersion"},
          {"Content-Type", "ResponseStreamContentType"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier, :client_context, :invocation_type, :log_type])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns a list of
  [aliases](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
  for a Lambda function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListAliases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:function_version` (`t:string`) Specify a function version to only list
  aliases that invoke that version.
  * `:marker` (`t:string`) Specify the pagination token that's returned by a
  previous request to retrieve the next page of results.
  * `:max_items` (`t:integer`) Limit the number of aliases returned.
  """

  @spec list_aliases(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_aliases_errors()}

  def list_aliases(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases"

    # Validate optional parameters
    optional_params = [function_version: nil, marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :function_version) do
        [{"FunctionVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:function_version, :marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of [code signing
  configurations](https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html).
  A request returns up to 10,000 configurations per call. You can use the
  `MaxItems` parameter to return fewer configurations per call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListCodeSigningConfigs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:marker` (`t:string`) Specify the pagination token that's returned by a
  previous request to retrieve the next page of results.
  * `:max_items` (`t:integer`) Maximum number of items to return.
  """

  @spec list_code_signing_configs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_code_signing_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_code_signing_configs_errors()}

  def list_code_signing_configs(%Client{} = client, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs"

    # Validate optional parameters
    optional_params = [marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists event source mappings. Specify an `EventSourceArn` to show only event
  source mappings for a single event source.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListEventSourceMappings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:event_source_arn` (`t:string`) The Amazon Resource Name (ARN) of the event
  source.
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.
  * `:marker` (`t:string`) A pagination token returned by a previous call.
  * `:max_items` (`t:integer`) The maximum number of event source mappings to
  return. Note that ListEventSourceMappings returns a maximum of 100 items in
  each response, even if you set the number higher.
  """

  @spec list_event_source_mappings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_event_source_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_event_source_mappings_errors()}

  def list_event_source_mappings(%Client{} = client, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings"

    # Validate optional parameters
    optional_params = [event_source_arn: nil, function_name: nil, marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :function_name) do
        [{"FunctionName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :event_source_arn) do
        [{"EventSourceArn", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:event_source_arn, :function_name, :marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of configurations for asynchronous invocation for a function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListFunctionEventInvokeConfigs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:marker` (`t:string`) Specify the pagination token that's returned by a
  previous request to retrieve the next page of results.
  * `:max_items` (`t:integer`) The maximum number of configurations to return.
  """

  @spec list_function_event_invoke_configs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_function_event_invoke_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_function_event_invoke_configs_errors()}

  def list_function_event_invoke_configs(%Client{} = client, function_name, options \\ []) do
    url_path =
      "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config/list"

    # Validate optional parameters
    optional_params = [marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Lambda function URLs for the specified function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListFunctionUrlConfigs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:marker` (`t:string`) Specify the pagination token that's returned by a
  previous request to retrieve the next page of results.
  * `:max_items` (`t:integer`) The maximum number of function URLs to return in
  the response. Note that ListFunctionUrlConfigs returns a maximum of 50 items
  in each response, even if you set the number higher.
  """

  @spec list_function_url_configs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_function_url_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_function_url_configs_errors()}

  def list_function_url_configs(%Client{} = client, function_name, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/urls"

    # Validate optional parameters
    optional_params = [marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Lambda functions, with the version-specific configuration of
  each. Lambda returns up to 50 functions per call. Set `FunctionVersion` to
  `ALL` to include all published versions of each function in addition to the
  unpublished version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListFunctions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:function_version` (`t:enum["ALL"]`) Set to ALL to include entries for all
  published versions of each function.
  * `:marker` (`t:string`) Specify the pagination token that's returned by a
  previous request to retrieve the next page of results.
  * `:master_region` (`t:string`) For Lambda@Edge functions, the Amazon Web
  Services Region of the master function. For example, us-east-1 filters the
  list of functions to include only Lambda@Edge functions replicated from a
  master function in US East (N. Virginia). If specified, you must set
  FunctionVersion to ALL.
  * `:max_items` (`t:integer`) The maximum number of functions to return in the
  response. Note that ListFunctions returns a maximum of 50 items in each
  response, even if you set the number higher.
  """

  @spec list_functions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_functions_errors()}

  def list_functions(%Client{} = client, options \\ []) do
    url_path = "/2015-03-31/functions"

    # Validate optional parameters
    optional_params = [function_version: nil, marker: nil, master_region: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :master_region) do
        [{"MasterRegion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :function_version) do
        [{"FunctionVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:function_version, :marker, :master_region, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the functions that use the specified code signing configuration. You can
  use this method prior to deleting a code signing configuration, to verify that
  no functions are using it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListFunctionsByCodeSigningConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:code_signing_config_arn` (`t:string`) The The Amazon Resource Name (ARN) of
  the code signing configuration.

  ## Optional parameters:
  * `:marker` (`t:string`) Specify the pagination token that's returned by a
  previous request to retrieve the next page of results.
  * `:max_items` (`t:integer`) Maximum number of items to return.
  """

  @spec list_functions_by_code_signing_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_functions_by_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_functions_by_code_signing_config_errors()}

  def list_functions_by_code_signing_config(
        %Client{} = client,
        code_signing_config_arn,
        options \\ []
      ) do
    url_path =
      "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}/functions"

    # Validate optional parameters
    optional_params = [marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of an [Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  Versions that have been deleted aren't listed. Specify a [runtime
  identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
  to list only versions that indicate that they're compatible with that runtime.
  Specify a compatible architecture to include only layer versions that are
  compatible with that architecture.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListLayerVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:layer_name` (`t:string`) The name or Amazon Resource Name (ARN) of the
  layer.

  ## Optional parameters:
  * `:compatible_architecture` (`t:enum["arm64|x86_64"]`) The compatible
  instruction set architecture.
  * `:compatible_runtime`
  (`t:enum["nodejs14x|java8al2|nodejs18x|java8|go1x|python39|java17|ruby25|nodejs20x|nodejs12x|nodejs43|dotnetcore10|nodejs10x|ruby32|python310|java21|nodejs43edge|dotnetcore20|nodejs16x|java11|nodejs810|python27|nodejs|dotnet6|python311|dotnetcore21|nodejs610|providedal2|python37|providedal2023|python312|dotnet8|python38|provided|python36|ruby27|dotnetcore31|ruby33"]`)
  A runtime identifier. For example, java21.
  * `:marker` (`t:string`) A pagination token returned by a previous call.
  * `:max_items` (`t:integer`) The maximum number of versions to return.
  """

  @spec list_layer_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_layer_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_layer_versions_errors()}

  def list_layer_versions(%Client{} = client, layer_name, options \\ []) do
    url_path = "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions"

    # Validate optional parameters
    optional_params = [
      compatible_architecture: nil,
      compatible_runtime: nil,
      marker: nil,
      max_items: nil
    ]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :compatible_runtime) do
        [{"CompatibleRuntime", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :compatible_architecture) do
        [{"CompatibleArchitecture", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:compatible_architecture, :compatible_runtime, :marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists [Lambda
  layers](https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html)
  and shows information about the latest version of each. Specify a [runtime
  identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
  to list only layers that indicate that they're compatible with that runtime.
  Specify a compatible architecture to include only layers that are compatible
  with that [instruction set
  architecture](https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListLayers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:compatible_architecture` (`t:enum["arm64|x86_64"]`) The compatible
  instruction set architecture.
  * `:compatible_runtime`
  (`t:enum["nodejs14x|java8al2|nodejs18x|java8|go1x|python39|java17|ruby25|nodejs20x|nodejs12x|nodejs43|dotnetcore10|nodejs10x|ruby32|python310|java21|nodejs43edge|dotnetcore20|nodejs16x|java11|nodejs810|python27|nodejs|dotnet6|python311|dotnetcore21|nodejs610|providedal2|python37|providedal2023|python312|dotnet8|python38|provided|python36|ruby27|dotnetcore31|ruby33"]`)
  A runtime identifier. For example, java21.
  * `:marker` (`t:string`) A pagination token returned by a previous call.
  * `:max_items` (`t:integer`) The maximum number of layers to return.
  """

  @spec list_layers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_layers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_layers_errors()}

  def list_layers(%Client{} = client, options \\ []) do
    url_path = "/2018-10-31/layers"

    # Validate optional parameters
    optional_params = [
      compatible_architecture: nil,
      compatible_runtime: nil,
      marker: nil,
      max_items: nil
    ]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :compatible_runtime) do
        [{"CompatibleRuntime", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :compatible_architecture) do
        [{"CompatibleArchitecture", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:compatible_architecture, :compatible_runtime, :marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of provisioned concurrency configurations for a function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListProvisionedConcurrencyConfigs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:marker` (`t:string`) Specify the pagination token that's returned by a
  previous request to retrieve the next page of results.
  * `:max_items` (`t:integer`) Specify a number to limit the number of
  configurations returned.
  """

  @spec list_provisioned_concurrency_configs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_provisioned_concurrency_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_provisioned_concurrency_configs_errors()}

  def list_provisioned_concurrency_configs(%Client{} = client, function_name, options \\ []) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency?List=ALL"

    # Validate optional parameters
    optional_params = [marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a function's
  [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html). You can
  also view tags with `GetFunction`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource` (`t:string`) The function's Amazon Resource Name (ARN). Note:
  Lambda does not support adding tags to aliases or versions.

  ## Optional parameters:
  """

  @spec list_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_errors()}

  def list_tags(%Client{} = client, resource, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"

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
  Returns a list of
  [versions](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html),
  with the version-specific configuration of each. Lambda returns up to 50
  versions per call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20ListVersionsByFunction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:marker` (`t:string`) Specify the pagination token that's returned by a
  previous request to retrieve the next page of results.
  * `:max_items` (`t:integer`) The maximum number of versions to return. Note that
  ListVersionsByFunction returns a maximum of 50 items in each response, even
  if you set the number higher.
  """

  @spec list_versions_by_function(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_versions_by_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_versions_by_function_errors()}

  def list_versions_by_function(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/versions"

    # Validate optional parameters
    optional_params = [marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates an [Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
  from a ZIP archive. Each time you call `PublishLayerVersion` with the same
  layer name, a new version is created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20PublishLayerVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:layer_name` (`t:string`) The name or Amazon Resource Name (ARN) of the
  layer.

  ## Optional parameters:
  """

  @spec publish_layer_version(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, publish_layer_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_layer_version_errors()}

  def publish_layer_version(%Client{} = client, layer_name, options \\ []) do
    url_path = "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a
  [version](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
  from the current code and configuration of a function. Use versions to create
  a snapshot of your function code and configuration that doesn't change. Lambda
  doesn't publish a version if the function's configuration and code haven't
  changed since the last version. Use `UpdateFunctionCode` or
  `UpdateFunctionConfiguration` to update the function before publishing a
  version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20PublishVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec publish_version(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_version_errors()}

  def publish_version(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/versions"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Update the code signing configuration for the function. Changes to the code
  signing configuration take effect the next time a user tries to deploy a code
  package to the function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20PutFunctionCodeSigningConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec put_function_code_signing_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_function_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_function_code_signing_config_errors()}

  def put_function_code_signing_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"

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

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Sets the maximum number of simultaneous executions for a function, and reserves
  capacity for that concurrency level. Concurrency settings apply to the
  function as a whole, including all published versions and the unpublished
  version. Reserving concurrency both ensures that your function has capacity to
  process the specified number of events simultaneously, and prevents it from
  scaling beyond that level. Use `GetFunction` to see the current setting for a
  function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20PutFunctionConcurrency&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec put_function_concurrency(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, concurrency(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_function_concurrency_errors()}

  def put_function_concurrency(%Client{} = client, function_name, options \\ []) do
    url_path = "/2017-10-31/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"

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

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Configures options for [asynchronous
  invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html)
  on a function, version, or alias. If a configuration already exists for a
  function, version, or alias, this operation overwrites it. If you exclude any
  settings, they are removed. To set one option without affecting existing
  settings for other options, use `UpdateFunctionEventInvokeConfig`. By default,
  Lambda retries an asynchronous invocation twice if the function returns an
  error. It retains events in a queue for up to six hours. When an event fails
  all processing attempts or stays in the asynchronous invocation queue for too
  long, Lambda discards it. To retain discarded events, configure a dead-letter
  queue with `UpdateFunctionConfiguration`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20PutFunctionEventInvokeConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.

  ## Optional parameters:
  * `:qualifier` (`t:string`) A version number or alias name.
  """

  @spec put_function_event_invoke_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, function_event_invoke_config(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_function_event_invoke_config_errors()}

  def put_function_event_invoke_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds a provisioned concurrency configuration to a function's alias or version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20PutProvisionedConcurrencyConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.
  * `:qualifier` (`t:string`) The version number or alias name.

  ## Optional parameters:
  """

  @spec put_provisioned_concurrency_config(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, put_provisioned_concurrency_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_provisioned_concurrency_config_errors()}

  def put_provisioned_concurrency_config(
        %Client{} = client,
        function_name,
        qualifier,
        options \\ []
      )
      when is_binary(qualifier) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

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
    query_params = [{"Qualifier", qualifier}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Sets the runtime management configuration for a function's version. For more
  information, see [Runtime
  updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20PutRuntimeManagementConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:qualifier` (`t:string`) Specify a version of the function. This can be
  $LATEST or a published version number. If no value is specified, the
  configuration for the $LATEST version is returned.
  """

  @spec put_runtime_management_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_runtime_management_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_runtime_management_config_errors()}

  def put_runtime_management_config(%Client{} = client, function_name, options \\ []) do
    url_path =
      "/2021-07-20/functions/#{AWS.Util.encode_uri(function_name)}/runtime-management-config"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes a statement from the permissions policy for a version of an [Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  For more information, see `AddLayerVersionPermission`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20RemoveLayerVersionPermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:layer_name` (`t:string`) The name or Amazon Resource Name (ARN) of the
  layer.
  * `:statement_id` (`t:string`) The identifier that was specified when the
  statement was added.
  * `:version_number` (`t:long`) The version number.

  ## Optional parameters:
  * `:revision_id` (`t:string`) Only update the policy if the revision ID matches
  the ID specified. Use this option to avoid modifying a policy that has
  changed since you last read it.
  """

  @spec remove_layer_version_permission(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_layer_version_permission_errors()}

  def remove_layer_version_permission(
        %Client{} = client,
        layer_name,
        statement_id,
        version_number,
        options \\ []
      ) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}/policy/#{AWS.Util.encode_uri(statement_id)}"

    # Validate optional parameters
    optional_params = [revision_id: nil]

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
      if opt_val = Keyword.get(options, :revision_id) do
        [{"RevisionId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:revision_id])

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Revokes function-use permission from an Amazon Web Service or another Amazon Web
  Services account. You can get the ID of the statement from the output of
  `GetPolicy`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20RemovePermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.
  * `:statement_id` (`t:string`) Statement ID of the permission to remove.

  ## Optional parameters:
  * `:qualifier` (`t:string`) Specify a version or alias to remove permissions
  from a published version of the function.
  * `:revision_id` (`t:string`) Update the policy only if the revision ID matches
  the ID that's specified. Use this option to avoid modifying a policy that
  has changed since you last read it.
  """

  @spec remove_permission(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_permission_errors()}

  def remove_permission(%Client{} = client, function_name, statement_id, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy/#{AWS.Util.encode_uri(statement_id)}"

    # Validate optional parameters
    optional_params = [qualifier: nil, revision_id: nil]

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
      if opt_val = Keyword.get(options, :revision_id) do
        [{"RevisionId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier, :revision_id])

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Adds [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to a
  function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource` (`t:string`) The function's Amazon Resource Name (ARN).

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, resource, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Removes [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) from a
  function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource` (`t:string`) The function's Amazon Resource Name (ARN).
  * `:tag_keys` (`t:list[com.amazonaws.lambda#TagKey]`) A list of tag keys to
  remove from the function.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, resource, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"

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
    query_params = [{"tagKeys", tag_keys}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Updates the configuration of a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20UpdateAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.
  * `:name` (`t:string`) The name of the alias.

  ## Optional parameters:
  """

  @spec update_alias(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, alias_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_alias_errors()}

  def update_alias(%Client{} = client, function_name, name, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

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

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Update the code signing configuration. Changes to the code signing configuration
  take effect the next time a user tries to deploy a code package to the
  function.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20UpdateCodeSigningConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:code_signing_config_arn` (`t:string`) The The Amazon Resource Name (ARN) of
  the code signing configuration.

  ## Optional parameters:
  """

  @spec update_code_signing_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_code_signing_config_errors()}

  def update_code_signing_config(%Client{} = client, code_signing_config_arn, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"

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

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates an event source mapping. You can change the function that Lambda
  invokes, or pause invocation and resume later from the same location. For
  details about how to configure different event sources, see the following
  topics.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20UpdateEventSourceMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:uuid` (`t:string`) The identifier of the event source mapping.

  ## Optional parameters:
  """

  @spec update_event_source_mapping(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_event_source_mapping_errors()}

  def update_event_source_mapping(%Client{} = client, uuid, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"

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

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Updates a Lambda function's code. If code signing is enabled for the function,
  the code package must be signed by a trusted publisher. For more information,
  see [Configuring code signing for
  Lambda](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).
  If the function's package type is `Image`, then you must specify the code
  package in `ImageUri` as the URI of a [container
  image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html) in the
  Amazon ECR registry. If the function's package type is `Zip`, then you must
  specify the deployment package as a [.zip file
  archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip).
  Enter the Amazon S3 bucket and key of the code .zip file location. You can
  also provide the function code inline using the `ZipFile` field.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20UpdateFunctionCode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec update_function_code(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_code_errors()}

  def update_function_code(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/code"

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

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Modify the version-specific settings of a Lambda function. When you update a
  function, Lambda provisions an instance of the function and its supporting
  resources. If your function connects to a VPC, this process can take a minute.
  During this time, you can't modify the function, but you can still invoke it.
  The `LastUpdateStatus`, `LastUpdateStatusReason`, and
  `LastUpdateStatusReasonCode` fields in the response from
  `GetFunctionConfiguration` indicate when the update is complete and the
  function is processing events with the new configuration. For more
  information, see [Lambda function
  states](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20UpdateFunctionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  """

  @spec update_function_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_configuration_errors()}

  def update_function_configuration(%Client{} = client, function_name, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/configuration"

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

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the configuration for asynchronous invocation for a function, version,
  or alias.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20UpdateFunctionEventInvokeConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function, version,
  or alias.

  ## Optional parameters:
  * `:qualifier` (`t:string`) A version number or alias name.
  """

  @spec update_function_event_invoke_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, function_event_invoke_config(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_event_invoke_config_errors()}

  def update_function_event_invoke_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the configuration for a Lambda function URL.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lambda%20UpdateFunctionUrlConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:function_name` (`t:string`) The name or ARN of the Lambda function.

  ## Optional parameters:
  * `:qualifier` (`t:string`) The alias name.
  """

  @spec update_function_url_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_function_url_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_url_config_errors()}

  def update_function_url_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"

    # Validate optional parameters
    optional_params = [qualifier: nil]

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
      if opt_val = Keyword.get(options, :qualifier) do
        [{"Qualifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:qualifier])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
