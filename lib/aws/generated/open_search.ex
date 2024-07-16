# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpenSearch do
  @moduledoc """
  Use the Amazon OpenSearch Service configuration API to create, configure, and
  manage OpenSearch Service domains. The endpoint for configuration service
  requests is Region specific: es.*region*.amazonaws.com. For example,
  es.us-east-1.amazonaws.com. For a current list of supported Regions and
  endpoints, see [Amazon Web Services service
  endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      add_data_source_response() :: %{
        "Message" => String.t()
      }

  """
  @type add_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inbound_connection_status() :: %{
        "Message" => String.t(),
        "StatusCode" => list(any())
      }

  """
  @type inbound_connection_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dry_run_progress_status() :: %{
        "CreationDate" => String.t(),
        "DryRunId" => String.t(),
        "DryRunStatus" => String.t(),
        "UpdateDate" => String.t(),
        "ValidationFailures" => list(validation_failure()())
      }

  """
  @type dry_run_progress_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      window_start_time() :: %{
        "Hours" => float(),
        "Minutes" => float()
      }

  """
  @type window_start_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_names_request() :: %{
        optional("EngineType") => list(any())
      }

  """
  @type list_domain_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      outbound_connection() :: %{
        "ConnectionAlias" => String.t(),
        "ConnectionId" => String.t(),
        "ConnectionMode" => list(any()),
        "ConnectionProperties" => connection_properties(),
        "ConnectionStatus" => outbound_connection_status(),
        "LocalDomainInfo" => domain_information_container(),
        "RemoteDomainInfo" => domain_information_container()
      }

  """
  @type outbound_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      modifying_properties() :: %{
        "ActiveValue" => String.t(),
        "Name" => String.t(),
        "PendingValue" => String.t(),
        "ValueType" => list(any())
      }

  """
  @type modifying_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_tune_options_output() :: %{
        "ErrorMessage" => String.t(),
        "State" => list(any()),
        "UseOffPeakWindow" => boolean()
      }

  """
  @type auto_tune_options_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_response() :: %{
        "DomainStatus" => domain_status()
      }

  """
  @type delete_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_auto_tunes_response() :: %{
        "AutoTunes" => list(auto_tune()()),
        "NextToken" => String.t()
      }

  """
  @type describe_domain_auto_tunes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_endpoints_for_domain_response() :: %{
        "NextToken" => String.t(),
        "VpcEndpointSummaryList" => list(vpc_endpoint_summary()())
      }

  """
  @type list_vpc_endpoints_for_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_auto_tunes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_domain_auto_tunes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_source() :: %{
        "S3BucketName" => String.t(),
        "S3Key" => String.t()
      }

  """
  @type package_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_outbound_connections_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_outbound_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      compatible_versions_map() :: %{
        "SourceVersion" => String.t(),
        "TargetVersions" => list(String.t()())
      }

  """
  @type compatible_versions_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_options() :: %{
        "AutomatedSnapshotStartHour" => integer()
      }

  """
  @type snapshot_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_tune_details() :: %{
        "ScheduledAutoTuneDetails" => scheduled_auto_tune_details()
      }

  """
  @type auto_tune_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_outbound_connections_response() :: %{
        "Connections" => list(outbound_connection()()),
        "NextToken" => String.t()
      }

  """
  @type describe_outbound_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorize_vpc_endpoint_access_response() :: %{
        "AuthorizedPrincipal" => authorized_principal()
      }

  """
  @type authorize_vpc_endpoint_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_details() :: %{
        "AvailablePackageVersion" => String.t(),
        "AvailablePluginProperties" => plugin_properties(),
        "CreatedAt" => non_neg_integer(),
        "EngineVersion" => String.t(),
        "ErrorDetails" => error_details(),
        "LastUpdatedAt" => non_neg_integer(),
        "PackageDescription" => String.t(),
        "PackageID" => String.t(),
        "PackageName" => String.t(),
        "PackageStatus" => list(any()),
        "PackageType" => list(any())
      }

  """
  @type package_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_change_progress_request() :: %{
        optional("ChangeId") => String.t()
      }

  """
  @type describe_domain_change_progress_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster_config_status() :: %{
        "Options" => cluster_config(),
        "Status" => option_status()
      }

  """
  @type cluster_config_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_outbound_connection_request() :: %{
        optional("ConnectionMode") => list(any()),
        optional("ConnectionProperties") => connection_properties(),
        required("ConnectionAlias") => String.t(),
        required("LocalDomainInfo") => domain_information_container(),
        required("RemoteDomainInfo") => domain_information_container()
      }

  """
  @type create_outbound_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_package_request() :: %{
        optional("PackageDescription") => String.t(),
        required("PackageName") => String.t(),
        required("PackageSource") => package_source(),
        required("PackageType") => list(any())
      }

  """
  @type create_package_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_tune_status() :: %{
        "CreationDate" => non_neg_integer(),
        "ErrorMessage" => String.t(),
        "PendingDeletion" => boolean(),
        "State" => list(any()),
        "UpdateDate" => non_neg_integer(),
        "UpdateVersion" => integer()
      }

  """
  @type auto_tune_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_endpoints_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type list_vpc_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cold_storage_options() :: %{
        "Enabled" => boolean()
      }

  """
  @type cold_storage_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_vpc_endpoints_request() :: %{
        required("VpcEndpointIds") => list(String.t()())
      }

  """
  @type describe_vpc_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_tune_options_status() :: %{
        "Options" => auto_tune_options(),
        "Status" => auto_tune_status()
      }

  """
  @type auto_tune_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      natural_language_query_generation_options_output() :: %{
        "CurrentState" => list(any()),
        "DesiredState" => list(any())
      }

  """
  @type natural_language_query_generation_options_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_options_status() :: %{
        "Options" => snapshot_options(),
        "Status" => option_status()
      }

  """
  @type snapshot_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_endpoint_summary() :: %{
        "DomainArn" => String.t(),
        "Status" => list(any()),
        "VpcEndpointId" => String.t(),
        "VpcEndpointOwner" => String.t()
      }

  """
  @type vpc_endpoint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recurring_charge() :: %{
        "RecurringChargeAmount" => float(),
        "RecurringChargeFrequency" => String.t()
      }

  """
  @type recurring_charge() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_reserved_instance_offerings_response() :: %{
        "NextToken" => String.t(),
        "ReservedInstanceOfferings" => list(reserved_instance_offering()())
      }

  """
  @type describe_reserved_instance_offerings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_endpoints_response() :: %{
        "NextToken" => String.t(),
        "VpcEndpointSummaryList" => list(vpc_endpoint_summary()())
      }

  """
  @type list_vpc_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dry_run_progress_response() :: %{
        "DryRunConfig" => domain_status(),
        "DryRunProgressStatus" => dry_run_progress_status(),
        "DryRunResults" => dry_run_results()
      }

  """
  @type describe_dry_run_progress_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_type_details() :: %{
        "AdvancedSecurityEnabled" => boolean(),
        "AppLogsEnabled" => boolean(),
        "AvailabilityZones" => list(String.t()()),
        "CognitoEnabled" => boolean(),
        "EncryptionEnabled" => boolean(),
        "InstanceRole" => list(String.t()()),
        "InstanceType" => list(any()),
        "WarmEnabled" => boolean()
      }

  """
  @type instance_type_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domains_request() :: %{
        required("DomainNames") => list(String.t()())
      }

  """
  @type describe_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_derived_info() :: %{
        "AvailabilityZones" => list(String.t()()),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "VPCId" => String.t()
      }

  """
  @type vpc_derived_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_inbound_connection_request() :: %{}

  """
  @type reject_inbound_connection_request() :: %{}

  @typedoc """

  ## Example:

      saml_idp() :: %{
        "EntityId" => String.t(),
        "MetadataContent" => String.t()
      }

  """
  @type saml_idp() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_config() :: %{
        "AIMLOptions" => a_i_ml_options_status(),
        "AccessPolicies" => access_policies_status(),
        "AdvancedOptions" => advanced_options_status(),
        "AdvancedSecurityOptions" => advanced_security_options_status(),
        "AutoTuneOptions" => auto_tune_options_status(),
        "ChangeProgressDetails" => change_progress_details(),
        "ClusterConfig" => cluster_config_status(),
        "CognitoOptions" => cognito_options_status(),
        "DomainEndpointOptions" => domain_endpoint_options_status(),
        "EBSOptions" => ebs_options_status(),
        "EncryptionAtRestOptions" => encryption_at_rest_options_status(),
        "EngineVersion" => version_status(),
        "IPAddressType" => ip_address_type_status(),
        "LogPublishingOptions" => log_publishing_options_status(),
        "ModifyingProperties" => list(modifying_properties()()),
        "NodeToNodeEncryptionOptions" => node_to_node_encryption_options_status(),
        "OffPeakWindowOptions" => off_peak_window_options_status(),
        "SnapshotOptions" => snapshot_options_status(),
        "SoftwareUpdateOptions" => software_update_options_status(),
        "VPCOptions" => vpc_derived_info_status()
      }

  """
  @type domain_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_maintenance_status_request() :: %{
        required("MaintenanceId") => String.t()
      }

  """
  @type get_domain_maintenance_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_maintenance_status_response() :: %{
        "Action" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "NodeId" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_domain_maintenance_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_response() :: %{
        "TagList" => list(tag()())
      }

  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_inbound_connection_request() :: %{}

  """
  @type delete_inbound_connection_request() :: %{}

  @typedoc """

  ## Example:

      outbound_connection_status() :: %{
        "Message" => String.t(),
        "StatusCode" => list(any())
      }

  """
  @type outbound_connection_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_domain_maintenance_request() :: %{
        optional("NodeId") => String.t(),
        required("Action") => list(any())
      }

  """
  @type start_domain_maintenance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      storage_type_limit() :: %{
        "LimitName" => String.t(),
        "LimitValues" => list(String.t()())
      }

  """
  @type storage_type_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_outbound_connection_response() :: %{
        "ConnectionAlias" => String.t(),
        "ConnectionId" => String.t(),
        "ConnectionMode" => list(any()),
        "ConnectionProperties" => connection_properties(),
        "ConnectionStatus" => outbound_connection_status(),
        "LocalDomainInfo" => domain_information_container(),
        "RemoteDomainInfo" => domain_information_container()
      }

  """
  @type create_outbound_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ebs_options_status() :: %{
        "Options" => ebs_options(),
        "Status" => option_status()
      }

  """
  @type ebs_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorized_principal() :: %{
        "Principal" => String.t(),
        "PrincipalType" => list(any())
      }

  """
  @type authorized_principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disabled_operation_exception() :: %{
        "message" => String.t()
      }

  """
  @type disabled_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_endpoint_response() :: %{
        "VpcEndpointSummary" => vpc_endpoint_summary()
      }

  """
  @type delete_vpc_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      storage_type() :: %{
        "StorageSubTypeName" => String.t(),
        "StorageTypeLimits" => list(storage_type_limit()()),
        "StorageTypeName" => String.t()
      }

  """
  @type storage_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_package_response() :: %{
        "PackageDetails" => package_details()
      }

  """
  @type update_package_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_response() :: %{
        "Message" => String.t()
      }

  """
  @type update_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      additional_limit() :: %{
        "LimitName" => String.t(),
        "LimitValues" => list(String.t()())
      }

  """
  @type additional_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_inbound_connection_response() :: %{
        "Connection" => inbound_connection()
      }

  """
  @type reject_inbound_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_derived_info_status() :: %{
        "Options" => vpc_derived_info(),
        "Status" => option_status()
      }

  """
  @type vpc_derived_info_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_config_request() :: %{}

  """
  @type describe_domain_config_request() :: %{}

  @typedoc """

  ## Example:

      update_scheduled_action_response() :: %{
        "ScheduledAction" => scheduled_action()
      }

  """
  @type update_scheduled_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_maintenance_details() :: %{
        "Action" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t(),
        "MaintenanceId" => String.t(),
        "NodeId" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type domain_maintenance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_health_response() :: %{
        "ActiveAvailabilityZoneCount" => String.t(),
        "AvailabilityZoneCount" => String.t(),
        "ClusterHealth" => list(any()),
        "DataNodeCount" => String.t(),
        "DedicatedMaster" => boolean(),
        "DomainState" => list(any()),
        "EnvironmentInformation" => list(environment_info()()),
        "MasterEligibleNodeCount" => String.t(),
        "MasterNode" => list(any()),
        "StandByAvailabilityZoneCount" => String.t(),
        "TotalShards" => String.t(),
        "TotalUnAssignedShards" => String.t(),
        "WarmNodeCount" => String.t()
      }

  """
  @type describe_domain_health_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_service_software_update_response() :: %{
        "ServiceSoftwareOptions" => service_software_options()
      }

  """
  @type start_service_software_update_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_inbound_connection_response() :: %{
        "Connection" => inbound_connection()
      }

  """
  @type accept_inbound_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_inbound_connections_response() :: %{
        "Connections" => list(inbound_connection()()),
        "NextToken" => String.t()
      }

  """
  @type describe_inbound_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_domain_config_change_request() :: %{
        optional("DryRun") => boolean()
      }

  """
  @type cancel_domain_config_change_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saml_options_output() :: %{
        "Enabled" => boolean(),
        "Idp" => saml_idp(),
        "RolesKey" => String.t(),
        "SessionTimeoutMinutes" => integer(),
        "SubjectKey" => String.t()
      }

  """
  @type saml_options_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cognito_options_status() :: %{
        "Options" => cognito_options(),
        "Status" => option_status()
      }

  """
  @type cognito_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_scheduled_actions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_scheduled_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      j_w_t_options_input() :: %{
        "Enabled" => boolean(),
        "PublicKey" => String.t(),
        "RolesKey" => String.t(),
        "SubjectKey" => String.t()
      }

  """
  @type j_w_t_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_request() :: %{}

  """
  @type delete_domain_request() :: %{}

  @typedoc """

  ## Example:

      auto_tune_maintenance_schedule() :: %{
        "CronExpressionForRecurrence" => String.t(),
        "Duration" => duration(),
        "StartAt" => non_neg_integer()
      }

  """
  @type auto_tune_maintenance_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_packages_for_domain_response() :: %{
        "DomainPackageDetailsList" => list(domain_package_details()()),
        "NextToken" => String.t()
      }

  """
  @type list_packages_for_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_compatible_versions_request() :: %{
        optional("DomainName") => String.t()
      }

  """
  @type get_compatible_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sources_request() :: %{}

  """
  @type list_data_sources_request() :: %{}

  @typedoc """

  ## Example:

      delete_data_source_response() :: %{
        "Message" => String.t()
      }

  """
  @type delete_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_progress_status_details() :: %{
        "ChangeId" => String.t(),
        "ChangeProgressStages" => list(change_progress_stage()()),
        "CompletedProperties" => list(String.t()()),
        "ConfigChangeStatus" => list(any()),
        "InitiatedBy" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "PendingProperties" => list(String.t()()),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "TotalNumberOfStages" => integer()
      }

  """
  @type change_progress_status_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_i_ml_options_output() :: %{
        "NaturalLanguageQueryGenerationOptions" => natural_language_query_generation_options_output()
      }

  """
  @type a_i_ml_options_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_scheduled_action_request() :: %{
        optional("DesiredStartTime") => float(),
        required("ActionID") => String.t(),
        required("ActionType") => list(any()),
        required("ScheduleAt") => list(any())
      }

  """
  @type update_scheduled_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_tags_request() :: %{
        required("ARN") => String.t(),
        required("TagList") => list(tag()())
      }

  """
  @type add_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_failure() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type validation_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_reserved_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ReservedInstanceId") => String.t()
      }

  """
  @type describe_reserved_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upgrade_history() :: %{
        "StartTimestamp" => non_neg_integer(),
        "StepsList" => list(upgrade_step_item()()),
        "UpgradeName" => String.t(),
        "UpgradeStatus" => list(any())
      }

  """
  @type upgrade_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_package_response() :: %{
        "PackageDetails" => package_details()
      }

  """
  @type delete_package_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_request() :: %{
        optional("AIMLOptions") => a_i_ml_options_input(),
        optional("AccessPolicies") => String.t(),
        optional("AdvancedOptions") => map(),
        optional("AdvancedSecurityOptions") => advanced_security_options_input(),
        optional("AutoTuneOptions") => auto_tune_options_input(),
        optional("ClusterConfig") => cluster_config(),
        optional("CognitoOptions") => cognito_options(),
        optional("DomainEndpointOptions") => domain_endpoint_options(),
        optional("EBSOptions") => ebs_options(),
        optional("EncryptionAtRestOptions") => encryption_at_rest_options(),
        optional("EngineVersion") => String.t(),
        optional("IPAddressType") => list(any()),
        optional("LogPublishingOptions") => map(),
        optional("NodeToNodeEncryptionOptions") => node_to_node_encryption_options(),
        optional("OffPeakWindowOptions") => off_peak_window_options(),
        optional("SnapshotOptions") => snapshot_options(),
        optional("SoftwareUpdateOptions") => software_update_options(),
        optional("TagList") => list(tag()()),
        optional("VPCOptions") => vpc_options(),
        required("DomainName") => String.t()
      }

  """
  @type create_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_packages_response() :: %{
        "NextToken" => String.t(),
        "PackageDetailsList" => list(package_details()())
      }

  """
  @type describe_packages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dry_run_results() :: %{
        "DeploymentType" => String.t(),
        "Message" => String.t()
      }

  """
  @type dry_run_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      availability_zone_info() :: %{
        "AvailabilityZoneName" => String.t(),
        "AvailableDataNodeCount" => String.t(),
        "ConfiguredDataNodeCount" => String.t(),
        "TotalShards" => String.t(),
        "TotalUnAssignedShards" => String.t(),
        "ZoneStatus" => list(any())
      }

  """
  @type availability_zone_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      advanced_security_options() :: %{
        "AnonymousAuthDisableDate" => non_neg_integer(),
        "AnonymousAuthEnabled" => boolean(),
        "Enabled" => boolean(),
        "InternalUserDatabaseEnabled" => boolean(),
        "JWTOptions" => j_w_t_options_output(),
        "SAMLOptions" => saml_options_output()
      }

  """
  @type advanced_security_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      option_status() :: %{
        "CreationDate" => non_neg_integer(),
        "PendingDeletion" => boolean(),
        "State" => list(any()),
        "UpdateDate" => non_neg_integer(),
        "UpdateVersion" => integer()
      }

  """
  @type option_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      off_peak_window_options_status() :: %{
        "Options" => off_peak_window_options(),
        "Status" => option_status()
      }

  """
  @type off_peak_window_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_request() :: %{}

  """
  @type get_data_source_request() :: %{}

  @typedoc """

  ## Example:

      cancel_domain_config_change_response() :: %{
        "CancelledChangeIds" => list(String.t()()),
        "CancelledChangeProperties" => list(cancelled_change_property()()),
        "DryRun" => boolean()
      }

  """
  @type cancel_domain_config_change_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_to_node_encryption_options_status() :: %{
        "Options" => node_to_node_encryption_options(),
        "Status" => option_status()
      }

  """
  @type node_to_node_encryption_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_upgrade_history_response() :: %{
        "NextToken" => String.t(),
        "UpgradeHistories" => list(upgrade_history()())
      }

  """
  @type get_upgrade_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_i_ml_options_status() :: %{
        "Options" => a_i_ml_options_output(),
        "Status" => option_status()
      }

  """
  @type a_i_ml_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_config_response() :: %{
        "DomainConfig" => domain_config(),
        "DryRunProgressStatus" => dry_run_progress_status(),
        "DryRunResults" => dry_run_results()
      }

  """
  @type update_domain_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_data_source_request() :: %{
        optional("Description") => String.t(),
        required("DataSourceType") => list(),
        required("Name") => String.t()
      }

  """
  @type add_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_config_request() :: %{
        optional("AIMLOptions") => a_i_ml_options_input(),
        optional("AccessPolicies") => String.t(),
        optional("AdvancedOptions") => map(),
        optional("AdvancedSecurityOptions") => advanced_security_options_input(),
        optional("AutoTuneOptions") => auto_tune_options(),
        optional("ClusterConfig") => cluster_config(),
        optional("CognitoOptions") => cognito_options(),
        optional("DomainEndpointOptions") => domain_endpoint_options(),
        optional("DryRun") => boolean(),
        optional("DryRunMode") => list(any()),
        optional("EBSOptions") => ebs_options(),
        optional("EncryptionAtRestOptions") => encryption_at_rest_options(),
        optional("IPAddressType") => list(any()),
        optional("LogPublishingOptions") => map(),
        optional("NodeToNodeEncryptionOptions") => node_to_node_encryption_options(),
        optional("OffPeakWindowOptions") => off_peak_window_options(),
        optional("SnapshotOptions") => snapshot_options(),
        optional("SoftwareUpdateOptions") => software_update_options(),
        optional("VPCOptions") => vpc_options()
      }

  """
  @type update_domain_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scheduled_action() :: %{
        "Cancellable" => boolean(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Mandatory" => boolean(),
        "ScheduledBy" => list(any()),
        "ScheduledTime" => float(),
        "Severity" => list(any()),
        "Status" => list(any()),
        "Type" => list(any())
      }

  """
  @type scheduled_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_scheduled_actions_response() :: %{
        "NextToken" => String.t(),
        "ScheduledActions" => list(scheduled_action()())
      }

  """
  @type list_scheduled_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      off_peak_window_options() :: %{
        "Enabled" => boolean(),
        "OffPeakWindow" => off_peak_window()
      }

  """
  @type off_peak_window_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_properties() :: %{
        "CrossClusterSearch" => cross_cluster_search_connection_properties(),
        "Endpoint" => String.t()
      }

  """
  @type connection_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type dependency_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_config_response() :: %{
        "DomainConfig" => domain_config()
      }

  """
  @type describe_domain_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_instance_type_limits_response() :: %{
        "LimitsByRole" => map()
      }

  """
  @type describe_instance_type_limits_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_vpc_endpoints_response() :: %{
        "VpcEndpointErrors" => list(vpc_endpoint_error()()),
        "VpcEndpoints" => list(vpc_endpoint()())
      }

  """
  @type describe_vpc_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_inbound_connection_response() :: %{
        "Connection" => inbound_connection()
      }

  """
  @type delete_inbound_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sources_response() :: %{
        "DataSources" => list(data_source_details()())
      }

  """
  @type list_data_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_source_request() :: %{}

  """
  @type delete_data_source_request() :: %{}

  @typedoc """

  ## Example:

      describe_packages_filter() :: %{
        "Name" => list(any()),
        "Value" => list(String.t()())
      }

  """
  @type describe_packages_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vpc_endpoint_response() :: %{
        "VpcEndpoint" => vpc_endpoint()
      }

  """
  @type update_vpc_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_nodes_request() :: %{}

  """
  @type describe_domain_nodes_request() :: %{}

  @typedoc """

  ## Example:

      delete_outbound_connection_request() :: %{}

  """
  @type delete_outbound_connection_request() :: %{}

  @typedoc """

  ## Example:

      error_details() :: %{
        "ErrorMessage" => String.t(),
        "ErrorType" => String.t()
      }

  """
  @type error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_instance_type_limits_request() :: %{
        optional("DomainName") => String.t()
      }

  """
  @type describe_instance_type_limits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_at_rest_options() :: %{
        "Enabled" => boolean(),
        "KmsKeyId" => String.t()
      }

  """
  @type encryption_at_rest_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_package_version_history_response() :: %{
        "NextToken" => String.t(),
        "PackageID" => String.t(),
        "PackageVersionHistoryList" => list(package_version_history()())
      }

  """
  @type get_package_version_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_response() :: %{
        "DomainStatus" => domain_status()
      }

  """
  @type describe_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      version_status() :: %{
        "Options" => String.t(),
        "Status" => option_status()
      }

  """
  @type version_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_endpoints_for_domain_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type list_vpc_endpoints_for_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saml_options_input() :: %{
        "Enabled" => boolean(),
        "Idp" => saml_idp(),
        "MasterBackendRole" => String.t(),
        "MasterUserName" => String.t(),
        "RolesKey" => String.t(),
        "SessionTimeoutMinutes" => integer(),
        "SubjectKey" => String.t()
      }

  """
  @type saml_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_reserved_instances_response() :: %{
        "NextToken" => String.t(),
        "ReservedInstances" => list(reserved_instance()())
      }

  """
  @type describe_reserved_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_inbound_connection_request() :: %{}

  """
  @type accept_inbound_connection_request() :: %{}

  @typedoc """

  ## Example:

      vpc_endpoint() :: %{
        "DomainArn" => String.t(),
        "Endpoint" => String.t(),
        "Status" => list(any()),
        "VpcEndpointId" => String.t(),
        "VpcEndpointOwner" => String.t(),
        "VpcOptions" => vpc_derived_info()
      }

  """
  @type vpc_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_package_version_history_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_package_version_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scheduled_auto_tune_details() :: %{
        "Action" => String.t(),
        "ActionType" => list(any()),
        "Date" => non_neg_integer(),
        "Severity" => list(any())
      }

  """
  @type scheduled_auto_tune_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(String.t()())
      }

  """
  @type list_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ip_address_type_status() :: %{
        "Options" => list(any()),
        "Status" => option_status()
      }

  """
  @type ip_address_type_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ebs_options() :: %{
        "EBSEnabled" => boolean(),
        "Iops" => integer(),
        "Throughput" => integer(),
        "VolumeSize" => integer(),
        "VolumeType" => list(any())
      }

  """
  @type ebs_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_package_request() :: %{
        optional("CommitMessage") => String.t(),
        optional("PackageDescription") => String.t(),
        required("PackageID") => String.t(),
        required("PackageSource") => package_source()
      }

  """
  @type update_package_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_names_response() :: %{
        "DomainNames" => list(domain_info()())
      }

  """
  @type list_domain_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_health_request() :: %{}

  """
  @type describe_domain_health_request() :: %{}

  @typedoc """

  ## Example:

      plugin_properties() :: %{
        "ClassName" => String.t(),
        "Description" => String.t(),
        "Name" => String.t(),
        "UncompressedSizeInBytes" => float(),
        "Version" => String.t()
      }

  """
  @type plugin_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_package_request() :: %{}

  """
  @type associate_package_request() :: %{}

  @typedoc """

  ## Example:

      filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inbound_connection() :: %{
        "ConnectionId" => String.t(),
        "ConnectionMode" => list(any()),
        "ConnectionStatus" => inbound_connection_status(),
        "LocalDomainInfo" => domain_information_container(),
        "RemoteDomainInfo" => domain_information_container()
      }

  """
  @type inbound_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_glue_data_catalog() :: %{
        "RoleArn" => String.t()
      }

  """
  @type s3_glue_data_catalog() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dissociate_package_request() :: %{}

  """
  @type dissociate_package_request() :: %{}

  @typedoc """

  ## Example:

      advanced_security_options_input() :: %{
        "AnonymousAuthEnabled" => boolean(),
        "Enabled" => boolean(),
        "InternalUserDatabaseEnabled" => boolean(),
        "JWTOptions" => j_w_t_options_input(),
        "MasterUserOptions" => master_user_options(),
        "SAMLOptions" => saml_options_input()
      }

  """
  @type advanced_security_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_details() :: %{
        "DataSourceType" => list(),
        "Description" => String.t(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type data_source_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_status() :: %{
        "UpgradeProcessing" => boolean(),
        "AIMLOptions" => a_i_ml_options_output(),
        "EBSOptions" => ebs_options(),
        "VPCOptions" => vpc_derived_info(),
        "AdvancedSecurityOptions" => advanced_security_options(),
        "ServiceSoftwareOptions" => service_software_options(),
        "ARN" => String.t(),
        "DomainId" => String.t(),
        "ModifyingProperties" => list(modifying_properties()()),
        "AdvancedOptions" => map(),
        "SnapshotOptions" => snapshot_options(),
        "Processing" => boolean(),
        "Created" => boolean(),
        "AccessPolicies" => String.t(),
        "DomainProcessingStatus" => list(any()),
        "ChangeProgressDetails" => change_progress_details(),
        "DomainEndpointOptions" => domain_endpoint_options(),
        "EndpointV2" => String.t(),
        "NodeToNodeEncryptionOptions" => node_to_node_encryption_options(),
        "ClusterConfig" => cluster_config(),
        "CognitoOptions" => cognito_options(),
        "DomainName" => String.t(),
        "DomainEndpointV2HostedZoneId" => String.t(),
        "AutoTuneOptions" => auto_tune_options_output(),
        "LogPublishingOptions" => map(),
        "OffPeakWindowOptions" => off_peak_window_options(),
        "SoftwareUpdateOptions" => software_update_options(),
        "Deleted" => boolean(),
        "IPAddressType" => list(any()),
        "EncryptionAtRestOptions" => encryption_at_rest_options(),
        "EngineVersion" => String.t(),
        "Endpoint" => String.t(),
        "Endpoints" => map()
      }

  """
  @type domain_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_info() :: %{
        "DomainName" => String.t(),
        "EngineType" => list(any())
      }

  """
  @type domain_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cognito_options() :: %{
        "Enabled" => boolean(),
        "IdentityPoolId" => String.t(),
        "RoleArn" => String.t(),
        "UserPoolId" => String.t()
      }

  """
  @type cognito_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_endpoint_access_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type list_vpc_endpoint_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vpc_endpoint_request() :: %{
        optional("ClientToken") => String.t(),
        required("DomainArn") => String.t(),
        required("VpcOptions") => vpc_options()
      }

  """
  @type create_vpc_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_tune_options_input() :: %{
        "DesiredState" => list(any()),
        "MaintenanceSchedules" => list(auto_tune_maintenance_schedule()()),
        "UseOffPeakWindow" => boolean()
      }

  """
  @type auto_tune_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancelled_change_property() :: %{
        "ActiveValue" => String.t(),
        "CancelledValue" => String.t(),
        "PropertyName" => String.t()
      }

  """
  @type cancelled_change_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_change_progress_response() :: %{
        "ChangeProgressStatus" => change_progress_status_details()
      }

  """
  @type describe_domain_change_progress_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_limits() :: %{
        "InstanceCountLimits" => instance_count_limits()
      }

  """
  @type instance_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_type_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reserved_instance_offering() :: %{
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "FixedPrice" => float(),
        "InstanceType" => list(any()),
        "PaymentOption" => list(any()),
        "RecurringCharges" => list(recurring_charge()()),
        "ReservedInstanceOfferingId" => String.t(),
        "UsagePrice" => float()
      }

  """
  @type reserved_instance_offering() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_progress_details() :: %{
        "ChangeId" => String.t(),
        "ConfigChangeStatus" => list(any()),
        "InitiatedBy" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "Message" => String.t(),
        "StartTime" => non_neg_integer()
      }

  """
  @type change_progress_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_reserved_instance_offerings_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ReservedInstanceOfferingId") => String.t()
      }

  """
  @type describe_reserved_instance_offerings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_service_software_update_request() :: %{
        required("DomainName") => String.t()
      }

  """
  @type cancel_service_software_update_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      zone_awareness_config() :: %{
        "AvailabilityZoneCount" => integer()
      }

  """
  @type zone_awareness_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_upgrade_history_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_upgrade_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_domain_information() :: %{
        "DomainName" => String.t(),
        "OwnerId" => String.t(),
        "Region" => String.t()
      }

  """
  @type aws_domain_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_progress_stage() :: %{
        "Description" => String.t(),
        "LastUpdated" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => String.t()
      }

  """
  @type change_progress_stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dissociate_package_response() :: %{
        "DomainPackageDetails" => domain_package_details()
      }

  """
  @type dissociate_package_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_maintenances_request() :: %{
        optional("Action") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_domain_maintenances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_package_request() :: %{}

  """
  @type delete_package_request() :: %{}

  @typedoc """

  ## Example:

      internal_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_request() :: %{}

  """
  @type describe_domain_request() :: %{}

  @typedoc """

  ## Example:

      natural_language_query_generation_options_input() :: %{
        "DesiredState" => list(any())
      }

  """
  @type natural_language_query_generation_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_nodes_status() :: %{
        "AvailabilityZone" => String.t(),
        "InstanceType" => list(any()),
        "NodeId" => String.t(),
        "NodeStatus" => list(any()),
        "NodeType" => list(any()),
        "StorageSize" => String.t(),
        "StorageType" => String.t(),
        "StorageVolumeType" => list(any())
      }

  """
  @type domain_nodes_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_packages_for_domain_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_packages_for_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      advanced_security_options_status() :: %{
        "Options" => advanced_security_options(),
        "Status" => option_status()
      }

  """
  @type advanced_security_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      duration() :: %{
        "Unit" => list(any()),
        "Value" => float()
      }

  """
  @type duration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_for_package_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_domains_for_package_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      purchase_reserved_instance_offering_response() :: %{
        "ReservationName" => String.t(),
        "ReservedInstanceId" => String.t()
      }

  """
  @type purchase_reserved_instance_offering_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_not_available_exception() :: %{
        "SlotSuggestions" => list(float()()),
        "message" => String.t()
      }

  """
  @type slot_not_available_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorize_vpc_endpoint_access_request() :: %{
        required("Account") => String.t()
      }

  """
  @type authorize_vpc_endpoint_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_software_options() :: %{
        "AutomatedUpdateDate" => non_neg_integer(),
        "Cancellable" => boolean(),
        "CurrentVersion" => String.t(),
        "Description" => String.t(),
        "NewVersion" => String.t(),
        "OptionalDeployment" => boolean(),
        "UpdateAvailable" => boolean(),
        "UpdateStatus" => list(any())
      }

  """
  @type service_software_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_publishing_options_status() :: %{
        "Options" => map(),
        "Status" => option_status()
      }

  """
  @type log_publishing_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upgrade_domain_request() :: %{
        optional("AdvancedOptions") => map(),
        optional("PerformCheckOnly") => boolean(),
        required("DomainName") => String.t(),
        required("TargetVersion") => String.t()
      }

  """
  @type upgrade_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_service_software_update_request() :: %{
        optional("DesiredStartTime") => float(),
        optional("ScheduleAt") => list(any()),
        required("DomainName") => String.t()
      }

  """
  @type start_service_software_update_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instance_type_details_request() :: %{
        optional("DomainName") => String.t(),
        optional("InstanceType") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RetrieveAZs") => boolean()
      }

  """
  @type list_instance_type_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      j_w_t_options_output() :: %{
        "Enabled" => boolean(),
        "PublicKey" => String.t(),
        "RolesKey" => String.t(),
        "SubjectKey" => String.t()
      }

  """
  @type j_w_t_options_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_tune_options() :: %{
        "DesiredState" => list(any()),
        "MaintenanceSchedules" => list(auto_tune_maintenance_schedule()()),
        "RollbackOnDisable" => list(any()),
        "UseOffPeakWindow" => boolean()
      }

  """
  @type auto_tune_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      software_update_options() :: %{
        "AutoSoftwareUpdateEnabled" => boolean()
      }

  """
  @type software_update_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_request() :: %{
        optional("Description") => String.t(),
        optional("Status") => list(any()),
        required("DataSourceType") => list()
      }

  """
  @type update_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_i_ml_options_input() :: %{
        "NaturalLanguageQueryGenerationOptions" => natural_language_query_generation_options_input()
      }

  """
  @type a_i_ml_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_upgrade_status_request() :: %{}

  """
  @type get_upgrade_status_request() :: %{}

  @typedoc """

  ## Example:

      upgrade_domain_response() :: %{
        "AdvancedOptions" => map(),
        "ChangeProgressDetails" => change_progress_details(),
        "DomainName" => String.t(),
        "PerformCheckOnly" => boolean(),
        "TargetVersion" => String.t(),
        "UpgradeId" => String.t()
      }

  """
  @type upgrade_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_endpoint_request() :: %{}

  """
  @type delete_vpc_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      create_domain_response() :: %{
        "DomainStatus" => domain_status()
      }

  """
  @type create_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      base_exception() :: %{
        "message" => String.t()
      }

  """
  @type base_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_to_node_encryption_options() :: %{
        "Enabled" => boolean()
      }

  """
  @type node_to_node_encryption_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_package_response() :: %{
        "PackageDetails" => package_details()
      }

  """
  @type create_package_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limits() :: %{
        "AdditionalLimits" => list(additional_limit()()),
        "InstanceLimits" => instance_limits(),
        "StorageTypes" => list(storage_type()())
      }

  """
  @type limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dry_run_progress_request() :: %{
        optional("DryRunId") => String.t(),
        optional("LoadDryRunConfig") => boolean()
      }

  """
  @type describe_dry_run_progress_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_domain_maintenance_response() :: %{
        "MaintenanceId" => String.t()
      }

  """
  @type start_domain_maintenance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      revoke_vpc_endpoint_access_request() :: %{
        required("Account") => String.t()
      }

  """
  @type revoke_vpc_endpoint_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_info() :: %{
        "AvailabilityZoneInformation" => list(availability_zone_info()())
      }

  """
  @type environment_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_options() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }

  """
  @type vpc_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domains_response() :: %{
        "DomainStatusList" => list(domain_status()())
      }

  """
  @type describe_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_outbound_connection_response() :: %{
        "Connection" => outbound_connection()
      }

  """
  @type delete_outbound_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster_config() :: %{
        "ColdStorageOptions" => cold_storage_options(),
        "DedicatedMasterCount" => integer(),
        "DedicatedMasterEnabled" => boolean(),
        "DedicatedMasterType" => list(any()),
        "InstanceCount" => integer(),
        "InstanceType" => list(any()),
        "MultiAZWithStandbyEnabled" => boolean(),
        "WarmCount" => integer(),
        "WarmEnabled" => boolean(),
        "WarmType" => list(any()),
        "ZoneAwarenessConfig" => zone_awareness_config(),
        "ZoneAwarenessEnabled" => boolean()
      }

  """
  @type cluster_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vpc_endpoint_response() :: %{
        "VpcEndpoint" => vpc_endpoint()
      }

  """
  @type create_vpc_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_endpoint_options_status() :: %{
        "Options" => domain_endpoint_options(),
        "Status" => option_status()
      }

  """
  @type domain_endpoint_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_inbound_connections_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_inbound_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_package_details() :: %{
        "DomainName" => String.t(),
        "DomainPackageStatus" => list(any()),
        "ErrorDetails" => error_details(),
        "LastUpdated" => non_neg_integer(),
        "PackageID" => String.t(),
        "PackageName" => String.t(),
        "PackageType" => list(any()),
        "PackageVersion" => String.t(),
        "ReferencePath" => String.t()
      }

  """
  @type domain_package_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      advanced_options_status() :: %{
        "Options" => map(),
        "Status" => option_status()
      }

  """
  @type advanced_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_policies_status() :: %{
        "Options" => String.t(),
        "Status" => option_status()
      }

  """
  @type access_policies_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reserved_instance() :: %{
        "BillingSubscriptionId" => float(),
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "FixedPrice" => float(),
        "InstanceCount" => integer(),
        "InstanceType" => list(any()),
        "PaymentOption" => list(any()),
        "RecurringCharges" => list(recurring_charge()()),
        "ReservationName" => String.t(),
        "ReservedInstanceId" => String.t(),
        "ReservedInstanceOfferingId" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => String.t(),
        "UsagePrice" => float()
      }

  """
  @type reserved_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_version_history() :: %{
        "CommitMessage" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "PackageVersion" => String.t(),
        "PluginProperties" => plugin_properties()
      }

  """
  @type package_version_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vpc_endpoint_request() :: %{
        required("VpcEndpointId") => String.t(),
        required("VpcOptions") => vpc_options()
      }

  """
  @type update_vpc_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_tags_request() :: %{
        required("ARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }

  """
  @type remove_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_maintenances_response() :: %{
        "DomainMaintenances" => list(domain_maintenance_details()()),
        "NextToken" => String.t()
      }

  """
  @type list_domain_maintenances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_request() :: %{
        required("ARN") => String.t()
      }

  """
  @type list_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_service_software_update_response() :: %{
        "ServiceSoftwareOptions" => service_software_options()
      }

  """
  @type cancel_service_software_update_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_tune() :: %{
        "AutoTuneDetails" => auto_tune_details(),
        "AutoTuneType" => list(any())
      }

  """
  @type auto_tune() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      purchase_reserved_instance_offering_request() :: %{
        optional("InstanceCount") => integer(),
        required("ReservationName") => String.t(),
        required("ReservedInstanceOfferingId") => String.t()
      }

  """
  @type purchase_reserved_instance_offering_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_packages_request() :: %{
        optional("Filters") => list(describe_packages_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cross_cluster_search_connection_properties() :: %{
        "SkipUnavailable" => list(any())
      }

  """
  @type cross_cluster_search_connection_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upgrade_step_item() :: %{
        "Issues" => list(String.t()()),
        "ProgressPercent" => float(),
        "UpgradeStep" => list(any()),
        "UpgradeStepStatus" => list(any())
      }

  """
  @type upgrade_step_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_publishing_option() :: %{
        "CloudWatchLogsLogGroupArn" => String.t(),
        "Enabled" => boolean()
      }

  """
  @type log_publishing_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_endpoint_access_response() :: %{
        "AuthorizedPrincipalList" => list(authorized_principal()()),
        "NextToken" => String.t()
      }

  """
  @type list_vpc_endpoint_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_response() :: %{
        "DataSourceType" => list(),
        "Description" => String.t(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type get_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instance_type_details_response() :: %{
        "InstanceTypeDetails" => list(instance_type_details()()),
        "NextToken" => String.t()
      }

  """
  @type list_instance_type_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_endpoint_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "VpcEndpointId" => String.t()
      }

  """
  @type vpc_endpoint_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_upgrade_status_response() :: %{
        "StepStatus" => list(any()),
        "UpgradeName" => String.t(),
        "UpgradeStep" => list(any())
      }

  """
  @type get_upgrade_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_endpoint_options() :: %{
        "CustomEndpoint" => String.t(),
        "CustomEndpointCertificateArn" => String.t(),
        "CustomEndpointEnabled" => boolean(),
        "EnforceHTTPS" => boolean(),
        "TLSSecurityPolicy" => list(any())
      }

  """
  @type domain_endpoint_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_package_response() :: %{
        "DomainPackageDetails" => domain_package_details()
      }

  """
  @type associate_package_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_at_rest_options_status() :: %{
        "Options" => encryption_at_rest_options(),
        "Status" => option_status()
      }

  """
  @type encryption_at_rest_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_information_container() :: %{
        "AWSDomainInformation" => aws_domain_information()
      }

  """
  @type domain_information_container() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_count_limits() :: %{
        "MaximumInstanceCount" => integer(),
        "MinimumInstanceCount" => integer()
      }

  """
  @type instance_count_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_nodes_response() :: %{
        "DomainNodesStatusList" => list(domain_nodes_status()())
      }

  """
  @type describe_domain_nodes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      revoke_vpc_endpoint_access_response() :: %{}

  """
  @type revoke_vpc_endpoint_access_response() :: %{}

  @typedoc """

  ## Example:

      software_update_options_status() :: %{
        "Options" => software_update_options(),
        "Status" => option_status()
      }

  """
  @type software_update_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      off_peak_window() :: %{
        "WindowStartTime" => window_start_time()
      }

  """
  @type off_peak_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_for_package_response() :: %{
        "DomainPackageDetailsList" => list(domain_package_details()()),
        "NextToken" => String.t()
      }

  """
  @type list_domains_for_package_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_pagination_token_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_pagination_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_compatible_versions_response() :: %{
        "CompatibleVersions" => list(compatible_versions_map()())
      }

  """
  @type get_compatible_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      master_user_options() :: %{
        "MasterUserARN" => String.t(),
        "MasterUserName" => String.t(),
        "MasterUserPassword" => String.t()
      }

  """
  @type master_user_options() :: %{String.t() => any()}

  @type accept_inbound_connection_errors() ::
          limit_exceeded_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type add_data_source_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | dependency_failure_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type add_tags_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()

  @type associate_package_errors() ::
          base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type authorize_vpc_endpoint_access_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type cancel_domain_config_change_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type cancel_service_software_update_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type create_domain_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | disabled_operation_exception()

  @type create_outbound_connection_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | internal_exception()
          | disabled_operation_exception()

  @type create_package_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_type_exception()

  @type create_vpc_endpoint_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type delete_data_source_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | dependency_failure_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type delete_domain_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type delete_inbound_connection_errors() ::
          resource_not_found_exception() | disabled_operation_exception()

  @type delete_outbound_connection_errors() ::
          resource_not_found_exception() | disabled_operation_exception()

  @type delete_package_errors() ::
          base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_vpc_endpoint_errors() ::
          base_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type describe_domain_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type describe_domain_auto_tunes_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type describe_domain_change_progress_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type describe_domain_config_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type describe_domain_health_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type describe_domain_nodes_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | dependency_failure_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type describe_domains_errors() ::
          base_exception() | validation_exception() | internal_exception()

  @type describe_dry_run_progress_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type describe_inbound_connections_errors() ::
          invalid_pagination_token_exception() | disabled_operation_exception()

  @type describe_instance_type_limits_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type describe_outbound_connections_errors() ::
          invalid_pagination_token_exception() | disabled_operation_exception()

  @type describe_packages_errors() ::
          base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type describe_reserved_instance_offerings_errors() ::
          validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type describe_reserved_instances_errors() ::
          validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type describe_vpc_endpoints_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | disabled_operation_exception()

  @type dissociate_package_errors() ::
          base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_compatible_versions_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type get_data_source_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | dependency_failure_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type get_domain_maintenance_status_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type get_package_version_history_errors() ::
          base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type get_upgrade_history_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type get_upgrade_status_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type list_data_sources_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | dependency_failure_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type list_domain_maintenances_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type list_domain_names_errors() :: base_exception() | validation_exception()

  @type list_domains_for_package_errors() ::
          base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type list_instance_type_details_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type list_packages_for_domain_errors() ::
          base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type list_scheduled_actions_errors() ::
          invalid_pagination_token_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type list_tags_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type list_versions_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type list_vpc_endpoint_access_errors() ::
          base_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type list_vpc_endpoints_errors() ::
          base_exception() | internal_exception() | disabled_operation_exception()

  @type list_vpc_endpoints_for_domain_errors() ::
          base_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type purchase_reserved_instance_offering_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type reject_inbound_connection_errors() ::
          resource_not_found_exception() | disabled_operation_exception()

  @type remove_tags_errors() :: base_exception() | validation_exception() | internal_exception()

  @type revoke_vpc_endpoint_access_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type start_domain_maintenance_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type start_service_software_update_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type update_data_source_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | dependency_failure_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type update_domain_config_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type update_package_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type update_scheduled_action_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | slot_not_available_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_vpc_endpoint_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type upgrade_domain_errors() ::
          resource_already_exists_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  def metadata do
    %{
      api_version: "2021-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "es",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "OpenSearch",
      signature_version: "v4",
      signing_name: "es",
      target_prefix: nil
    }
  end

  @doc """
  Allows the destination Amazon OpenSearch Service domain owner to accept an
  inbound cross-cluster search connection request. For more information, see
  [Cross-cluster search for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20AcceptInboundConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_id` (`t:string`) The ID of the inbound connection to accept.

  ## Optional parameters:
  """
  @spec accept_inbound_connection(
          AWS.Client.t(),
          String.t(),
          accept_inbound_connection_request(),
          Keyword.t()
        ) ::
          {:ok, accept_inbound_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_inbound_connection_errors()}
  def accept_inbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/cc/inboundConnection/#{AWS.Util.encode_uri(connection_id)}/accept"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new direct-query data source to the specified domain. For more
  information, see [Creating Amazon OpenSearch Service data source integrations
  with Amazon
  S3](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20AddDataSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain to add the data source to.

  ## Optional parameters:
  """
  @spec add_data_source(AWS.Client.t(), String.t(), add_data_source_request(), Keyword.t()) ::
          {:ok, add_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_data_source_errors()}
  def add_data_source(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource"
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
  Attaches tags to an existing Amazon OpenSearch Service domain. Tags are a set of
  case-sensitive key-value pairs. A domain can have up to 10 tags. For more
  information, see [Tagging Amazon OpenSearch Service
  domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20AddTags&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec add_tags(AWS.Client.t(), add_tags_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_errors()}
  def add_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/tags"
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
  Associates a package with an Amazon OpenSearch Service domain. For more
  information, see [Custom packages for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20AssociatePackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) Name of the domain to associate the package with.
  * `:package_id` (`t:string`) Internal ID of the package to associate with a
    domain. Use DescribePackages to find this value.

  ## Optional parameters:
  """
  @spec associate_package(
          AWS.Client.t(),
          String.t(),
          String.t(),
          associate_package_request(),
          Keyword.t()
        ) ::
          {:ok, associate_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_package_errors()}
  def associate_package(%Client{} = client, domain_name, package_id, input, options \\ []) do
    url_path =
      "/2021-01-01/packages/associate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

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
  Provides access to an Amazon OpenSearch Service domain through the use of an
  interface VPC endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20AuthorizeVpcEndpointAccess&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the OpenSearch Service domain to
    provide access to.

  ## Optional parameters:
  """
  @spec authorize_vpc_endpoint_access(
          AWS.Client.t(),
          String.t(),
          authorize_vpc_endpoint_access_request(),
          Keyword.t()
        ) ::
          {:ok, authorize_vpc_endpoint_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, authorize_vpc_endpoint_access_errors()}
  def authorize_vpc_endpoint_access(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/authorizeVpcEndpointAccess"

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
  Cancels a pending configuration change on an Amazon OpenSearch Service domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20CancelDomainConfigChange&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`)

  ## Optional parameters:
  """
  @spec cancel_domain_config_change(
          AWS.Client.t(),
          String.t(),
          cancel_domain_config_change_request(),
          Keyword.t()
        ) ::
          {:ok, cancel_domain_config_change_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_domain_config_change_errors()}
  def cancel_domain_config_change(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/config/cancel"
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
  Cancels a scheduled service software update for an Amazon OpenSearch Service
  domain. You can only perform this operation before the `AutomatedUpdateDate`
  and when the domain's `UpdateStatus` is `PENDING_UPDATE`. For more
  information, see [Service software updates in Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20CancelServiceSoftwareUpdate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec cancel_service_software_update(
          AWS.Client.t(),
          cancel_service_software_update_request(),
          Keyword.t()
        ) ::
          {:ok, cancel_service_software_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_service_software_update_errors()}
  def cancel_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel"
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
  Creates an Amazon OpenSearch Service domain. For more information, see [Creating
  and managing Amazon OpenSearch Service
  domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20CreateDomain&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_domain(AWS.Client.t(), create_domain_request(), Keyword.t()) ::
          {:ok, create_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain"
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
  Creates a new cross-cluster search connection from a source Amazon OpenSearch
  Service domain to a destination domain. For more information, see
  [Cross-cluster search for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20CreateOutboundConnection&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_outbound_connection(
          AWS.Client.t(),
          create_outbound_connection_request(),
          Keyword.t()
        ) ::
          {:ok, create_outbound_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_outbound_connection_errors()}
  def create_outbound_connection(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/outboundConnection"
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
  Creates a package for use with Amazon OpenSearch Service domains. For more
  information, see [Custom packages for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20CreatePackage&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_package(AWS.Client.t(), create_package_request(), Keyword.t()) ::
          {:ok, create_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_package_errors()}
  def create_package(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/packages"
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
  Creates an Amazon OpenSearch Service-managed VPC endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20CreateVpcEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_vpc_endpoint(AWS.Client.t(), create_vpc_endpoint_request(), Keyword.t()) ::
          {:ok, create_vpc_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_endpoint_errors()}
  def create_vpc_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints"
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
  Deletes a direct-query data source. For more information, see [Deleting an
  Amazon OpenSearch Service data source with Amazon
  S3](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-delete.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DeleteDataSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.
  * `:name` (`t:string`) The name of the data source to delete.

  ## Optional parameters:
  """
  @spec delete_data_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_data_source_request(),
          Keyword.t()
        ) ::
          {:ok, delete_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_source_errors()}
  def delete_data_source(%Client{} = client, domain_name, name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource/#{AWS.Util.encode_uri(name)}"

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
  Deletes an Amazon OpenSearch Service domain and all of its data. You can't
  recover a domain after you delete it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DeleteDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain you want to permanently
    delete.

  ## Optional parameters:
  """
  @spec delete_domain(AWS.Client.t(), String.t(), delete_domain_request(), Keyword.t()) ::
          {:ok, delete_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}"
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
  Allows the destination Amazon OpenSearch Service domain owner to delete an
  existing inbound cross-cluster search connection. For more information, see
  [Cross-cluster search for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DeleteInboundConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_id` (`t:string`) The ID of the inbound connection to permanently
    delete.

  ## Optional parameters:
  """
  @spec delete_inbound_connection(
          AWS.Client.t(),
          String.t(),
          delete_inbound_connection_request(),
          Keyword.t()
        ) ::
          {:ok, delete_inbound_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_inbound_connection_errors()}
  def delete_inbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/inboundConnection/#{AWS.Util.encode_uri(connection_id)}"
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
  Allows the source Amazon OpenSearch Service domain owner to delete an existing
  outbound cross-cluster search connection. For more information, see
  [Cross-cluster search for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DeleteOutboundConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_id` (`t:string`) The ID of the outbound connection you want to
    permanently delete.

  ## Optional parameters:
  """
  @spec delete_outbound_connection(
          AWS.Client.t(),
          String.t(),
          delete_outbound_connection_request(),
          Keyword.t()
        ) ::
          {:ok, delete_outbound_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_outbound_connection_errors()}
  def delete_outbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/cc/outboundConnection/#{AWS.Util.encode_uri(connection_id)}"

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
  Deletes an Amazon OpenSearch Service package. For more information, see [Custom
  packages for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DeletePackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:package_id` (`t:string`) The internal ID of the package you want to delete.
    Use DescribePackages to find this value.

  ## Optional parameters:
  """
  @spec delete_package(AWS.Client.t(), String.t(), delete_package_request(), Keyword.t()) ::
          {:ok, delete_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_package_errors()}
  def delete_package(%Client{} = client, package_id, input, options \\ []) do
    url_path = "/2021-01-01/packages/#{AWS.Util.encode_uri(package_id)}"
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
  Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DeleteVpcEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vpc_endpoint_id` (`t:string`) The unique identifier of the endpoint.

  ## Optional parameters:
  """
  @spec delete_vpc_endpoint(
          AWS.Client.t(),
          String.t(),
          delete_vpc_endpoint_request(),
          Keyword.t()
        ) ::
          {:ok, delete_vpc_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_endpoint_errors()}
  def delete_vpc_endpoint(%Client{} = client, vpc_endpoint_id, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints/#{AWS.Util.encode_uri(vpc_endpoint_id)}"
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
  Describes the domain configuration for the specified Amazon OpenSearch Service
  domain, including the domain ID, domain service endpoint, and domain ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain that you want information
    about.

  ## Optional parameters:
  """
  @spec describe_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_errors()}
  def describe_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}"

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
  Returns the list of optimizations that Auto-Tune has made to an Amazon
  OpenSearch Service domain. For more information, see [Auto-Tune for Amazon
  OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeDomainAutoTunes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) Name of the domain that you want Auto-Tune details
    about.

  ## Optional parameters:
  """
  @spec describe_domain_auto_tunes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_domain_auto_tunes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_auto_tunes_errors()}
  def describe_domain_auto_tunes(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/autoTunes"

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
  Returns information about the current blue/green deployment happening on an
  Amazon OpenSearch Service domain. For more information, see [Making
  configuration changes in Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeDomainChangeProgress&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain to get progress information
    for.

  ## Optional parameters:
  * `:change_id` (`t:string`) The specific change ID for which you want to get
    progress information. If omitted, the request returns information about the
    most recent configuration change.
  """
  @spec describe_domain_change_progress(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_domain_change_progress_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_change_progress_errors()}
  def describe_domain_change_progress(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/progress"

    # Validate optional parameters
    optional_params = [change_id: nil]

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
      if opt_val = Keyword.get(options, :change_id) do
        [{"changeid", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:change_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the configuration of an Amazon OpenSearch Service domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeDomainConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) Name of the OpenSearch Service domain
    configuration that you want to describe.

  ## Optional parameters:
  """
  @spec describe_domain_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_domain_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_config_errors()}
  def describe_domain_config(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/config"

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
  Returns information about domain and node health, the standby Availability Zone,
  number of nodes per Availability Zone, and shard count per node.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeDomainHealth&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.

  ## Optional parameters:
  """
  @spec describe_domain_health(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_domain_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_health_errors()}
  def describe_domain_health(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/health"

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
  Returns information about domain and nodes, including data nodes, master nodes,
  ultrawarm nodes, Availability Zone(s), standby nodes, node configurations, and
  node states.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeDomainNodes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.

  ## Optional parameters:
  """
  @spec describe_domain_nodes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_domain_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_nodes_errors()}
  def describe_domain_nodes(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/nodes"

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
  Returns domain configuration information about the specified Amazon OpenSearch
  Service domains.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeDomains&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_domains(AWS.Client.t(), describe_domains_request(), Keyword.t()) ::
          {:ok, describe_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domains_errors()}
  def describe_domains(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain-info"
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
  Describes the progress of a pre-update dry run analysis on an Amazon OpenSearch
  Service domain. For more information, see [Determining whether a change will
  cause a blue/green
  deployment](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#dryrun).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeDryRunProgress&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.

  ## Optional parameters:
  * `:dry_run_id` (`t:string`) The unique identifier of the dry run.
  * `:load_dry_run_config` (`t:boolean`) Whether to include the configuration of
    the dry run in the response. The configuration specifies the updates that
    you're planning to make on the domain.
  """
  @spec describe_dry_run_progress(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_dry_run_progress_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dry_run_progress_errors()}
  def describe_dry_run_progress(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dryRun"

    # Validate optional parameters
    optional_params = [dry_run_id: nil, load_dry_run_config: nil]

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
      if opt_val = Keyword.get(options, :load_dry_run_config) do
        [{"loadDryRunConfig", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :dry_run_id) do
        [{"dryRunId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:dry_run_id, :load_dry_run_config])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the inbound cross-cluster search connections for a destination
  (remote) Amazon OpenSearch Service domain. For more information, see
  [Cross-cluster search for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeInboundConnections&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_inbound_connections(
          AWS.Client.t(),
          describe_inbound_connections_request(),
          Keyword.t()
        ) ::
          {:ok, describe_inbound_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_inbound_connections_errors()}
  def describe_inbound_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/inboundConnection/search"
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
  Describes the instance count, storage, and master node limits for a given
  OpenSearch or Elasticsearch version and instance type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeInstanceTypeLimits&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:engine_version` (`t:string`) Version of OpenSearch or Elasticsearch, in the
    format Elasticsearch_X.Y or OpenSearch_X.Y. Defaults to the latest version
    of OpenSearch.
  * `:instance_type`
    (`t:enum["ultrawarm1_xlarge_search|c6g_2xlarge_search|d2_2xlarge_search|m5_24xlarge_search|c4_2xlarge_search|r4_large_search|r4_xlarge_search|c5_9xlarge_search|r5_large_search|m3_medium_search|r4_4xlarge_search|r6g_2xlarge_search|c5_4xlarge_search|m6g_4xlarge_search|m4_4xlarge_search|t2_small_search|r4_8xlarge_search|c4_large_search|m6g_8xlarge_search|or1_8xlarge_search|r3_8xlarge_search|or1_xlarge_search|or1_16xlarge_search|r6gd_8xlarge_search|r6g_xlarge_search|m6g_2xlarge_search|m5_xlarge_search|d2_xlarge_search|or1_2xlarge_search|m3_large_search|m5_2xlarge_search|i2_xlarge_search|r6gd_4xlarge_search|c6g_large_search|or1_12xlarge_search|or1_large_search|t3_large_search|or1_medium_search|i3_large_search|c6g_12xlarge_search|i3_16xlarge_search|r3_4xlarge_search|i3_2xlarge_search|r6gd_xlarge_search|t3_2xlarge_search|m5_4xlarge_search|m4_2xlarge_search|r6g_4xlarge_search|c4_xlarge_search|r5_xlarge_search|c4_4xlarge_search|r3_2xlarge_search|r6g_8xlarge_search|t3_small_search|r4_2xlarge_search|m6g_xlarge_search|t4g_small_search|m4_xlarge_search|c4_8xlarge_search|i2_2xlarge_search|r3_xlarge_search|c6g_4xlarge_search|r5_24xlarge_search|c5_large_search|ultrawarm1_medium_search|r4_16xlarge_search|m5_large_search|r5_12xlarge_search|t2_micro_search|i3_8xlarge_search|m3_2xlarge_search|d2_8xlarge_search|m4_large_search|or1_4xlarge_search|r5_4xlarge_search|r6g_large_search|c5_18xlarge_search|c5_xlarge_search|i3_4xlarge_search|c5_2xlarge_search|r3_large_search|t3_xlarge_search|c6g_8xlarge_search|m6g_12xlarge_search|t3_nano_search|m5_12xlarge_search|r5_2xlarge_search|t3_micro_search|m6g_large_search|r6g_12xlarge_search|t3_medium_search|r6gd_16xlarge_search|ultrawarm1_large_search|c6g_xlarge_search|r6gd_2xlarge_search|r6gd_12xlarge_search|t2_medium_search|m3_xlarge_search|m4_10xlarge_search|i3_xlarge_search|r6gd_large_search|d2_4xlarge_search|t4g_medium_search"]`)
    The OpenSearch Service instance type for which you need limit information.

  ## Optional parameters:
  * `:domain_name` (`t:string`) The name of the domain. Only specify if you need
    the limits for an existing domain.
  """
  @spec describe_instance_type_limits(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_instance_type_limits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_type_limits_errors()}
  def describe_instance_type_limits(
        %Client{} = client,
        engine_version,
        instance_type,
        options \\ []
      ) do
    url_path =
      "/2021-01-01/opensearch/instanceTypeLimits/#{AWS.Util.encode_uri(engine_version)}/#{AWS.Util.encode_uri(instance_type)}"

    # Validate optional parameters
    optional_params = [domain_name: nil]

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
      if opt_val = Keyword.get(options, :domain_name) do
        [{"domainName", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:domain_name])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the outbound cross-cluster connections for a local (source) Amazon
  OpenSearch Service domain. For more information, see [Cross-cluster search for
  Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeOutboundConnections&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_outbound_connections(
          AWS.Client.t(),
          describe_outbound_connections_request(),
          Keyword.t()
        ) ::
          {:ok, describe_outbound_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_outbound_connections_errors()}
  def describe_outbound_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/outboundConnection/search"
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
  Describes all packages available to OpenSearch Service. For more information,
  see [Custom packages for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribePackages&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_packages(AWS.Client.t(), describe_packages_request(), Keyword.t()) ::
          {:ok, describe_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_packages_errors()}
  def describe_packages(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/packages/describe"
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
  Describes the available Amazon OpenSearch Service Reserved Instance offerings
  for a given Region. For more information, see [Reserved Instances in Amazon
  OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeReservedInstanceOfferings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial DescribeReservedInstanceOfferings
    operation returns a nextToken, you can include the returned nextToken in
    subsequent DescribeReservedInstanceOfferings operations, which returns
    results in the next page.
  * `:reserved_instance_offering_id` (`t:string`) The Reserved Instance identifier
    filter value. Use this parameter to show only the available instance types
    that match the specified reservation identifier.
  """
  @spec describe_reserved_instance_offerings(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_reserved_instance_offerings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_reserved_instance_offerings_errors()}
  def describe_reserved_instance_offerings(%Client{} = client, options \\ []) do
    url_path = "/2021-01-01/opensearch/reservedInstanceOfferings"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, reserved_instance_offering_id: nil]

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
      if opt_val = Keyword.get(options, :reserved_instance_offering_id) do
        [{"offeringId", opt_val} | query_params]
      else
        query_params
      end

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :reserved_instance_offering_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the Amazon OpenSearch Service instances that you have reserved in a
  given Region. For more information, see [Reserved Instances in Amazon
  OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeReservedInstances&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial DescribeReservedInstances operation
    returns a nextToken, you can include the returned nextToken in subsequent
    DescribeReservedInstances operations, which returns results in the next
    page.
  * `:reserved_instance_id` (`t:string`) The reserved instance identifier filter
    value. Use this parameter to show only the reservation that matches the
    specified reserved OpenSearch instance ID.
  """
  @spec describe_reserved_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_reserved_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_reserved_instances_errors()}
  def describe_reserved_instances(%Client{} = client, options \\ []) do
    url_path = "/2021-01-01/opensearch/reservedInstances"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, reserved_instance_id: nil]

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
      if opt_val = Keyword.get(options, :reserved_instance_id) do
        [{"reservationId", opt_val} | query_params]
      else
        query_params
      end

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :reserved_instance_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes one or more Amazon OpenSearch Service-managed VPC endpoints.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DescribeVpcEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_vpc_endpoints(AWS.Client.t(), describe_vpc_endpoints_request(), Keyword.t()) ::
          {:ok, describe_vpc_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_vpc_endpoints_errors()}
  def describe_vpc_endpoints(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints/describe"
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
  Removes a package from the specified Amazon OpenSearch Service domain. The
  package can't be in use with any OpenSearch index for the dissociation to
  succeed. The package is still available in OpenSearch Service for association
  later. For more information, see [Custom packages for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20DissociatePackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) Name of the domain to dissociate the package from.
  * `:package_id` (`t:string`) Internal ID of the package to dissociate from the
    domain. Use ListPackagesForDomain to find this value.

  ## Optional parameters:
  """
  @spec dissociate_package(
          AWS.Client.t(),
          String.t(),
          String.t(),
          dissociate_package_request(),
          Keyword.t()
        ) ::
          {:ok, dissociate_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, dissociate_package_errors()}
  def dissociate_package(%Client{} = client, domain_name, package_id, input, options \\ []) do
    url_path =
      "/2021-01-01/packages/dissociate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

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
  Returns a map of OpenSearch or Elasticsearch versions and the versions you can
  upgrade them to.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20GetCompatibleVersions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:domain_name` (`t:string`) The name of an existing domain. Provide this
    parameter to limit the results to a single domain.
  """
  @spec get_compatible_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_compatible_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compatible_versions_errors()}
  def get_compatible_versions(%Client{} = client, options \\ []) do
    url_path = "/2021-01-01/opensearch/compatibleVersions"

    # Validate optional parameters
    optional_params = [domain_name: nil]

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
      if opt_val = Keyword.get(options, :domain_name) do
        [{"domainName", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:domain_name])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a direct query data source.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20GetDataSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.
  * `:name` (`t:string`) The name of the data source to get information about.

  ## Optional parameters:
  """
  @spec get_data_source(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_errors()}
  def get_data_source(%Client{} = client, domain_name, name, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource/#{AWS.Util.encode_uri(name)}"

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
  The status of the maintenance action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20GetDomainMaintenanceStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.
  * `:maintenance_id` (`t:string`) The request ID of the maintenance action.

  ## Optional parameters:
  """
  @spec get_domain_maintenance_status(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_maintenance_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_maintenance_status_errors()}
  def get_domain_maintenance_status(
        %Client{} = client,
        domain_name,
        maintenance_id,
        options \\ []
      ) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/domainMaintenance"

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
    query_params = [{"maintenanceId", maintenance_id}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Amazon OpenSearch Service package versions, along with their
  creation time, commit message, and plugin properties (if the package is a zip
  plugin package). For more information, see [Custom packages for Amazon
  OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20GetPackageVersionHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:package_id` (`t:string`) The unique identifier of the package.

  ## Optional parameters:
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial GetPackageVersionHistory operation
    returns a nextToken, you can include the returned nextToken in subsequent
    GetPackageVersionHistory operations, which returns results in the next page.
  """
  @spec get_package_version_history(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_package_version_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_package_version_history_errors()}
  def get_package_version_history(%Client{} = client, package_id, options \\ []) do
    url_path = "/2021-01-01/packages/#{AWS.Util.encode_uri(package_id)}/history"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the complete history of the last 10 upgrades performed on an Amazon
  OpenSearch Service domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20GetUpgradeHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of an existing domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial GetUpgradeHistory operation returns
    a nextToken, you can include the returned nextToken in subsequent
    GetUpgradeHistory operations, which returns results in the next page.
  """
  @spec get_upgrade_history(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_upgrade_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_upgrade_history_errors()}
  def get_upgrade_history(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/upgradeDomain/#{AWS.Util.encode_uri(domain_name)}/history"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the most recent status of the last upgrade or upgrade eligibility check
  performed on an Amazon OpenSearch Service domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20GetUpgradeStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The domain of the domain to get upgrade status
    information for.

  ## Optional parameters:
  """
  @spec get_upgrade_status(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_upgrade_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_upgrade_status_errors()}
  def get_upgrade_status(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/upgradeDomain/#{AWS.Util.encode_uri(domain_name)}/status"

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
  Lists direct-query data sources for a specific domain. For more information, see
  For more information, see [Working with Amazon OpenSearch Service direct
  queries with Amazon
  S3](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListDataSources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.

  ## Optional parameters:
  """
  @spec list_data_sources(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_data_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sources_errors()}
  def list_data_sources(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource"

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
  A list of maintenance actions for the domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListDomainMaintenances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.

  ## Optional parameters:
  * `:action` (`t:enum["REBOOT_NODE|RESTART_DASHBOARD|RESTART_SEARCH_PROCESS"]`)
    The name of the action.
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial ListDomainMaintenances operation
    returns a nextToken, include the returned nextToken in subsequent
    ListDomainMaintenances operations, which returns results in the next page.
  * `:status` (`t:enum["COMPLETED|FAILED|IN_PROGRESS|PENDING|TIMED_OUT"]`) The
    status of the action.
  """
  @spec list_domain_maintenances(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_domain_maintenances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domain_maintenances_errors()}
  def list_domain_maintenances(%Client{} = client, domain_name, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/domainMaintenances"

    # Validate optional parameters
    optional_params = [action: nil, max_results: nil, next_token: nil, status: nil]

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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

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
      if opt_val = Keyword.get(options, :action) do
        [{"action", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:action, :max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the names of all Amazon OpenSearch Service domains owned by the current
  user in the active Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListDomainNames&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:engine_type` (`t:enum["Elasticsearch|OpenSearch"]`) Filters the output by
    domain engine type.
  """
  @spec list_domain_names(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_domain_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domain_names_errors()}
  def list_domain_names(%Client{} = client, options \\ []) do
    url_path = "/2021-01-01/domain"

    # Validate optional parameters
    optional_params = [engine_type: nil]

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
      if opt_val = Keyword.get(options, :engine_type) do
        [{"engineType", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:engine_type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Amazon OpenSearch Service domains associated with a given package. For
  more information, see [Custom packages for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListDomainsForPackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:package_id` (`t:string`) The unique identifier of the package for which to
    list associated domains.

  ## Optional parameters:
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial ListDomainsForPackage operation
    returns a nextToken, you can include the returned nextToken in subsequent
    ListDomainsForPackage operations, which returns results in the next page.
  """
  @spec list_domains_for_package(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_domains_for_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_for_package_errors()}
  def list_domains_for_package(%Client{} = client, package_id, options \\ []) do
    url_path = "/2021-01-01/packages/#{AWS.Util.encode_uri(package_id)}/domains"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all instance types and available features for a given OpenSearch or
  Elasticsearch version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListInstanceTypeDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:engine_version` (`t:string`) The version of OpenSearch or Elasticsearch, in
    the format Elasticsearch_X.Y or OpenSearch_X.Y. Defaults to the latest
    version of OpenSearch.

  ## Optional parameters:
  * `:domain_name` (`t:string`) The name of the domain.
  * `:instance_type` (`t:string`) An optional parameter that lists information for
    a given instance type.
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial ListInstanceTypeDetails operation
    returns a nextToken, you can include the returned nextToken in subsequent
    ListInstanceTypeDetails operations, which returns results in the next page.
  * `:retrieve_a_zs` (`t:boolean`) An optional parameter that specifies the
    Availability Zones for the domain.
  """
  @spec list_instance_type_details(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_instance_type_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instance_type_details_errors()}
  def list_instance_type_details(%Client{} = client, engine_version, options \\ []) do
    url_path = "/2021-01-01/opensearch/instanceTypeDetails/#{AWS.Util.encode_uri(engine_version)}"

    # Validate optional parameters
    optional_params = [
      domain_name: nil,
      instance_type: nil,
      max_results: nil,
      next_token: nil,
      retrieve_a_zs: nil
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
      if opt_val = Keyword.get(options, :retrieve_a_zs) do
        [{"retrieveAZs", opt_val} | query_params]
      else
        query_params
      end

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
      if opt_val = Keyword.get(options, :instance_type) do
        [{"instanceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :domain_name) do
        [{"domainName", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:domain_name, :instance_type, :max_results, :next_token, :retrieve_a_zs])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all packages associated with an Amazon OpenSearch Service domain. For more
  information, see [Custom packages for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListPackagesForDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain for which you want to list
    associated packages.

  ## Optional parameters:
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial ListPackagesForDomain operation
    returns a nextToken, you can include the returned nextToken in subsequent
    ListPackagesForDomain operations, which returns results in the next page.
  """
  @spec list_packages_for_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_packages_for_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_packages_for_domain_errors()}
  def list_packages_for_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/domain/#{AWS.Util.encode_uri(domain_name)}/packages"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of configuration changes that are scheduled for a domain. These
  changes can be [service software
  updates](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html)
  or [blue/green Auto-Tune
  enhancements](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListScheduledActions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial ListScheduledActions operation
    returns a nextToken, you can include the returned nextToken in subsequent
    ListScheduledActions operations, which returns results in the next page.
  """
  @spec list_scheduled_actions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_scheduled_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_scheduled_actions_errors()}
  def list_scheduled_actions(%Client{} = client, domain_name, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/scheduledActions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns all resource tags for an Amazon OpenSearch Service domain. For more
  information, see [Tagging Amazon OpenSearch Service
  domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) Amazon Resource Name (ARN) for the domain to view tags
    for.

  ## Optional parameters:
  """
  @spec list_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, arn, options \\ []) do
    url_path = "/2021-01-01/tags"

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
    query_params = [{"arn", arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all versions of OpenSearch and Elasticsearch that Amazon OpenSearch
  Service supports.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListVersions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial ListVersions operation returns a
    nextToken, you can include the returned nextToken in subsequent ListVersions
    operations, which returns results in the next page.
  """
  @spec list_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_versions_errors()}
  def list_versions(%Client{} = client, options \\ []) do
    url_path = "/2021-01-01/opensearch/versions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about each Amazon Web Services principal that is allowed
  to access a given Amazon OpenSearch Service domain through the use of an
  interface VPC endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListVpcEndpointAccess&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the OpenSearch Service domain to
    retrieve access information for.

  ## Optional parameters:
  * `:next_token` (`t:string`) If your initial ListVpcEndpointAccess operation
    returns a nextToken, you can include the returned nextToken in subsequent
    ListVpcEndpointAccess operations, which returns results in the next page.
  """
  @spec list_vpc_endpoint_access(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_vpc_endpoint_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_endpoint_access_errors()}
  def list_vpc_endpoint_access(%Client{} = client, domain_name, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/listVpcEndpointAccess"

    # Validate optional parameters
    optional_params = [next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the current
  Amazon Web Services account and Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListVpcEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:next_token` (`t:string`) If your initial ListVpcEndpoints operation returns
    a nextToken, you can include the returned nextToken in subsequent
    ListVpcEndpoints operations, which returns results in the next page.
  """
  @spec list_vpc_endpoints(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_vpc_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_endpoints_errors()}
  def list_vpc_endpoints(%Client{} = client, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints"

    # Validate optional parameters
    optional_params = [next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a
  particular domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20ListVpcEndpointsForDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain to list associated VPC
    endpoints for.

  ## Optional parameters:
  * `:next_token` (`t:string`) If your initial ListEndpointsForDomain operation
    returns a nextToken, you can include the returned nextToken in subsequent
    ListEndpointsForDomain operations, which returns results in the next page.
  """
  @spec list_vpc_endpoints_for_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_vpc_endpoints_for_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_endpoints_for_domain_errors()}
  def list_vpc_endpoints_for_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/vpcEndpoints"

    # Validate optional parameters
    optional_params = [next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Allows you to purchase Amazon OpenSearch Service Reserved Instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20PurchaseReservedInstanceOffering&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec purchase_reserved_instance_offering(
          AWS.Client.t(),
          purchase_reserved_instance_offering_request(),
          Keyword.t()
        ) ::
          {:ok, purchase_reserved_instance_offering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, purchase_reserved_instance_offering_errors()}
  def purchase_reserved_instance_offering(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/purchaseReservedInstanceOffering"
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
  Allows the remote Amazon OpenSearch Service domain owner to reject an inbound
  cross-cluster connection request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20RejectInboundConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_id` (`t:string`) The unique identifier of the inbound connection
    to reject.

  ## Optional parameters:
  """
  @spec reject_inbound_connection(
          AWS.Client.t(),
          String.t(),
          reject_inbound_connection_request(),
          Keyword.t()
        ) ::
          {:ok, reject_inbound_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_inbound_connection_errors()}
  def reject_inbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/cc/inboundConnection/#{AWS.Util.encode_uri(connection_id)}/reject"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Removes the specified set of tags from an Amazon OpenSearch Service domain. For
  more information, see [ Tagging Amazon OpenSearch Service
  domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20RemoveTags&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec remove_tags(AWS.Client.t(), remove_tags_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_errors()}
  def remove_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/tags-removal"
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
  Revokes access to an Amazon OpenSearch Service domain that was provided through
  an interface VPC endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20RevokeVpcEndpointAccess&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the OpenSearch Service domain.

  ## Optional parameters:
  """
  @spec revoke_vpc_endpoint_access(
          AWS.Client.t(),
          String.t(),
          revoke_vpc_endpoint_access_request(),
          Keyword.t()
        ) ::
          {:ok, revoke_vpc_endpoint_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_vpc_endpoint_access_errors()}
  def revoke_vpc_endpoint_access(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/revokeVpcEndpointAccess"

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
  Starts the node maintenance process on the data node. These processes can
  include a node reboot, an Opensearch or Elasticsearch process restart, or a
  Dashboard or Kibana restart.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20StartDomainMaintenance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.

  ## Optional parameters:
  """
  @spec start_domain_maintenance(
          AWS.Client.t(),
          String.t(),
          start_domain_maintenance_request(),
          Keyword.t()
        ) ::
          {:ok, start_domain_maintenance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_domain_maintenance_errors()}
  def start_domain_maintenance(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/domainMaintenance"

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
  Schedules a service software update for an Amazon OpenSearch Service domain. For
  more information, see [Service software updates in Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20StartServiceSoftwareUpdate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec start_service_software_update(
          AWS.Client.t(),
          start_service_software_update_request(),
          Keyword.t()
        ) ::
          {:ok, start_service_software_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_service_software_update_errors()}
  def start_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/start"
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
  Updates a direct-query data source. For more information, see [Working with
  Amazon OpenSearch Service data source integrations with Amazon
  S3](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20UpdateDataSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain.
  * `:name` (`t:string`) The name of the data source to modify.

  ## Optional parameters:
  """
  @spec update_data_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_data_source_request(),
          Keyword.t()
        ) ::
          {:ok, update_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_source_errors()}
  def update_data_source(%Client{} = client, domain_name, name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modifies the cluster configuration of the specified Amazon OpenSearch Service
  domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20UpdateDomainConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain that you're updating.

  ## Optional parameters:
  """
  @spec update_domain_config(
          AWS.Client.t(),
          String.t(),
          update_domain_config_request(),
          Keyword.t()
        ) ::
          {:ok, update_domain_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_config_errors()}
  def update_domain_config(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/config"
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
  Updates a package for use with Amazon OpenSearch Service domains. For more
  information, see [Custom packages for Amazon OpenSearch
  Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20UpdatePackage&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_package(AWS.Client.t(), update_package_request(), Keyword.t()) ::
          {:ok, update_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_package_errors()}
  def update_package(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/packages/update"
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
  Reschedules a planned domain configuration change for a later time. This change
  can be a scheduled [service software
  update](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html)
  or a [blue/green Auto-Tune
  enhancement](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20UpdateScheduledAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the domain to reschedule an action
    for.

  ## Optional parameters:
  """
  @spec update_scheduled_action(
          AWS.Client.t(),
          String.t(),
          update_scheduled_action_request(),
          Keyword.t()
        ) ::
          {:ok, update_scheduled_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_scheduled_action_errors()}
  def update_scheduled_action(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/scheduledAction/update"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20UpdateVpcEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_vpc_endpoint(AWS.Client.t(), update_vpc_endpoint_request(), Keyword.t()) ::
          {:ok, update_vpc_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpc_endpoint_errors()}
  def update_vpc_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints/update"
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
  Allows you to either upgrade your Amazon OpenSearch Service domain or perform an
  upgrade eligibility check to a compatible version of OpenSearch or
  Elasticsearch.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearch%20UpgradeDomain&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec upgrade_domain(AWS.Client.t(), upgrade_domain_request(), Keyword.t()) ::
          {:ok, upgrade_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_domain_errors()}
  def upgrade_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/upgradeDomain"
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
end
