# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Panorama do
  @moduledoc """
  AWS Panorama **Overview**
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_node_from_template_job_request() :: %{
        optional("JobTags") => list(job_resource_tags()()),
        optional("NodeDescription") => String.t(),
        required("NodeName") => String.t(),
        required("OutputPackageName") => String.t(),
        required("OutputPackageVersion") => String.t(),
        required("TemplateParameters") => map(),
        required("TemplateType") => String.t()
      }
      
  """
  @type create_node_from_template_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_job() :: %{
        "CreatedTime" => non_neg_integer(),
        "DeviceId" => String.t(),
        "DeviceName" => String.t(),
        "JobId" => String.t(),
        "JobType" => String.t()
      }
      
  """
  @type device_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_request() :: %{
        optional("DeviceAggregatedStatusFilter") => String.t(),
        optional("MaxResults") => integer(),
        optional("NameFilter") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => String.t(),
        optional("SortOrder") => String.t()
      }
      
  """
  @type list_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provision_device_response() :: %{
        optional("Certificates") => binary(),
        optional("DeviceId") => String.t(),
        optional("IotThingName") => String.t(),
        required("Arn") => String.t(),
        required("Status") => String.t()
      }
      
  """
  @type provision_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_package_import_job_request() :: %{
        optional("JobTags") => list(job_resource_tags()()),
        required("ClientToken") => String.t(),
        required("InputConfig") => package_import_job_input_config(),
        required("JobType") => String.t(),
        required("OutputConfig") => package_import_job_output_config()
      }
      
  """
  @type create_package_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provision_device_request() :: %{
        optional("Description") => String.t(),
        optional("NetworkingConfiguration") => network_payload(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }
      
  """
  @type provision_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_instance() :: %{
        "CurrentStatus" => String.t(),
        "NodeId" => String.t(),
        "NodeInstanceId" => String.t(),
        "NodeName" => String.t(),
        "PackageName" => String.t(),
        "PackagePatchVersion" => String.t(),
        "PackageVersion" => String.t()
      }
      
  """
  @type node_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_instance_details_response() :: %{
        optional("ApplicationInstanceId") => String.t(),
        optional("ApplicationInstanceIdToReplace") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("DefaultRuntimeContextDevice") => String.t(),
        optional("Description") => String.t(),
        optional("ManifestOverridesPayload") => list(),
        optional("ManifestPayload") => list(),
        optional("Name") => String.t()
      }
      
  """
  @type describe_application_instance_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_node_from_template_jobs_response() :: %{
        optional("NextToken") => String.t(),
        required("NodeFromTemplateJobs") => list(node_from_template_job()())
      }
      
  """
  @type list_node_from_template_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_package_request() :: %{
        optional("Tags") => map(),
        required("PackageName") => String.t()
      }
      
  """
  @type create_package_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_instance_request() :: %{
        optional("ApplicationInstanceIdToReplace") => String.t(),
        optional("Description") => String.t(),
        optional("ManifestOverridesPayload") => list(),
        optional("Name") => String.t(),
        optional("RuntimeRoleArn") => String.t(),
        optional("Tags") => map(),
        required("DefaultRuntimeContextDevice") => String.t(),
        required("ManifestPayload") => list()
      }
      
  """
  @type create_application_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_status() :: %{
        "Ethernet0Status" => ethernet_status(),
        "Ethernet1Status" => ethernet_status(),
        "LastUpdatedTime" => non_neg_integer(),
        "NtpStatus" => ntp_status()
      }
      
  """
  @type network_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reported_runtime_context_state() :: %{
        "DesiredState" => String.t(),
        "DeviceReportedStatus" => String.t(),
        "DeviceReportedTime" => non_neg_integer(),
        "RuntimeContextName" => String.t()
      }
      
  """
  @type reported_runtime_context_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_package_import_jobs_response() :: %{
        optional("NextToken") => String.t(),
        required("PackageImportJobs") => list(package_import_job()())
      }
      
  """
  @type list_package_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      package_version_input_config() :: %{
        "S3Location" => s3_location()
      }
      
  """
  @type package_version_input_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_device_job_response() :: %{
        optional("CreatedTime") => non_neg_integer(),
        optional("DeviceArn") => String.t(),
        optional("DeviceId") => String.t(),
        optional("DeviceName") => String.t(),
        optional("DeviceType") => String.t(),
        optional("ImageVersion") => String.t(),
        optional("JobId") => String.t(),
        optional("JobType") => String.t(),
        optional("Status") => String.t()
      }
      
  """
  @type describe_device_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_instance_response() :: %{
        optional("ApplicationInstanceId") => String.t(),
        optional("ApplicationInstanceIdToReplace") => String.t(),
        optional("Arn") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("DefaultRuntimeContextDevice") => String.t(),
        optional("DefaultRuntimeContextDeviceName") => String.t(),
        optional("Description") => String.t(),
        optional("HealthStatus") => String.t(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("RuntimeContextStates") => list(reported_runtime_context_state()()),
        optional("RuntimeRoleArn") => String.t(),
        optional("Status") => String.t(),
        optional("StatusDescription") => String.t(),
        optional("Tags") => map()
      }
      
  """
  @type describe_application_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_job_for_devices_response() :: %{
        required("Jobs") => list(job()())
      }
      
  """
  @type create_job_for_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_input_port() :: %{
        "DefaultValue" => String.t(),
        "Description" => String.t(),
        "MaxConnections" => integer(),
        "Name" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type node_input_port() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_package_import_job_request() :: %{}
      
  """
  @type describe_package_import_job_request() :: %{}

  @typedoc """

  ## Example:
      
      list_packages_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_metadata_response() :: %{
        optional("DeviceId") => String.t()
      }
      
  """
  @type update_device_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ethernet_status() :: %{
        "ConnectionStatus" => String.t(),
        "HwAddress" => String.t(),
        "IpAddress" => String.t()
      }
      
  """
  @type ethernet_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_package_response() :: %{
        optional("ReadAccessPrincipalArns") => list(String.t()()),
        optional("WriteAccessPrincipalArns") => list(String.t()()),
        required("Arn") => String.t(),
        required("CreatedTime") => non_neg_integer(),
        required("PackageId") => String.t(),
        required("PackageName") => String.t(),
        required("StorageLocation") => storage_location(),
        required("Tags") => map()
      }
      
  """
  @type describe_package_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      package_object() :: %{
        "Name" => String.t(),
        "PackageVersion" => String.t(),
        "PatchVersion" => String.t()
      }
      
  """
  @type package_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_request() :: %{}
      
  """
  @type delete_device_request() :: %{}

  @typedoc """

  ## Example:
      
      list_application_instance_dependencies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_application_instance_dependencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signal_application_instance_node_instances_response() :: %{
        required("ApplicationInstanceId") => String.t()
      }
      
  """
  @type signal_application_instance_node_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_metadata_request() :: %{
        optional("Description") => String.t()
      }
      
  """
  @type update_device_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_instances_response() :: %{
        optional("ApplicationInstances") => list(application_instance()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_application_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_output_port() :: %{
        "Description" => String.t(),
        "Name" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type node_output_port() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      panorama_node() :: %{
        "Category" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Name" => String.t(),
        "NodeId" => String.t(),
        "OwnerAccount" => String.t(),
        "PackageArn" => String.t(),
        "PackageId" => String.t(),
        "PackageName" => String.t(),
        "PackageVersion" => String.t(),
        "PatchVersion" => String.t()
      }
      
  """
  @type panorama_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      package_list_item() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "PackageId" => String.t(),
        "PackageName" => String.t(),
        "Tags" => map()
      }
      
  """
  @type package_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_from_template_job() :: %{
        "CreatedTime" => non_neg_integer(),
        "JobId" => String.t(),
        "NodeName" => String.t(),
        "Status" => String.t(),
        "StatusMessage" => String.t(),
        "TemplateType" => String.t()
      }
      
  """
  @type node_from_template_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_node_from_template_job_request() :: %{}
      
  """
  @type describe_node_from_template_job_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_node_response() :: %{
        optional("AssetName") => String.t(),
        optional("PackageArn") => String.t(),
        required("Category") => String.t(),
        required("CreatedTime") => non_neg_integer(),
        required("Description") => String.t(),
        required("LastUpdatedTime") => non_neg_integer(),
        required("Name") => String.t(),
        required("NodeId") => String.t(),
        required("NodeInterface") => node_interface(),
        required("OwnerAccount") => String.t(),
        required("PackageId") => String.t(),
        required("PackageName") => String.t(),
        required("PackageVersion") => String.t(),
        required("PatchVersion") => String.t()
      }
      
  """
  @type describe_node_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      package_import_job_output_config() :: %{
        "PackageVersionOutputConfig" => package_version_output_config()
      }
      
  """
  @type package_import_job_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ntp_status() :: %{
        "ConnectionStatus" => String.t(),
        "IpAddress" => String.t(),
        "NtpServerName" => String.t()
      }
      
  """
  @type ntp_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ethernet_payload() :: %{
        "ConnectionType" => String.t(),
        "StaticIpConnectionInfo" => static_ip_connection_info()
      }
      
  """
  @type ethernet_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "ErrorArguments" => list(conflict_exception_error_argument()()),
        "ErrorId" => String.t(),
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_package_response() :: %{}
      
  """
  @type delete_package_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_error_argument() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type validation_exception_error_argument() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_package_import_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_package_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_package_version_request() :: %{
        optional("OwnerAccount") => String.t(),
        optional("UpdatedLatestPatchVersion") => String.t()
      }
      
  """
  @type deregister_package_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_signal() :: %{
        "NodeInstanceId" => String.t(),
        "Signal" => String.t()
      }
      
  """
  @type node_signal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      package_import_job_input_config() :: %{
        "PackageVersionInputConfig" => package_version_input_config()
      }
      
  """
  @type package_import_job_input_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_instance() :: %{
        "ApplicationInstanceId" => String.t(),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DefaultRuntimeContextDevice" => String.t(),
        "DefaultRuntimeContextDeviceName" => String.t(),
        "Description" => String.t(),
        "HealthStatus" => String.t(),
        "Name" => String.t(),
        "RuntimeContextStates" => list(reported_runtime_context_state()()),
        "Status" => String.t(),
        "StatusDescription" => String.t(),
        "Tags" => map()
      }
      
  """
  @type application_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_device_request() :: %{}
      
  """
  @type describe_device_request() :: %{}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "ServiceCode" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_node_from_template_job_response() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type create_node_from_template_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_payload() :: %{
        "Ethernet0" => ethernet_payload(),
        "Ethernet1" => ethernet_payload(),
        "Ntp" => ntp_payload()
      }
      
  """
  @type network_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ntp_payload() :: %{
        "NtpServers" => list(String.t()())
      }
      
  """
  @type ntp_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_interface() :: %{
        "Inputs" => list(node_input_port()()),
        "Outputs" => list(node_output_port()())
      }
      
  """
  @type node_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      static_ip_connection_info() :: %{
        "DefaultGateway" => String.t(),
        "Dns" => list(String.t()()),
        "IpAddress" => String.t(),
        "Mask" => String.t()
      }
      
  """
  @type static_ip_connection_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_nodes_request() :: %{
        optional("Category") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OwnerAccount") => String.t(),
        optional("PackageName") => String.t(),
        optional("PackageVersion") => String.t(),
        optional("PatchVersion") => String.t()
      }
      
  """
  @type list_nodes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_instance_request() :: %{}
      
  """
  @type describe_application_instance_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_package_version_response() :: %{
        optional("OwnerAccount") => String.t(),
        optional("PackageArn") => String.t(),
        optional("RegisteredTime") => non_neg_integer(),
        optional("StatusDescription") => String.t(),
        required("IsLatestPatch") => boolean(),
        required("PackageId") => String.t(),
        required("PackageName") => String.t(),
        required("PackageVersion") => String.t(),
        required("PatchVersion") => String.t(),
        required("Status") => String.t()
      }
      
  """
  @type describe_package_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_response() :: %{
        optional("NextToken") => String.t(),
        required("Devices") => list(device()())
      }
      
  """
  @type list_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_package_version_response() :: %{}
      
  """
  @type register_package_version_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "Message" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_device_job_request() :: %{}
      
  """
  @type describe_device_job_request() :: %{}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "BucketName" => String.t(),
        "ObjectKey" => String.t(),
        "Region" => String.t()
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_node_from_template_job_response() :: %{
        optional("JobTags") => list(job_resource_tags()()),
        optional("NodeDescription") => String.t(),
        required("CreatedTime") => non_neg_integer(),
        required("JobId") => String.t(),
        required("LastUpdatedTime") => non_neg_integer(),
        required("NodeName") => String.t(),
        required("OutputPackageName") => String.t(),
        required("OutputPackageVersion") => String.t(),
        required("Status") => String.t(),
        required("StatusMessage") => String.t(),
        required("TemplateParameters") => map(),
        required("TemplateType") => String.t()
      }
      
  """
  @type describe_node_from_template_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_response() :: %{
        optional("DeviceId") => String.t()
      }
      
  """
  @type delete_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_jobs_request() :: %{
        optional("DeviceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_devices_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_instance_details_request() :: %{}
      
  """
  @type describe_application_instance_details_request() :: %{}

  @typedoc """

  ## Example:
      
      list_node_from_template_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_node_from_template_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t(),
        "RetryAfterSeconds" => integer()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_application_instance_request() :: %{}
      
  """
  @type remove_application_instance_request() :: %{}

  @typedoc """

  ## Example:
      
      create_application_instance_response() :: %{
        required("ApplicationInstanceId") => String.t()
      }
      
  """
  @type create_application_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_package_import_job_response() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type create_package_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_jobs_response() :: %{
        optional("DeviceJobs") => list(device_job()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_devices_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      package_import_job_output() :: %{
        "OutputS3Location" => out_put_s3_location(),
        "PackageId" => String.t(),
        "PackageVersion" => String.t(),
        "PatchVersion" => String.t()
      }
      
  """
  @type package_import_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      out_put_s3_location() :: %{
        "BucketName" => String.t(),
        "ObjectKey" => String.t()
      }
      
  """
  @type out_put_s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_package_request() :: %{
        optional("ForceDelete") => boolean()
      }
      
  """
  @type delete_package_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_package_import_job_response() :: %{
        optional("ClientToken") => String.t(),
        optional("JobTags") => list(job_resource_tags()()),
        required("CreatedTime") => non_neg_integer(),
        required("InputConfig") => package_import_job_input_config(),
        required("JobId") => String.t(),
        required("JobType") => String.t(),
        required("LastUpdatedTime") => non_neg_integer(),
        required("Output") => package_import_job_output(),
        required("OutputConfig") => package_import_job_output_config(),
        required("Status") => String.t(),
        required("StatusMessage") => String.t()
      }
      
  """
  @type describe_package_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_location() :: %{
        "BinaryPrefixLocation" => String.t(),
        "Bucket" => String.t(),
        "GeneratedPrefixLocation" => String.t(),
        "ManifestPrefixLocation" => String.t(),
        "RepoPrefixLocation" => String.t()
      }
      
  """
  @type storage_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      signal_application_instance_node_instances_request() :: %{
        required("NodeSignals") => list(node_signal()())
      }
      
  """
  @type signal_application_instance_node_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alternate_software_metadata() :: %{
        "Version" => String.t()
      }
      
  """
  @type alternate_software_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_resource_tags() :: %{
        "ResourceType" => String.t(),
        "Tags" => map()
      }
      
  """
  @type job_resource_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "ErrorArguments" => list(validation_exception_error_argument()()),
        "ErrorId" => String.t(),
        "Fields" => list(validation_exception_field()()),
        "Message" => String.t(),
        "Reason" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      job() :: %{
        "DeviceId" => String.t(),
        "JobId" => String.t()
      }
      
  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception_error_argument() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type conflict_exception_error_argument() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_instance_dependencies_response() :: %{
        optional("NextToken") => String.t(),
        optional("PackageObjects") => list(package_object()())
      }
      
  """
  @type list_application_instance_dependencies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_package_request() :: %{}
      
  """
  @type describe_package_request() :: %{}

  @typedoc """

  ## Example:
      
      list_application_instance_node_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_application_instance_node_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_package_response() :: %{
        optional("Arn") => String.t(),
        optional("PackageId") => String.t(),
        required("StorageLocation") => storage_location()
      }
      
  """
  @type create_package_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_package_version_response() :: %{}
      
  """
  @type deregister_package_version_response() :: %{}

  @typedoc """

  ## Example:
      
      ota_job_config() :: %{
        "AllowMajorVersionUpdate" => boolean(),
        "ImageVersion" => String.t()
      }
      
  """
  @type ota_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_node_request() :: %{
        optional("OwnerAccount") => String.t()
      }
      
  """
  @type describe_node_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device() :: %{
        "Brand" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "CurrentSoftware" => String.t(),
        "Description" => String.t(),
        "DeviceAggregatedStatus" => String.t(),
        "DeviceId" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "LatestDeviceJob" => latest_device_job(),
        "LeaseExpirationTime" => non_neg_integer(),
        "Name" => String.t(),
        "ProvisioningStatus" => String.t(),
        "Tags" => map(),
        "Type" => String.t()
      }
      
  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      latest_device_job() :: %{
        "ImageVersion" => String.t(),
        "JobType" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type latest_device_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_package_version_request() :: %{
        optional("OwnerAccount") => String.t(),
        optional("PatchVersion") => String.t()
      }
      
  """
  @type describe_package_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_job_for_devices_request() :: %{
        optional("DeviceJobConfig") => device_job_config(),
        required("DeviceIds") => list(String.t()()),
        required("JobType") => String.t()
      }
      
  """
  @type create_job_for_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_package_version_request() :: %{
        optional("MarkLatest") => boolean(),
        optional("OwnerAccount") => String.t()
      }
      
  """
  @type register_package_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_instance_node_instances_response() :: %{
        optional("NextToken") => String.t(),
        optional("NodeInstances") => list(node_instance()())
      }
      
  """
  @type list_application_instance_node_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_packages_response() :: %{
        optional("NextToken") => String.t(),
        optional("Packages") => list(package_list_item()())
      }
      
  """
  @type list_packages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_application_instance_response() :: %{}
      
  """
  @type remove_application_instance_response() :: %{}

  @typedoc """

  ## Example:
      
      list_nodes_response() :: %{
        optional("NextToken") => String.t(),
        optional("Nodes") => list(panorama_node()())
      }
      
  """
  @type list_nodes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_job_config() :: %{
        "OTAJobConfig" => ota_job_config()
      }
      
  """
  @type device_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      package_version_output_config() :: %{
        "MarkLatest" => boolean(),
        "PackageName" => String.t(),
        "PackageVersion" => String.t()
      }
      
  """
  @type package_version_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      package_import_job() :: %{
        "CreatedTime" => non_neg_integer(),
        "JobId" => String.t(),
        "JobType" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Status" => String.t(),
        "StatusMessage" => String.t()
      }
      
  """
  @type package_import_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_instances_request() :: %{
        optional("DeviceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => String.t()
      }
      
  """
  @type list_application_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_device_response() :: %{
        optional("AlternateSoftwares") => list(alternate_software_metadata()()),
        optional("Arn") => String.t(),
        optional("Brand") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("CurrentNetworkingStatus") => network_status(),
        optional("CurrentSoftware") => String.t(),
        optional("Description") => String.t(),
        optional("DeviceAggregatedStatus") => String.t(),
        optional("DeviceConnectionStatus") => String.t(),
        optional("DeviceId") => String.t(),
        optional("LatestAlternateSoftware") => String.t(),
        optional("LatestDeviceJob") => latest_device_job(),
        optional("LatestSoftware") => String.t(),
        optional("LeaseExpirationTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("NetworkingConfiguration") => network_payload(),
        optional("ProvisioningStatus") => String.t(),
        optional("SerialNumber") => String.t(),
        optional("Tags") => map(),
        optional("Type") => String.t()
      }
      
  """
  @type describe_device_response() :: %{String.t() => any()}

  @type create_application_instance_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_job_for_devices_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_node_from_template_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_package_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_package_import_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_device_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_package_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type deregister_package_version_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_application_instance_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_application_instance_details_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_device_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_device_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_node_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_node_from_template_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type describe_package_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_package_import_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type describe_package_version_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_application_instance_dependencies_errors() ::
          access_denied_exception() | internal_server_exception()

  @type list_application_instance_node_instances_errors() ::
          access_denied_exception() | internal_server_exception()

  @type list_application_instances_errors() ::
          access_denied_exception() | internal_server_exception()

  @type list_devices_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_devices_jobs_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_node_from_template_jobs_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_nodes_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type list_package_import_jobs_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_packages_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type provision_device_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type register_package_version_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type remove_application_instance_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type signal_application_instance_node_instances_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_device_metadata_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2019-07-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "panorama",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Panorama",
      signature_version: "v4",
      signing_name: "panorama",
      target_prefix: nil
    }
  end

  @doc """
  Creates an application instance and deploys it to a device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20CreateApplicationInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_application_instance(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_application_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_instance_errors()}
  def create_application_instance(%Client{} = client, options \\ []) do
    url_path = "/application-instances"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a job to run on a device. A job can update a device's software or reboot
  it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20CreateJobForDevices&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_job_for_devices(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_job_for_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_job_for_devices_errors()}
  def create_job_for_devices(%Client{} = client, options \\ []) do
    url_path = "/jobs"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a camera stream node.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20CreateNodeFromTemplateJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_node_from_template_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_node_from_template_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_node_from_template_job_errors()}
  def create_node_from_template_job(%Client{} = client, options \\ []) do
    url_path = "/packages/template-job"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a package and storage location in an Amazon S3 access point.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20CreatePackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_package(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_package_errors()}
  def create_package(%Client{} = client, options \\ []) do
    url_path = "/packages"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Imports a node package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20CreatePackageImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_package_import_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_package_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_package_import_job_errors()}
  def create_package_import_job(%Client{} = client, options \\ []) do
    url_path = "/packages/import-jobs"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes a device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DeleteDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:device_id` (`t:string` required) The device's ID.
  """
  @spec delete_device(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_errors()}
  def delete_device(%Client{} = client, device_id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"

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
      200
    )
  end

  @doc """
  Deletes a package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DeletePackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:package_id` (`t:string` required) The package's ID.

  ## Keyword parameters:
  * `:force_delete` (`t:boolean`) Delete the package even if it has artifacts
    stored in its access point. Deletes the package's artifacts from Amazon S3.
  """
  @spec delete_package(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_package_errors()}
  def delete_package(%Client{} = client, package_id, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_id)}"

    # Validate optional parameters
    optional_params = [force_delete: nil]

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
      if opt_val = Keyword.get(options, :force_delete) do
        [{"ForceDelete", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:force_delete])

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
      200
    )
  end

  @doc """
  Deregisters a package version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DeregisterPackageVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:package_id` (`t:string` required) A package ID.
  * `:package_version` (`t:string` required) A package version.
  * `:patch_version` (`t:string` required) A patch version.

  ## Keyword parameters:
  * `:owner_account` (`t:string`) An owner account.
  * `:updated_latest_patch_version` (`t:string`) If the version was marked latest,
    the new version to maker as latest.
  """
  @spec deregister_package_version(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, deregister_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_package_version_errors()}
  def deregister_package_version(
        %Client{} = client,
        package_id,
        package_version,
        patch_version,
        options \\ []
      ) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_id)}/versions/#{AWS.Util.encode_uri(package_version)}/patch/#{AWS.Util.encode_uri(patch_version)}"

    # Validate optional parameters
    optional_params = [owner_account: nil, updated_latest_patch_version: nil]

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
      if opt_val = Keyword.get(options, :updated_latest_patch_version) do
        [{"UpdatedLatestPatchVersion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :owner_account) do
        [{"OwnerAccount", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:owner_account, :updated_latest_patch_version])

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
      200
    )
  end

  @doc """
  Returns information about an application instance on a device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DescribeApplicationInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_instance_id` (`t:string` required) The application instance's
    ID.
  """
  @spec describe_application_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_application_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_instance_errors()}
  def describe_application_instance(%Client{} = client, application_instance_id, options \\ []) do
    url_path = "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}"

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
  Returns information about an application instance's configuration manifest.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DescribeApplicationInstanceDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_instance_id` (`t:string` required) The application instance's
    ID.
  """
  @spec describe_application_instance_details(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_application_instance_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_instance_details_errors()}
  def describe_application_instance_details(
        %Client{} = client,
        application_instance_id,
        options \\ []
      ) do
    url_path = "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/details"

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
  Returns information about a device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DescribeDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:device_id` (`t:string` required) The device's ID.
  """
  @spec describe_device(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_device_errors()}
  def describe_device(%Client{} = client, device_id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"

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
  Returns information about a device job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DescribeDeviceJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string` required) The job's ID.
  """
  @spec describe_device_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_device_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_device_job_errors()}
  def describe_device_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Returns information about a node.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DescribeNode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:node_id` (`t:string` required) The node's ID.

  ## Keyword parameters:
  * `:owner_account` (`t:string`) The account ID of the node's owner.
  """
  @spec describe_node(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_node_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_node_errors()}
  def describe_node(%Client{} = client, node_id, options \\ []) do
    url_path = "/nodes/#{AWS.Util.encode_uri(node_id)}"

    # Validate optional parameters
    optional_params = [owner_account: nil]

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
      if opt_val = Keyword.get(options, :owner_account) do
        [{"OwnerAccount", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:owner_account])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a job to create a camera stream node.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DescribeNodeFromTemplateJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string` required) The job's ID.
  """
  @spec describe_node_from_template_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_node_from_template_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_node_from_template_job_errors()}
  def describe_node_from_template_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/packages/template-job/#{AWS.Util.encode_uri(job_id)}"

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
  Returns information about a package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DescribePackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:package_id` (`t:string` required) The package's ID.
  """
  @spec describe_package(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_package_errors()}
  def describe_package(%Client{} = client, package_id, options \\ []) do
    url_path = "/packages/metadata/#{AWS.Util.encode_uri(package_id)}"

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
  Returns information about a package import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DescribePackageImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string` required) The job's ID.
  """
  @spec describe_package_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_package_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_package_import_job_errors()}
  def describe_package_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/packages/import-jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Returns information about a package version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20DescribePackageVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:package_id` (`t:string` required) The version's ID.
  * `:package_version` (`t:string` required) The version's version.

  ## Keyword parameters:
  * `:owner_account` (`t:string`) The version's owner account.
  * `:patch_version` (`t:string`) The version's patch version.
  """
  @spec describe_package_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_package_version_errors()}
  def describe_package_version(%Client{} = client, package_id, package_version, options \\ []) do
    url_path =
      "/packages/metadata/#{AWS.Util.encode_uri(package_id)}/versions/#{AWS.Util.encode_uri(package_version)}"

    # Validate optional parameters
    optional_params = [owner_account: nil, patch_version: nil]

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
      if opt_val = Keyword.get(options, :patch_version) do
        [{"PatchVersion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :owner_account) do
        [{"OwnerAccount", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:owner_account, :patch_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of application instance dependencies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListApplicationInstanceDependencies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_instance_id` (`t:string` required) The application instance's
    ID.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of application instance
    dependencies to return in one page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
    request to retrieve the next page of results.
  """
  @spec list_application_instance_dependencies(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_application_instance_dependencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_instance_dependencies_errors()}
  def list_application_instance_dependencies(
        %Client{} = client,
        application_instance_id,
        options \\ []
      ) do
    url_path =
      "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/package-dependencies"

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
  Returns a list of application node instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListApplicationInstanceNodeInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_instance_id` (`t:string` required) The node instances'
    application instance ID.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of node instances to return in
    one page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
    request to retrieve the next page of results.
  """
  @spec list_application_instance_node_instances(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_application_instance_node_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_instance_node_instances_errors()}
  def list_application_instance_node_instances(
        %Client{} = client,
        application_instance_id,
        options \\ []
      ) do
    url_path =
      "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/node-instances"

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
  Returns a list of application instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListApplicationInstances&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:device_id` (`t:string`) The application instances' device ID.
  * `:max_results` (`t:integer`) The maximum number of application instances to
    return in one page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
    request to retrieve the next page of results.
  * `:status_filter` (`t:string`) Only include instances with a specific status.
  """
  @spec list_application_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_application_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_instances_errors()}
  def list_application_instances(%Client{} = client, options \\ []) do
    url_path = "/application-instances"

    # Validate optional parameters
    optional_params = [device_id: nil, max_results: nil, next_token: nil, status_filter: nil]

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
      if opt_val = Keyword.get(options, :status_filter) do
        [{"statusFilter", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :device_id) do
        [{"deviceId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:device_id, :max_results, :next_token, :status_filter])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of devices.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListDevices&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:device_aggregated_status_filter` (`t:string`) Filter based on a device's
    status.
  * `:max_results` (`t:integer`) The maximum number of devices to return in one
    page of results.
  * `:name_filter` (`t:string`) Filter based on device's name. Prefixes supported.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
    request to retrieve the next page of results.
  * `:sort_by` (`t:string`) The target column to be sorted on. Default column sort
    is CREATED_TIME.
  * `:sort_order` (`t:string`) The sorting order for the returned list. SortOrder
    is DESCENDING by default based on CREATED_TIME. Otherwise, SortOrder is
    ASCENDING.
  """
  @spec list_devices(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_errors()}
  def list_devices(%Client{} = client, options \\ []) do
    url_path = "/devices"

    # Validate optional parameters
    optional_params = [
      device_aggregated_status_filter: nil,
      max_results: nil,
      name_filter: nil,
      next_token: nil,
      sort_by: nil,
      sort_order: nil
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
      if opt_val = Keyword.get(options, :sort_order) do
        [{"SortOrder", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_by) do
        [{"SortBy", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name_filter) do
        [{"NameFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :device_aggregated_status_filter) do
        [{"DeviceAggregatedStatusFilter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :device_aggregated_status_filter,
        :max_results,
        :name_filter,
        :next_token,
        :sort_by,
        :sort_order
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListDevicesJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:device_id` (`t:string`) Filter results by the job's target device ID.
  * `:max_results` (`t:integer`) The maximum number of device jobs to return in
    one page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
    request to retrieve the next page of results.
  """
  @spec list_devices_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_devices_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_jobs_errors()}
  def list_devices_jobs(%Client{} = client, options \\ []) do
    url_path = "/jobs"

    # Validate optional parameters
    optional_params = [device_id: nil, max_results: nil, next_token: nil]

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :device_id) do
        [{"DeviceId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:device_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of camera stream node jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListNodeFromTemplateJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of node from template jobs to
    return in one page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
    request to retrieve the next page of results.
  """
  @spec list_node_from_template_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_node_from_template_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_node_from_template_jobs_errors()}
  def list_node_from_template_jobs(%Client{} = client, options \\ []) do
    url_path = "/packages/template-job"

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  Returns a list of nodes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListNodes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:category` (`t:string`) Search for nodes by category.
  * `:max_results` (`t:integer`) The maximum number of nodes to return in one page
    of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
    request to retrieve the next page of results.
  * `:owner_account` (`t:string`) Search for nodes by the account ID of the nodes'
    owner.
  * `:package_name` (`t:string`) Search for nodes by name.
  * `:package_version` (`t:string`) Search for nodes by version.
  * `:patch_version` (`t:string`) Search for nodes by patch version.
  """
  @spec list_nodes(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_nodes_errors()}
  def list_nodes(%Client{} = client, options \\ []) do
    url_path = "/nodes"

    # Validate optional parameters
    optional_params = [
      category: nil,
      max_results: nil,
      next_token: nil,
      owner_account: nil,
      package_name: nil,
      package_version: nil,
      patch_version: nil
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
      if opt_val = Keyword.get(options, :patch_version) do
        [{"patchVersion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :package_version) do
        [{"packageVersion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :package_name) do
        [{"packageName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :owner_account) do
        [{"ownerAccount", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :category) do
        [{"category", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :category,
        :max_results,
        :next_token,
        :owner_account,
        :package_name,
        :package_version,
        :patch_version
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of package import jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListPackageImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of package import jobs to
    return in one page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
    request to retrieve the next page of results.
  """
  @spec list_package_import_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_package_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_package_import_jobs_errors()}
  def list_package_import_jobs(%Client{} = client, options \\ []) do
    url_path = "/packages/import-jobs"

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  Returns a list of packages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListPackages&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of packages to return in one
    page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
    request to retrieve the next page of results.
  """
  @spec list_packages(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_packages_errors()}
  def list_packages(%Client{} = client, options \\ []) do
    url_path = "/packages"

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
  Returns a list of tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The resource's ARN.
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Creates a device and returns a configuration archive. The configuration archive
  is a ZIP file that contains a provisioning certificate that is valid for 5
  minutes. Name the configuration archive `certificates-omni_*device-name*.zip`
  and transfer it to the device within 5 minutes. Use the included USB storage
  device and connect it to the USB 3.0 port next to the HDMI output.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20ProvisionDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec provision_device(AWS.Client.t(), Keyword.t()) ::
          {:ok, provision_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, provision_device_errors()}
  def provision_device(%Client{} = client, options \\ []) do
    url_path = "/devices"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Registers a package version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20RegisterPackageVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:package_id` (`t:string` required) A package ID.
  * `:package_version` (`t:string` required) A package version.
  * `:patch_version` (`t:string` required) A patch version.
  """
  @spec register_package_version(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, register_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_package_version_errors()}
  def register_package_version(
        %Client{} = client,
        package_id,
        package_version,
        patch_version,
        options \\ []
      ) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_id)}/versions/#{AWS.Util.encode_uri(package_version)}/patch/#{AWS.Util.encode_uri(patch_version)}"

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
  Removes an application instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20RemoveApplicationInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_instance_id` (`t:string` required) An application instance ID.
  """
  @spec remove_application_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, remove_application_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_application_instance_errors()}
  def remove_application_instance(%Client{} = client, application_instance_id, options \\ []) do
    url_path = "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}"

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
      200
    )
  end

  @doc """
  Signal camera nodes to stop or resume.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20SignalApplicationInstanceNodeInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_instance_id` (`t:string` required) An application instance ID.
  """
  @spec signal_application_instance_node_instances(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, signal_application_instance_node_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, signal_application_instance_node_instances_errors()}
  def signal_application_instance_node_instances(
        %Client{} = client,
        application_instance_id,
        options \\ []
      ) do
    url_path =
      "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/node-signals"

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
  Tags a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The resource's ARN.
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The resource's ARN.
  * `:tag_keys` (`t:list[com.amazonaws.panorama#TagKey]` required) Tag keys to
    remove.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
      200
    )
  end

  @doc """
  Updates a device's metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=panorama%20UpdateDeviceMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:device_id` (`t:string` required) The device's ID.
  """
  @spec update_device_metadata(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_device_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_metadata_errors()}
  def update_device_metadata(%Client{} = client, device_id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"

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
end
