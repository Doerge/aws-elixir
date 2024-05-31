# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Elasticsearch do
  @moduledoc """
  Amazon Elasticsearch Configuration Service

  Use the Amazon Elasticsearch Configuration API to create, configure, and manage
  Elasticsearch domains.

  For sample code that uses the Configuration API, see the [Amazon Elasticsearch Service Developer
  Guide](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-configuration-samples.html).
  The guide also contains [sample code for sending signed HTTP requests to the Elasticsearch
  APIs](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-request-signing.html).

  The endpoint for configuration service requests is region-specific:
  es.*region*.amazonaws.com.
  For example, es.us-east-1.amazonaws.com. For a current list of supported regions
  and endpoints,
  see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      describe_elasticsearch_domain_request() :: %{}

  """
  @type describe_elasticsearch_domain_request() :: %{}

  @typedoc """

  ## Example:

      list_domain_names_request() :: %{
        optional("EngineType") => list(any())
      }

  """
  @type list_domain_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upgrade_elasticsearch_domain_response() :: %{
        "ChangeProgressDetails" => change_progress_details(),
        "DomainName" => String.t(),
        "PerformCheckOnly" => boolean(),
        "TargetVersion" => String.t()
      }

  """
  @type upgrade_elasticsearch_domain_response() :: %{String.t() => any()}

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
        "State" => list(any())
      }

  """
  @type auto_tune_options_output() :: %{String.t() => any()}

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

      get_compatible_elasticsearch_versions_response() :: %{
        "CompatibleElasticsearchVersions" => list(compatible_versions_map()())
      }

  """
  @type get_compatible_elasticsearch_versions_response() :: %{String.t() => any()}

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

      describe_elasticsearch_domains_request() :: %{
        required("DomainNames") => list(String.t()())
      }

  """
  @type describe_elasticsearch_domains_request() :: %{String.t() => any()}

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

      describe_outbound_cross_cluster_search_connections_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_outbound_cross_cluster_search_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorize_vpc_endpoint_access_response() :: %{
        "AuthorizedPrincipal" => authorized_principal()
      }

  """
  @type authorize_vpc_endpoint_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      elasticsearch_cluster_config_status() :: %{
        "Options" => elasticsearch_cluster_config(),
        "Status" => option_status()
      }

  """
  @type elasticsearch_cluster_config_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_details() :: %{
        "AvailablePackageVersion" => String.t(),
        "CreatedAt" => non_neg_integer(),
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

      elasticsearch_cluster_config() :: %{
        "ColdStorageOptions" => cold_storage_options(),
        "DedicatedMasterCount" => integer(),
        "DedicatedMasterEnabled" => boolean(),
        "DedicatedMasterType" => list(any()),
        "InstanceCount" => integer(),
        "InstanceType" => list(any()),
        "WarmCount" => integer(),
        "WarmEnabled" => boolean(),
        "WarmType" => list(any()),
        "ZoneAwarenessConfig" => zone_awareness_config(),
        "ZoneAwarenessEnabled" => boolean()
      }

  """
  @type elasticsearch_cluster_config() :: %{String.t() => any()}

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

      purchase_reserved_elasticsearch_instance_offering_request() :: %{
        optional("InstanceCount") => integer(),
        required("ReservationName") => String.t(),
        required("ReservedElasticsearchInstanceOfferingId") => String.t()
      }

  """
  @type purchase_reserved_elasticsearch_instance_offering_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_inbound_cross_cluster_search_connection_request() :: %{}

  """
  @type accept_inbound_cross_cluster_search_connection_request() :: %{}

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

      list_vpc_endpoints_response() :: %{
        "NextToken" => String.t(),
        "VpcEndpointSummaryList" => list(vpc_endpoint_summary()())
      }

  """
  @type list_vpc_endpoints_response() :: %{String.t() => any()}

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

      describe_reserved_elasticsearch_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ReservedElasticsearchInstanceId") => String.t()
      }

  """
  @type describe_reserved_elasticsearch_instances_request() :: %{String.t() => any()}

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

      describe_elasticsearch_instance_type_limits_response() :: %{
        "LimitsByRole" => map()
      }

  """
  @type describe_elasticsearch_instance_type_limits_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_response() :: %{
        "TagList" => list(tag()())
      }

  """
  @type list_tags_response() :: %{String.t() => any()}

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

      create_outbound_cross_cluster_search_connection_response() :: %{
        "ConnectionAlias" => String.t(),
        "ConnectionStatus" => outbound_cross_cluster_search_connection_status(),
        "CrossClusterSearchConnectionId" => String.t(),
        "DestinationDomainInfo" => domain_information(),
        "SourceDomainInfo" => domain_information()
      }

  """
  @type create_outbound_cross_cluster_search_connection_response() :: %{String.t() => any()}

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

      delete_elasticsearch_domain_request() :: %{}

  """
  @type delete_elasticsearch_domain_request() :: %{}

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

      create_elasticsearch_domain_request() :: %{
        optional("AccessPolicies") => String.t(),
        optional("AdvancedOptions") => map(),
        optional("AdvancedSecurityOptions") => advanced_security_options_input(),
        optional("AutoTuneOptions") => auto_tune_options_input(),
        optional("CognitoOptions") => cognito_options(),
        optional("DomainEndpointOptions") => domain_endpoint_options(),
        optional("EBSOptions") => ebs_options(),
        optional("ElasticsearchClusterConfig") => elasticsearch_cluster_config(),
        optional("ElasticsearchVersion") => String.t(),
        optional("EncryptionAtRestOptions") => encryption_at_rest_options(),
        optional("LogPublishingOptions") => map(),
        optional("NodeToNodeEncryptionOptions") => node_to_node_encryption_options(),
        optional("SnapshotOptions") => snapshot_options(),
        optional("TagList") => list(tag()()),
        optional("VPCOptions") => vpc_options(),
        required("DomainName") => String.t()
      }

  """
  @type create_elasticsearch_domain_request() :: %{String.t() => any()}

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

      vpc_derived_info_status() :: %{
        "Options" => vpc_derived_info(),
        "Status" => option_status()
      }

  """
  @type vpc_derived_info_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inbound_cross_cluster_search_connection_status() :: %{
        "Message" => String.t(),
        "StatusCode" => list(any())
      }

  """
  @type inbound_cross_cluster_search_connection_status() :: %{String.t() => any()}

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

      describe_inbound_cross_cluster_search_connections_response() :: %{
        "CrossClusterSearchConnections" => list(inbound_cross_cluster_search_connection()()),
        "NextToken" => String.t()
      }

  """
  @type describe_inbound_cross_cluster_search_connections_response() :: %{String.t() => any()}

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

      describe_elasticsearch_domain_config_response() :: %{
        "DomainConfig" => elasticsearch_domain_config()
      }

  """
  @type describe_elasticsearch_domain_config_response() :: %{String.t() => any()}

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

      describe_reserved_elasticsearch_instance_offerings_response() :: %{
        "NextToken" => String.t(),
        "ReservedElasticsearchInstanceOfferings" => list(reserved_elasticsearch_instance_offering()())
      }

  """
  @type describe_reserved_elasticsearch_instance_offerings_response() :: %{String.t() => any()}

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

      list_elasticsearch_instance_types_request() :: %{
        optional("DomainName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_elasticsearch_instance_types_request() :: %{String.t() => any()}

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
        optional("DeploymentType") => String.t(),
        optional("Message") => String.t()
      }

  """
  @type dry_run_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      advanced_security_options() :: %{
        "AnonymousAuthDisableDate" => non_neg_integer(),
        "AnonymousAuthEnabled" => boolean(),
        "Enabled" => boolean(),
        "InternalUserDatabaseEnabled" => boolean(),
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

      reject_inbound_cross_cluster_search_connection_request() :: %{}

  """
  @type reject_inbound_cross_cluster_search_connection_request() :: %{}

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

      delete_inbound_cross_cluster_search_connection_response() :: %{
        "CrossClusterSearchConnection" => inbound_cross_cluster_search_connection()
      }

  """
  @type delete_inbound_cross_cluster_search_connection_response() :: %{String.t() => any()}

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

      describe_elasticsearch_instance_type_limits_request() :: %{
        optional("DomainName") => String.t()
      }

  """
  @type describe_elasticsearch_instance_type_limits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_elasticsearch_domain_response() :: %{
        "DomainStatus" => elasticsearch_domain_status()
      }

  """
  @type create_elasticsearch_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_elasticsearch_domain_response() :: %{
        "DomainStatus" => elasticsearch_domain_status()
      }

  """
  @type describe_elasticsearch_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_elasticsearch_domain_response() :: %{
        "DomainStatus" => elasticsearch_domain_status()
      }

  """
  @type delete_elasticsearch_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_elasticsearch_service_software_update_request() :: %{
        required("DomainName") => String.t()
      }

  """
  @type cancel_elasticsearch_service_software_update_request() :: %{String.t() => any()}

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

      start_elasticsearch_service_software_update_request() :: %{
        required("DomainName") => String.t()
      }

  """
  @type start_elasticsearch_service_software_update_request() :: %{String.t() => any()}

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

      update_elasticsearch_domain_config_request() :: %{
        optional("AccessPolicies") => String.t(),
        optional("AdvancedOptions") => map(),
        optional("AdvancedSecurityOptions") => advanced_security_options_input(),
        optional("AutoTuneOptions") => auto_tune_options(),
        optional("CognitoOptions") => cognito_options(),
        optional("DomainEndpointOptions") => domain_endpoint_options(),
        optional("DryRun") => boolean(),
        optional("EBSOptions") => ebs_options(),
        optional("ElasticsearchClusterConfig") => elasticsearch_cluster_config(),
        optional("EncryptionAtRestOptions") => encryption_at_rest_options(),
        optional("LogPublishingOptions") => map(),
        optional("NodeToNodeEncryptionOptions") => node_to_node_encryption_options(),
        optional("SnapshotOptions") => snapshot_options(),
        optional("VPCOptions") => vpc_options()
      }

  """
  @type update_elasticsearch_domain_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vpc_endpoint_response() :: %{
        "VpcEndpoint" => vpc_endpoint()
      }

  """
  @type update_vpc_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_details() :: %{
        optional("ErrorMessage") => String.t(),
        optional("ErrorType") => String.t()
      }

  """
  @type error_details() :: %{String.t() => any()}

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

      reserved_elasticsearch_instance() :: %{
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "ElasticsearchInstanceCount" => integer(),
        "ElasticsearchInstanceType" => list(any()),
        "FixedPrice" => float(),
        "PaymentOption" => list(any()),
        "RecurringCharges" => list(recurring_charge()()),
        "ReservationName" => String.t(),
        "ReservedElasticsearchInstanceId" => String.t(),
        "ReservedElasticsearchInstanceOfferingId" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => String.t(),
        "UsagePrice" => float()
      }

  """
  @type reserved_elasticsearch_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_package_request() :: %{}

  """
  @type associate_package_request() :: %{}

  @typedoc """

  ## Example:

      elasticsearch_domain_config() :: %{
        "AccessPolicies" => access_policies_status(),
        "AdvancedOptions" => advanced_options_status(),
        "AdvancedSecurityOptions" => advanced_security_options_status(),
        "AutoTuneOptions" => auto_tune_options_status(),
        "ChangeProgressDetails" => change_progress_details(),
        "CognitoOptions" => cognito_options_status(),
        "DomainEndpointOptions" => domain_endpoint_options_status(),
        "EBSOptions" => ebs_options_status(),
        "ElasticsearchClusterConfig" => elasticsearch_cluster_config_status(),
        "ElasticsearchVersion" => elasticsearch_version_status(),
        "EncryptionAtRestOptions" => encryption_at_rest_options_status(),
        "LogPublishingOptions" => log_publishing_options_status(),
        "ModifyingProperties" => list(modifying_properties()()),
        "NodeToNodeEncryptionOptions" => node_to_node_encryption_options_status(),
        "SnapshotOptions" => snapshot_options_status(),
        "VPCOptions" => vpc_derived_info_status()
      }

  """
  @type elasticsearch_domain_config() :: %{String.t() => any()}

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

      dissociate_package_request() :: %{}

  """
  @type dissociate_package_request() :: %{}

  @typedoc """

  ## Example:

      describe_outbound_cross_cluster_search_connections_response() :: %{
        "CrossClusterSearchConnections" => list(outbound_cross_cluster_search_connection()()),
        "NextToken" => String.t()
      }

  """
  @type describe_outbound_cross_cluster_search_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_outbound_cross_cluster_search_connection_request() :: %{}

  """
  @type delete_outbound_cross_cluster_search_connection_request() :: %{}

  @typedoc """

  ## Example:

      start_elasticsearch_service_software_update_response() :: %{
        "ServiceSoftwareOptions" => service_software_options()
      }

  """
  @type start_elasticsearch_service_software_update_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_elasticsearch_service_software_update_response() :: %{
        "ServiceSoftwareOptions" => service_software_options()
      }

  """
  @type cancel_elasticsearch_service_software_update_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_information() :: %{
        optional("OwnerId") => String.t(),
        optional("Region") => String.t(),
        required("DomainName") => String.t()
      }

  """
  @type domain_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      advanced_security_options_input() :: %{
        "AnonymousAuthEnabled" => boolean(),
        "Enabled" => boolean(),
        "InternalUserDatabaseEnabled" => boolean(),
        "MasterUserOptions" => master_user_options(),
        "SAMLOptions" => saml_options_input()
      }

  """
  @type advanced_security_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_info() :: %{
        optional("DomainName") => String.t(),
        optional("EngineType") => list(any())
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
        "MaintenanceSchedules" => list(auto_tune_maintenance_schedule()())
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

      delete_package_request() :: %{}

  """
  @type delete_package_request() :: %{}

  @typedoc """

  ## Example:

      describe_reserved_elasticsearch_instance_offerings_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ReservedElasticsearchInstanceOfferingId") => String.t()
      }

  """
  @type describe_reserved_elasticsearch_instance_offerings_request() :: %{String.t() => any()}

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

      get_compatible_elasticsearch_versions_request() :: %{
        optional("DomainName") => String.t()
      }

  """
  @type get_compatible_elasticsearch_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upgrade_elasticsearch_domain_request() :: %{
        optional("PerformCheckOnly") => boolean(),
        required("DomainName") => String.t(),
        required("TargetVersion") => String.t()
      }

  """
  @type upgrade_elasticsearch_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_elasticsearch_domain_config_request() :: %{}

  """
  @type describe_elasticsearch_domain_config_request() :: %{}

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

      purchase_reserved_elasticsearch_instance_offering_response() :: %{
        "ReservationName" => String.t(),
        "ReservedElasticsearchInstanceId" => String.t()
      }

  """
  @type purchase_reserved_elasticsearch_instance_offering_response() :: %{String.t() => any()}

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

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_outbound_cross_cluster_search_connection_response() :: %{
        "CrossClusterSearchConnection" => outbound_cross_cluster_search_connection()
      }

  """
  @type delete_outbound_cross_cluster_search_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_tune_options() :: %{
        "DesiredState" => list(any()),
        "MaintenanceSchedules" => list(auto_tune_maintenance_schedule()()),
        "RollbackOnDisable" => list(any())
      }

  """
  @type auto_tune_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      elasticsearch_domain_status() :: %{
        "ARN" => String.t(),
        "AccessPolicies" => String.t(),
        "AdvancedOptions" => map(),
        "AdvancedSecurityOptions" => advanced_security_options(),
        "AutoTuneOptions" => auto_tune_options_output(),
        "ChangeProgressDetails" => change_progress_details(),
        "CognitoOptions" => cognito_options(),
        "Created" => boolean(),
        "Deleted" => boolean(),
        "DomainEndpointOptions" => domain_endpoint_options(),
        "DomainId" => String.t(),
        "DomainName" => String.t(),
        "DomainProcessingStatus" => list(any()),
        "EBSOptions" => ebs_options(),
        "ElasticsearchClusterConfig" => elasticsearch_cluster_config(),
        "ElasticsearchVersion" => String.t(),
        "EncryptionAtRestOptions" => encryption_at_rest_options(),
        "Endpoint" => String.t(),
        "Endpoints" => map(),
        "LogPublishingOptions" => map(),
        "ModifyingProperties" => list(modifying_properties()()),
        "NodeToNodeEncryptionOptions" => node_to_node_encryption_options(),
        "Processing" => boolean(),
        "ServiceSoftwareOptions" => service_software_options(),
        "SnapshotOptions" => snapshot_options(),
        "UpgradeProcessing" => boolean(),
        "VPCOptions" => vpc_derived_info()
      }

  """
  @type elasticsearch_domain_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_upgrade_status_request() :: %{}

  """
  @type get_upgrade_status_request() :: %{}

  @typedoc """

  ## Example:

      delete_vpc_endpoint_request() :: %{}

  """
  @type delete_vpc_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      inbound_cross_cluster_search_connection() :: %{
        "ConnectionStatus" => inbound_cross_cluster_search_connection_status(),
        "CrossClusterSearchConnectionId" => String.t(),
        "DestinationDomainInfo" => domain_information(),
        "SourceDomainInfo" => domain_information()
      }

  """
  @type inbound_cross_cluster_search_connection() :: %{String.t() => any()}

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

      revoke_vpc_endpoint_access_request() :: %{
        required("Account") => String.t()
      }

  """
  @type revoke_vpc_endpoint_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      elasticsearch_version_status() :: %{
        "Options" => String.t(),
        "Status" => option_status()
      }

  """
  @type elasticsearch_version_status() :: %{String.t() => any()}

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

      outbound_cross_cluster_search_connection_status() :: %{
        "Message" => String.t(),
        "StatusCode" => list(any())
      }

  """
  @type outbound_cross_cluster_search_connection_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_inbound_cross_cluster_search_connections_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_inbound_cross_cluster_search_connections_request() :: %{String.t() => any()}

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

      package_version_history() :: %{
        "CommitMessage" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "PackageVersion" => String.t()
      }

  """
  @type package_version_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_elasticsearch_versions_response() :: %{
        "ElasticsearchVersions" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_elasticsearch_versions_response() :: %{String.t() => any()}

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

      list_tags_request() :: %{
        required("ARN") => String.t()
      }

  """
  @type list_tags_request() :: %{String.t() => any()}

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

      describe_packages_request() :: %{
        optional("Filters") => list(describe_packages_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_outbound_cross_cluster_search_connection_request() :: %{
        required("ConnectionAlias") => String.t(),
        required("DestinationDomainInfo") => domain_information(),
        required("SourceDomainInfo") => domain_information()
      }

  """
  @type create_outbound_cross_cluster_search_connection_request() :: %{String.t() => any()}

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

      outbound_cross_cluster_search_connection() :: %{
        "ConnectionAlias" => String.t(),
        "ConnectionStatus" => outbound_cross_cluster_search_connection_status(),
        "CrossClusterSearchConnectionId" => String.t(),
        "DestinationDomainInfo" => domain_information(),
        "SourceDomainInfo" => domain_information()
      }

  """
  @type outbound_cross_cluster_search_connection() :: %{String.t() => any()}

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

      accept_inbound_cross_cluster_search_connection_response() :: %{
        "CrossClusterSearchConnection" => inbound_cross_cluster_search_connection()
      }

  """
  @type accept_inbound_cross_cluster_search_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_elasticsearch_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_elasticsearch_versions_request() :: %{String.t() => any()}

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

      describe_reserved_elasticsearch_instances_response() :: %{
        "NextToken" => String.t(),
        "ReservedElasticsearchInstances" => list(reserved_elasticsearch_instance()())
      }

  """
  @type describe_reserved_elasticsearch_instances_response() :: %{String.t() => any()}

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

      update_elasticsearch_domain_config_response() :: %{
        "DomainConfig" => elasticsearch_domain_config(),
        "DryRunResults" => dry_run_results()
      }

  """
  @type update_elasticsearch_domain_config_response() :: %{String.t() => any()}

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

      describe_elasticsearch_domains_response() :: %{
        "DomainStatusList" => list(elasticsearch_domain_status()())
      }

  """
  @type describe_elasticsearch_domains_response() :: %{String.t() => any()}

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

      list_elasticsearch_instance_types_response() :: %{
        "ElasticsearchInstanceTypes" => list(list(any())()),
        "NextToken" => String.t()
      }

  """
  @type list_elasticsearch_instance_types_response() :: %{String.t() => any()}

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

      revoke_vpc_endpoint_access_response() :: %{}

  """
  @type revoke_vpc_endpoint_access_response() :: %{}

  @typedoc """

  ## Example:

      delete_inbound_cross_cluster_search_connection_request() :: %{}

  """
  @type delete_inbound_cross_cluster_search_connection_request() :: %{}

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

      reserved_elasticsearch_instance_offering() :: %{
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "ElasticsearchInstanceType" => list(any()),
        "FixedPrice" => float(),
        "PaymentOption" => list(any()),
        "RecurringCharges" => list(recurring_charge()()),
        "ReservedElasticsearchInstanceOfferingId" => String.t(),
        "UsagePrice" => float()
      }

  """
  @type reserved_elasticsearch_instance_offering() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      master_user_options() :: %{
        "MasterUserARN" => String.t(),
        "MasterUserName" => String.t(),
        "MasterUserPassword" => String.t()
      }

  """
  @type master_user_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_inbound_cross_cluster_search_connection_response() :: %{
        "CrossClusterSearchConnection" => inbound_cross_cluster_search_connection()
      }

  """
  @type reject_inbound_cross_cluster_search_connection_response() :: %{String.t() => any()}

  @type accept_inbound_cross_cluster_search_connection_errors() ::
          limit_exceeded_exception()
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

  @type cancel_elasticsearch_service_software_update_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type create_elasticsearch_domain_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | disabled_operation_exception()

  @type create_outbound_cross_cluster_search_connection_errors() ::
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

  @type delete_elasticsearch_domain_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type delete_elasticsearch_service_role_errors() ::
          base_exception() | validation_exception() | internal_exception()

  @type delete_inbound_cross_cluster_search_connection_errors() ::
          resource_not_found_exception() | disabled_operation_exception()

  @type delete_outbound_cross_cluster_search_connection_errors() ::
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

  @type describe_elasticsearch_domain_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type describe_elasticsearch_domain_config_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type describe_elasticsearch_domains_errors() ::
          base_exception() | validation_exception() | internal_exception()

  @type describe_elasticsearch_instance_type_limits_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type describe_inbound_cross_cluster_search_connections_errors() ::
          invalid_pagination_token_exception() | disabled_operation_exception()

  @type describe_outbound_cross_cluster_search_connections_errors() ::
          invalid_pagination_token_exception() | disabled_operation_exception()

  @type describe_packages_errors() ::
          base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type describe_reserved_elasticsearch_instance_offerings_errors() ::
          validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type describe_reserved_elasticsearch_instances_errors() ::
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

  @type get_compatible_elasticsearch_versions_errors() ::
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

  @type list_domain_names_errors() :: base_exception() | validation_exception()

  @type list_domains_for_package_errors() ::
          base_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type list_elasticsearch_instance_types_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type list_elasticsearch_versions_errors() ::
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

  @type list_tags_errors() ::
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

  @type purchase_reserved_elasticsearch_instance_offering_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type reject_inbound_cross_cluster_search_connection_errors() ::
          resource_not_found_exception() | disabled_operation_exception()

  @type remove_tags_errors() :: base_exception() | validation_exception() | internal_exception()

  @type revoke_vpc_endpoint_access_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type start_elasticsearch_service_software_update_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type update_elasticsearch_domain_config_errors() ::
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

  @type update_vpc_endpoint_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type upgrade_elasticsearch_domain_errors() ::
          resource_already_exists_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  def metadata do
    %{
      api_version: "2015-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "es",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Elasticsearch Service",
      signature_version: "v4",
      signing_name: "es",
      target_prefix: nil
    }
  end

  @doc """
  Allows the destination domain owner to accept an inbound cross-cluster search
  connection request.

  ## Required positional parameters:
   • :cross_cluster_search_connection_id (t:string String.t/0) (CrossClusterSearchConnectionId)

  ## Optional parameters:
  """
  @spec accept_inbound_cross_cluster_search_connection(
          AWS.Client.t(),
          String.t(),
          accept_inbound_cross_cluster_search_connection_request(),
          Keyword.t()
        ) ::
          {:ok, accept_inbound_cross_cluster_search_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_inbound_cross_cluster_search_connection_errors()}
  def accept_inbound_cross_cluster_search_connection(
        %Client{} = client,
        cross_cluster_search_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/ccs/inboundConnection/#{AWS.Util.encode_uri(cross_cluster_search_connection_id)}/accept"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attaches tags to an existing Elasticsearch domain.

  Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may
  have up to 10 tags. See [
  Tagging Amazon Elasticsearch Service Domains for more
  information.](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging)

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec add_tags(AWS.Client.t(), add_tags_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_errors()}
  def add_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/tags"
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
  Associates a package with an Amazon ES domain.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)
   • :package_id (t:string String.t/0) (PackageID)

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
      "/2015-01-01/packages/associate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

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

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

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
      "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/authorizeVpcEndpointAccess"

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

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

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
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/config/cancel"
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
  Cancels a scheduled service software update for an Amazon ES domain.

  You can only perform this operation before the `AutomatedUpdateDate` and when
  the `UpdateStatus` is in the `PENDING_UPDATE` state.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec cancel_elasticsearch_service_software_update(
          AWS.Client.t(),
          cancel_elasticsearch_service_software_update_request(),
          Keyword.t()
        ) ::
          {:ok, cancel_elasticsearch_service_software_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_elasticsearch_service_software_update_errors()}
  def cancel_elasticsearch_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/serviceSoftwareUpdate/cancel"
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
  Creates a new Elasticsearch domain.

  For more information,
  see [Creating Elasticsearch Domains](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains)
  in the *Amazon Elasticsearch Service Developer Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_elasticsearch_domain(
          AWS.Client.t(),
          create_elasticsearch_domain_request(),
          Keyword.t()
        ) ::
          {:ok, create_elasticsearch_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_elasticsearch_domain_errors()}
  def create_elasticsearch_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/domain"
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
  Creates a new cross-cluster search connection from a source domain to a
  destination domain.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_outbound_cross_cluster_search_connection(
          AWS.Client.t(),
          create_outbound_cross_cluster_search_connection_request(),
          Keyword.t()
        ) ::
          {:ok, create_outbound_cross_cluster_search_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_outbound_cross_cluster_search_connection_errors()}
  def create_outbound_cross_cluster_search_connection(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/ccs/outboundConnection"
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
  Create a package for use with Amazon ES domains.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_package(AWS.Client.t(), create_package_request(), Keyword.t()) ::
          {:ok, create_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_package_errors()}
  def create_package(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/packages"
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

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_vpc_endpoint(AWS.Client.t(), create_vpc_endpoint_request(), Keyword.t()) ::
          {:ok, create_vpc_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_endpoint_errors()}
  def create_vpc_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/vpcEndpoints"
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
  Permanently deletes the specified Elasticsearch domain and all of its data.

  Once a domain is deleted, it cannot be recovered.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
  """
  @spec delete_elasticsearch_domain(
          AWS.Client.t(),
          String.t(),
          delete_elasticsearch_domain_request(),
          Keyword.t()
        ) ::
          {:ok, delete_elasticsearch_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_elasticsearch_domain_errors()}
  def delete_elasticsearch_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}"
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
  Deletes the service-linked role that Elasticsearch Service uses to manage and
  maintain VPC domains.

  Role deletion will fail if any existing VPC domains use the role. You must
  delete any such Elasticsearch domains before deleting the role. See [Deleting Elasticsearch Service
  Role](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr)
  in *VPC Endpoints for Amazon Elasticsearch Service Domains*.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec delete_elasticsearch_service_role(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_elasticsearch_service_role_errors()}
  def delete_elasticsearch_service_role(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/role"
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
  Allows the destination domain owner to delete an existing inbound cross-cluster
  search connection.

  ## Required positional parameters:
   • :cross_cluster_search_connection_id (t:string String.t/0) (CrossClusterSearchConnectionId)

  ## Optional parameters:
  """
  @spec delete_inbound_cross_cluster_search_connection(
          AWS.Client.t(),
          String.t(),
          delete_inbound_cross_cluster_search_connection_request(),
          Keyword.t()
        ) ::
          {:ok, delete_inbound_cross_cluster_search_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_inbound_cross_cluster_search_connection_errors()}
  def delete_inbound_cross_cluster_search_connection(
        %Client{} = client,
        cross_cluster_search_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/ccs/inboundConnection/#{AWS.Util.encode_uri(cross_cluster_search_connection_id)}"

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
  Allows the source domain owner to delete an existing outbound cross-cluster
  search connection.

  ## Required positional parameters:
   • :cross_cluster_search_connection_id (t:string String.t/0) (CrossClusterSearchConnectionId)

  ## Optional parameters:
  """
  @spec delete_outbound_cross_cluster_search_connection(
          AWS.Client.t(),
          String.t(),
          delete_outbound_cross_cluster_search_connection_request(),
          Keyword.t()
        ) ::
          {:ok, delete_outbound_cross_cluster_search_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_outbound_cross_cluster_search_connection_errors()}
  def delete_outbound_cross_cluster_search_connection(
        %Client{} = client,
        cross_cluster_search_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/ccs/outboundConnection/#{AWS.Util.encode_uri(cross_cluster_search_connection_id)}"

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
  Delete the package.

  ## Required positional parameters:
   • :package_id (t:string String.t/0) (PackageID)

  ## Optional parameters:
  """
  @spec delete_package(AWS.Client.t(), String.t(), delete_package_request(), Keyword.t()) ::
          {:ok, delete_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_package_errors()}
  def delete_package(%Client{} = client, package_id, input, options \\ []) do
    url_path = "/2015-01-01/packages/#{AWS.Util.encode_uri(package_id)}"
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

  ## Required positional parameters:
   • :vpc_endpoint_id (t:string String.t/0) (VpcEndpointId)

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
    url_path = "/2015-01-01/es/vpcEndpoints/#{AWS.Util.encode_uri(vpc_endpoint_id)}"
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
  Provides scheduled Auto-Tune action details for the Elasticsearch domain, such
  as Auto-Tune action type, description, severity, and scheduled date.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
  """
  @spec describe_domain_auto_tunes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_domain_auto_tunes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_auto_tunes_errors()}
  def describe_domain_auto_tunes(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/autoTunes"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the current blue/green deployment happening on a
  domain, including
  a change ID, status, and progress stages.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
   • :change_id (t:String.t/0) (changeid)
  """
  @spec describe_domain_change_progress(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_domain_change_progress_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_change_progress_errors()}
  def describe_domain_change_progress(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/progress"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [change_id: nil
    # ])

    headers = []
    query_params = []

    {change_id, options} = Keyword.pop(options, :change_id, nil)

    query_params =
      if !is_nil(change_id) do
        [{"changeid", change_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns domain configuration information about the specified Elasticsearch
  domain, including the domain ID, domain endpoint, and domain ARN.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
  """
  @spec describe_elasticsearch_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_elasticsearch_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_elasticsearch_domain_errors()}
  def describe_elasticsearch_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides cluster configuration information about the specified Elasticsearch
  domain, such as the state, creation date, update version, and update date for
  cluster options.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
  """
  @spec describe_elasticsearch_domain_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_elasticsearch_domain_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_elasticsearch_domain_config_errors()}
  def describe_elasticsearch_domain_config(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/config"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns domain configuration information about the specified Elasticsearch
  domains, including the domain ID, domain endpoint, and domain ARN.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec describe_elasticsearch_domains(
          AWS.Client.t(),
          describe_elasticsearch_domains_request(),
          Keyword.t()
        ) ::
          {:ok, describe_elasticsearch_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_elasticsearch_domains_errors()}
  def describe_elasticsearch_domains(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/domain-info"
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

  Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion.

  When modifying existing Domain, specify the

  ```

  `DomainName`

  ```

  to know what Limits are supported for modifying.

  ## Required positional parameters:
   • :elasticsearch_version (t:string String.t/0) (ElasticsearchVersion)
   • :instance_type (t:enum String.t/0) (InstanceType)

  ## Optional parameters:
   • :domain_name (t:String.t/0) (domainName)
  """
  @spec describe_elasticsearch_instance_type_limits(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, describe_elasticsearch_instance_type_limits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_elasticsearch_instance_type_limits_errors()}
  def describe_elasticsearch_instance_type_limits(
        %Client{} = client,
        elasticsearch_version,
        instance_type,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/instanceTypeLimits/#{AWS.Util.encode_uri(elasticsearch_version)}/#{AWS.Util.encode_uri(instance_type)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain_name: nil
    # ])

    headers = []
    query_params = []

    {domain_name, options} = Keyword.pop(options, :domain_name, nil)

    query_params =
      if !is_nil(domain_name) do
        [{"domainName", domain_name} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the inbound cross-cluster search connections for a destination domain.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec describe_inbound_cross_cluster_search_connections(
          AWS.Client.t(),
          describe_inbound_cross_cluster_search_connections_request(),
          Keyword.t()
        ) ::
          {:ok, describe_inbound_cross_cluster_search_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_inbound_cross_cluster_search_connections_errors()}
  def describe_inbound_cross_cluster_search_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/ccs/inboundConnection/search"
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
  Lists all the outbound cross-cluster search connections for a source domain.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec describe_outbound_cross_cluster_search_connections(
          AWS.Client.t(),
          describe_outbound_cross_cluster_search_connections_request(),
          Keyword.t()
        ) ::
          {:ok, describe_outbound_cross_cluster_search_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_outbound_cross_cluster_search_connections_errors()}
  def describe_outbound_cross_cluster_search_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/ccs/outboundConnection/search"
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
  Describes all packages available to Amazon ES.

  Includes options for filtering, limiting the number of results, and pagination.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec describe_packages(AWS.Client.t(), describe_packages_request(), Keyword.t()) ::
          {:ok, describe_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_packages_errors()}
  def describe_packages(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/packages/describe"
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
  Lists available reserved Elasticsearch instance offerings.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :reserved_elasticsearch_instance_offering_id (t:String.t/0) (offeringId)
  """
  @spec describe_reserved_elasticsearch_instance_offerings(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_reserved_elasticsearch_instance_offerings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_reserved_elasticsearch_instance_offerings_errors()}
  def describe_reserved_elasticsearch_instance_offerings(%Client{} = client, options \\ []) do
    url_path = "/2015-01-01/es/reservedInstanceOfferings"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, reserved_elasticsearch_instance_offering_id: nil
    # ])

    headers = []
    query_params = []

    {reserved_elasticsearch_instance_offering_id, options} =
      Keyword.pop(options, :reserved_elasticsearch_instance_offering_id, nil)

    query_params =
      if !is_nil(reserved_elasticsearch_instance_offering_id) do
        [{"offeringId", reserved_elasticsearch_instance_offering_id} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about reserved Elasticsearch instances for this account.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :reserved_elasticsearch_instance_id (t:String.t/0) (reservationId)
  """
  @spec describe_reserved_elasticsearch_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_reserved_elasticsearch_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_reserved_elasticsearch_instances_errors()}
  def describe_reserved_elasticsearch_instances(%Client{} = client, options \\ []) do
    url_path = "/2015-01-01/es/reservedInstances"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, reserved_elasticsearch_instance_id: nil
    # ])

    headers = []
    query_params = []

    {reserved_elasticsearch_instance_id, options} =
      Keyword.pop(options, :reserved_elasticsearch_instance_id, nil)

    query_params =
      if !is_nil(reserved_elasticsearch_instance_id) do
        [{"reservationId", reserved_elasticsearch_instance_id} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes one or more Amazon OpenSearch Service-managed VPC endpoints.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec describe_vpc_endpoints(AWS.Client.t(), describe_vpc_endpoints_request(), Keyword.t()) ::
          {:ok, describe_vpc_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_vpc_endpoints_errors()}
  def describe_vpc_endpoints(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/vpcEndpoints/describe"
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
  Dissociates a package from the Amazon ES domain.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)
   • :package_id (t:string String.t/0) (PackageID)

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
      "/2015-01-01/packages/dissociate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

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

  Returns a list of upgrade compatible Elastisearch versions.

  You can optionally pass a

  ```

  `DomainName`

  ```

  to get all upgrade compatible Elasticsearch versions for that specific domain.

  ## Required positional parameters:

  ## Optional parameters:
   • :domain_name (t:String.t/0) (domainName)
  """
  @spec get_compatible_elasticsearch_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_compatible_elasticsearch_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compatible_elasticsearch_versions_errors()}
  def get_compatible_elasticsearch_versions(%Client{} = client, options \\ []) do
    url_path = "/2015-01-01/es/compatibleVersions"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain_name: nil
    # ])

    headers = []
    query_params = []

    {domain_name, options} = Keyword.pop(options, :domain_name, nil)

    query_params =
      if !is_nil(domain_name) do
        [{"domainName", domain_name} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of versions of the package, along with their creation time and
  commit message.

  ## Required positional parameters:
   • :package_id (t:string String.t/0) (PackageID)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec get_package_version_history(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_package_version_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_package_version_history_errors()}
  def get_package_version_history(%Client{} = client, package_id, options \\ []) do
    url_path = "/2015-01-01/packages/#{AWS.Util.encode_uri(package_id)}/history"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the complete history of the last 10 upgrades that were performed on
  the domain.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec get_upgrade_history(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_upgrade_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_upgrade_history_errors()}
  def get_upgrade_history(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/upgradeDomain/#{AWS.Util.encode_uri(domain_name)}/history"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the latest status of the last upgrade or upgrade eligibility check
  that was performed on the domain.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
  """
  @spec get_upgrade_status(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_upgrade_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_upgrade_status_errors()}
  def get_upgrade_status(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/upgradeDomain/#{AWS.Util.encode_uri(domain_name)}/status"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the name of all Elasticsearch domains owned by the current user's
  account.

  ## Required positional parameters:

  ## Optional parameters:
   • :engine_type (t:String.t/0) (engineType)
  """
  @spec list_domain_names(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_domain_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domain_names_errors()}
  def list_domain_names(%Client{} = client, options \\ []) do
    url_path = "/2015-01-01/domain"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [engine_type: nil
    # ])

    headers = []
    query_params = []

    {engine_type, options} = Keyword.pop(options, :engine_type, nil)

    query_params =
      if !is_nil(engine_type) do
        [{"engineType", engine_type} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Amazon ES domains associated with the package.

  ## Required positional parameters:
   • :package_id (t:string String.t/0) (PackageID)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_domains_for_package(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_domains_for_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_for_package_errors()}
  def list_domains_for_package(%Client{} = client, package_id, options \\ []) do
    url_path = "/2015-01-01/packages/#{AWS.Util.encode_uri(package_id)}/domains"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all Elasticsearch instance types that are supported for given
  ElasticsearchVersion

  ## Required positional parameters:
   • :elasticsearch_version (t:string String.t/0) (ElasticsearchVersion)

  ## Optional parameters:
   • :domain_name (t:String.t/0) (domainName)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_elasticsearch_instance_types(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_elasticsearch_instance_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_elasticsearch_instance_types_errors()}
  def list_elasticsearch_instance_types(%Client{} = client, elasticsearch_version, options \\ []) do
    url_path = "/2015-01-01/es/instanceTypes/#{AWS.Util.encode_uri(elasticsearch_version)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain_name: nil, max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {domain_name, options} = Keyword.pop(options, :domain_name, nil)

    query_params =
      if !is_nil(domain_name) do
        [{"domainName", domain_name} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all supported Elasticsearch versions

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_elasticsearch_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_elasticsearch_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_elasticsearch_versions_errors()}
  def list_elasticsearch_versions(%Client{} = client, options \\ []) do
    url_path = "/2015-01-01/es/versions"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all packages associated with the Amazon ES domain.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_packages_for_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_packages_for_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_packages_for_domain_errors()}
  def list_packages_for_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/domain/#{AWS.Util.encode_uri(domain_name)}/packages"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns all tags for the given Elasticsearch domain.

  ## Required positional parameters:

  ## Optional parameters:
   • :arn (t:String.t/0) (arn)
  """
  @spec list_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, arn, options \\ []) do
    url_path = "/2015-01-01/tags"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [arn: nil
    # ])

    headers = []
    query_params = []

    {arn, options} = Keyword.pop(options, :arn, nil)

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about each principal that is allowed to access a
  given Amazon OpenSearch Service domain through the use of an interface VPC
  endpoint.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_vpc_endpoint_access(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_vpc_endpoint_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_endpoint_access_errors()}
  def list_vpc_endpoint_access(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/listVpcEndpointAccess"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the current
  account and Region.

  ## Required positional parameters:

  ## Optional parameters:
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_vpc_endpoints(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_vpc_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_endpoints_errors()}
  def list_vpc_endpoints(%Client{} = client, options \\ []) do
    url_path = "/2015-01-01/es/vpcEndpoints"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a
  particular domain.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_vpc_endpoints_for_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_vpc_endpoints_for_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_endpoints_for_domain_errors()}
  def list_vpc_endpoints_for_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/vpcEndpoints"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Allows you to purchase reserved Elasticsearch instances.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec purchase_reserved_elasticsearch_instance_offering(
          AWS.Client.t(),
          purchase_reserved_elasticsearch_instance_offering_request(),
          Keyword.t()
        ) ::
          {:ok, purchase_reserved_elasticsearch_instance_offering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, purchase_reserved_elasticsearch_instance_offering_errors()}
  def purchase_reserved_elasticsearch_instance_offering(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/purchaseReservedInstanceOffering"
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
  Allows the destination domain owner to reject an inbound cross-cluster search
  connection request.

  ## Required positional parameters:
   • :cross_cluster_search_connection_id (t:string String.t/0) (CrossClusterSearchConnectionId)

  ## Optional parameters:
  """
  @spec reject_inbound_cross_cluster_search_connection(
          AWS.Client.t(),
          String.t(),
          reject_inbound_cross_cluster_search_connection_request(),
          Keyword.t()
        ) ::
          {:ok, reject_inbound_cross_cluster_search_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_inbound_cross_cluster_search_connection_errors()}
  def reject_inbound_cross_cluster_search_connection(
        %Client{} = client,
        cross_cluster_search_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/ccs/inboundConnection/#{AWS.Util.encode_uri(cross_cluster_search_connection_id)}/reject"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Removes the specified set of tags from the specified Elasticsearch domain.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec remove_tags(AWS.Client.t(), remove_tags_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_errors()}
  def remove_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/tags-removal"
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
  an interface
  VPC endpoint.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

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
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/revokeVpcEndpointAccess"
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
  Schedules a service software update for an Amazon ES domain.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec start_elasticsearch_service_software_update(
          AWS.Client.t(),
          start_elasticsearch_service_software_update_request(),
          Keyword.t()
        ) ::
          {:ok, start_elasticsearch_service_software_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_elasticsearch_service_software_update_errors()}
  def start_elasticsearch_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/serviceSoftwareUpdate/start"
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
  Modifies the cluster configuration of the specified Elasticsearch domain,
  setting as setting the instance type and the number of instances.

  ## Required positional parameters:
   • :domain_name (t:string String.t/0) (DomainName)

  ## Optional parameters:
  """
  @spec update_elasticsearch_domain_config(
          AWS.Client.t(),
          String.t(),
          update_elasticsearch_domain_config_request(),
          Keyword.t()
        ) ::
          {:ok, update_elasticsearch_domain_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_elasticsearch_domain_config_errors()}
  def update_elasticsearch_domain_config(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/config"
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
  Updates a package for use with Amazon ES domains.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec update_package(AWS.Client.t(), update_package_request(), Keyword.t()) ::
          {:ok, update_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_package_errors()}
  def update_package(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/packages/update"
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
  Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec update_vpc_endpoint(AWS.Client.t(), update_vpc_endpoint_request(), Keyword.t()) ::
          {:ok, update_vpc_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpc_endpoint_errors()}
  def update_vpc_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/vpcEndpoints/update"
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
  Allows you to either upgrade your domain or perform an Upgrade eligibility check
  to a compatible Elasticsearch version.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec upgrade_elasticsearch_domain(
          AWS.Client.t(),
          upgrade_elasticsearch_domain_request(),
          Keyword.t()
        ) ::
          {:ok, upgrade_elasticsearch_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_elasticsearch_domain_errors()}
  def upgrade_elasticsearch_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/upgradeDomain"
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
