# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpenSearchServerless do
  @moduledoc """
  Use the Amazon OpenSearch Serverless API to create, configure, and manage
  OpenSearch Serverless collections and security policies. OpenSearch Serverless
  is an on-demand, pre-provisioned serverless configuration for Amazon
  OpenSearch Service. OpenSearch Serverless removes the operational complexities
  of provisioning, configuring, and tuning your OpenSearch clusters. It enables
  you to easily search and analyze petabytes of data without having to worry
  about the underlying infrastructure and data management.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      collection_filters() :: %{
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type collection_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_policies_response() :: %{
        optional("accessPolicySummaries") => list(access_policy_summary()()),
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_access_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_lifecycle_policy_request() :: %{
        required("identifiers") => list(lifecycle_policy_identifier()())
      }
      
  """
  @type batch_get_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_endpoint_detail() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type delete_vpc_endpoint_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      collection_error_detail() :: %{
        "errorCode" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type collection_error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_policy_summary() :: %{
        "createdDate" => [float()],
        "description" => String.t(),
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "policyVersion" => String.t(),
        "type" => String.t()
      }
      
  """
  @type security_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_security_config_response() :: %{}
      
  """
  @type delete_security_config_response() :: %{}

  @typedoc """

  ## Example:
      
      list_security_configs_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        required("type") => String.t()
      }
      
  """
  @type list_security_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lifecycle_policy_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("policy") => String.t(),
        required("name") => String.t(),
        required("policyVersion") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type update_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_collection_response() :: %{
        optional("collectionDetails") => list(collection_detail()()),
        optional("collectionErrorDetails") => list(collection_error_detail()())
      }
      
  """
  @type batch_get_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_get_lifecycle_policy_response() :: %{
        "lifecyclePolicyDetails" => list(lifecycle_policy_detail()()),
        "lifecyclePolicyErrorDetails" => list(lifecycle_policy_error_detail()())
      }
      
  """
  @type batch_get_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_request() :: %{}
      
  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      security_config_stats() :: %{
        "SamlConfigCount" => [float()]
      }
      
  """
  @type security_config_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_access_policy_response() :: %{}
      
  """
  @type delete_access_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      collection_summary() :: %{
        "arn" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type collection_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_response() :: %{
        optional("accountSettingsDetail") => account_settings_detail()
      }
      
  """
  @type get_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_endpoints_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("vpcEndpointFilters") => vpc_endpoint_filters()
      }
      
  """
  @type list_vpc_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lifecycle_policy_response() :: %{
        "lifecyclePolicyDetail" => lifecycle_policy_detail()
      }
      
  """
  @type update_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_endpoint_summary() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type vpc_endpoint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_endpoints_response() :: %{
        optional("nextToken") => [String.t()],
        optional("vpcEndpointSummaries") => list(vpc_endpoint_summary()())
      }
      
  """
  @type list_vpc_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_security_policy_request() :: %{
        required("name") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type get_security_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      collection_detail() :: %{
        "arn" => [String.t()],
        "collectionEndpoint" => [String.t()],
        "createdDate" => [float()],
        "dashboardEndpoint" => [String.t()],
        "description" => [String.t()],
        "id" => String.t(),
        "kmsKeyArn" => [String.t()],
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "standbyReplicas" => String.t(),
        "status" => String.t(),
        "type" => String.t()
      }
      
  """
  @type collection_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_settings_response() :: %{
        optional("accountSettingsDetail") => account_settings_detail()
      }
      
  """
  @type update_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_access_policy_request() :: %{
        optional("clientToken") => String.t(),
        required("name") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type delete_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lifecycle_policies_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("resources") => list(String.t()()),
        required("type") => String.t()
      }
      
  """
  @type list_lifecycle_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_policies_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("resource") => list(String.t()()),
        required("type") => String.t()
      }
      
  """
  @type list_access_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_policy_response() :: %{
        optional("accessPolicyDetail") => access_policy_detail()
      }
      
  """
  @type create_access_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_policy_summary() :: %{
        "createdDate" => [float()],
        "description" => String.t(),
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "policyVersion" => String.t(),
        "type" => String.t()
      }
      
  """
  @type access_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_endpoint_filters() :: %{
        "status" => String.t()
      }
      
  """
  @type vpc_endpoint_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_endpoint_response() :: %{
        optional("deleteVpcEndpointDetail") => delete_vpc_endpoint_detail()
      }
      
  """
  @type delete_vpc_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_vpc_endpoint_request() :: %{
        required("ids") => list(String.t()())
      }
      
  """
  @type batch_get_vpc_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_collections_response() :: %{
        optional("collectionSummaries") => list(collection_summary()()),
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_collections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_security_policy_response() :: %{
        optional("securityPolicyDetail") => security_policy_detail()
      }
      
  """
  @type get_security_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_endpoint_error_detail() :: %{
        "errorCode" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t()
      }
      
  """
  @type vpc_endpoint_error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_resource_identifier() :: %{
        "resource" => String.t(),
        "type" => String.t()
      }
      
  """
  @type lifecycle_policy_resource_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_access_policy_response() :: %{
        optional("accessPolicyDetail") => access_policy_detail()
      }
      
  """
  @type update_access_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_security_config_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("samlOptions") => saml_config_options(),
        required("configVersion") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type update_security_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_error_detail() :: %{
        "errorCode" => [String.t()],
        "errorMessage" => [String.t()],
        "name" => String.t(),
        "type" => String.t()
      }
      
  """
  @type lifecycle_policy_error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_response() :: %{}
      
  """
  @type delete_lifecycle_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      vpc_endpoint_detail() :: %{
        "createdDate" => [float()],
        "id" => String.t(),
        "name" => String.t(),
        "securityGroupIds" => list(String.t()()),
        "status" => String.t(),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }
      
  """
  @type vpc_endpoint_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_policy_detail() :: %{
        "createdDate" => [float()],
        "description" => String.t(),
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "policy" => [any()],
        "policyVersion" => String.t(),
        "type" => String.t()
      }
      
  """
  @type security_policy_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_security_policy_response() :: %{
        optional("securityPolicyDetail") => security_policy_detail()
      }
      
  """
  @type create_security_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_detail() :: %{
        "createdDate" => [float()],
        "description" => String.t(),
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "policy" => [any()],
        "policyVersion" => String.t(),
        "type" => String.t()
      }
      
  """
  @type lifecycle_policy_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_policy_request() :: %{
        required("name") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type get_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_effective_lifecycle_policy_request() :: %{
        required("resourceIdentifiers") => list(lifecycle_policy_resource_identifier()())
      }
      
  """
  @type batch_get_effective_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_summary() :: %{
        "createdDate" => [float()],
        "description" => String.t(),
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "policyVersion" => String.t(),
        "type" => String.t()
      }
      
  """
  @type lifecycle_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_collections_request() :: %{
        optional("collectionFilters") => collection_filters(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_collections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_collection_request() :: %{
        optional("clientToken") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type delete_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_policy_response() :: %{
        optional("accessPolicyDetail") => access_policy_detail()
      }
      
  """
  @type get_access_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_config_summary() :: %{
        "configVersion" => String.t(),
        "createdDate" => [float()],
        "description" => String.t(),
        "id" => String.t(),
        "lastModifiedDate" => [float()],
        "type" => String.t()
      }
      
  """
  @type security_config_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_security_config_response() :: %{
        optional("securityConfigDetail") => security_config_detail()
      }
      
  """
  @type create_security_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lifecycle_policies_response() :: %{
        "lifecyclePolicySummaries" => list(lifecycle_policy_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_lifecycle_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_security_config_response() :: %{
        optional("securityConfigDetail") => security_config_detail()
      }
      
  """
  @type get_security_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_security_policy_request() :: %{
        optional("clientToken") => String.t(),
        required("name") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type delete_security_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_policy_stats() :: %{
        "EncryptionPolicyCount" => [float()],
        "NetworkPolicyCount" => [float()]
      }
      
  """
  @type security_policy_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_settings_detail() :: %{
        "capacityLimits" => capacity_limits()
      }
      
  """
  @type account_settings_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_collection_detail() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type delete_collection_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_collection_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => [String.t()],
        optional("standbyReplicas") => String.t(),
        optional("tags") => list(tag()()),
        optional("type") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpc_endpoint_response() :: %{
        optional("UpdateVpcEndpointDetail") => update_vpc_endpoint_detail()
      }
      
  """
  @type update_vpc_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("tags") => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_settings_request() :: %{
        optional("capacityLimits") => capacity_limits()
      }
      
  """
  @type update_account_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_collection_response() :: %{
        optional("updateCollectionDetail") => update_collection_detail()
      }
      
  """
  @type update_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lifecycle_policy_response() :: %{
        "lifecyclePolicyDetail" => lifecycle_policy_detail()
      }
      
  """
  @type create_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_config_detail() :: %{
        "configVersion" => String.t(),
        "createdDate" => [float()],
        "description" => String.t(),
        "id" => String.t(),
        "lastModifiedDate" => [float()],
        "samlOptions" => saml_config_options(),
        "type" => String.t()
      }
      
  """
  @type security_config_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_collection_response() :: %{
        optional("createCollectionDetail") => create_collection_detail()
      }
      
  """
  @type create_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_security_config_response() :: %{
        optional("securityConfigDetail") => security_config_detail()
      }
      
  """
  @type update_security_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_collection_request() :: %{
        optional("ids") => list(String.t()()),
        optional("names") => list(String.t()())
      }
      
  """
  @type batch_get_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_endpoint_request() :: %{
        optional("clientToken") => String.t(),
        optional("securityGroupIds") => list(String.t()()),
        required("name") => String.t(),
        required("subnetIds") => list(String.t()()),
        required("vpcId") => String.t()
      }
      
  """
  @type create_vpc_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_request() :: %{
        optional("clientToken") => String.t(),
        required("name") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type delete_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policies_stats_response() :: %{
        optional("AccessPolicyStats") => access_policy_stats(),
        optional("LifecyclePolicyStats") => lifecycle_policy_stats(),
        optional("SecurityConfigStats") => security_config_stats(),
        optional("SecurityPolicyStats") => security_policy_stats(),
        optional("TotalPolicyCount") => [float()]
      }
      
  """
  @type get_policies_stats_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_configs_response() :: %{
        optional("nextToken") => [String.t()],
        optional("securityConfigSummaries") => list(security_config_summary()())
      }
      
  """
  @type list_security_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_policy_detail() :: %{
        "createdDate" => [float()],
        "description" => String.t(),
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "policy" => [any()],
        "policyVersion" => String.t(),
        "type" => String.t()
      }
      
  """
  @type access_policy_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_policies_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("resource") => list(String.t()()),
        required("type") => String.t()
      }
      
  """
  @type list_security_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_policies_response() :: %{
        optional("nextToken") => [String.t()],
        optional("securityPolicySummaries") => list(security_policy_summary()())
      }
      
  """
  @type list_security_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_access_policy_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("policy") => String.t(),
        required("name") => String.t(),
        required("policyVersion") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type update_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      lifecycle_policy_stats() :: %{
        "RetentionPolicyCount" => [float()]
      }
      
  """
  @type lifecycle_policy_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_security_policy_response() :: %{
        optional("securityPolicyDetail") => security_policy_detail()
      }
      
  """
  @type update_security_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_security_config_request() :: %{
        optional("clientToken") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type delete_security_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lifecycle_policy_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("name") => String.t(),
        required("policy") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type create_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_limits() :: %{
        "maxIndexingCapacityInOCU" => integer(),
        "maxSearchCapacityInOCU" => integer()
      }
      
  """
  @type capacity_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_effective_lifecycle_policy_response() :: %{
        "effectiveLifecyclePolicyDetails" => list(effective_lifecycle_policy_detail()()),
        "effectiveLifecyclePolicyErrorDetails" => list(effective_lifecycle_policy_error_detail()())
      }
      
  """
  @type batch_get_effective_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpc_endpoint_detail() :: %{
        "id" => String.t(),
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "securityGroupIds" => list(String.t()()),
        "status" => String.t(),
        "subnetIds" => list(String.t()())
      }
      
  """
  @type update_vpc_endpoint_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_endpoint_detail() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type create_vpc_endpoint_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_endpoint_request() :: %{
        optional("clientToken") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type delete_vpc_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policies_stats_request() :: %{}
      
  """
  @type get_policies_stats_request() :: %{}

  @typedoc """

  ## Example:
      
      access_policy_stats() :: %{
        "DataPolicyCount" => [float()]
      }
      
  """
  @type access_policy_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ocu_limit_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type ocu_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_collection_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => [String.t()],
        required("id") => String.t()
      }
      
  """
  @type update_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_endpoint_response() :: %{
        optional("createVpcEndpointDetail") => create_vpc_endpoint_detail()
      }
      
  """
  @type create_vpc_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_vpc_endpoint_response() :: %{
        optional("vpcEndpointDetails") => list(vpc_endpoint_detail()()),
        optional("vpcEndpointErrorDetails") => list(vpc_endpoint_error_detail()())
      }
      
  """
  @type batch_get_vpc_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_security_policy_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("policy") => String.t(),
        required("name") => String.t(),
        required("policyVersion") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type update_security_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_collection_detail() :: %{
        "arn" => [String.t()],
        "createdDate" => [float()],
        "description" => [String.t()],
        "id" => String.t(),
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "status" => String.t(),
        "type" => String.t()
      }
      
  """
  @type update_collection_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      effective_lifecycle_policy_error_detail() :: %{
        "errorCode" => [String.t()],
        "errorMessage" => [String.t()],
        "resource" => String.t(),
        "type" => String.t()
      }
      
  """
  @type effective_lifecycle_policy_error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpc_endpoint_request() :: %{
        optional("addSecurityGroupIds") => list(String.t()()),
        optional("addSubnetIds") => list(String.t()()),
        optional("clientToken") => String.t(),
        optional("removeSecurityGroupIds") => list(String.t()()),
        optional("removeSubnetIds") => list(String.t()()),
        required("id") => String.t()
      }
      
  """
  @type update_vpc_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_security_config_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("samlOptions") => saml_config_options(),
        required("name") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type create_security_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_security_config_request() :: %{
        required("id") => String.t()
      }
      
  """
  @type get_security_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_collection_response() :: %{
        optional("deleteCollectionDetail") => delete_collection_detail()
      }
      
  """
  @type delete_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_policy_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("name") => String.t(),
        required("policy") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type create_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_security_policy_response() :: %{}
      
  """
  @type delete_security_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      saml_config_options() :: %{
        "groupAttribute" => String.t(),
        "metadata" => String.t(),
        "sessionTimeout" => [integer()],
        "userAttribute" => String.t()
      }
      
  """
  @type saml_config_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_collection_detail() :: %{
        "arn" => [String.t()],
        "createdDate" => [float()],
        "description" => [String.t()],
        "id" => String.t(),
        "kmsKeyArn" => [String.t()],
        "lastModifiedDate" => [float()],
        "name" => String.t(),
        "standbyReplicas" => String.t(),
        "status" => String.t(),
        "type" => String.t()
      }
      
  """
  @type create_collection_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      effective_lifecycle_policy_detail() :: %{
        "noMinRetentionPeriod" => [boolean()],
        "policyName" => String.t(),
        "resource" => String.t(),
        "resourceType" => String.t(),
        "retentionPeriod" => [String.t()],
        "type" => String.t()
      }
      
  """
  @type effective_lifecycle_policy_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_identifier() :: %{
        "name" => String.t(),
        "type" => String.t()
      }
      
  """
  @type lifecycle_policy_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_security_policy_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("name") => String.t(),
        required("policy") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type create_security_policy_request() :: %{String.t() => any()}

  @type batch_get_collection_errors() :: validation_exception() | internal_server_exception()

  @type batch_get_effective_lifecycle_policy_errors() ::
          validation_exception() | internal_server_exception()

  @type batch_get_lifecycle_policy_errors() ::
          validation_exception() | internal_server_exception()

  @type batch_get_vpc_endpoint_errors() :: validation_exception() | internal_server_exception()

  @type create_access_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_collection_errors() ::
          ocu_limit_exceeded_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_lifecycle_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_security_config_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_security_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_vpc_endpoint_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_access_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_collection_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_lifecycle_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_security_config_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_security_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_vpc_endpoint_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_access_policy_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_account_settings_errors() :: validation_exception() | internal_server_exception()

  @type get_policies_stats_errors() :: internal_server_exception()

  @type get_security_config_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_security_policy_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_access_policies_errors() :: validation_exception() | internal_server_exception()

  @type list_collections_errors() :: validation_exception() | internal_server_exception()

  @type list_lifecycle_policies_errors() :: validation_exception() | internal_server_exception()

  @type list_security_configs_errors() :: validation_exception() | internal_server_exception()

  @type list_security_policies_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_vpc_endpoints_errors() :: validation_exception() | internal_server_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_access_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_account_settings_errors() :: validation_exception() | internal_server_exception()

  @type update_collection_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type update_lifecycle_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_security_config_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_security_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_vpc_endpoint_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  def metadata do
    %{
      api_version: "2021-11-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "aoss",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "OpenSearchServerless",
      signature_version: "v4",
      signing_name: "aoss",
      target_prefix: "OpenSearchServerless"
    }
  end

  @doc """
   
  Returns attributes for one or more collections, including the collection
  endpoint and the OpenSearch Dashboards endpoint. For more information, see
  [Creating and managing Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20BatchGetCollection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_get_collection_request`)
    %{
      optional("ids") => list(String.t()()),
      optional("names") => list(String.t()())
    }
  """
  @spec batch_get_collection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_get_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_collection_errors()}
  def batch_get_collection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetCollection", input, options)
  end

  @doc """
   
  Returns a list of successful and failed retrievals for the OpenSearch Serverless
  indexes. For more information, see [Viewing data lifecycle
  policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20BatchGetEffectiveLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_get_effective_lifecycle_policy_request`)
    %{
      required("resourceIdentifiers") => list(lifecycle_policy_resource_identifier()())
    }
  """
  @spec batch_get_effective_lifecycle_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_get_effective_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_effective_lifecycle_policy_errors()}
  def batch_get_effective_lifecycle_policy(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetEffectiveLifecyclePolicy", input, options)
  end

  @doc """
   
  Returns one or more configured OpenSearch Serverless lifecycle policies. For
  more information, see [Viewing data lifecycle
  policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20BatchGetLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_get_lifecycle_policy_request`)
    %{
      required("identifiers") => list(lifecycle_policy_identifier()())
    }
  """
  @spec batch_get_lifecycle_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_get_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_lifecycle_policy_errors()}
  def batch_get_lifecycle_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetLifecyclePolicy", input, options)
  end

  @doc """
   
  Returns attributes for one or more VPC endpoints associated with the current
  account. For more information, see [Access Amazon OpenSearch Serverless using
  an interface
  endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20BatchGetVpcEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_get_vpc_endpoint_request`)
    %{
      required("ids") => list(String.t()())
    }
  """
  @spec batch_get_vpc_endpoint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_get_vpc_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_vpc_endpoint_errors()}
  def batch_get_vpc_endpoint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetVpcEndpoint", input, options)
  end

  @doc """
   
  Creates a data access policy for OpenSearch Serverless. Access policies limit
  access to collections and the resources within them, and allow a user to
  access that data irrespective of the access mechanism or network source. For
  more information, see [Data access control for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20CreateAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_access_policy_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => String.t(),
      required("name") => String.t(),
      required("policy") => String.t(),
      required("type") => String.t()
    }
  """
  @spec create_access_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_access_policy_errors()}
  def create_access_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAccessPolicy", input, options)
  end

  @doc """
   
  Creates a new OpenSearch Serverless collection. For more information, see
  [Creating and managing Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20CreateCollection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_collection_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => [String.t()],
      optional("standbyReplicas") => String.t(),
      optional("tags") => list(tag()()),
      optional("type") => String.t(),
      required("name") => String.t()
    }
  """
  @spec create_collection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_collection_errors()}
  def create_collection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCollection", input, options)
  end

  @doc """
   
  Creates a lifecyle policy to be applied to OpenSearch Serverless indexes.
  Lifecycle policies define the number of days or hours to retain the data on an
  OpenSearch Serverless index. For more information, see [Creating data
  lifecycle
  policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-create).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20CreateLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_lifecycle_policy_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => String.t(),
      required("name") => String.t(),
      required("policy") => String.t(),
      required("type") => String.t()
    }
  """
  @spec create_lifecycle_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lifecycle_policy_errors()}
  def create_lifecycle_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLifecyclePolicy", input, options)
  end

  @doc """
   
  Specifies a security configuration for OpenSearch Serverless. For more
  information, see [SAML authentication for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20CreateSecurityConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_security_config_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => String.t(),
      optional("samlOptions") => saml_config_options(),
      required("name") => String.t(),
      required("type") => String.t()
    }
  """
  @spec create_security_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_security_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_security_config_errors()}
  def create_security_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSecurityConfig", input, options)
  end

  @doc """
   
  Creates a security policy to be used by one or more OpenSearch Serverless
  collections. Security policies provide access to a collection and its
  OpenSearch Dashboards endpoint from public networks or specific VPC endpoints.
  They also allow you to secure a collection with a KMS encryption key. For more
  information, see [Network access for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html)
  and [Encryption at rest for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20CreateSecurityPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_security_policy_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => String.t(),
      required("name") => String.t(),
      required("policy") => String.t(),
      required("type") => String.t()
    }
  """
  @spec create_security_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_security_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_security_policy_errors()}
  def create_security_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSecurityPolicy", input, options)
  end

  @doc """
   
  Creates an OpenSearch Serverless-managed interface VPC endpoint. For more
  information, see [Access Amazon OpenSearch Serverless using an interface
  endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20CreateVpcEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_vpc_endpoint_request`)
    %{
      optional("clientToken") => String.t(),
      optional("securityGroupIds") => list(String.t()()),
      required("name") => String.t(),
      required("subnetIds") => list(String.t()()),
      required("vpcId") => String.t()
    }
  """
  @spec create_vpc_endpoint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_vpc_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_endpoint_errors()}
  def create_vpc_endpoint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVpcEndpoint", input, options)
  end

  @doc """
   
  Deletes an OpenSearch Serverless access policy. For more information, see [Data
  access control for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20DeleteAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_access_policy_request`)
    %{
      optional("clientToken") => String.t(),
      required("name") => String.t(),
      required("type") => String.t()
    }
  """
  @spec delete_access_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_policy_errors()}
  def delete_access_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAccessPolicy", input, options)
  end

  @doc """
   
  Deletes an OpenSearch Serverless collection. For more information, see [Creating
  and managing Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20DeleteCollection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_collection_request`)
    %{
      optional("clientToken") => String.t(),
      required("id") => String.t()
    }
  """
  @spec delete_collection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_collection_errors()}
  def delete_collection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCollection", input, options)
  end

  @doc """
   
  Deletes an OpenSearch Serverless lifecycle policy. For more information, see
  [Deleting data lifecycle
  policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-delete).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20DeleteLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_lifecycle_policy_request`)
    %{
      optional("clientToken") => String.t(),
      required("name") => String.t(),
      required("type") => String.t()
    }
  """
  @spec delete_lifecycle_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lifecycle_policy_errors()}
  def delete_lifecycle_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLifecyclePolicy", input, options)
  end

  @doc """
   
  Deletes a security configuration for OpenSearch Serverless. For more
  information, see [SAML authentication for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20DeleteSecurityConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_security_config_request`)
    %{
      optional("clientToken") => String.t(),
      required("id") => String.t()
    }
  """
  @spec delete_security_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_security_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_security_config_errors()}
  def delete_security_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSecurityConfig", input, options)
  end

  @doc """
   
  Deletes an OpenSearch Serverless security policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20DeleteSecurityPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_security_policy_request`)
    %{
      optional("clientToken") => String.t(),
      required("name") => String.t(),
      required("type") => String.t()
    }
  """
  @spec delete_security_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_security_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_security_policy_errors()}
  def delete_security_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSecurityPolicy", input, options)
  end

  @doc """
   
  Deletes an OpenSearch Serverless-managed interface endpoint. For more
  information, see [Access Amazon OpenSearch Serverless using an interface
  endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20DeleteVpcEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_vpc_endpoint_request`)
    %{
      optional("clientToken") => String.t(),
      required("id") => String.t()
    }
  """
  @spec delete_vpc_endpoint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_vpc_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_endpoint_errors()}
  def delete_vpc_endpoint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVpcEndpoint", input, options)
  end

  @doc """
   
  Returns an OpenSearch Serverless access policy. For more information, see [Data
  access control for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20GetAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_access_policy_request`)
    %{
      required("name") => String.t(),
      required("type") => String.t()
    }
  """
  @spec get_access_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_access_policy_errors()}
  def get_access_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccessPolicy", input, options)
  end

  @doc """
   
  Returns account-level settings related to OpenSearch Serverless.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20GetAccountSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_account_settings_request`)
    %{
      
    }
  """
  @spec get_account_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccountSettings", input, options)
  end

  @doc """
   
  Returns statistical information about your OpenSearch Serverless access
  policies, security configurations, and security policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20GetPoliciesStats&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_policies_stats_request`)
    %{
      
    }
  """
  @spec get_policies_stats(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_policies_stats_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_policies_stats_errors()}
  def get_policies_stats(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPoliciesStats", input, options)
  end

  @doc """
   
  Returns information about an OpenSearch Serverless security configuration. For
  more information, see [SAML authentication for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20GetSecurityConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_security_config_request`)
    %{
      required("id") => String.t()
    }
  """
  @spec get_security_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_security_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_security_config_errors()}
  def get_security_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSecurityConfig", input, options)
  end

  @doc """
   
  Returns information about a configured OpenSearch Serverless security policy.
  For more information, see [Network access for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html)
  and [Encryption at rest for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20GetSecurityPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_security_policy_request`)
    %{
      required("name") => String.t(),
      required("type") => String.t()
    }
  """
  @spec get_security_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_security_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_security_policy_errors()}
  def get_security_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSecurityPolicy", input, options)
  end

  @doc """
   
  Returns information about a list of OpenSearch Serverless access policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20ListAccessPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_access_policies_request`)
    %{
      optional("maxResults") => [integer()],
      optional("nextToken") => [String.t()],
      optional("resource") => list(String.t()()),
      required("type") => String.t()
    }
  """
  @spec list_access_policies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_access_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_policies_errors()}
  def list_access_policies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccessPolicies", input, options)
  end

  @doc """
   
  Lists all OpenSearch Serverless collections. For more information, see [Creating
  and managing Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20ListCollections&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_collections_request`)
    %{
      optional("collectionFilters") => collection_filters(),
      optional("maxResults") => [integer()],
      optional("nextToken") => [String.t()]
    }
  """
  @spec list_collections(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_collections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collections_errors()}
  def list_collections(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCollections", input, options)
  end

  @doc """
   
  Returns a list of OpenSearch Serverless lifecycle policies. For more
  information, see [Viewing data lifecycle
  policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20ListLifecyclePolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_lifecycle_policies_request`)
    %{
      optional("maxResults") => [integer()],
      optional("nextToken") => [String.t()],
      optional("resources") => list(String.t()()),
      required("type") => String.t()
    }
  """
  @spec list_lifecycle_policies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_lifecycle_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lifecycle_policies_errors()}
  def list_lifecycle_policies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLifecyclePolicies", input, options)
  end

  @doc """
   
  Returns information about configured OpenSearch Serverless security
  configurations. For more information, see [SAML authentication for Amazon
  OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20ListSecurityConfigs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_security_configs_request`)
    %{
      optional("maxResults") => [integer()],
      optional("nextToken") => [String.t()],
      required("type") => String.t()
    }
  """
  @spec list_security_configs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_security_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_security_configs_errors()}
  def list_security_configs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSecurityConfigs", input, options)
  end

  @doc """
   
  Returns information about configured OpenSearch Serverless security policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20ListSecurityPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_security_policies_request`)
    %{
      optional("maxResults") => [integer()],
      optional("nextToken") => [String.t()],
      optional("resource") => list(String.t()()),
      required("type") => String.t()
    }
  """
  @spec list_security_policies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_security_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_security_policies_errors()}
  def list_security_policies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSecurityPolicies", input, options)
  end

  @doc """
   
  Returns the tags for an OpenSearch Serverless resource. For more information,
  see [Tagging Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("resourceArn") => String.t()
    }
  """
  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
   
  Returns the OpenSearch Serverless-managed interface VPC endpoints associated
  with the current account. For more information, see [Access Amazon OpenSearch
  Serverless using an interface
  endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20ListVpcEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_vpc_endpoints_request`)
    %{
      optional("maxResults") => [integer()],
      optional("nextToken") => [String.t()],
      optional("vpcEndpointFilters") => vpc_endpoint_filters()
    }
  """
  @spec list_vpc_endpoints(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_vpc_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_endpoints_errors()}
  def list_vpc_endpoints(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVpcEndpoints", input, options)
  end

  @doc """
   
  Associates tags with an OpenSearch Serverless resource. For more information,
  see [Tagging Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("resourceArn") => String.t(),
      required("tags") => list(tag()())
    }
  """
  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
   
  Removes a tag or set of tags from an OpenSearch Serverless resource. For more
  information, see [Tagging Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("resourceArn") => String.t(),
      required("tagKeys") => list(String.t()())
    }
  """
  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
   
  Updates an OpenSearch Serverless access policy. For more information, see [Data
  access control for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20UpdateAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_access_policy_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => String.t(),
      optional("policy") => String.t(),
      required("name") => String.t(),
      required("policyVersion") => String.t(),
      required("type") => String.t()
    }
  """
  @spec update_access_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_access_policy_errors()}
  def update_access_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAccessPolicy", input, options)
  end

  @doc """
   
  Update the OpenSearch Serverless settings for the current Amazon Web Services
  account. For more information, see [Managing capacity limits for Amazon
  OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20UpdateAccountSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_account_settings_request`)
    %{
      optional("capacityLimits") => capacity_limits()
    }
  """
  @spec update_account_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_settings_errors()}
  def update_account_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAccountSettings", input, options)
  end

  @doc """
   
  Updates an OpenSearch Serverless collection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20UpdateCollection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_collection_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => [String.t()],
      required("id") => String.t()
    }
  """
  @spec update_collection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_collection_errors()}
  def update_collection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCollection", input, options)
  end

  @doc """
   
  Updates an OpenSearch Serverless access policy. For more information, see
  [Updating data lifecycle
  policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-update).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20UpdateLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_lifecycle_policy_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => String.t(),
      optional("policy") => String.t(),
      required("name") => String.t(),
      required("policyVersion") => String.t(),
      required("type") => String.t()
    }
  """
  @spec update_lifecycle_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_lifecycle_policy_errors()}
  def update_lifecycle_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLifecyclePolicy", input, options)
  end

  @doc """
   
  Updates a security configuration for OpenSearch Serverless. For more
  information, see [SAML authentication for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20UpdateSecurityConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_security_config_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => String.t(),
      optional("samlOptions") => saml_config_options(),
      required("configVersion") => String.t(),
      required("id") => String.t()
    }
  """
  @spec update_security_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_security_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_security_config_errors()}
  def update_security_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSecurityConfig", input, options)
  end

  @doc """
   
  Updates an OpenSearch Serverless security policy. For more information, see
  [Network access for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html)
  and [Encryption at rest for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20UpdateSecurityPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_security_policy_request`)
    %{
      optional("clientToken") => String.t(),
      optional("description") => String.t(),
      optional("policy") => String.t(),
      required("name") => String.t(),
      required("policyVersion") => String.t(),
      required("type") => String.t()
    }
  """
  @spec update_security_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_security_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_security_policy_errors()}
  def update_security_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSecurityPolicy", input, options)
  end

  @doc """
   
  Updates an OpenSearch Serverless-managed interface endpoint. For more
  information, see [Access Amazon OpenSearch Serverless using an interface
  endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=opensearchserverless%20UpdateVpcEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_vpc_endpoint_request`)
    %{
      optional("addSecurityGroupIds") => list(String.t()()),
      optional("addSubnetIds") => list(String.t()()),
      optional("clientToken") => String.t(),
      optional("removeSecurityGroupIds") => list(String.t()()),
      optional("removeSubnetIds") => list(String.t()()),
      required("id") => String.t()
    }
  """
  @spec update_vpc_endpoint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_vpc_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpc_endpoint_errors()}
  def update_vpc_endpoint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateVpcEndpoint", input, options)
  end
end
