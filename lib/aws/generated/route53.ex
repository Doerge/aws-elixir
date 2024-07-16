# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53 do
  @moduledoc """
  Amazon Route 53 is a highly available and scalable Domain Name System (DNS) web
  service. You can use Route 53 to:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_vpc_association_authorization_request() :: %{
        required("VPC") => vpc()
      }

  """
  @type create_vpc_association_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_hosted_zone_comment_response() :: %{
        "HostedZone" => hosted_zone()
      }

  """
  @type update_hosted_zone_comment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_policies_request() :: %{
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyIdMarker") => String.t()
      }

  """
  @type list_traffic_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_change_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type get_change_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geo_location_details() :: %{
        "ContinentCode" => String.t(),
        "ContinentName" => String.t(),
        "CountryCode" => String.t(),
        "CountryName" => String.t(),
        "SubdivisionCode" => String.t(),
        "SubdivisionName" => String.t()
      }

  """
  @type geo_location_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_query_logging_config_request() :: %{}

  """
  @type get_query_logging_config_request() :: %{}

  @typedoc """

  ## Example:

      delegation_set_not_reusable() :: %{
        "message" => String.t()
      }

  """
  @type delegation_set_not_reusable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delegation_set() :: %{
        "CallerReference" => String.t(),
        "Id" => String.t(),
        "NameServers" => list(String.t()())
      }

  """
  @type delegation_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      health_check_version_mismatch() :: %{
        "message" => String.t()
      }

  """
  @type health_check_version_mismatch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_version_response() :: %{
        "Location" => String.t(),
        "TrafficPolicy" => traffic_policy()
      }

  """
  @type create_traffic_policy_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_query_logging_config_response() :: %{
        "Location" => String.t(),
        "QueryLoggingConfig" => query_logging_config()
      }

  """
  @type create_query_logging_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_logging_config() :: %{
        "CloudWatchLogsLogGroupArn" => String.t(),
        "HostedZoneId" => String.t(),
        "Id" => String.t()
      }

  """
  @type query_logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_signing_key() :: %{
        "CreatedDate" => non_neg_integer(),
        "DNSKEYRecord" => String.t(),
        "DSRecord" => String.t(),
        "DigestAlgorithmMnemonic" => String.t(),
        "DigestAlgorithmType" => integer(),
        "DigestValue" => String.t(),
        "Flag" => integer(),
        "KeyTag" => integer(),
        "KmsArn" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "PublicKey" => String.t(),
        "SigningAlgorithmMnemonic" => String.t(),
        "SigningAlgorithmType" => integer(),
        "Status" => String.t(),
        "StatusMessage" => String.t()
      }

  """
  @type key_signing_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      incompatible_version() :: %{
        "message" => String.t()
      }

  """
  @type incompatible_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_by_vpc_response() :: %{
        "HostedZoneSummaries" => list(hosted_zone_summary()()),
        "MaxItems" => [integer()],
        "NextToken" => String.t()
      }

  """
  @type list_hosted_zones_by_vpc_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change() :: %{
        "Action" => list(any()),
        "ResourceRecordSet" => resource_record_set()
      }

  """
  @type change() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_policy_in_use() :: %{
        "message" => String.t()
      }

  """
  @type traffic_policy_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_instance_request() :: %{}

  """
  @type get_traffic_policy_instance_request() :: %{}

  @typedoc """

  ## Example:

      dns_sec_status() :: %{
        "ServeSignature" => String.t(),
        "StatusMessage" => String.t()
      }

  """
  @type dns_sec_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_alarm_configuration() :: %{
        "ComparisonOperator" => list(any()),
        "Dimensions" => list(dimension()()),
        "EvaluationPeriods" => integer(),
        "MetricName" => String.t(),
        "Namespace" => String.t(),
        "Period" => integer(),
        "Statistic" => list(any()),
        "Threshold" => float()
      }

  """
  @type cloud_watch_alarm_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_hosted_zone_request() :: %{
        optional("DelegationSetId") => String.t(),
        optional("HostedZoneConfig") => hosted_zone_config(),
        optional("VPC") => vpc(),
        required("CallerReference") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_hosted_zone_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_input() :: %{
        "message" => String.t()
      }

  """
  @type invalid_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_traffic_policy_instance_request() :: %{}

  """
  @type delete_traffic_policy_instance_request() :: %{}

  @typedoc """

  ## Example:

      hosted_zone_not_private() :: %{
        "message" => String.t()
      }

  """
  @type hosted_zone_not_private() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_change_batch() :: %{
        "message" => String.t(),
        "messages" => list(String.t()())
      }

  """
  @type invalid_change_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_instance_count_request() :: %{}

  """
  @type get_traffic_policy_instance_count_request() :: %{}

  @typedoc """

  ## Example:

      too_many_traffic_policies() :: %{
        "message" => String.t()
      }

  """
  @type too_many_traffic_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_health_check_request() :: %{}

  """
  @type delete_health_check_request() :: %{}

  @typedoc """

  ## Example:

      create_traffic_policy_request() :: %{
        optional("Comment") => String.t(),
        required("Document") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_traffic_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_reusable_delegation_set_limit_response() :: %{
        "Count" => float(),
        "Limit" => reusable_delegation_set_limit()
      }

  """
  @type get_reusable_delegation_set_limit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_pagination_token() :: %{
        "message" => String.t()
      }

  """
  @type invalid_pagination_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_by_policy_response() :: %{
        "HostedZoneIdMarker" => String.t(),
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicyInstanceNameMarker" => String.t(),
        "TrafficPolicyInstanceTypeMarker" => list(any()),
        "TrafficPolicyInstances" => list(traffic_policy_instance()())
      }

  """
  @type list_traffic_policy_instances_by_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_health_check() :: %{
        "message" => String.t()
      }

  """
  @type no_such_health_check() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_traffic_policy_versions_for_current_policy() :: %{
        "message" => String.t()
      }

  """
  @type too_many_traffic_policy_versions_for_current_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_by_policy_request() :: %{
        optional("HostedZoneIdMarker") => String.t(),
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyInstanceNameMarker") => String.t(),
        optional("TrafficPolicyInstanceTypeMarker") => list(any()),
        required("TrafficPolicyId") => String.t(),
        required("TrafficPolicyVersion") => integer()
      }

  """
  @type list_traffic_policy_instances_by_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_zone_limit() :: %{
        "Type" => list(any()),
        "Value" => float()
      }

  """
  @type hosted_zone_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc() :: %{
        "VPCId" => String.t(),
        "VPCRegion" => list(any())
      }

  """
  @type vpc() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_traffic_policy_instance() :: %{
        "message" => String.t()
      }

  """
  @type no_such_traffic_policy_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_record_set() :: %{
        "AliasTarget" => alias_target(),
        "CidrRoutingConfig" => cidr_routing_config(),
        "Failover" => list(any()),
        "GeoLocation" => geo_location(),
        "GeoProximityLocation" => geo_proximity_location(),
        "HealthCheckId" => String.t(),
        "MultiValueAnswer" => boolean(),
        "Name" => String.t(),
        "Region" => list(any()),
        "ResourceRecords" => list(resource_record()()),
        "SetIdentifier" => String.t(),
        "TTL" => float(),
        "TrafficPolicyInstanceId" => String.t(),
        "Type" => list(any()),
        "Weight" => float()
      }

  """
  @type resource_record_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_instance_response() :: %{
        "TrafficPolicyInstance" => traffic_policy_instance()
      }

  """
  @type get_traffic_policy_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collection_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Version" => float()
      }

  """
  @type collection_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_limit_response() :: %{
        "Count" => float(),
        "Limit" => hosted_zone_limit()
      }

  """
  @type get_hosted_zone_limit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_count_response() :: %{
        "HostedZoneCount" => float()
      }

  """
  @type get_hosted_zone_count_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_traffic_policy_comment_response() :: %{
        "TrafficPolicy" => traffic_policy()
      }

  """
  @type update_traffic_policy_comment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_health_check_response() :: %{}

  """
  @type delete_health_check_response() :: %{}

  @typedoc """

  ## Example:

      vpc_association_not_found() :: %{
        "message" => String.t()
      }

  """
  @type vpc_association_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delegation_set_not_available() :: %{
        "message" => String.t()
      }

  """
  @type delegation_set_not_available() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_association_authorization_not_found() :: %{
        "message" => String.t()
      }

  """
  @type vpc_association_authorization_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_tags_for_resource_response() :: %{}

  """
  @type change_tags_for_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_reusable_delegation_set_request() :: %{}

  """
  @type delete_reusable_delegation_set_request() :: %{}

  @typedoc """

  ## Example:

      associate_vpc_with_hosted_zone_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type associate_vpc_with_hosted_zone_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insufficient_cloud_watch_logs_resource_policy() :: %{
        "message" => String.t()
      }

  """
  @type insufficient_cloud_watch_logs_resource_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_hosted_zone() :: %{
        "message" => String.t()
      }

  """
  @type no_such_hosted_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_policies_response() :: %{
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicyIdMarker" => String.t(),
        "TrafficPolicySummaries" => list(traffic_policy_summary()())
      }

  """
  @type list_traffic_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_reusable_delegation_sets_response() :: %{
        "DelegationSets" => list(delegation_set()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "MaxItems" => [integer()],
        "NextMarker" => String.t()
      }

  """
  @type list_reusable_delegation_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_key_signing_key_name() :: %{
        "message" => String.t()
      }

  """
  @type invalid_key_signing_key_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_zone_vpc_association() :: %{
        "message" => String.t()
      }

  """
  @type public_zone_vpc_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_health_check_response() :: %{
        "HealthCheck" => health_check(),
        "Location" => String.t()
      }

  """
  @type create_health_check_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_health_check_response() :: %{
        "HealthCheck" => health_check()
      }

  """
  @type update_health_check_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dns_sec_not_found() :: %{
        "message" => String.t()
      }

  """
  @type dns_sec_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      status_report() :: %{
        "CheckedTime" => non_neg_integer(),
        "Status" => String.t()
      }

  """
  @type status_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_instance_request() :: %{
        required("HostedZoneId") => String.t(),
        required("Name") => String.t(),
        required("TTL") => float(),
        required("TrafficPolicyId") => String.t(),
        required("TrafficPolicyVersion") => integer()
      }

  """
  @type create_traffic_policy_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_batch() :: %{
        "Changes" => list(change()()),
        "Comment" => String.t()
      }

  """
  @type change_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reusable_delegation_set_limit() :: %{
        "Type" => list(any()),
        "Value" => float()
      }

  """
  @type reusable_delegation_set_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      health_check_already_exists() :: %{
        "message" => String.t()
      }

  """
  @type health_check_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_delegation_set() :: %{
        "message" => String.t()
      }

  """
  @type no_such_delegation_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_policy() :: %{
        "Comment" => String.t(),
        "Document" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Type" => list(any()),
        "Version" => integer()
      }

  """
  @type traffic_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_health_check_count_request() :: %{}

  """
  @type get_health_check_count_request() :: %{}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_request() :: %{
        optional("HostedZoneIdMarker") => String.t(),
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyInstanceNameMarker") => String.t(),
        optional("TrafficPolicyInstanceTypeMarker") => list(any())
      }

  """
  @type list_traffic_policy_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_argument() :: %{
        "message" => String.t()
      }

  """
  @type invalid_argument() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_tags_for_resource_request() :: %{
        optional("AddTags") => list(tag()()),
        optional("RemoveTagKeys") => list(String.t()())
      }

  """
  @type change_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_health_check_response() :: %{
        "HealthCheck" => health_check()
      }

  """
  @type get_health_check_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_query_logging_configs_response() :: %{
        "NextToken" => String.t(),
        "QueryLoggingConfigs" => list(query_logging_config()())
      }

  """
  @type list_query_logging_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_cidr_collection_response() :: %{
        "Id" => String.t()
      }

  """
  @type change_cidr_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_traffic_policy_instances() :: %{
        "message" => String.t()
      }

  """
  @type too_many_traffic_policy_instances() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cidr_collection_in_use_exception() :: %{
        "Message" => String.t()
      }

  """
  @type cidr_collection_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      linked_service() :: %{
        "Description" => String.t(),
        "ServicePrincipal" => String.t()
      }

  """
  @type linked_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_traffic_policy_document() :: %{
        "message" => String.t()
      }

  """
  @type invalid_traffic_policy_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_key_signing_key_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type delete_key_signing_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_modification() :: %{
        "message" => String.t()
      }

  """
  @type concurrent_modification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resources_response() :: %{
        "ResourceTagSets" => list(resource_tag_set()())
      }

  """
  @type list_tags_for_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_association_authorization_response() :: %{}

  """
  @type delete_vpc_association_authorization_response() :: %{}

  @typedoc """

  ## Example:

      list_geo_locations_response() :: %{
        "GeoLocationDetailsList" => list(geo_location_details()()),
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "NextContinentCode" => String.t(),
        "NextCountryCode" => String.t(),
        "NextSubdivisionCode" => String.t()
      }

  """
  @type list_geo_locations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cidr_collections_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_cidr_collections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dns_sec_request() :: %{}

  """
  @type get_dns_sec_request() :: %{}

  @typedoc """

  ## Example:

      too_many_vpc_association_authorizations() :: %{
        "message" => String.t()
      }

  """
  @type too_many_vpc_association_authorizations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_limit_request() :: %{}

  """
  @type get_hosted_zone_limit_request() :: %{}

  @typedoc """

  ## Example:

      key_signing_key_with_active_status_not_found() :: %{
        "message" => String.t()
      }

  """
  @type key_signing_key_with_active_status_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cidr_blocks_request() :: %{
        optional("LocationName") => String.t(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_cidr_blocks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alias_target() :: %{
        "DNSName" => String.t(),
        "EvaluateTargetHealth" => boolean(),
        "HostedZoneId" => String.t()
      }

  """
  @type alias_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cidr_collection_change() :: %{
        "Action" => list(any()),
        "CidrList" => list(String.t()()),
        "LocationName" => String.t()
      }

  """
  @type cidr_collection_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_health_check_last_failure_reason_response() :: %{
        "HealthCheckObservations" => list(health_check_observation()())
      }

  """
  @type get_health_check_last_failure_reason_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_checker_ip_ranges_response() :: %{
        "CheckerIpRanges" => list(String.t()())
      }

  """
  @type get_checker_ip_ranges_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_response() :: %{
        "HostedZoneIdMarker" => String.t(),
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicyInstanceNameMarker" => String.t(),
        "TrafficPolicyInstanceTypeMarker" => list(any()),
        "TrafficPolicyInstances" => list(traffic_policy_instance()())
      }

  """
  @type list_traffic_policy_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_cidr_collection_exception() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_cidr_collection_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_signing_status() :: %{
        "message" => String.t()
      }

  """
  @type invalid_signing_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geo_proximity_location() :: %{
        "AWSRegion" => String.t(),
        "Bias" => integer(),
        "Coordinates" => coordinates(),
        "LocalZoneGroup" => String.t()
      }

  """
  @type geo_proximity_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_dns_answer_request() :: %{
        optional("EDNS0ClientSubnetIP") => String.t(),
        optional("EDNS0ClientSubnetMask") => String.t(),
        optional("ResolverIP") => String.t(),
        required("HostedZoneId") => String.t(),
        required("RecordName") => String.t(),
        required("RecordType") => list(any())
      }

  """
  @type test_dns_answer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deactivate_key_signing_key_request() :: %{}

  """
  @type deactivate_key_signing_key_request() :: %{}

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

      delegation_set_in_use() :: %{
        "message" => String.t()
      }

  """
  @type delegation_set_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_change() :: %{
        "message" => String.t()
      }

  """
  @type no_such_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_geo_location_request() :: %{
        optional("ContinentCode") => String.t(),
        optional("CountryCode") => String.t(),
        optional("SubdivisionCode") => String.t()
      }

  """
  @type get_geo_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cidr_blocks_response() :: %{
        "CidrBlocks" => list(cidr_block_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_cidr_blocks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cidr_block_in_use_exception() :: %{
        "Message" => String.t()
      }

  """
  @type cidr_block_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_signing_key_in_use() :: %{
        "message" => String.t()
      }

  """
  @type key_signing_key_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limits_exceeded() :: %{
        "message" => String.t()
      }

  """
  @type limits_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_by_hosted_zone_request() :: %{
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyInstanceNameMarker") => String.t(),
        optional("TrafficPolicyInstanceTypeMarker") => list(any()),
        required("HostedZoneId") => String.t()
      }

  """
  @type list_traffic_policy_instances_by_hosted_zone_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_query_logging_config() :: %{
        "message" => String.t()
      }

  """
  @type no_such_query_logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_policy_instance_already_exists() :: %{
        "message" => String.t()
      }

  """
  @type traffic_policy_instance_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_policy_already_exists() :: %{
        "message" => String.t()
      }

  """
  @type traffic_policy_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_hosted_zone_request() :: %{}

  """
  @type delete_hosted_zone_request() :: %{}

  @typedoc """

  ## Example:

      list_cidr_collections_response() :: %{
        "CidrCollections" => list(collection_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_cidr_collections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_hosted_zone_dns_sec_request() :: %{}

  """
  @type enable_hosted_zone_dns_sec_request() :: %{}

  @typedoc """

  ## Example:

      list_health_checks_response() :: %{
        "HealthChecks" => list(health_check()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "MaxItems" => [integer()],
        "NextMarker" => String.t()
      }

  """
  @type list_health_checks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_response() :: %{
        "Location" => String.t(),
        "TrafficPolicy" => traffic_policy()
      }

  """
  @type create_traffic_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_response() :: %{
        "DelegationSet" => delegation_set(),
        "HostedZone" => hosted_zone(),
        "VPCs" => list(vpc()())
      }

  """
  @type get_hosted_zone_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_hosted_zone_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type delete_hosted_zone_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delegation_set_already_reusable() :: %{
        "message" => String.t()
      }

  """
  @type delegation_set_already_reusable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_resource_record_sets_request() :: %{
        required("ChangeBatch") => change_batch()
      }

  """
  @type change_resource_record_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_zone_owner() :: %{
        "OwningAccount" => String.t(),
        "OwningService" => String.t()
      }

  """
  @type hosted_zone_owner() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_query_logging_config_request() :: %{
        required("CloudWatchLogsLogGroupArn") => String.t(),
        required("HostedZoneId") => String.t()
      }

  """
  @type create_query_logging_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflicting_domain_exists() :: %{
        "message" => String.t()
      }

  """
  @type conflicting_domain_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_zone_already_exists() :: %{
        "message" => String.t()
      }

  """
  @type hosted_zone_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_hosted_zone_dns_sec_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type enable_hosted_zone_dns_sec_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_zone_not_found() :: %{
        "message" => String.t()
      }

  """
  @type hosted_zone_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_tag_set() :: %{
        "ResourceId" => String.t(),
        "ResourceType" => list(any()),
        "Tags" => list(tag()())
      }

  """
  @type resource_tag_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      activate_key_signing_key_request() :: %{}

  """
  @type activate_key_signing_key_request() :: %{}

  @typedoc """

  ## Example:

      update_traffic_policy_comment_request() :: %{
        required("Comment") => String.t()
      }

  """
  @type update_traffic_policy_comment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      health_check_observation() :: %{
        "IPAddress" => String.t(),
        "Region" => list(any()),
        "StatusReport" => status_report()
      }

  """
  @type health_check_observation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alarm_identifier() :: %{
        "Name" => String.t(),
        "Region" => list(any())
      }

  """
  @type alarm_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_health_check_request() :: %{
        required("CallerReference") => String.t(),
        required("HealthCheckConfig") => health_check_config()
      }

  """
  @type create_health_check_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_cloud_watch_logs_log_group() :: %{
        "message" => String.t()
      }

  """
  @type no_such_cloud_watch_logs_log_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_resource_record_sets_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type change_resource_record_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_association_authorization_request() :: %{
        required("VPC") => vpc()
      }

  """
  @type delete_vpc_association_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_limit() :: %{
        "Type" => list(any()),
        "Value" => float()
      }

  """
  @type account_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "ResourceTagSet" => resource_tag_set()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_info() :: %{
        "Comment" => String.t(),
        "Id" => String.t(),
        "Status" => list(any()),
        "SubmittedAt" => non_neg_integer()
      }

  """
  @type change_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cidr_collection_response() :: %{}

  """
  @type delete_cidr_collection_response() :: %{}

  @typedoc """

  ## Example:

      list_hosted_zones_by_name_response() :: %{
        "DNSName" => String.t(),
        "HostedZoneId" => String.t(),
        "HostedZones" => list(hosted_zone()()),
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "NextDNSName" => String.t(),
        "NextHostedZoneId" => String.t()
      }

  """
  @type list_hosted_zones_by_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      health_check() :: %{
        "CallerReference" => String.t(),
        "CloudWatchAlarmConfiguration" => cloud_watch_alarm_configuration(),
        "HealthCheckConfig" => health_check_config(),
        "HealthCheckVersion" => float(),
        "Id" => String.t(),
        "LinkedService" => linked_service()
      }

  """
  @type health_check() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_response() :: %{
        "HostedZones" => list(hosted_zone()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "MaxItems" => [integer()],
        "NextMarker" => String.t()
      }

  """
  @type list_hosted_zones_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_change_request() :: %{}

  """
  @type get_change_request() :: %{}

  @typedoc """

  ## Example:

      invalid_vpc_id() :: %{
        "message" => String.t()
      }

  """
  @type invalid_vpc_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vpc_association_authorization_response() :: %{
        "HostedZoneId" => String.t(),
        "VPC" => vpc()
      }

  """
  @type create_vpc_association_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_traffic_policy_response() :: %{}

  """
  @type delete_traffic_policy_response() :: %{}

  @typedoc """

  ## Example:

      list_cidr_locations_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_cidr_locations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_query_logging_config_response() :: %{}

  """
  @type delete_query_logging_config_response() :: %{}

  @typedoc """

  ## Example:

      update_traffic_policy_instance_response() :: %{
        "TrafficPolicyInstance" => traffic_policy_instance()
      }

  """
  @type update_traffic_policy_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_instance_response() :: %{
        "Location" => String.t(),
        "TrafficPolicyInstance" => traffic_policy_instance()
      }

  """
  @type create_traffic_policy_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_reusable_delegation_set_response() :: %{
        "DelegationSet" => delegation_set(),
        "Location" => String.t()
      }

  """
  @type create_reusable_delegation_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_health_check_count_response() :: %{
        "HealthCheckCount" => float()
      }

  """
  @type get_health_check_count_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_association_authorizations_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_vpc_association_authorizations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_geo_locations_request() :: %{
        optional("MaxItems") => [integer()],
        optional("StartContinentCode") => String.t(),
        optional("StartCountryCode") => String.t(),
        optional("StartSubdivisionCode") => String.t()
      }

  """
  @type list_geo_locations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_query_logging_config_request() :: %{}

  """
  @type delete_query_logging_config_request() :: %{}

  @typedoc """

  ## Example:

      get_hosted_zone_request() :: %{}

  """
  @type get_hosted_zone_request() :: %{}

  @typedoc """

  ## Example:

      update_health_check_request() :: %{
        optional("AlarmIdentifier") => alarm_identifier(),
        optional("ChildHealthChecks") => list(String.t()()),
        optional("Disabled") => boolean(),
        optional("EnableSNI") => boolean(),
        optional("FailureThreshold") => integer(),
        optional("FullyQualifiedDomainName") => String.t(),
        optional("HealthCheckVersion") => float(),
        optional("HealthThreshold") => integer(),
        optional("IPAddress") => String.t(),
        optional("InsufficientDataHealthStatus") => list(any()),
        optional("Inverted") => boolean(),
        optional("Port") => integer(),
        optional("Regions") => list(list(any())()),
        optional("ResetElements") => list(list(any())()),
        optional("ResourcePath") => String.t(),
        optional("SearchString") => String.t()
      }

  """
  @type update_health_check_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_key_signing_key_response() :: %{
        "ChangeInfo" => change_info(),
        "KeySigningKey" => key_signing_key(),
        "Location" => String.t()
      }

  """
  @type create_key_signing_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_authorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_limit_request() :: %{}

  """
  @type get_account_limit_request() :: %{}

  @typedoc """

  ## Example:

      geo_location() :: %{
        "ContinentCode" => String.t(),
        "CountryCode" => String.t(),
        "SubdivisionCode" => String.t()
      }

  """
  @type geo_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_instance_count_response() :: %{
        "TrafficPolicyInstanceCount" => integer()
      }

  """
  @type get_traffic_policy_instance_count_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_zone_summary() :: %{
        "HostedZoneId" => String.t(),
        "Name" => String.t(),
        "Owner" => hosted_zone_owner()
      }

  """
  @type hosted_zone_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_response() :: %{
        "TrafficPolicy" => traffic_policy()
      }

  """
  @type get_traffic_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_versions_request() :: %{
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyVersionMarker") => String.t()
      }

  """
  @type list_traffic_policy_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_association_authorizations_response() :: %{
        "HostedZoneId" => String.t(),
        "NextToken" => String.t(),
        "VPCs" => list(vpc()())
      }

  """
  @type list_vpc_association_authorizations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_count_request() :: %{}

  """
  @type get_hosted_zone_count_request() :: %{}

  @typedoc """

  ## Example:

      get_reusable_delegation_set_limit_request() :: %{}

  """
  @type get_reusable_delegation_set_limit_request() :: %{}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_by_hosted_zone_response() :: %{
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicyInstanceNameMarker" => String.t(),
        "TrafficPolicyInstanceTypeMarker" => list(any()),
        "TrafficPolicyInstances" => list(traffic_policy_instance()())
      }

  """
  @type list_traffic_policy_instances_by_hosted_zone_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_domain_name() :: %{
        "message" => String.t()
      }

  """
  @type invalid_domain_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_policy_summary() :: %{
        "Id" => String.t(),
        "LatestVersion" => integer(),
        "Name" => String.t(),
        "TrafficPolicyCount" => integer(),
        "Type" => list(any())
      }

  """
  @type traffic_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_hosted_zone_dns_sec_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type disable_hosted_zone_dns_sec_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_geo_location() :: %{
        "message" => String.t()
      }

  """
  @type no_such_geo_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_policy_instance() :: %{
        "HostedZoneId" => String.t(),
        "Id" => String.t(),
        "Message" => String.t(),
        "Name" => String.t(),
        "State" => String.t(),
        "TTL" => float(),
        "TrafficPolicyId" => String.t(),
        "TrafficPolicyType" => list(any()),
        "TrafficPolicyVersion" => integer()
      }

  """
  @type traffic_policy_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cidr_collection_request() :: %{
        required("CallerReference") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_cidr_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_cidr_location_exception() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_cidr_location_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_kms_arn() :: %{
        "message" => String.t()
      }

  """
  @type invalid_kms_arn() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cidr_collection_response() :: %{
        "Collection" => cidr_collection(),
        "Location" => String.t()
      }

  """
  @type create_cidr_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dns_sec_response() :: %{
        "KeySigningKeys" => list(key_signing_key()()),
        "Status" => dns_sec_status()
      }

  """
  @type get_dns_sec_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_query_logging_configs_request() :: %{
        optional("HostedZoneId") => String.t(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_query_logging_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_key_signing_key_request() :: %{
        required("CallerReference") => String.t(),
        required("HostedZoneId") => String.t(),
        required("KeyManagementServiceArn") => String.t(),
        required("Name") => String.t(),
        required("Status") => String.t()
      }

  """
  @type create_key_signing_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resources_request() :: %{
        required("ResourceIds") => list(String.t()())
      }

  """
  @type list_tags_for_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cidr_locations_response() :: %{
        "CidrLocations" => list(location_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_cidr_locations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_by_vpc_request() :: %{
        optional("MaxItems") => [integer()],
        optional("NextToken") => String.t(),
        required("VPCId") => String.t(),
        required("VPCRegion") => list(any())
      }

  """
  @type list_hosted_zones_by_vpc_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      update_hosted_zone_comment_request() :: %{
        optional("Comment") => String.t()
      }

  """
  @type update_hosted_zone_comment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_request() :: %{
        optional("DelegationSetId") => String.t(),
        optional("HostedZoneType") => list(any()),
        optional("Marker") => String.t(),
        optional("MaxItems") => [integer()]
      }

  """
  @type list_hosted_zones_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_hosted_zones() :: %{
        "message" => String.t()
      }

  """
  @type too_many_hosted_zones() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_geo_location_response() :: %{
        "GeoLocationDetails" => geo_location_details()
      }

  """
  @type get_geo_location_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_reusable_delegation_set_response() :: %{
        "DelegationSet" => delegation_set()
      }

  """
  @type get_reusable_delegation_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cidr_routing_config() :: %{
        "CollectionId" => String.t(),
        "LocationName" => String.t()
      }

  """
  @type cidr_routing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      health_check_config() :: %{
        "AlarmIdentifier" => alarm_identifier(),
        "ChildHealthChecks" => list(String.t()()),
        "Disabled" => boolean(),
        "EnableSNI" => boolean(),
        "FailureThreshold" => integer(),
        "FullyQualifiedDomainName" => String.t(),
        "HealthThreshold" => integer(),
        "IPAddress" => String.t(),
        "InsufficientDataHealthStatus" => list(any()),
        "Inverted" => boolean(),
        "MeasureLatency" => boolean(),
        "Port" => integer(),
        "Regions" => list(list(any())()),
        "RequestInterval" => integer(),
        "ResourcePath" => String.t(),
        "RoutingControlArn" => String.t(),
        "SearchString" => String.t(),
        "Type" => list(any())
      }

  """
  @type health_check_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_hosted_zone_dns_sec_request() :: %{}

  """
  @type disable_hosted_zone_dns_sec_request() :: %{}

  @typedoc """

  ## Example:

      delete_reusable_delegation_set_response() :: %{}

  """
  @type delete_reusable_delegation_set_response() :: %{}

  @typedoc """

  ## Example:

      key_signing_key_in_parent_d_s_record() :: %{
        "message" => String.t()
      }

  """
  @type key_signing_key_in_parent_d_s_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_health_check_status_request() :: %{}

  """
  @type get_health_check_status_request() :: %{}

  @typedoc """

  ## Example:

      hosted_zone() :: %{
        "CallerReference" => String.t(),
        "Config" => hosted_zone_config(),
        "Id" => String.t(),
        "LinkedService" => linked_service(),
        "Name" => String.t(),
        "ResourceRecordSetCount" => float()
      }

  """
  @type hosted_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_versions_response() :: %{
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicies" => list(traffic_policy()()),
        "TrafficPolicyVersionMarker" => String.t()
      }

  """
  @type list_traffic_policy_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_record_sets_request() :: %{
        optional("MaxItems") => [integer()],
        optional("StartRecordIdentifier") => String.t(),
        optional("StartRecordName") => String.t(),
        optional("StartRecordType") => list(any())
      }

  """
  @type list_resource_record_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cidr_collection_request() :: %{}

  """
  @type delete_cidr_collection_request() :: %{}

  @typedoc """

  ## Example:

      location_summary() :: %{
        "LocationName" => String.t()
      }

  """
  @type location_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_zone_partially_delegated() :: %{
        "message" => String.t()
      }

  """
  @type hosted_zone_partially_delegated() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cidr_collection_version_mismatch_exception() :: %{
        "Message" => String.t()
      }

  """
  @type cidr_collection_version_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_key_signing_key_request() :: %{}

  """
  @type delete_key_signing_key_request() :: %{}

  @typedoc """

  ## Example:

      last_vpc_association() :: %{
        "message" => String.t()
      }

  """
  @type last_vpc_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_limit_response() :: %{
        "Count" => float(),
        "Limit" => account_limit()
      }

  """
  @type get_account_limit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_reusable_delegation_sets_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => [integer()]
      }

  """
  @type list_reusable_delegation_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cidr_collection_already_exists_exception() :: %{
        "Message" => String.t()
      }

  """
  @type cidr_collection_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_traffic_policy() :: %{
        "message" => String.t()
      }

  """
  @type no_such_traffic_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_vpc_from_hosted_zone_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type disassociate_vpc_from_hosted_zone_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dimension() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prior_request_not_complete() :: %{
        "message" => String.t()
      }

  """
  @type prior_request_not_complete() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_key_signing_key_status() :: %{
        "message" => String.t()
      }

  """
  @type invalid_key_signing_key_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_vpc_from_hosted_zone_request() :: %{
        optional("Comment") => String.t(),
        required("VPC") => vpc()
      }

  """
  @type disassociate_vpc_from_hosted_zone_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_by_name_request() :: %{
        optional("DNSName") => String.t(),
        optional("HostedZoneId") => String.t(),
        optional("MaxItems") => [integer()]
      }

  """
  @type list_hosted_zones_by_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_key_signing_key() :: %{
        "message" => String.t()
      }

  """
  @type no_such_key_signing_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_traffic_policy_instance_request() :: %{
        required("TTL") => float(),
        required("TrafficPolicyId") => String.t(),
        required("TrafficPolicyVersion") => integer()
      }

  """
  @type update_traffic_policy_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_traffic_policy_request() :: %{}

  """
  @type delete_traffic_policy_request() :: %{}

  @typedoc """

  ## Example:

      coordinates() :: %{
        "Latitude" => String.t(),
        "Longitude" => String.t()
      }

  """
  @type coordinates() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_query_logging_config_response() :: %{
        "QueryLoggingConfig" => query_logging_config()
      }

  """
  @type get_query_logging_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cidr_collection() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Version" => float()
      }

  """
  @type cidr_collection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_request() :: %{}

  """
  @type get_traffic_policy_request() :: %{}

  @typedoc """

  ## Example:

      activate_key_signing_key_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type activate_key_signing_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_logging_config_already_exists() :: %{
        "message" => String.t()
      }

  """
  @type query_logging_config_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_health_check_request() :: %{}

  """
  @type get_health_check_request() :: %{}

  @typedoc """

  ## Example:

      resource_record() :: %{
        "Value" => String.t()
      }

  """
  @type resource_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_traffic_policy_instance_response() :: %{}

  """
  @type delete_traffic_policy_instance_response() :: %{}

  @typedoc """

  ## Example:

      too_many_key_signing_keys() :: %{
        "message" => String.t()
      }

  """
  @type too_many_key_signing_keys() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_signing_key_already_exists() :: %{
        "message" => String.t()
      }

  """
  @type key_signing_key_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_health_check_status_response() :: %{
        "HealthCheckObservations" => list(health_check_observation()())
      }

  """
  @type get_health_check_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_record_sets_response() :: %{
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "NextRecordIdentifier" => String.t(),
        "NextRecordName" => String.t(),
        "NextRecordType" => list(any()),
        "ResourceRecordSets" => list(resource_record_set()())
      }

  """
  @type list_resource_record_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_reusable_delegation_set_request() :: %{}

  """
  @type get_reusable_delegation_set_request() :: %{}

  @typedoc """

  ## Example:

      get_health_check_last_failure_reason_request() :: %{}

  """
  @type get_health_check_last_failure_reason_request() :: %{}

  @typedoc """

  ## Example:

      hosted_zone_config() :: %{
        "Comment" => String.t(),
        "PrivateZone" => boolean()
      }

  """
  @type hosted_zone_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_reusable_delegation_set_request() :: %{
        optional("HostedZoneId") => String.t(),
        required("CallerReference") => String.t()
      }

  """
  @type create_reusable_delegation_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_vpc_with_hosted_zone_request() :: %{
        optional("Comment") => String.t(),
        required("VPC") => vpc()
      }

  """
  @type associate_vpc_with_hosted_zone_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_health_checks_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => [integer()]
      }

  """
  @type list_health_checks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflicting_types() :: %{
        "message" => String.t()
      }

  """
  @type conflicting_types() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      health_check_in_use() :: %{
        "message" => String.t()
      }

  """
  @type health_check_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deactivate_key_signing_key_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type deactivate_key_signing_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_health_checks() :: %{
        "message" => String.t()
      }

  """
  @type too_many_health_checks() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_hosted_zone_response() :: %{
        "ChangeInfo" => change_info(),
        "DelegationSet" => delegation_set(),
        "HostedZone" => hosted_zone(),
        "Location" => String.t(),
        "VPC" => vpc()
      }

  """
  @type create_hosted_zone_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_dns_answer_response() :: %{
        "Nameserver" => String.t(),
        "Protocol" => String.t(),
        "RecordData" => list(String.t()()),
        "RecordName" => String.t(),
        "RecordType" => list(any()),
        "ResponseCode" => String.t()
      }

  """
  @type test_dns_answer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cidr_block_summary() :: %{
        "CidrBlock" => String.t(),
        "LocationName" => String.t()
      }

  """
  @type cidr_block_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delegation_set_already_created() :: %{
        "message" => String.t()
      }

  """
  @type delegation_set_already_created() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_version_request() :: %{
        optional("Comment") => String.t(),
        required("Document") => String.t()
      }

  """
  @type create_traffic_policy_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_zone_not_empty() :: %{
        "message" => String.t()
      }

  """
  @type hosted_zone_not_empty() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_checker_ip_ranges_request() :: %{}

  """
  @type get_checker_ip_ranges_request() :: %{}

  @typedoc """

  ## Example:

      change_cidr_collection_request() :: %{
        optional("CollectionVersion") => float(),
        required("Changes") => list(cidr_collection_change()())
      }

  """
  @type change_cidr_collection_request() :: %{String.t() => any()}

  @type activate_key_signing_key_errors() ::
          no_such_key_signing_key()
          | invalid_key_signing_key_status()
          | invalid_kms_arn()
          | invalid_signing_status()
          | concurrent_modification()
          | invalid_input()

  @type associate_vpc_with_hosted_zone_errors() ::
          prior_request_not_complete()
          | not_authorized_exception()
          | invalid_vpc_id()
          | conflicting_domain_exists()
          | limits_exceeded()
          | public_zone_vpc_association()
          | no_such_hosted_zone()
          | invalid_input()

  @type change_cidr_collection_errors() ::
          cidr_collection_version_mismatch_exception()
          | limits_exceeded()
          | cidr_block_in_use_exception()
          | no_such_cidr_collection_exception()
          | concurrent_modification()
          | invalid_input()

  @type change_resource_record_sets_errors() ::
          prior_request_not_complete()
          | no_such_hosted_zone()
          | no_such_health_check()
          | invalid_change_batch()
          | invalid_input()

  @type change_tags_for_resource_errors() ::
          prior_request_not_complete()
          | throttling_exception()
          | no_such_hosted_zone()
          | no_such_health_check()
          | invalid_input()

  @type create_cidr_collection_errors() ::
          cidr_collection_already_exists_exception()
          | limits_exceeded()
          | concurrent_modification()
          | invalid_input()

  @type create_health_check_errors() ::
          too_many_health_checks() | health_check_already_exists() | invalid_input()

  @type create_hosted_zone_errors() ::
          too_many_hosted_zones()
          | invalid_domain_name()
          | invalid_vpc_id()
          | hosted_zone_already_exists()
          | conflicting_domain_exists()
          | no_such_delegation_set()
          | delegation_set_not_available()
          | invalid_input()
          | delegation_set_not_reusable()

  @type create_key_signing_key_errors() ::
          key_signing_key_already_exists()
          | too_many_key_signing_keys()
          | invalid_key_signing_key_status()
          | invalid_kms_arn()
          | invalid_signing_status()
          | concurrent_modification()
          | invalid_argument()
          | invalid_key_signing_key_name()
          | no_such_hosted_zone()
          | invalid_input()

  @type create_query_logging_config_errors() ::
          query_logging_config_already_exists()
          | no_such_cloud_watch_logs_log_group()
          | concurrent_modification()
          | no_such_hosted_zone()
          | insufficient_cloud_watch_logs_resource_policy()
          | invalid_input()

  @type create_reusable_delegation_set_errors() ::
          delegation_set_already_created()
          | hosted_zone_not_found()
          | delegation_set_already_reusable()
          | limits_exceeded()
          | invalid_argument()
          | delegation_set_not_available()
          | invalid_input()

  @type create_traffic_policy_errors() ::
          traffic_policy_already_exists()
          | invalid_traffic_policy_document()
          | too_many_traffic_policies()
          | invalid_input()

  @type create_traffic_policy_instance_errors() ::
          no_such_traffic_policy()
          | traffic_policy_instance_already_exists()
          | too_many_traffic_policy_instances()
          | no_such_hosted_zone()
          | invalid_input()

  @type create_traffic_policy_version_errors() ::
          no_such_traffic_policy()
          | concurrent_modification()
          | invalid_traffic_policy_document()
          | too_many_traffic_policy_versions_for_current_policy()
          | invalid_input()

  @type create_vpc_association_authorization_errors() ::
          invalid_vpc_id()
          | too_many_vpc_association_authorizations()
          | concurrent_modification()
          | no_such_hosted_zone()
          | invalid_input()

  @type deactivate_key_signing_key_errors() ::
          no_such_key_signing_key()
          | invalid_key_signing_key_status()
          | key_signing_key_in_parent_d_s_record()
          | key_signing_key_in_use()
          | invalid_signing_status()
          | concurrent_modification()
          | invalid_input()

  @type delete_cidr_collection_errors() ::
          no_such_cidr_collection_exception()
          | concurrent_modification()
          | cidr_collection_in_use_exception()
          | invalid_input()

  @type delete_health_check_errors() ::
          health_check_in_use() | no_such_health_check() | invalid_input()

  @type delete_hosted_zone_errors() ::
          hosted_zone_not_empty()
          | prior_request_not_complete()
          | invalid_domain_name()
          | no_such_hosted_zone()
          | invalid_input()

  @type delete_key_signing_key_errors() ::
          no_such_key_signing_key()
          | invalid_key_signing_key_status()
          | invalid_kms_arn()
          | invalid_signing_status()
          | concurrent_modification()
          | invalid_input()

  @type delete_query_logging_config_errors() ::
          no_such_query_logging_config() | concurrent_modification() | invalid_input()

  @type delete_reusable_delegation_set_errors() ::
          delegation_set_in_use()
          | no_such_delegation_set()
          | invalid_input()
          | delegation_set_not_reusable()

  @type delete_traffic_policy_errors() ::
          no_such_traffic_policy()
          | concurrent_modification()
          | invalid_input()
          | traffic_policy_in_use()

  @type delete_traffic_policy_instance_errors() ::
          prior_request_not_complete() | no_such_traffic_policy_instance() | invalid_input()

  @type delete_vpc_association_authorization_errors() ::
          invalid_vpc_id()
          | concurrent_modification()
          | no_such_hosted_zone()
          | vpc_association_authorization_not_found()
          | invalid_input()

  @type disable_hosted_zone_dns_sec_errors() ::
          invalid_key_signing_key_status()
          | key_signing_key_in_parent_d_s_record()
          | invalid_kms_arn()
          | concurrent_modification()
          | invalid_argument()
          | dns_sec_not_found()
          | no_such_hosted_zone()
          | invalid_input()

  @type disassociate_vpc_from_hosted_zone_errors() ::
          last_vpc_association()
          | invalid_vpc_id()
          | no_such_hosted_zone()
          | vpc_association_not_found()
          | invalid_input()

  @type enable_hosted_zone_dns_sec_errors() ::
          invalid_key_signing_key_status()
          | hosted_zone_partially_delegated()
          | invalid_kms_arn()
          | key_signing_key_with_active_status_not_found()
          | concurrent_modification()
          | invalid_argument()
          | dns_sec_not_found()
          | no_such_hosted_zone()
          | invalid_input()

  @type get_account_limit_errors() :: invalid_input()

  @type get_change_errors() :: no_such_change() | invalid_input()

  @type get_dns_sec_errors() :: invalid_argument() | no_such_hosted_zone() | invalid_input()

  @type get_geo_location_errors() :: no_such_geo_location() | invalid_input()

  @type get_health_check_errors() ::
          no_such_health_check() | invalid_input() | incompatible_version()

  @type get_health_check_last_failure_reason_errors() :: no_such_health_check() | invalid_input()

  @type get_health_check_status_errors() :: no_such_health_check() | invalid_input()

  @type get_hosted_zone_errors() :: no_such_hosted_zone() | invalid_input()

  @type get_hosted_zone_count_errors() :: invalid_input()

  @type get_hosted_zone_limit_errors() ::
          no_such_hosted_zone() | hosted_zone_not_private() | invalid_input()

  @type get_query_logging_config_errors() :: no_such_query_logging_config() | invalid_input()

  @type get_reusable_delegation_set_errors() ::
          no_such_delegation_set() | invalid_input() | delegation_set_not_reusable()

  @type get_reusable_delegation_set_limit_errors() :: no_such_delegation_set() | invalid_input()

  @type get_traffic_policy_errors() :: no_such_traffic_policy() | invalid_input()

  @type get_traffic_policy_instance_errors() ::
          no_such_traffic_policy_instance() | invalid_input()

  @type list_cidr_blocks_errors() ::
          no_such_cidr_location_exception()
          | no_such_cidr_collection_exception()
          | invalid_input()

  @type list_cidr_collections_errors() :: invalid_input()

  @type list_cidr_locations_errors() :: no_such_cidr_collection_exception() | invalid_input()

  @type list_geo_locations_errors() :: invalid_input()

  @type list_health_checks_errors() :: invalid_input() | incompatible_version()

  @type list_hosted_zones_errors() ::
          no_such_delegation_set() | invalid_input() | delegation_set_not_reusable()

  @type list_hosted_zones_by_name_errors() :: invalid_domain_name() | invalid_input()

  @type list_hosted_zones_by_vpc_errors() :: invalid_pagination_token() | invalid_input()

  @type list_query_logging_configs_errors() ::
          no_such_hosted_zone() | invalid_pagination_token() | invalid_input()

  @type list_resource_record_sets_errors() :: no_such_hosted_zone() | invalid_input()

  @type list_reusable_delegation_sets_errors() :: invalid_input()

  @type list_tags_for_resource_errors() ::
          prior_request_not_complete()
          | throttling_exception()
          | no_such_hosted_zone()
          | no_such_health_check()
          | invalid_input()

  @type list_tags_for_resources_errors() ::
          prior_request_not_complete()
          | throttling_exception()
          | no_such_hosted_zone()
          | no_such_health_check()
          | invalid_input()

  @type list_traffic_policies_errors() :: invalid_input()

  @type list_traffic_policy_instances_errors() ::
          no_such_traffic_policy_instance() | invalid_input()

  @type list_traffic_policy_instances_by_hosted_zone_errors() ::
          no_such_hosted_zone() | no_such_traffic_policy_instance() | invalid_input()

  @type list_traffic_policy_instances_by_policy_errors() ::
          no_such_traffic_policy() | no_such_traffic_policy_instance() | invalid_input()

  @type list_traffic_policy_versions_errors() :: no_such_traffic_policy() | invalid_input()

  @type list_vpc_association_authorizations_errors() ::
          no_such_hosted_zone() | invalid_pagination_token() | invalid_input()

  @type test_dns_answer_errors() :: no_such_hosted_zone() | invalid_input()

  @type update_health_check_errors() ::
          no_such_health_check() | invalid_input() | health_check_version_mismatch()

  @type update_hosted_zone_comment_errors() ::
          prior_request_not_complete() | no_such_hosted_zone() | invalid_input()

  @type update_traffic_policy_comment_errors() ::
          no_such_traffic_policy() | concurrent_modification() | invalid_input()

  @type update_traffic_policy_instance_errors() ::
          conflicting_types()
          | prior_request_not_complete()
          | no_such_traffic_policy()
          | no_such_traffic_policy_instance()
          | invalid_input()

  def metadata do
    %{
      api_version: "2013-04-01",
      content_type: "text/xml",
      credential_scope: "us-east-1",
      endpoint_prefix: "route53",
      global?: true,
      hostname: "route53.amazonaws.com",
      protocol: "rest-xml",
      service_id: "Route 53",
      signature_version: "v4",
      signing_name: "route53",
      target_prefix: nil
    }
  end

  @doc """
  Activates a key-signing key (KSK) so that it can be used for signing by DNSSEC.
  This operation changes the KSK status to `ACTIVE`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ActivateKeySigningKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) A unique string used to identify a hosted zone.
  * `:name` (`t:string`) A string used to identify a key-signing key (KSK). Name
    can include numbers, letters, and underscores (_). Name must be unique for
    each key-signing key in the same hosted zone.

  ## Optional parameters:
  """
  @spec activate_key_signing_key(
          AWS.Client.t(),
          String.t(),
          String.t(),
          activate_key_signing_key_request(),
          Keyword.t()
        ) ::
          {:ok, activate_key_signing_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, activate_key_signing_key_errors()}
  def activate_key_signing_key(%Client{} = client, hosted_zone_id, name, input, options \\ []) do
    url_path =
      "/2013-04-01/keysigningkey/#{AWS.Util.encode_uri(hosted_zone_id)}/#{AWS.Util.encode_uri(name)}/activate"

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
  Associates an Amazon VPC with a private hosted zone. To perform the association,
  the VPC and the private hosted zone must already exist. You can't convert a
  public hosted zone into a private hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20AssociateVPCWithHostedZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) The ID of the private hosted zone that you want
    to associate an Amazon VPC with.

  ## Optional parameters:
  """
  @spec associate_vpc_with_hosted_zone(
          AWS.Client.t(),
          String.t(),
          associate_vpc_with_hosted_zone_request(),
          Keyword.t()
        ) ::
          {:ok, associate_vpc_with_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_vpc_with_hosted_zone_errors()}
  def associate_vpc_with_hosted_zone(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/associatevpc"
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
  Creates, changes, or deletes CIDR blocks within a collection. Contains
  authoritative IP information mapping blocks to one or multiple locations. A
  change request can update multiple locations in a collection at a time, which
  is helpful if you want to move one or more CIDR blocks from one location to
  another in one transaction, without downtime.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ChangeCidrCollection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The UUID of the CIDR collection to update.

  ## Optional parameters:
  """
  @spec change_cidr_collection(
          AWS.Client.t(),
          String.t(),
          change_cidr_collection_request(),
          Keyword.t()
        ) ::
          {:ok, change_cidr_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, change_cidr_collection_errors()}
  def change_cidr_collection(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/cidrcollection/#{AWS.Util.encode_uri(id)}"
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
  Creates, changes, or deletes a resource record set, which contains authoritative
  DNS information for a specified domain name or subdomain name. For example,
  you can use `ChangeResourceRecordSets` to create a resource record set that
  routes traffic for test.example.com to a web server that has an IP address of
  192.0.2.44. **Deleting Resource Record Sets**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ChangeResourceRecordSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) The ID of the hosted zone that contains the
    resource record sets that you want to change.

  ## Optional parameters:
  """
  @spec change_resource_record_sets(
          AWS.Client.t(),
          String.t(),
          change_resource_record_sets_request(),
          Keyword.t()
        ) ::
          {:ok, change_resource_record_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, change_resource_record_sets_errors()}
  def change_resource_record_sets(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/rrset"
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
  Adds, edits, or deletes tags for a health check or a hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ChangeTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string`) The ID of the resource for which you want to add,
    change, or delete tags.
  * `:resource_type` (`t:enum["healthcheck|hostedzone"]`) The type of the
    resource.

  ## Optional parameters:
  """
  @spec change_tags_for_resource(
          AWS.Client.t(),
          String.t(),
          String.t(),
          change_tags_for_resource_request(),
          Keyword.t()
        ) ::
          {:ok, change_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, change_tags_for_resource_errors()}
  def change_tags_for_resource(
        %Client{} = client,
        resource_id,
        resource_type,
        input,
        options \\ []
      ) do
    url_path =
      "/2013-04-01/tags/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource_id)}"

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
  Creates a CIDR collection in the current Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateCidrCollection&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_cidr_collection(AWS.Client.t(), create_cidr_collection_request(), Keyword.t()) ::
          {:ok, create_cidr_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cidr_collection_errors()}
  def create_cidr_collection(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/cidrcollection"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
      201
    )
  end

  @doc """
  Creates a new health check. For information about adding health checks to
  resource record sets, see
  [HealthCheckId](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId)
  in
  [ChangeResourceRecordSets](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html).
  **ELB Load Balancers**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateHealthCheck&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_health_check(AWS.Client.t(), create_health_check_request(), Keyword.t()) ::
          {:ok, create_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_health_check_errors()}
  def create_health_check(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/healthcheck"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
      201
    )
  end

  @doc """
  Creates a new public or private hosted zone. You create records in a public
  hosted zone to define how you want to route traffic on the internet for a
  domain, such as example.com, and its subdomains (apex.example.com,
  acme.example.com). You create records in a private hosted zone to define how
  you want to route traffic for a domain and its subdomains within one or more
  Amazon Virtual Private Clouds (Amazon VPCs). You can't convert a public hosted
  zone to a private hosted zone or vice versa. Instead, you must create a new
  hosted zone with the same name and create new resource record sets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateHostedZone&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_hosted_zone(AWS.Client.t(), create_hosted_zone_request(), Keyword.t()) ::
          {:ok, create_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hosted_zone_errors()}
  def create_hosted_zone(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
      201
    )
  end

  @doc """
  Creates a new key-signing key (KSK) associated with a hosted zone. You can only
  have two KSKs per hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateKeySigningKey&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_key_signing_key(AWS.Client.t(), create_key_signing_key_request(), Keyword.t()) ::
          {:ok, create_key_signing_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_key_signing_key_errors()}
  def create_key_signing_key(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/keysigningkey"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
      201
    )
  end

  @doc """
  Creates a configuration for DNS query logging. After you create a query logging
  configuration, Amazon Route 53 begins to publish log data to an Amazon
  CloudWatch Logs log group. DNS query logs contain information about the
  queries that Route 53 receives for a specified public hosted zone, such as the
  following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateQueryLoggingConfig&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_query_logging_config(
          AWS.Client.t(),
          create_query_logging_config_request(),
          Keyword.t()
        ) ::
          {:ok, create_query_logging_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_query_logging_config_errors()}
  def create_query_logging_config(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/queryloggingconfig"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
      201
    )
  end

  @doc """
  Creates a delegation set (a group of four name servers) that can be reused by
  multiple hosted zones that were created by the same Amazon Web Services
  account. You can also create a reusable delegation set that uses the four name
  servers that are associated with an existing hosted zone. Specify the hosted
  zone ID in the `CreateReusableDelegationSet` request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateReusableDelegationSet&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_reusable_delegation_set(
          AWS.Client.t(),
          create_reusable_delegation_set_request(),
          Keyword.t()
        ) ::
          {:ok, create_reusable_delegation_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_reusable_delegation_set_errors()}
  def create_reusable_delegation_set(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/delegationset"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
      201
    )
  end

  @doc """
  Creates a traffic policy, which you use to create multiple DNS resource record
  sets for one domain name (such as example.com) or one subdomain name (such as
  www.example.com).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateTrafficPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_traffic_policy(AWS.Client.t(), create_traffic_policy_request(), Keyword.t()) ::
          {:ok, create_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_traffic_policy_errors()}
  def create_traffic_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicy"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
      201
    )
  end

  @doc """
  Creates resource record sets in a specified hosted zone based on the settings in
  a specified traffic policy version. In addition, `CreateTrafficPolicyInstance`
  associates the resource record sets with a specified domain name (such as
  example.com) or subdomain name (such as www.example.com). Amazon Route 53
  responds to DNS queries for the domain or subdomain name by using the resource
  record sets that `CreateTrafficPolicyInstance` created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateTrafficPolicyInstance&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_traffic_policy_instance(
          AWS.Client.t(),
          create_traffic_policy_instance_request(),
          Keyword.t()
        ) ::
          {:ok, create_traffic_policy_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_traffic_policy_instance_errors()}
  def create_traffic_policy_instance(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstance"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
      201
    )
  end

  @doc """
  Creates a new version of an existing traffic policy. When you create a new
  version of a traffic policy, you specify the ID of the traffic policy that you
  want to update and a JSON-formatted document that describes the new version.
  You use traffic policies to create multiple DNS resource record sets for one
  domain name (such as example.com) or one subdomain name (such as
  www.example.com). You can create a maximum of 1000 versions of a traffic
  policy. If you reach the limit and need to create another version, you'll need
  to start a new traffic policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateTrafficPolicyVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the traffic policy for which you want to create a
    new version.

  ## Optional parameters:
  """
  @spec create_traffic_policy_version(
          AWS.Client.t(),
          String.t(),
          create_traffic_policy_version_request(),
          Keyword.t()
        ) ::
          {:ok, create_traffic_policy_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_traffic_policy_version_errors()}
  def create_traffic_policy_version(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicy/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
      201
    )
  end

  @doc """
  Authorizes the Amazon Web Services account that created a specified VPC to
  submit an `AssociateVPCWithHostedZone` request to associate the VPC with a
  specified hosted zone that was created by a different account. To submit a
  `CreateVPCAssociationAuthorization` request, you must use the account that
  created the hosted zone. After you authorize the association, use the account
  that created the VPC to submit an `AssociateVPCWithHostedZone` request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20CreateVPCAssociationAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) The ID of the private hosted zone that you want
    to authorize associating a VPC with.

  ## Optional parameters:
  """
  @spec create_vpc_association_authorization(
          AWS.Client.t(),
          String.t(),
          create_vpc_association_authorization_request(),
          Keyword.t()
        ) ::
          {:ok, create_vpc_association_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_association_authorization_errors()}
  def create_vpc_association_authorization(
        %Client{} = client,
        hosted_zone_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/authorizevpcassociation"

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
  Deactivates a key-signing key (KSK) so that it will not be used for signing by
  DNSSEC. This operation changes the KSK status to `INACTIVE`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeactivateKeySigningKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) A unique string used to identify a hosted zone.
  * `:name` (`t:string`) A string used to identify a key-signing key (KSK).

  ## Optional parameters:
  """
  @spec deactivate_key_signing_key(
          AWS.Client.t(),
          String.t(),
          String.t(),
          deactivate_key_signing_key_request(),
          Keyword.t()
        ) ::
          {:ok, deactivate_key_signing_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deactivate_key_signing_key_errors()}
  def deactivate_key_signing_key(%Client{} = client, hosted_zone_id, name, input, options \\ []) do
    url_path =
      "/2013-04-01/keysigningkey/#{AWS.Util.encode_uri(hosted_zone_id)}/#{AWS.Util.encode_uri(name)}/deactivate"

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
  Deletes a CIDR collection in the current Amazon Web Services account. The
  collection must be empty before it can be deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeleteCidrCollection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The UUID of the collection to delete.

  ## Optional parameters:
  """
  @spec delete_cidr_collection(
          AWS.Client.t(),
          String.t(),
          delete_cidr_collection_request(),
          Keyword.t()
        ) ::
          {:ok, delete_cidr_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cidr_collection_errors()}
  def delete_cidr_collection(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/cidrcollection/#{AWS.Util.encode_uri(id)}"
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
  Deletes a health check. Amazon Route 53 does not prevent you from deleting a
  health check even if the health check is associated with one or more resource
  record sets. If you delete a health check and you don't update the associated
  resource record sets, the future status of the health check can't be predicted
  and may change. This will affect the routing of DNS queries for your DNS
  failover configuration. For more information, see [Replacing and Deleting
  Health
  Checks](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html)
  in the *Amazon Route 53 Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeleteHealthCheck&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:health_check_id` (`t:string`) The ID of the health check that you want to
    delete.

  ## Optional parameters:
  """
  @spec delete_health_check(
          AWS.Client.t(),
          String.t(),
          delete_health_check_request(),
          Keyword.t()
        ) ::
          {:ok, delete_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_health_check_errors()}
  def delete_health_check(%Client{} = client, health_check_id, input, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}"
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
  Deletes a hosted zone. If the hosted zone was created by another service, such
  as Cloud Map, see [Deleting Public Hosted Zones That Were Created by Another
  Service](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DeleteHostedZone.html#delete-public-hosted-zone-created-by-another-service)
  in the *Amazon Route 53 Developer Guide* for information about how to delete
  it. (The process is the same for public and private hosted zones that were
  created by another service.) If you want to keep your domain registration but
  you want to stop routing internet traffic to your website or web application,
  we recommend that you delete resource record sets in the hosted zone instead
  of deleting the hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeleteHostedZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the hosted zone you want to delete.

  ## Optional parameters:
  """
  @spec delete_hosted_zone(AWS.Client.t(), String.t(), delete_hosted_zone_request(), Keyword.t()) ::
          {:ok, delete_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hosted_zone_errors()}
  def delete_hosted_zone(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(id)}"
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
  Deletes a key-signing key (KSK). Before you can delete a KSK, you must
  deactivate it. The KSK must be deactivated before you can delete it regardless
  of whether the hosted zone is enabled for DNSSEC signing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeleteKeySigningKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) A unique string used to identify a hosted zone.
  * `:name` (`t:string`) A string used to identify a key-signing key (KSK).

  ## Optional parameters:
  """
  @spec delete_key_signing_key(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_key_signing_key_request(),
          Keyword.t()
        ) ::
          {:ok, delete_key_signing_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_key_signing_key_errors()}
  def delete_key_signing_key(%Client{} = client, hosted_zone_id, name, input, options \\ []) do
    url_path =
      "/2013-04-01/keysigningkey/#{AWS.Util.encode_uri(hosted_zone_id)}/#{AWS.Util.encode_uri(name)}"

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
  Deletes a configuration for DNS query logging. If you delete a configuration,
  Amazon Route 53 stops sending query logs to CloudWatch Logs. Route 53 doesn't
  delete any logs that are already in CloudWatch Logs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeleteQueryLoggingConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the configuration that you want to delete.

  ## Optional parameters:
  """
  @spec delete_query_logging_config(
          AWS.Client.t(),
          String.t(),
          delete_query_logging_config_request(),
          Keyword.t()
        ) ::
          {:ok, delete_query_logging_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_query_logging_config_errors()}
  def delete_query_logging_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/queryloggingconfig/#{AWS.Util.encode_uri(id)}"
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
  Deletes a reusable delegation set. You can delete a reusable delegation set only
  if it isn't associated with any hosted zones.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeleteReusableDelegationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the reusable delegation set that you want to
    delete.

  ## Optional parameters:
  """
  @spec delete_reusable_delegation_set(
          AWS.Client.t(),
          String.t(),
          delete_reusable_delegation_set_request(),
          Keyword.t()
        ) ::
          {:ok, delete_reusable_delegation_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_reusable_delegation_set_errors()}
  def delete_reusable_delegation_set(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/delegationset/#{AWS.Util.encode_uri(id)}"
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
  Deletes a traffic policy. When you delete a traffic policy, Route 53 sets a flag
  on the policy to indicate that it has been deleted. However, Route 53 never
  fully deletes the traffic policy. Note the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeleteTrafficPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the traffic policy that you want to delete.
  * `:version` (`t:integer`) The version number of the traffic policy that you
    want to delete.

  ## Optional parameters:
  """
  @spec delete_traffic_policy(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_traffic_policy_request(),
          Keyword.t()
        ) ::
          {:ok, delete_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_traffic_policy_errors()}
  def delete_traffic_policy(%Client{} = client, id, version, input, options \\ []) do
    url_path =
      "/2013-04-01/trafficpolicy/#{AWS.Util.encode_uri(id)}/#{AWS.Util.encode_uri(version)}"

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
  Deletes a traffic policy instance and all of the resource record sets that
  Amazon Route 53 created when you created the instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeleteTrafficPolicyInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the traffic policy instance that you want to
    delete.

  ## Optional parameters:
  """
  @spec delete_traffic_policy_instance(
          AWS.Client.t(),
          String.t(),
          delete_traffic_policy_instance_request(),
          Keyword.t()
        ) ::
          {:ok, delete_traffic_policy_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_traffic_policy_instance_errors()}
  def delete_traffic_policy_instance(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstance/#{AWS.Util.encode_uri(id)}"
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
  Removes authorization to submit an `AssociateVPCWithHostedZone` request to
  associate a specified VPC with a hosted zone that was created by a different
  account. You must use the account that created the hosted zone to submit a
  `DeleteVPCAssociationAuthorization` request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DeleteVPCAssociationAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) When removing authorization to associate a VPC
    that was created by one Amazon Web Services account with a hosted zone that
    was created with a different Amazon Web Services account, the ID of the
    hosted zone.

  ## Optional parameters:
  """
  @spec delete_vpc_association_authorization(
          AWS.Client.t(),
          String.t(),
          delete_vpc_association_authorization_request(),
          Keyword.t()
        ) ::
          {:ok, delete_vpc_association_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_association_authorization_errors()}
  def delete_vpc_association_authorization(
        %Client{} = client,
        hosted_zone_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/deauthorizevpcassociation"

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
  Disables DNSSEC signing in a specific hosted zone. This action does not
  deactivate any key-signing keys (KSKs) that are active in the hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DisableHostedZoneDNSSEC&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) A unique string used to identify a hosted zone.

  ## Optional parameters:
  """
  @spec disable_hosted_zone_dns_sec(
          AWS.Client.t(),
          String.t(),
          disable_hosted_zone_dns_sec_request(),
          Keyword.t()
        ) ::
          {:ok, disable_hosted_zone_dns_sec_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_hosted_zone_dns_sec_errors()}
  def disable_hosted_zone_dns_sec(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/disable-dnssec"
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
  Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an Amazon Route
  53 private hosted zone. Note the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20DisassociateVPCFromHostedZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) The ID of the private hosted zone that you want
    to disassociate a VPC from.

  ## Optional parameters:
  """
  @spec disassociate_vpc_from_hosted_zone(
          AWS.Client.t(),
          String.t(),
          disassociate_vpc_from_hosted_zone_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_vpc_from_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_vpc_from_hosted_zone_errors()}
  def disassociate_vpc_from_hosted_zone(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/disassociatevpc"
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
  Enables DNSSEC signing in a specific hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20EnableHostedZoneDNSSEC&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) A unique string used to identify a hosted zone.

  ## Optional parameters:
  """
  @spec enable_hosted_zone_dns_sec(
          AWS.Client.t(),
          String.t(),
          enable_hosted_zone_dns_sec_request(),
          Keyword.t()
        ) ::
          {:ok, enable_hosted_zone_dns_sec_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_hosted_zone_dns_sec_errors()}
  def enable_hosted_zone_dns_sec(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/enable-dnssec"
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
  Gets the specified limit for the current account, for example, the maximum
  number of health checks that you can create using the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetAccountLimit&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:type`
    (`t:enum["MAX_HEALTH_CHECKS_BY_OWNER|MAX_HOSTED_ZONES_BY_OWNER|MAX_REUSABLE_DELEGATION_SETS_BY_OWNER|MAX_TRAFFIC_POLICIES_BY_OWNER|MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER"]`)
    The limit that you want to get. Valid values include the following:

  ## Optional parameters:
  """
  @spec get_account_limit(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_account_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_limit_errors()}
  def get_account_limit(%Client{} = client, type, options \\ []) do
    url_path = "/2013-04-01/accountlimit/#{AWS.Util.encode_uri(type)}"

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
  Returns the current status of a change batch request. The status is one of the
  following values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetChange&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the change batch request. The value that you
    specify here is the value that ChangeResourceRecordSets returned in the Id
    element when you submitted the request.

  ## Optional parameters:
  """
  @spec get_change(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_change_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_change_errors()}
  def get_change(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/change/#{AWS.Util.encode_uri(id)}"

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
  Route 53 does not perform authorization for this API because it retrieves
  information that is already available to the public.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetCheckerIpRanges&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_checker_ip_ranges(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_checker_ip_ranges_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_checker_ip_ranges(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/checkeripranges"

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
  Returns information about DNSSEC for a specific hosted zone, including the
  key-signing keys (KSKs) in the hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetDNSSEC&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) A unique string used to identify a hosted zone.

  ## Optional parameters:
  """
  @spec get_dns_sec(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_dns_sec_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dns_sec_errors()}
  def get_dns_sec(%Client{} = client, hosted_zone_id, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/dnssec"

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
  Gets information about whether a specified geographic location is supported for
  Amazon Route 53 geolocation resource record sets. Route 53 does not perform
  authorization for this API because it retrieves information that is already
  available to the public.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetGeoLocation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:continent_code` (`t:string`) For geolocation resource record sets, a
    two-letter abbreviation that identifies a continent. Amazon Route 53
    supports the following continent codes:
  * `:country_code` (`t:string`) Amazon Route 53 uses the two-letter country codes
    that are specified in ISO standard 3166-1 alpha-2.
  * `:subdivision_code` (`t:string`) The code for the subdivision, such as a
    particular state within the United States. For a list of US state
    abbreviations, see Appendix B: Two–Letter State and Possession Abbreviations
    on the United States Postal Service website. For a list of all supported
    subdivision codes, use the ListGeoLocations API.
  """
  @spec get_geo_location(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_geo_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_geo_location_errors()}
  def get_geo_location(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/geolocation"

    # Validate optional parameters
    optional_params = [continent_code: nil, country_code: nil, subdivision_code: nil]

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
      if opt_val = Keyword.get(options, :subdivision_code) do
        [{"subdivisioncode", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :country_code) do
        [{"countrycode", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :continent_code) do
        [{"continentcode", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:continent_code, :country_code, :subdivision_code])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified health check.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetHealthCheck&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:health_check_id` (`t:string`) The identifier that Amazon Route 53 assigned
    to the health check when you created it. When you add or update a resource
    record set, you use this value to specify which health check to use. The
    value can be up to 64 characters long.

  ## Optional parameters:
  """
  @spec get_health_check(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_health_check_errors()}
  def get_health_check(%Client{} = client, health_check_id, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}"

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
  Retrieves the number of health checks that are associated with the current
  Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetHealthCheckCount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_health_check_count(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_health_check_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_health_check_count(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/healthcheckcount"

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
  Gets the reason that a specified health check failed most recently.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetHealthCheckLastFailureReason&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:health_check_id` (`t:string`) The ID for the health check for which you want
    the last failure reason. When you created the health check,
    CreateHealthCheck returned the ID in the response, in the HealthCheckId
    element.

  ## Optional parameters:
  """
  @spec get_health_check_last_failure_reason(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_health_check_last_failure_reason_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_health_check_last_failure_reason_errors()}
  def get_health_check_last_failure_reason(%Client{} = client, health_check_id, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}/lastfailurereason"

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
  Gets status of a specified health check.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetHealthCheckStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:health_check_id` (`t:string`) The ID for the health check that you want the
    current status for. When you created the health check, CreateHealthCheck
    returned the ID in the response, in the HealthCheckId element.

  ## Optional parameters:
  """
  @spec get_health_check_status(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_health_check_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_health_check_status_errors()}
  def get_health_check_status(%Client{} = client, health_check_id, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}/status"

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
  Gets information about a specified hosted zone including the four name servers
  assigned to the hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetHostedZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the hosted zone that you want to get information
    about.

  ## Optional parameters:
  """
  @spec get_hosted_zone(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_hosted_zone_errors()}
  def get_hosted_zone(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(id)}"

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
  Retrieves the number of hosted zones that are associated with the current Amazon
  Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetHostedZoneCount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_hosted_zone_count(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_hosted_zone_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_hosted_zone_count_errors()}
  def get_hosted_zone_count(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/hostedzonecount"

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
  Gets the specified limit for a specified hosted zone, for example, the maximum
  number of records that you can create in the hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetHostedZoneLimit&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) The ID of the hosted zone that you want to get
    a limit for.
  * `:type` (`t:enum["MAX_RRSETS_BY_ZONE|MAX_VPCS_ASSOCIATED_BY_ZONE"]`) The limit
    that you want to get. Valid values include the following:

  ## Optional parameters:
  """
  @spec get_hosted_zone_limit(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_hosted_zone_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_hosted_zone_limit_errors()}
  def get_hosted_zone_limit(%Client{} = client, hosted_zone_id, type, options \\ []) do
    url_path =
      "/2013-04-01/hostedzonelimit/#{AWS.Util.encode_uri(hosted_zone_id)}/#{AWS.Util.encode_uri(type)}"

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
  Gets information about a specified configuration for DNS query logging.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetQueryLoggingConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the configuration for DNS query logging that you
    want to get information about.

  ## Optional parameters:
  """
  @spec get_query_logging_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_query_logging_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_query_logging_config_errors()}
  def get_query_logging_config(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/queryloggingconfig/#{AWS.Util.encode_uri(id)}"

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
  Retrieves information about a specified reusable delegation set, including the
  four name servers that are assigned to the delegation set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetReusableDelegationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the reusable delegation set that you want to get
    a list of name servers for.

  ## Optional parameters:
  """
  @spec get_reusable_delegation_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_reusable_delegation_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_reusable_delegation_set_errors()}
  def get_reusable_delegation_set(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/delegationset/#{AWS.Util.encode_uri(id)}"

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
  Gets the maximum number of hosted zones that you can associate with the
  specified reusable delegation set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetReusableDelegationSetLimit&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:delegation_set_id` (`t:string`) The ID of the delegation set that you want
    to get the limit for.
  * `:type` (`t:enum["MAX_ZONES_BY_REUSABLE_DELEGATION_SET"]`) Specify
    MAX_ZONES_BY_REUSABLE_DELEGATION_SET to get the maximum number of hosted
    zones that you can associate with the specified reusable delegation set.

  ## Optional parameters:
  """
  @spec get_reusable_delegation_set_limit(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_reusable_delegation_set_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_reusable_delegation_set_limit_errors()}
  def get_reusable_delegation_set_limit(
        %Client{} = client,
        delegation_set_id,
        type,
        options \\ []
      ) do
    url_path =
      "/2013-04-01/reusabledelegationsetlimit/#{AWS.Util.encode_uri(delegation_set_id)}/#{AWS.Util.encode_uri(type)}"

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
  Gets information about a specific traffic policy version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetTrafficPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the traffic policy that you want to get
    information about.
  * `:version` (`t:integer`) The version number of the traffic policy that you
    want to get information about.

  ## Optional parameters:
  """
  @spec get_traffic_policy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_traffic_policy_errors()}
  def get_traffic_policy(%Client{} = client, id, version, options \\ []) do
    url_path =
      "/2013-04-01/trafficpolicy/#{AWS.Util.encode_uri(id)}/#{AWS.Util.encode_uri(version)}"

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
  Gets information about a specified traffic policy instance. Use
  `GetTrafficPolicyInstance` with the `id` of new traffic policy instance to
  confirm that the `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request completed successfully. For more
  information, see the `State` response element.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetTrafficPolicyInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the traffic policy instance that you want to get
    information about.

  ## Optional parameters:
  """
  @spec get_traffic_policy_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_traffic_policy_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_traffic_policy_instance_errors()}
  def get_traffic_policy_instance(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstance/#{AWS.Util.encode_uri(id)}"

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
  Gets the number of traffic policy instances that are associated with the current
  Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20GetTrafficPolicyInstanceCount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_traffic_policy_instance_count(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_traffic_policy_instance_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_traffic_policy_instance_count(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstancecount"

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
  Returns a paginated list of location objects and their CIDR blocks.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListCidrBlocks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collection_id` (`t:string`) The UUID of the CIDR collection.

  ## Optional parameters:
  * `:location_name` (`t:string`) The name of the CIDR collection location.
  * `:max_results` (`t:`) Maximum number of results you want returned.
  * `:next_token` (`t:string`) An opaque pagination token to indicate where the
    service is to begin enumerating results.
  """
  @spec list_cidr_blocks(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_cidr_blocks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cidr_blocks_errors()}
  def list_cidr_blocks(%Client{} = client, collection_id, options \\ []) do
    url_path = "/2013-04-01/cidrcollection/#{AWS.Util.encode_uri(collection_id)}/cidrblocks"

    # Validate optional parameters
    optional_params = [location_name: nil, max_results: nil, next_token: nil]

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
        [{"nexttoken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxresults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :location_name) do
        [{"location", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:location_name, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of CIDR collections in the Amazon Web Services account
  (metadata only).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListCidrCollections&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of CIDR collections to return in the
    response.
  * `:next_token` (`t:string`) An opaque pagination token to indicate where the
    service is to begin enumerating results.
  """
  @spec list_cidr_collections(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_cidr_collections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cidr_collections_errors()}
  def list_cidr_collections(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/cidrcollection"

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
        [{"nexttoken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxresults", opt_val} | query_params]
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
  Returns a paginated list of CIDR locations for the given collection (metadata
  only, does not include CIDR blocks).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListCidrLocations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collection_id` (`t:string`) The CIDR collection ID.

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of CIDR collection locations to
    return in the response.
  * `:next_token` (`t:string`) An opaque pagination token to indicate where the
    service is to begin enumerating results.
  """
  @spec list_cidr_locations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_cidr_locations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cidr_locations_errors()}
  def list_cidr_locations(%Client{} = client, collection_id, options \\ []) do
    url_path = "/2013-04-01/cidrcollection/#{AWS.Util.encode_uri(collection_id)}"

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
        [{"nexttoken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxresults", opt_val} | query_params]
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
  Retrieves a list of supported geographic locations. Countries are listed first,
  and continents are listed last. If Amazon Route 53 supports subdivisions for a
  country (for example, states or provinces), the subdivisions for that country
  are listed in alphabetical order immediately after the corresponding country.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListGeoLocations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_items` (`t:`) (Optional) The maximum number of geolocations to be
    included in the response body for this request. If more than maxitems
    geolocations remain to be listed, then the value of the IsTruncated element
    in the response is true.
  * `:start_continent_code` (`t:string`) The code for the continent with which you
    want to start listing locations that Amazon Route 53 supports for
    geolocation. If Route 53 has already returned a page or more of results, if
    IsTruncated is true, and if NextContinentCode from the previous response has
    a value, enter that value in startcontinentcode to return the next page of
    results.
  * `:start_country_code` (`t:string`) The code for the country with which you
    want to start listing locations that Amazon Route 53 supports for
    geolocation. If Route 53 has already returned a page or more of results, if
    IsTruncated is true, and if NextCountryCode from the previous response has a
    value, enter that value in startcountrycode to return the next page of
    results.
  * `:start_subdivision_code` (`t:string`) The code for the state of the United
    States with which you want to start listing locations that Amazon Route 53
    supports for geolocation. If Route 53 has already returned a page or more of
    results, if IsTruncated is true, and if NextSubdivisionCode from the
    previous response has a value, enter that value in startsubdivisioncode to
    return the next page of results.
  """
  @spec list_geo_locations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_geo_locations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_geo_locations_errors()}
  def list_geo_locations(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/geolocations"

    # Validate optional parameters
    optional_params = [
      max_items: nil,
      start_continent_code: nil,
      start_country_code: nil,
      start_subdivision_code: nil
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
      if opt_val = Keyword.get(options, :start_subdivision_code) do
        [{"startsubdivisioncode", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :start_country_code) do
        [{"startcountrycode", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :start_continent_code) do
        [{"startcontinentcode", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_items) do
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :max_items,
        :start_continent_code,
        :start_country_code,
        :start_subdivision_code
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve a list of the health checks that are associated with the current Amazon
  Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListHealthChecks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:marker` (`t:string`) If the value of IsTruncated in the previous response
    was true, you have more health checks. To get another group, submit another
    ListHealthChecks request.
  * `:max_items` (`t:`) The maximum number of health checks that you want
    ListHealthChecks to return in response to the current request. Amazon Route
    53 returns a maximum of 1000 items. If you set MaxItems to a value greater
    than 1000, Route 53 returns only the first 1000 health checks.
  """
  @spec list_health_checks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_health_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_health_checks_errors()}
  def list_health_checks(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/healthcheck"

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
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
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
  Retrieves a list of the public and private hosted zones that are associated with
  the current Amazon Web Services account. The response includes a `HostedZones`
  child element for each hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListHostedZones&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:delegation_set_id` (`t:string`) If you're using reusable delegation sets and
    you want to list all of the hosted zones that are associated with a reusable
    delegation set, specify the ID of that reusable delegation set.
  * `:hosted_zone_type` (`t:enum["PRIVATE_HOSTED_ZONE"]`) (Optional) Specifies if
    the hosted zone is private.
  * `:marker` (`t:string`) If the value of IsTruncated in the previous response
    was true, you have more hosted zones. To get more hosted zones, submit
    another ListHostedZones request.
  * `:max_items` (`t:`) (Optional) The maximum number of hosted zones that you
    want Amazon Route 53 to return. If you have more than maxitems hosted zones,
    the value of IsTruncated in the response is true, and the value of
    NextMarker is the hosted zone ID of the first hosted zone that Route 53 will
    return if you submit another request.
  """
  @spec list_hosted_zones(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_hosted_zones_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hosted_zones_errors()}
  def list_hosted_zones(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/hostedzone"

    # Validate optional parameters
    optional_params = [delegation_set_id: nil, hosted_zone_type: nil, marker: nil, max_items: nil]

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
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :hosted_zone_type) do
        [{"hostedzonetype", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :delegation_set_id) do
        [{"delegationsetid", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:delegation_set_id, :hosted_zone_type, :marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of your hosted zones in lexicographic order. The response
  includes a `HostedZones` child element for each hosted zone created by the
  current Amazon Web Services account. `ListHostedZonesByName` sorts hosted
  zones by name with the labels reversed. For example:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListHostedZonesByName&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:dns_name` (`t:string`) (Optional) For your first request to
    ListHostedZonesByName, include the dnsname parameter only if you want to
    specify the name of the first hosted zone in the response. If you don't
    include the dnsname parameter, Amazon Route 53 returns all of the hosted
    zones that were created by the current Amazon Web Services account, in ASCII
    order. For subsequent requests, include both dnsname and hostedzoneid
    parameters. For dnsname, specify the value of NextDNSName from the previous
    response.
  * `:hosted_zone_id` (`t:string`) (Optional) For your first request to
    ListHostedZonesByName, do not include the hostedzoneid parameter.
  * `:max_items` (`t:`) The maximum number of hosted zones to be included in the
    response body for this request. If you have more than maxitems hosted zones,
    then the value of the IsTruncated element in the response is true, and the
    values of NextDNSName and NextHostedZoneId specify the first hosted zone in
    the next group of maxitems hosted zones.
  """
  @spec list_hosted_zones_by_name(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_hosted_zones_by_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hosted_zones_by_name_errors()}
  def list_hosted_zones_by_name(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/hostedzonesbyname"

    # Validate optional parameters
    optional_params = [dns_name: nil, hosted_zone_id: nil, max_items: nil]

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
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :hosted_zone_id) do
        [{"hostedzoneid", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :dns_name) do
        [{"dnsname", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:dns_name, :hosted_zone_id, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the private hosted zones that a specified VPC is associated with,
  regardless of which Amazon Web Services account or Amazon Web Services service
  owns the hosted zones. The `HostedZoneOwner` structure in the response
  contains one of the following values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListHostedZonesByVPC&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vpc_id` (`t:string`) The ID of the Amazon VPC that you want to list hosted
    zones for.
  * `:vpc_region`
    (`t:enum["eu_central_2|eu_north_1|il_central_1|us_iso_east_1|us_gov_west_1|ca_central_1|ap_southeast_1|ap_east_1|eu_west_3|ap_northeast_1|us_iso_west_1|us_isob_east_1|us_gov_east_1|eu_south_1|me_central_1|us_west_1|sa_east_1|ap_south_2|eu_central_1|ap_northeast_2|eu_south_2|us_west_2|us_east_2|ca_west_1|eu_west_1|ap_northeast_3|ap_southeast_4|eu_west_2|ap_southeast_2|ap_southeast_3|af_south_1|cn_north_1|me_south_1|us_east_1|ap_south_1"]`)
    For the Amazon VPC that you specified for VPCId, the Amazon Web Services
    Region that you created the VPC in.

  ## Optional parameters:
  * `:max_items` (`t:`) (Optional) The maximum number of hosted zones that you
    want Amazon Route 53 to return. If the specified VPC is associated with more
    than MaxItems hosted zones, the response includes a NextToken element.
    NextToken contains an encrypted token that identifies the first hosted zone
    that Route 53 will return if you submit another request.
  * `:next_token` (`t:string`) If the previous response included a NextToken
    element, the specified VPC is associated with more hosted zones. To get more
    hosted zones, submit another ListHostedZonesByVPC request.
  """
  @spec list_hosted_zones_by_vpc(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_hosted_zones_by_vpc_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hosted_zones_by_vpc_errors()}
  def list_hosted_zones_by_vpc(%Client{} = client, vpc_id, vpc_region, options \\ []) do
    url_path = "/2013-04-01/hostedzonesbyvpc"

    # Validate optional parameters
    optional_params = [max_items: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"vpcid", vpc_id}, {"vpcregion", vpc_region}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nexttoken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_items) do
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_items, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the configurations for DNS query logging that are associated with the
  current Amazon Web Services account or the configuration that is associated
  with a specified hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListQueryLoggingConfigs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:hosted_zone_id` (`t:string`) (Optional) If you want to list the query
    logging configuration that is associated with a hosted zone, specify the ID
    in HostedZoneId.
  * `:max_results` (`t:`) (Optional) The maximum number of query logging
    configurations that you want Amazon Route 53 to return in response to the
    current request. If the current Amazon Web Services account has more than
    MaxResults configurations, use the value of NextToken in the response to get
    the next page of results.
  * `:next_token` (`t:string`) (Optional) If the current Amazon Web Services
    account has more than MaxResults query logging configurations, use NextToken
    to get the second and subsequent pages of results.
  """
  @spec list_query_logging_configs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_query_logging_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_query_logging_configs_errors()}
  def list_query_logging_configs(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/queryloggingconfig"

    # Validate optional parameters
    optional_params = [hosted_zone_id: nil, max_results: nil, next_token: nil]

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
        [{"nexttoken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxresults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :hosted_zone_id) do
        [{"hostedzoneid", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:hosted_zone_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the resource record sets in a specified hosted zone.
  `ListResourceRecordSets` returns up to 300 resource record sets at a time in
  ASCII order, beginning at a position specified by the `name` and `type`
  elements.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListResourceRecordSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) The ID of the hosted zone that contains the
    resource record sets that you want to list.

  ## Optional parameters:
  * `:max_items` (`t:`) (Optional) The maximum number of resource records sets to
    include in the response body for this request. If the response includes more
    than maxitems resource record sets, the value of the IsTruncated element in
    the response is true, and the values of the NextRecordName and
    NextRecordType elements in the response identify the first resource record
    set in the next group of maxitems resource record sets.
  * `:start_record_identifier` (`t:string`) Resource record sets that have a
    routing policy other than simple: If results were truncated for a given DNS
    name and type, specify the value of NextRecordIdentifier from the previous
    response to get the next resource record set that has the current DNS name
    and type.
  * `:start_record_name` (`t:string`) The first name in the lexicographic ordering
    of resource record sets that you want to list. If the specified record name
    doesn't exist, the results begin with the first resource record set that has
    a name greater than the value of name.
  * `:start_record_type`
    (`t:enum["A|AAAA|CAA|CNAME|DS|MX|NAPTR|NS|PTR|SOA|SPF|SRV|TXT"]`) The type
    of resource record set to begin the record listing from.
  """
  @spec list_resource_record_sets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_resource_record_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_record_sets_errors()}
  def list_resource_record_sets(%Client{} = client, hosted_zone_id, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/rrset"

    # Validate optional parameters
    optional_params = [
      max_items: nil,
      start_record_identifier: nil,
      start_record_name: nil,
      start_record_type: nil
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
      if opt_val = Keyword.get(options, :start_record_type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :start_record_name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :start_record_identifier) do
        [{"identifier", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_items) do
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :max_items,
        :start_record_identifier,
        :start_record_name,
        :start_record_type
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of the reusable delegation sets that are associated with the
  current Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListReusableDelegationSets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:marker` (`t:string`) If the value of IsTruncated in the previous response
    was true, you have more reusable delegation sets. To get another group,
    submit another ListReusableDelegationSets request.
  * `:max_items` (`t:`) The number of reusable delegation sets that you want
    Amazon Route 53 to return in the response to this request. If you specify a
    value greater than 100, Route 53 returns only the first 100 reusable
    delegation sets.
  """
  @spec list_reusable_delegation_sets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_reusable_delegation_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_reusable_delegation_sets_errors()}
  def list_reusable_delegation_sets(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/delegationset"

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
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
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
  Lists tags for one health check or hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string`) The ID of the resource for which you want to
    retrieve tags.
  * `:resource_type` (`t:enum["healthcheck|hostedzone"]`) The type of the
    resource.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_id, resource_type, options \\ []) do
    url_path =
      "/2013-04-01/tags/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource_id)}"

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
  Lists tags for up to 10 health checks or hosted zones.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListTagsForResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_type` (`t:enum["healthcheck|hostedzone"]`) The type of the
    resources.

  ## Optional parameters:
  """
  @spec list_tags_for_resources(
          AWS.Client.t(),
          String.t(),
          list_tags_for_resources_request(),
          Keyword.t()
        ) ::
          {:ok, list_tags_for_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resources_errors()}
  def list_tags_for_resources(%Client{} = client, resource_type, input, options \\ []) do
    url_path = "/2013-04-01/tags/#{AWS.Util.encode_uri(resource_type)}"
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
  Gets information about the latest version for every traffic policy that is
  associated with the current Amazon Web Services account. Policies are listed
  in the order that they were created in.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListTrafficPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_items` (`t:`) (Optional) The maximum number of traffic policies that you
    want Amazon Route 53 to return in response to this request. If you have more
    than MaxItems traffic policies, the value of IsTruncated in the response is
    true, and the value of TrafficPolicyIdMarker is the ID of the first traffic
    policy that Route 53 will return if you submit another request.
  * `:traffic_policy_id_marker` (`t:string`) (Conditional) For your first request
    to ListTrafficPolicies, don't include the TrafficPolicyIdMarker parameter.
  """
  @spec list_traffic_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_traffic_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_traffic_policies_errors()}
  def list_traffic_policies(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/trafficpolicies"

    # Validate optional parameters
    optional_params = [max_items: nil, traffic_policy_id_marker: nil]

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
      if opt_val = Keyword.get(options, :traffic_policy_id_marker) do
        [{"trafficpolicyid", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_items) do
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_items, :traffic_policy_id_marker])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the traffic policy instances that you created by using
  the current Amazon Web Services account. After you submit an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon
  Route 53 creates the resource record sets that are specified in the traffic
  policy definition. For more information, see the `State` response element.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListTrafficPolicyInstances&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:hosted_zone_id_marker` (`t:string`) If the value of IsTruncated in the
    previous response was true, you have more traffic policy instances. To get
    more traffic policy instances, submit another ListTrafficPolicyInstances
    request. For the value of HostedZoneId, specify the value of
    HostedZoneIdMarker from the previous response, which is the hosted zone ID
    of the first traffic policy instance in the next group of traffic policy
    instances.
  * `:max_items` (`t:`) The maximum number of traffic policy instances that you
    want Amazon Route 53 to return in response to a ListTrafficPolicyInstances
    request. If you have more than MaxItems traffic policy instances, the value
    of the IsTruncated element in the response is true, and the values of
    HostedZoneIdMarker, TrafficPolicyInstanceNameMarker, and
    TrafficPolicyInstanceTypeMarker represent the first traffic policy instance
    in the next group of MaxItems traffic policy instances.
  * `:traffic_policy_instance_name_marker` (`t:string`) If the value of
    IsTruncated in the previous response was true, you have more traffic policy
    instances. To get more traffic policy instances, submit another
    ListTrafficPolicyInstances request. For the value of
    trafficpolicyinstancename, specify the value of
    TrafficPolicyInstanceNameMarker from the previous response, which is the
    name of the first traffic policy instance in the next group of traffic
    policy instances.
  * `:traffic_policy_instance_type_marker`
    (`t:enum["A|AAAA|CAA|CNAME|DS|MX|NAPTR|NS|PTR|SOA|SPF|SRV|TXT"]`) If the
    value of IsTruncated in the previous response was true, you have more
    traffic policy instances. To get more traffic policy instances, submit
    another ListTrafficPolicyInstances request. For the value of
    trafficpolicyinstancetype, specify the value of
    TrafficPolicyInstanceTypeMarker from the previous response, which is the
    type of the first traffic policy instance in the next group of traffic
    policy instances.
  """
  @spec list_traffic_policy_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_traffic_policy_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_traffic_policy_instances_errors()}
  def list_traffic_policy_instances(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstances"

    # Validate optional parameters
    optional_params = [
      hosted_zone_id_marker: nil,
      max_items: nil,
      traffic_policy_instance_name_marker: nil,
      traffic_policy_instance_type_marker: nil
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
      if opt_val = Keyword.get(options, :traffic_policy_instance_type_marker) do
        [{"trafficpolicyinstancetype", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :traffic_policy_instance_name_marker) do
        [{"trafficpolicyinstancename", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_items) do
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :hosted_zone_id_marker) do
        [{"hostedzoneid", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :hosted_zone_id_marker,
        :max_items,
        :traffic_policy_instance_name_marker,
        :traffic_policy_instance_type_marker
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the traffic policy instances that you created in a
  specified hosted zone. After you submit a `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon
  Route 53 creates the resource record sets that are specified in the traffic
  policy definition. For more information, see the `State` response element.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListTrafficPolicyInstancesByHostedZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) The ID of the hosted zone that you want to list
    traffic policy instances for.

  ## Optional parameters:
  * `:max_items` (`t:`) The maximum number of traffic policy instances to be
    included in the response body for this request. If you have more than
    MaxItems traffic policy instances, the value of the IsTruncated element in
    the response is true, and the values of HostedZoneIdMarker,
    TrafficPolicyInstanceNameMarker, and TrafficPolicyInstanceTypeMarker
    represent the first traffic policy instance that Amazon Route 53 will return
    if you submit another request.
  * `:traffic_policy_instance_name_marker` (`t:string`) If the value of
    IsTruncated in the previous response is true, you have more traffic policy
    instances. To get more traffic policy instances, submit another
    ListTrafficPolicyInstances request. For the value of
    trafficpolicyinstancename, specify the value of
    TrafficPolicyInstanceNameMarker from the previous response, which is the
    name of the first traffic policy instance in the next group of traffic
    policy instances.
  * `:traffic_policy_instance_type_marker`
    (`t:enum["A|AAAA|CAA|CNAME|DS|MX|NAPTR|NS|PTR|SOA|SPF|SRV|TXT"]`) If the
    value of IsTruncated in the previous response is true, you have more traffic
    policy instances. To get more traffic policy instances, submit another
    ListTrafficPolicyInstances request. For the value of
    trafficpolicyinstancetype, specify the value of
    TrafficPolicyInstanceTypeMarker from the previous response, which is the
    type of the first traffic policy instance in the next group of traffic
    policy instances.
  """
  @spec list_traffic_policy_instances_by_hosted_zone(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_traffic_policy_instances_by_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_traffic_policy_instances_by_hosted_zone_errors()}
  def list_traffic_policy_instances_by_hosted_zone(
        %Client{} = client,
        hosted_zone_id,
        options \\ []
      ) do
    url_path = "/2013-04-01/trafficpolicyinstances/hostedzone"

    # Validate optional parameters
    optional_params = [
      max_items: nil,
      traffic_policy_instance_name_marker: nil,
      traffic_policy_instance_type_marker: nil
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
    query_params = [{"id", hosted_zone_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :traffic_policy_instance_type_marker) do
        [{"trafficpolicyinstancetype", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :traffic_policy_instance_name_marker) do
        [{"trafficpolicyinstancename", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_items) do
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :max_items,
        :traffic_policy_instance_name_marker,
        :traffic_policy_instance_type_marker
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the traffic policy instances that you created by using a
  specify traffic policy version. After you submit a
  `CreateTrafficPolicyInstance` or an `UpdateTrafficPolicyInstance` request,
  there's a brief delay while Amazon Route 53 creates the resource record sets
  that are specified in the traffic policy definition. For more information, see
  the `State` response element.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListTrafficPolicyInstancesByPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:traffic_policy_id` (`t:string`) The ID of the traffic policy for which you
    want to list traffic policy instances.
  * `:traffic_policy_version` (`t:integer`) The version of the traffic policy for
    which you want to list traffic policy instances. The version must be
    associated with the traffic policy that is specified by TrafficPolicyId.

  ## Optional parameters:
  * `:hosted_zone_id_marker` (`t:string`) If the value of IsTruncated in the
    previous response was true, you have more traffic policy instances. To get
    more traffic policy instances, submit another
    ListTrafficPolicyInstancesByPolicy request.
  * `:max_items` (`t:`) The maximum number of traffic policy instances to be
    included in the response body for this request. If you have more than
    MaxItems traffic policy instances, the value of the IsTruncated element in
    the response is true, and the values of HostedZoneIdMarker,
    TrafficPolicyInstanceNameMarker, and TrafficPolicyInstanceTypeMarker
    represent the first traffic policy instance that Amazon Route 53 will return
    if you submit another request.
  * `:traffic_policy_instance_name_marker` (`t:string`) If the value of
    IsTruncated in the previous response was true, you have more traffic policy
    instances. To get more traffic policy instances, submit another
    ListTrafficPolicyInstancesByPolicy request.
  * `:traffic_policy_instance_type_marker`
    (`t:enum["A|AAAA|CAA|CNAME|DS|MX|NAPTR|NS|PTR|SOA|SPF|SRV|TXT"]`) If the
    value of IsTruncated in the previous response was true, you have more
    traffic policy instances. To get more traffic policy instances, submit
    another ListTrafficPolicyInstancesByPolicy request.
  """
  @spec list_traffic_policy_instances_by_policy(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_traffic_policy_instances_by_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_traffic_policy_instances_by_policy_errors()}
  def list_traffic_policy_instances_by_policy(
        %Client{} = client,
        traffic_policy_id,
        traffic_policy_version,
        options \\ []
      ) do
    url_path = "/2013-04-01/trafficpolicyinstances/trafficpolicy"

    # Validate optional parameters
    optional_params = [
      hosted_zone_id_marker: nil,
      max_items: nil,
      traffic_policy_instance_name_marker: nil,
      traffic_policy_instance_type_marker: nil
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
    query_params = [{"id", traffic_policy_id}, {"version", traffic_policy_version}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :traffic_policy_instance_type_marker) do
        [{"trafficpolicyinstancetype", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :traffic_policy_instance_name_marker) do
        [{"trafficpolicyinstancename", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_items) do
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :hosted_zone_id_marker) do
        [{"hostedzoneid", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :hosted_zone_id_marker,
        :max_items,
        :traffic_policy_instance_name_marker,
        :traffic_policy_instance_type_marker
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about all of the versions for a specified traffic policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListTrafficPolicyVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) Specify the value of Id of the traffic policy for which you
    want to list all versions.

  ## Optional parameters:
  * `:max_items` (`t:`) The maximum number of traffic policy versions that you
    want Amazon Route 53 to include in the response body for this request. If
    the specified traffic policy has more than MaxItems versions, the value of
    IsTruncated in the response is true, and the value of the
    TrafficPolicyVersionMarker element is the ID of the first version that Route
    53 will return if you submit another request.
  * `:traffic_policy_version_marker` (`t:string`) For your first request to
    ListTrafficPolicyVersions, don't include the TrafficPolicyVersionMarker
    parameter.
  """
  @spec list_traffic_policy_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_traffic_policy_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_traffic_policy_versions_errors()}
  def list_traffic_policy_versions(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/trafficpolicies/#{AWS.Util.encode_uri(id)}/versions"

    # Validate optional parameters
    optional_params = [max_items: nil, traffic_policy_version_marker: nil]

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
      if opt_val = Keyword.get(options, :traffic_policy_version_marker) do
        [{"trafficpolicyversion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_items) do
        [{"maxitems", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_items, :traffic_policy_version_marker])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of the VPCs that were created by other accounts and that can be
  associated with a specified hosted zone because you've submitted one or more
  `CreateVPCAssociationAuthorization` requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20ListVPCAssociationAuthorizations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) The ID of the hosted zone for which you want a
    list of VPCs that can be associated with the hosted zone.

  ## Optional parameters:
  * `:max_results` (`t:`) Optional: An integer that specifies the maximum number
    of VPCs that you want Amazon Route 53 to return. If you don't specify a
    value for MaxResults, Route 53 returns up to 50 VPCs per page.
  * `:next_token` (`t:string`) Optional: If a response includes a NextToken
    element, there are more VPCs that can be associated with the specified
    hosted zone. To get the next page of results, submit another request, and
    include the value of NextToken from the response in the nexttoken parameter
    in another ListVPCAssociationAuthorizations request.
  """
  @spec list_vpc_association_authorizations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_vpc_association_authorizations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_association_authorizations_errors()}
  def list_vpc_association_authorizations(%Client{} = client, hosted_zone_id, options \\ []) do
    url_path =
      "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/authorizevpcassociation"

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
        [{"nexttoken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxresults", opt_val} | query_params]
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
  Gets the value that Amazon Route 53 returns in response to a DNS request for a
  specified record name and type. You can optionally specify the IP address of a
  DNS resolver, an EDNS0 client subnet IP address, and a subnet mask. This call
  only supports querying public hosted zones.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20TestDNSAnswer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hosted_zone_id` (`t:string`) The ID of the hosted zone that you want Amazon
    Route 53 to simulate a query for.
  * `:record_name` (`t:string`) The name of the resource record set that you want
    Amazon Route 53 to simulate a query for.
  * `:record_type`
    (`t:enum["A|AAAA|CAA|CNAME|DS|MX|NAPTR|NS|PTR|SOA|SPF|SRV|TXT"]`) The type
    of the resource record set.

  ## Optional parameters:
  * `:e_dns0_client_subnet_ip` (`t:string`) If the resolver that you specified for
    resolverip supports EDNS0, specify the IPv4 or IPv6 address of a client in
    the applicable location, for example, 192.0.2.44 or
    2001:db8:85a3::8a2e:370:7334.
  * `:e_dns0_client_subnet_mask` (`t:string`) If you specify an IP address for
    edns0clientsubnetip, you can optionally specify the number of bits of the IP
    address that you want the checking tool to include in the DNS query. For
    example, if you specify 192.0.2.44 for edns0clientsubnetip and 24 for
    edns0clientsubnetmask, the checking tool will simulate a request from
    192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits
    for IPv6 addresses.
  * `:resolver_ip` (`t:string`) If you want to simulate a request from a specific
    DNS resolver, specify the IP address for that resolver. If you omit this
    value, TestDnsAnswer uses the IP address of a DNS resolver in the Amazon Web
    Services US East (N. Virginia) Region (us-east-1).
  """
  @spec test_dns_answer(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, test_dns_answer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_dns_answer_errors()}
  def test_dns_answer(%Client{} = client, hosted_zone_id, record_name, record_type, options \\ []) do
    url_path = "/2013-04-01/testdnsanswer"

    # Validate optional parameters
    optional_params = [
      e_dns0_client_subnet_ip: nil,
      e_dns0_client_subnet_mask: nil,
      resolver_ip: nil
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
    query_params = [
      {"hostedzoneid", hosted_zone_id},
      {"recordname", record_name},
      {"recordtype", record_type}
    ]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :resolver_ip) do
        [{"resolverip", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :e_dns0_client_subnet_mask) do
        [{"edns0clientsubnetmask", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :e_dns0_client_subnet_ip) do
        [{"edns0clientsubnetip", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:e_dns0_client_subnet_ip, :e_dns0_client_subnet_mask, :resolver_ip])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Updates an existing health check. Note that some values can't be updated.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20UpdateHealthCheck&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:health_check_id` (`t:string`) The ID for the health check for which you want
    detailed information. When you created the health check, CreateHealthCheck
    returned the ID in the response, in the HealthCheckId element.

  ## Optional parameters:
  """
  @spec update_health_check(
          AWS.Client.t(),
          String.t(),
          update_health_check_request(),
          Keyword.t()
        ) ::
          {:ok, update_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_health_check_errors()}
  def update_health_check(%Client{} = client, health_check_id, input, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}"
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
  Updates the comment for a specified hosted zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20UpdateHostedZoneComment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID for the hosted zone that you want to update the
    comment for.

  ## Optional parameters:
  """
  @spec update_hosted_zone_comment(
          AWS.Client.t(),
          String.t(),
          update_hosted_zone_comment_request(),
          Keyword.t()
        ) ::
          {:ok, update_hosted_zone_comment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_hosted_zone_comment_errors()}
  def update_hosted_zone_comment(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(id)}"
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
  Updates the comment for a specified traffic policy version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20UpdateTrafficPolicyComment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The value of Id for the traffic policy that you want to
    update the comment for.
  * `:version` (`t:integer`) The value of Version for the traffic policy that you
    want to update the comment for.

  ## Optional parameters:
  """
  @spec update_traffic_policy_comment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_traffic_policy_comment_request(),
          Keyword.t()
        ) ::
          {:ok, update_traffic_policy_comment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_traffic_policy_comment_errors()}
  def update_traffic_policy_comment(%Client{} = client, id, version, input, options \\ []) do
    url_path =
      "/2013-04-01/trafficpolicy/#{AWS.Util.encode_uri(id)}/#{AWS.Util.encode_uri(version)}"

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
  After you submit a `UpdateTrafficPolicyInstance` request, there's a brief delay
  while Route 53 creates the resource record sets that are specified in the
  traffic policy definition. Use `GetTrafficPolicyInstance` with the `id` of
  updated traffic policy instance confirm that the `UpdateTrafficPolicyInstance`
  request completed successfully. For more information, see the `State` response
  element. Updates the resource record sets in a specified hosted zone that were
  created based on the settings in a specified traffic policy version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53%20UpdateTrafficPolicyInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the traffic policy instance that you want to
    update.

  ## Optional parameters:
  """
  @spec update_traffic_policy_instance(
          AWS.Client.t(),
          String.t(),
          update_traffic_policy_instance_request(),
          Keyword.t()
        ) ::
          {:ok, update_traffic_policy_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_traffic_policy_instance_errors()}
  def update_traffic_policy_instance(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstance/#{AWS.Util.encode_uri(id)}"
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
