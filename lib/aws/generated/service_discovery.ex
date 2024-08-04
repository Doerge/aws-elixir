# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceDiscovery do
  @moduledoc """
  Cloud Map
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_public_dns_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_public_dns_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_properties() :: %{
        "HostedZoneId" => String.t(),
        "SOA" => s_o_a()
      }
      
  """
  @type dns_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation() :: %{
        "CreateDate" => non_neg_integer(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "Id" => String.t(),
        "Status" => list(any()),
        "Targets" => map(),
        "Type" => list(any()),
        "UpdateDate" => non_neg_integer()
      }
      
  """
  @type operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type delete_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_properties_mutable() :: %{
        "SOA" => s_o_a()
      }
      
  """
  @type private_dns_properties_mutable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_http_namespace_request() :: %{
        optional("CreatorRequestId") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_http_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_private_dns_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_private_dns_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_http_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_http_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_namespace_properties() :: %{
        "DnsProperties" => private_dns_properties_mutable()
      }
      
  """
  @type private_dns_namespace_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_health_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type custom_health_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_response() :: %{
        "Service" => service()
      }
      
  """
  @type get_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_change() :: %{
        "Description" => String.t(),
        "DnsConfig" => dns_config_change(),
        "HealthCheckConfig" => health_check_config()
      }
      
  """
  @type service_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_instance_summary() :: %{
        "Attributes" => map(),
        "HealthStatus" => list(any()),
        "InstanceId" => String.t(),
        "NamespaceName" => String.t(),
        "ServiceName" => String.t()
      }
      
  """
  @type http_instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_namespaces_request() :: %{
        optional("Filters") => list(namespace_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_namespaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_properties_mutable_change() :: %{
        "SOA" => s_o_a_change()
      }
      
  """
  @type private_dns_properties_mutable_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_summary() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Properties" => namespace_properties(),
        "ServiceCount" => integer(),
        "Type" => list(any())
      }
      
  """
  @type namespace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_instance_custom_health_status_request() :: %{
        required("InstanceId") => String.t(),
        required("ServiceId") => String.t(),
        required("Status") => list(any())
      }
      
  """
  @type update_instance_custom_health_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instances_health_status_request() :: %{
        optional("Instances") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type get_instances_health_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_public_dns_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type create_public_dns_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_operation_response() :: %{
        "Operation" => operation()
      }
      
  """
  @type get_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_properties_mutable_change() :: %{
        "SOA" => s_o_a_change()
      }
      
  """
  @type public_dns_properties_mutable_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_instances_response() :: %{
        "Instances" => list(http_instance_summary()()),
        "InstancesRevision" => float()
      }
      
  """
  @type discover_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_properties_mutable() :: %{
        "SOA" => s_o_a()
      }
      
  """
  @type public_dns_properties_mutable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_namespace_properties() :: %{
        "DnsProperties" => public_dns_properties_mutable()
      }
      
  """
  @type public_dns_namespace_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "Description" => String.t(),
        "DnsConfig" => dns_config(),
        "HealthCheckConfig" => health_check_config(),
        "HealthCheckCustomConfig" => health_check_custom_config(),
        "Id" => String.t(),
        "InstanceCount" => integer(),
        "Name" => String.t(),
        "NamespaceId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_summary() :: %{
        "Id" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_instances_request() :: %{
        optional("HealthStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("OptionalParameters") => map(),
        optional("QueryParameters") => map(),
        required("NamespaceName") => String.t(),
        required("ServiceName") => String.t()
      }
      
  """
  @type discover_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_namespace_properties_change() :: %{
        "DnsProperties" => private_dns_properties_mutable_change()
      }
      
  """
  @type private_dns_namespace_properties_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_instance_request() :: %{
        required("InstanceId") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type deregister_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_private_dns_namespace_request() :: %{
        optional("CreatorRequestId") => String.t(),
        optional("Description") => String.t(),
        optional("Properties") => private_dns_namespace_properties(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("Vpc") => String.t()
      }
      
  """
  @type create_private_dns_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type get_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_request() :: %{
        required("InstanceId") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type get_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_request() :: %{
        optional("Filters") => list(service_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_namespace_response() :: %{
        "Namespace" => namespace()
      }
      
  """
  @type get_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      health_check_custom_config() :: %{
        "FailureThreshold" => integer()
      }
      
  """
  @type health_check_custom_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_properties() :: %{
        "DnsProperties" => dns_properties(),
        "HttpProperties" => http_properties()
      }
      
  """
  @type namespace_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operations_request() :: %{
        optional("Filters") => list(operation_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_namespace_change() :: %{
        "Description" => String.t(),
        "Properties" => public_dns_namespace_properties_change()
      }
      
  """
  @type public_dns_namespace_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_o_a() :: %{
        "TTL" => float()
      }
      
  """
  @type s_o_a() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_filter() :: %{
        "Condition" => list(any()),
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type service_filter() :: %{String.t() => any()}

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
      
      create_private_dns_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type create_private_dns_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_instances_revision_response() :: %{
        "InstancesRevision" => float()
      }
      
  """
  @type discover_instances_revision_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_response() :: %{
        "NextToken" => String.t(),
        "Services" => list(service_summary()())
      }
      
  """
  @type list_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_operation_request() :: %{
        required("OperationId") => String.t()
      }
      
  """
  @type get_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_summary() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "Description" => String.t(),
        "DnsConfig" => dns_config(),
        "HealthCheckConfig" => health_check_config(),
        "HealthCheckCustomConfig" => health_check_custom_config(),
        "Id" => String.t(),
        "InstanceCount" => integer(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type service_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_namespace_change() :: %{
        "Description" => String.t(),
        "Properties" => private_dns_namespace_properties_change()
      }
      
  """
  @type private_dns_namespace_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_o_a_change() :: %{
        "TTL" => float()
      }
      
  """
  @type s_o_a_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_request() :: %{
        optional("CreatorRequestId") => String.t(),
        optional("Description") => String.t(),
        optional("DnsConfig") => dns_config(),
        optional("HealthCheckConfig") => health_check_config(),
        optional("HealthCheckCustomConfig") => health_check_custom_config(),
        optional("NamespaceId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Type") => list(any()),
        required("Name") => String.t()
      }
      
  """
  @type create_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_response() :: %{
        "Instance" => instance()
      }
      
  """
  @type get_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_instance_request() :: %{
        optional("CreatorRequestId") => String.t(),
        required("Attributes") => map(),
        required("InstanceId") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type register_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_request() :: %{
        "DuplicateOperationId" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type duplicate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_instances_revision_request() :: %{
        required("NamespaceName") => String.t(),
        required("ServiceName") => String.t()
      }
      
  """
  @type discover_instances_revision_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_http_namespace_request() :: %{
        optional("UpdaterRequestId") => String.t(),
        required("Id") => String.t(),
        required("Namespace") => http_namespace_change()
      }
      
  """
  @type update_http_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_config() :: %{
        "DnsRecords" => list(dns_record()()),
        "NamespaceId" => String.t(),
        "RoutingPolicy" => list(any())
      }
      
  """
  @type dns_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_namespace_change() :: %{
        "Description" => String.t()
      }
      
  """
  @type http_namespace_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_instance_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type register_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_public_dns_namespace_request() :: %{
        optional("CreatorRequestId") => String.t(),
        optional("Description") => String.t(),
        optional("Properties") => public_dns_namespace_properties(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_public_dns_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type list_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_filter() :: %{
        "Condition" => list(any()),
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type namespace_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_request() :: %{
        required("Id") => String.t(),
        required("Service") => service_change()
      }
      
  """
  @type update_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_response() :: %{
        "Instances" => list(instance_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_already_exists() :: %{
        "CreatorRequestId" => String.t(),
        "Message" => String.t(),
        "NamespaceId" => String.t()
      }
      
  """
  @type namespace_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_properties() :: %{
        "HttpName" => String.t()
      }
      
  """
  @type http_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_record() :: %{
        "TTL" => float(),
        "Type" => list(any())
      }
      
  """
  @type dns_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operations_response() :: %{
        "NextToken" => String.t(),
        "Operations" => list(operation_summary()())
      }
      
  """
  @type list_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "Attributes" => map(),
        "CreatorRequestId" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      request_limit_exceeded() :: %{
        "Message" => String.t()
      }
      
  """
  @type request_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instances_health_status_response() :: %{
        "NextToken" => String.t(),
        "Status" => map()
      }
      
  """
  @type get_instances_health_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_http_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type create_http_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type delete_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      health_check_config() :: %{
        "FailureThreshold" => integer(),
        "ResourcePath" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type health_check_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_summary() :: %{
        "Attributes" => map(),
        "Id" => String.t()
      }
      
  """
  @type instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_namespaces_response() :: %{
        "Namespaces" => list(namespace_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_namespaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_namespace_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type delete_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_config_change() :: %{
        "DnsRecords" => list(dns_record()())
      }
      
  """
  @type dns_config_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type namespace_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_private_dns_namespace_request() :: %{
        optional("UpdaterRequestId") => String.t(),
        required("Id") => String.t(),
        required("Namespace") => private_dns_namespace_change()
      }
      
  """
  @type update_private_dns_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type instance_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_response() :: %{}
      
  """
  @type delete_service_response() :: %{}

  @typedoc """

  ## Example:
      
      deregister_instance_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type deregister_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_response() :: %{
        "Service" => service()
      }
      
  """
  @type create_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_already_exists() :: %{
        "CreatorRequestId" => String.t(),
        "Message" => String.t(),
        "ServiceId" => String.t()
      }
      
  """
  @type service_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Properties" => namespace_properties(),
        "ServiceCount" => integer(),
        "Type" => list(any())
      }
      
  """
  @type namespace() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_namespace_properties_change() :: %{
        "DnsProperties" => public_dns_properties_mutable_change()
      }
      
  """
  @type public_dns_namespace_properties_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_filter() :: %{
        "Condition" => list(any()),
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type operation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_public_dns_namespace_request() :: %{
        optional("UpdaterRequestId") => String.t(),
        required("Id") => String.t(),
        required("Namespace") => public_dns_namespace_change()
      }
      
  """
  @type update_public_dns_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_namespace_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type get_namespace_request() :: %{String.t() => any()}

  @type create_http_namespace_errors() ::
          too_many_tags_exception()
          | resource_limit_exceeded()
          | namespace_already_exists()
          | duplicate_request()
          | invalid_input()

  @type create_private_dns_namespace_errors() ::
          too_many_tags_exception()
          | resource_limit_exceeded()
          | namespace_already_exists()
          | duplicate_request()
          | invalid_input()

  @type create_public_dns_namespace_errors() ::
          too_many_tags_exception()
          | resource_limit_exceeded()
          | namespace_already_exists()
          | duplicate_request()
          | invalid_input()

  @type create_service_errors() ::
          too_many_tags_exception()
          | service_already_exists()
          | resource_limit_exceeded()
          | namespace_not_found()
          | invalid_input()

  @type delete_namespace_errors() ::
          namespace_not_found() | duplicate_request() | resource_in_use() | invalid_input()

  @type delete_service_errors() :: service_not_found() | resource_in_use() | invalid_input()

  @type deregister_instance_errors() ::
          instance_not_found()
          | service_not_found()
          | duplicate_request()
          | resource_in_use()
          | invalid_input()

  @type discover_instances_errors() ::
          namespace_not_found() | request_limit_exceeded() | service_not_found() | invalid_input()

  @type discover_instances_revision_errors() ::
          namespace_not_found() | request_limit_exceeded() | service_not_found() | invalid_input()

  @type get_instance_errors() :: instance_not_found() | service_not_found() | invalid_input()

  @type get_instances_health_status_errors() ::
          instance_not_found() | service_not_found() | invalid_input()

  @type get_namespace_errors() :: namespace_not_found() | invalid_input()

  @type get_operation_errors() :: operation_not_found() | invalid_input()

  @type get_service_errors() :: service_not_found() | invalid_input()

  @type list_instances_errors() :: service_not_found() | invalid_input()

  @type list_namespaces_errors() :: invalid_input()

  @type list_operations_errors() :: invalid_input()

  @type list_services_errors() :: invalid_input()

  @type list_tags_for_resource_errors() :: resource_not_found_exception() | invalid_input()

  @type register_instance_errors() ::
          resource_limit_exceeded()
          | service_not_found()
          | duplicate_request()
          | resource_in_use()
          | invalid_input()

  @type tag_resource_errors() ::
          too_many_tags_exception() | resource_not_found_exception() | invalid_input()

  @type untag_resource_errors() :: resource_not_found_exception() | invalid_input()

  @type update_http_namespace_errors() ::
          namespace_not_found() | duplicate_request() | resource_in_use() | invalid_input()

  @type update_instance_custom_health_status_errors() ::
          instance_not_found() | service_not_found() | custom_health_not_found() | invalid_input()

  @type update_private_dns_namespace_errors() ::
          namespace_not_found() | duplicate_request() | resource_in_use() | invalid_input()

  @type update_public_dns_namespace_errors() ::
          namespace_not_found() | duplicate_request() | resource_in_use() | invalid_input()

  @type update_service_errors() :: service_not_found() | duplicate_request() | invalid_input()

  def metadata do
    %{
      api_version: "2017-03-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicediscovery",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "ServiceDiscovery",
      signature_version: "v4",
      signing_name: "servicediscovery",
      target_prefix: "Route53AutoNaming_v20170314"
    }
  end

  @doc """
   
  Creates an HTTP namespace. Service instances registered using an HTTP namespace
  can be discovered using a `DiscoverInstances` request but can't be discovered
  using DNS.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20CreateHttpNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_http_namespace_request`)
    %{
      optional("CreatorRequestId") => String.t(),
      optional("Description") => String.t(),
      optional("Tags") => list(tag()()),
      required("Name") => String.t()
    }
  """
  @spec create_http_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_http_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_http_namespace_errors()}
  def create_http_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHttpNamespace", input, options)
  end

  @doc """
   
  Creates a private namespace based on DNS, which is visible only inside a
  specified Amazon VPC. The namespace defines your service naming scheme. For
  example, if you name your namespace `example.com` and name your service
  `backend`, the resulting DNS name for the service is `backend.example.com`.
  Service instances that are registered using a private DNS namespace can be
  discovered using either a `DiscoverInstances` request or using DNS. For the
  current quota on the number of namespaces that you can create using the same
  Amazon Web Services account, see [Cloud Map
  quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20CreatePrivateDnsNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_private_dns_namespace_request`)
    %{
      optional("CreatorRequestId") => String.t(),
      optional("Description") => String.t(),
      optional("Properties") => private_dns_namespace_properties(),
      optional("Tags") => list(tag()()),
      required("Name") => String.t(),
      required("Vpc") => String.t()
    }
  """
  @spec create_private_dns_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_private_dns_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_private_dns_namespace_errors()}
  def create_private_dns_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePrivateDnsNamespace", input, options)
  end

  @doc """
   
  Creates a public namespace based on DNS, which is visible on the internet. The
  namespace defines your service naming scheme. For example, if you name your
  namespace `example.com` and name your service `backend`, the resulting DNS
  name for the service is `backend.example.com`. You can discover instances that
  were registered with a public DNS namespace by using either a
  `DiscoverInstances` request or using DNS. For the current quota on the number
  of namespaces that you can create using the same Amazon Web Services account,
  see [Cloud Map
  quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20CreatePublicDnsNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_public_dns_namespace_request`)
    %{
      optional("CreatorRequestId") => String.t(),
      optional("Description") => String.t(),
      optional("Properties") => public_dns_namespace_properties(),
      optional("Tags") => list(tag()()),
      required("Name") => String.t()
    }
  """
  @spec create_public_dns_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_public_dns_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_public_dns_namespace_errors()}
  def create_public_dns_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePublicDnsNamespace", input, options)
  end

  @doc """
   
  Creates a service. This action defines the configuration for the following
  entities:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20CreateService&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_service_request`)
    %{
      optional("CreatorRequestId") => String.t(),
      optional("Description") => String.t(),
      optional("DnsConfig") => dns_config(),
      optional("HealthCheckConfig") => health_check_config(),
      optional("HealthCheckCustomConfig") => health_check_custom_config(),
      optional("NamespaceId") => String.t(),
      optional("Tags") => list(tag()()),
      optional("Type") => list(any()),
      required("Name") => String.t()
    }
  """
  @spec create_service(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_errors()}
  def create_service(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateService", input, options)
  end

  @doc """
   
  Deletes a namespace from the current account. If the namespace still contains
  one or more services, the request fails.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20DeleteNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_namespace_request`)
    %{
      required("Id") => String.t()
    }
  """
  @spec delete_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_namespace_errors()}
  def delete_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteNamespace", input, options)
  end

  @doc """
   
  Deletes a specified service. If the service still contains one or more
  registered instances, the request fails.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20DeleteService&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_service_request`)
    %{
      required("Id") => String.t()
    }
  """
  @spec delete_service(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_errors()}
  def delete_service(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteService", input, options)
  end

  @doc """
   
  Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map
  created for the specified instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20DeregisterInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deregister_instance_request`)
    %{
      required("InstanceId") => String.t(),
      required("ServiceId") => String.t()
    }
  """
  @spec deregister_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deregister_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_instance_errors()}
  def deregister_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterInstance", input, options)
  end

  @doc """
   
  Discovers registered instances for a specified namespace and service. You can
  use `DiscoverInstances` to discover instances for any type of namespace.
  `DiscoverInstances` returns a randomized list of instances allowing customers
  to distribute traffic evenly across instances. For public and private DNS
  namespaces, you can also use DNS queries to discover instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20DiscoverInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:discover_instances_request`)
    %{
      optional("HealthStatus") => list(any()),
      optional("MaxResults") => integer(),
      optional("OptionalParameters") => map(),
      optional("QueryParameters") => map(),
      required("NamespaceName") => String.t(),
      required("ServiceName") => String.t()
    }
  """
  @spec discover_instances(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, discover_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, discover_instances_errors()}
  def discover_instances(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "data-")

    Request.request_post(client, meta, "DiscoverInstances", input, options)
  end

  @doc """
   
  Discovers the increasing revision associated with an instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20DiscoverInstancesRevision&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:discover_instances_revision_request`)
    %{
      required("NamespaceName") => String.t(),
      required("ServiceName") => String.t()
    }
  """
  @spec discover_instances_revision(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, discover_instances_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, discover_instances_revision_errors()}
  def discover_instances_revision(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "data-")

    Request.request_post(client, meta, "DiscoverInstancesRevision", input, options)
  end

  @doc """
   
  Gets information about a specified instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20GetInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_instance_request`)
    %{
      required("InstanceId") => String.t(),
      required("ServiceId") => String.t()
    }
  """
  @spec get_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_instance_errors()}
  def get_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstance", input, options)
  end

  @doc """
   
  Gets the current health status (`Healthy`, `Unhealthy`, or `Unknown`) of one or
  more instances that are associated with a specified service.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20GetInstancesHealthStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_instances_health_status_request`)
    %{
      optional("Instances") => list(String.t()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ServiceId") => String.t()
    }
  """
  @spec get_instances_health_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_instances_health_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_instances_health_status_errors()}
  def get_instances_health_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstancesHealthStatus", input, options)
  end

  @doc """
   
  Gets information about a namespace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20GetNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_namespace_request`)
    %{
      required("Id") => String.t()
    }
  """
  @spec get_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_namespace_errors()}
  def get_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetNamespace", input, options)
  end

  @doc """
   
  Gets information about any operation that returns an operation ID in the
  response, such as a `CreateHttpNamespace` request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20GetOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_operation_request`)
    %{
      required("OperationId") => String.t()
    }
  """
  @spec get_operation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_operation_errors()}
  def get_operation(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOperation", input, options)
  end

  @doc """
   
  Gets the settings for a specified service.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20GetService&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_service_request`)
    %{
      required("Id") => String.t()
    }
  """
  @spec get_service(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_errors()}
  def get_service(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetService", input, options)
  end

  @doc """
   
  Lists summary information about the instances that you registered by using a
  specified service.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20ListInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_instances_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ServiceId") => String.t()
    }
  """
  @spec list_instances(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instances_errors()}
  def list_instances(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListInstances", input, options)
  end

  @doc """
   
  Lists summary information about the namespaces that were created by the current
  Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20ListNamespaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_namespaces_request`)
    %{
      optional("Filters") => list(namespace_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_namespaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_namespaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_namespaces_errors()}
  def list_namespaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListNamespaces", input, options)
  end

  @doc """
   
  Lists operations that match the criteria that you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20ListOperations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_operations_request`)
    %{
      optional("Filters") => list(operation_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_operations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_operations_errors()}
  def list_operations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOperations", input, options)
  end

  @doc """
   
  Lists summary information for all the services that are associated with one or
  more namespaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20ListServices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_services_request`)
    %{
      optional("Filters") => list(service_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_services(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_services_errors()}
  def list_services(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListServices", input, options)
  end

  @doc """
   
  Lists tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("ResourceARN") => String.t()
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
   
  Creates or updates one or more records and, optionally, creates a health check
  based on the settings in a specified service. When you submit a
  `RegisterInstance` request, the following occurs:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20RegisterInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_instance_request`)
    %{
      optional("CreatorRequestId") => String.t(),
      required("Attributes") => map(),
      required("InstanceId") => String.t(),
      required("ServiceId") => String.t()
    }
  """
  @spec register_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, register_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_instance_errors()}
  def register_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterInstance", input, options)
  end

  @doc """
   
  Adds one or more tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("Tags") => list(tag()())
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
   
  Removes one or more tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("TagKeys") => list(String.t()())
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
   
  Updates an HTTP namespace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20UpdateHttpNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_http_namespace_request`)
    %{
      optional("UpdaterRequestId") => String.t(),
      required("Id") => String.t(),
      required("Namespace") => http_namespace_change()
    }
  """
  @spec update_http_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_http_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_http_namespace_errors()}
  def update_http_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateHttpNamespace", input, options)
  end

  @doc """
   
  Submits a request to change the health status of a custom health check to
  healthy or unhealthy. You can use `UpdateInstanceCustomHealthStatus` to change
  the status only for custom health checks, which you define using
  `HealthCheckCustomConfig` when you create a service. You can't use it to
  change the status for Route 53 health checks, which you define using
  `HealthCheckConfig`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20UpdateInstanceCustomHealthStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_instance_custom_health_status_request`)
    %{
      required("InstanceId") => String.t(),
      required("ServiceId") => String.t(),
      required("Status") => list(any())
    }
  """
  @spec update_instance_custom_health_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_instance_custom_health_status_errors()}
  def update_instance_custom_health_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateInstanceCustomHealthStatus", input, options)
  end

  @doc """
   
  Updates a private DNS namespace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20UpdatePrivateDnsNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_private_dns_namespace_request`)
    %{
      optional("UpdaterRequestId") => String.t(),
      required("Id") => String.t(),
      required("Namespace") => private_dns_namespace_change()
    }
  """
  @spec update_private_dns_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_private_dns_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_private_dns_namespace_errors()}
  def update_private_dns_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePrivateDnsNamespace", input, options)
  end

  @doc """
   
  Updates a public DNS namespace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20UpdatePublicDnsNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_public_dns_namespace_request`)
    %{
      optional("UpdaterRequestId") => String.t(),
      required("Id") => String.t(),
      required("Namespace") => public_dns_namespace_change()
    }
  """
  @spec update_public_dns_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_public_dns_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_public_dns_namespace_errors()}
  def update_public_dns_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePublicDnsNamespace", input, options)
  end

  @doc """
   
  Submits a request to perform the following operations:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicediscovery%20UpdateService&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_service_request`)
    %{
      required("Id") => String.t(),
      required("Service") => service_change()
    }
  """
  @spec update_service(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_errors()}
  def update_service(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateService", input, options)
  end
end
