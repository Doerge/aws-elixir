# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Tnb do
  @moduledoc """
  Amazon Web Services Telco Network Builder (TNB) is a network automation service
  that helps you deploy and manage telecom networks. AWS TNB helps you with the
  lifecycle management of your telecommunication network functions throughout
  planning, deployment, and post-deployment activities.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_sol_network_package_output() :: %{
        "nsdOperationalState" => list(any())
      }

  """
  @type update_sol_network_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_vnf_info() :: %{
        "vnfState" => list(any()),
        "vnfcResourceInfo" => list(get_sol_vnfc_resource_info()())
      }

  """
  @type get_sol_vnf_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sol_function_package_input() :: %{}

  """
  @type delete_sol_function_package_input() :: %{}

  @typedoc """

  ## Example:

      delete_sol_network_instance_input() :: %{}

  """
  @type delete_sol_network_instance_input() :: %{}

  @typedoc """

  ## Example:

      create_sol_network_package_output() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "nsdOnboardingState" => list(any()),
        "nsdOperationalState" => list(any()),
        "nsdUsageState" => list(any()),
        "tags" => map()
      }

  """
  @type create_sol_network_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_function_package_output() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "metadata" => get_sol_function_package_metadata(),
        "onboardingState" => list(any()),
        "operationalState" => list(any()),
        "tags" => map(),
        "usageState" => list(any()),
        "vnfProductName" => [String.t()],
        "vnfProvider" => [String.t()],
        "vnfdId" => [String.t()],
        "vnfdVersion" => [String.t()]
      }

  """
  @type get_sol_function_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_function_instance_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type list_sol_function_instance_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_function_instances_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_sol_function_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_operations_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_sol_network_operations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_sol_network_package_content_metadata() :: %{
        "nsd" => network_artifact_meta()
      }

  """
  @type validate_sol_network_package_content_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_packages_output() :: %{
        "networkPackages" => list(list_sol_network_package_info()()),
        "nextToken" => String.t()
      }

  """
  @type list_sol_network_packages_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_function_instance_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type get_sol_function_instance_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sol_network_package_input() :: %{
        optional("tags") => map()
      }

  """
  @type create_sol_network_package_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sol_function_package_content_metadata() :: %{
        "vnfd" => function_artifact_meta()
      }

  """
  @type put_sol_function_package_content_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_descriptor_input() :: %{}

  """
  @type get_sol_network_package_descriptor_input() :: %{}

  @typedoc """

  ## Example:

      get_sol_function_package_descriptor_input() :: %{
        required("accept") => list(any())
      }

  """
  @type get_sol_function_package_descriptor_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_function_instance_output() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "instantiatedVnfInfo" => get_sol_vnf_info(),
        "instantiationState" => list(any()),
        "metadata" => get_sol_function_instance_metadata(),
        "nsInstanceId" => String.t(),
        "tags" => map(),
        "vnfPkgId" => String.t(),
        "vnfProductName" => [String.t()],
        "vnfProvider" => [String.t()],
        "vnfdId" => String.t(),
        "vnfdVersion" => [String.t()]
      }

  """
  @type get_sol_function_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_output() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "metadata" => get_sol_network_package_metadata(),
        "nsdId" => String.t(),
        "nsdName" => [String.t()],
        "nsdOnboardingState" => list(any()),
        "nsdOperationalState" => list(any()),
        "nsdUsageState" => list(any()),
        "nsdVersion" => [String.t()],
        "tags" => map(),
        "vnfPkgIds" => list(String.t()())
      }

  """
  @type get_sol_network_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_info() :: %{
        "cause" => String.t(),
        "details" => String.t()
      }

  """
  @type error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sol_function_package_content_output() :: %{
        "id" => String.t(),
        "metadata" => put_sol_function_package_content_metadata(),
        "vnfProductName" => [String.t()],
        "vnfProvider" => [String.t()],
        "vnfdId" => String.t(),
        "vnfdVersion" => [String.t()]
      }

  """
  @type put_sol_function_package_content_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_input() :: %{}

  """
  @type get_sol_network_package_input() :: %{}

  @typedoc """

  ## Example:

      list_sol_network_packages_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_sol_network_packages_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_sol_network_package_content_input() :: %{
        optional("contentType") => list(any()),
        required("file") => [binary()]
      }

  """
  @type validate_sol_network_package_content_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sol_network_package_content_input() :: %{
        optional("contentType") => list(any()),
        required("file") => [binary()]
      }

  """
  @type put_sol_network_package_content_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_operations_info() :: %{
        "arn" => String.t(),
        "error" => problem_details(),
        "id" => String.t(),
        "lcmOperationType" => list(any()),
        "metadata" => list_sol_network_operations_metadata(),
        "nsInstanceId" => String.t(),
        "operationState" => list(any())
      }

  """
  @type list_sol_network_operations_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      terminate_sol_network_instance_input() :: %{
        optional("tags") => map()
      }

  """
  @type terminate_sol_network_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_instantiated_vnf_info() :: %{
        "vnfState" => list(any())
      }

  """
  @type get_sol_instantiated_vnf_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_vnfc_resource_info() :: %{
        "metadata" => get_sol_vnfc_resource_info_metadata()
      }

  """
  @type get_sol_vnfc_resource_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_package_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type list_sol_network_package_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sol_network_package_content_output() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "metadata" => put_sol_network_package_content_metadata(),
        "nsdId" => String.t(),
        "nsdName" => [String.t()],
        "nsdVersion" => [String.t()],
        "vnfPkgIds" => list(String.t()())
      }

  """
  @type put_sol_network_package_content_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_instances_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_sol_network_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sol_network_package_content_metadata() :: %{
        "nsd" => network_artifact_meta()
      }

  """
  @type put_sol_network_package_content_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_operations_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type list_sol_network_operations_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_content_output() :: %{
        "contentType" => list(any()),
        "nsdContent" => [binary()]
      }

  """
  @type get_sol_network_package_content_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sol_network_instance_output() :: %{
        "nsLcmOpOccId" => String.t(),
        "tags" => map()
      }

  """
  @type update_sol_network_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      problem_details() :: %{
        "detail" => [String.t()],
        "title" => [String.t()]
      }

  """
  @type problem_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sol_network_instance_output() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "nsInstanceName" => [String.t()],
        "nsdInfoId" => String.t(),
        "tags" => map()
      }

  """
  @type create_sol_network_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      terminate_sol_network_instance_output() :: %{
        "nsLcmOpOccId" => String.t(),
        "tags" => map()
      }

  """
  @type terminate_sol_network_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sol_function_package_content_input() :: %{
        optional("contentType") => list(any()),
        required("file") => [binary()]
      }

  """
  @type put_sol_function_package_content_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instantiate_sol_network_instance_input() :: %{
        optional("additionalParamsForNs") => [any()],
        optional("dryRun") => [boolean()],
        optional("tags") => map()
      }

  """
  @type instantiate_sol_network_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_function_packages_output() :: %{
        "functionPackages" => list(list_sol_function_package_info()()),
        "nextToken" => String.t()
      }

  """
  @type list_sol_function_packages_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sol_function_package_output() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "onboardingState" => list(any()),
        "operationalState" => list(any()),
        "tags" => map(),
        "usageState" => list(any())
      }

  """
  @type create_sol_function_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_sol_network_operation_input() :: %{}

  """
  @type cancel_sol_network_operation_input() :: %{}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sol_network_modify() :: %{
        "vnfConfigurableProperties" => [any()],
        "vnfInstanceId" => String.t()
      }

  """
  @type update_sol_network_modify() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_instance_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type list_sol_network_instance_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_instance_output() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "lcmOpInfo" => lcm_operation_info(),
        "metadata" => get_sol_network_instance_metadata(),
        "nsInstanceDescription" => [String.t()],
        "nsInstanceName" => [String.t()],
        "nsState" => list(any()),
        "nsdId" => String.t(),
        "nsdInfoId" => String.t(),
        "tags" => map()
      }

  """
  @type get_sol_network_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_function_package_descriptor_output() :: %{
        "contentType" => list(any()),
        "vnfd" => [binary()]
      }

  """
  @type get_sol_function_package_descriptor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_instance_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type get_sol_network_instance_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()],
        "nsd" => network_artifact_meta()
      }

  """
  @type get_sol_network_package_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_operation_input() :: %{}

  """
  @type get_sol_network_operation_input() :: %{}

  @typedoc """

  ## Example:

      update_sol_network_package_input() :: %{
        required("nsdOperationalState") => list(any())
      }

  """
  @type update_sol_network_package_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sol_function_package_input() :: %{
        optional("tags") => map()
      }

  """
  @type create_sol_function_package_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sol_function_package_output() :: %{
        "operationalState" => list(any())
      }

  """
  @type update_sol_function_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_operation_task_details() :: %{
        "taskContext" => map(),
        "taskEndTime" => [non_neg_integer()],
        "taskErrorDetails" => error_info(),
        "taskName" => [String.t()],
        "taskStartTime" => [non_neg_integer()],
        "taskStatus" => list(any())
      }

  """
  @type get_sol_network_operation_task_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_content_input() :: %{
        required("accept") => list(any())
      }

  """
  @type get_sol_network_package_content_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sol_network_package_input() :: %{}

  """
  @type delete_sol_network_package_input() :: %{}

  @typedoc """

  ## Example:

      get_sol_function_package_input() :: %{}

  """
  @type get_sol_function_package_input() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      validate_sol_network_package_content_output() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "metadata" => validate_sol_network_package_content_metadata(),
        "nsdId" => String.t(),
        "nsdName" => [String.t()],
        "nsdVersion" => [String.t()],
        "vnfPkgIds" => list(String.t()())
      }

  """
  @type validate_sol_network_package_content_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      get_sol_function_package_content_input() :: %{
        required("accept") => list(any())
      }

  """
  @type get_sol_function_package_content_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_function_package_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()],
        "vnfd" => function_artifact_meta()
      }

  """
  @type get_sol_function_package_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sol_network_instance_input() :: %{
        optional("modifyVnfInfoData") => update_sol_network_modify(),
        optional("tags") => map(),
        required("updateType") => list(any())
      }

  """
  @type update_sol_network_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instantiate_sol_network_instance_output() :: %{
        "nsLcmOpOccId" => String.t(),
        "tags" => map()
      }

  """
  @type instantiate_sol_network_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tosca_override() :: %{
        "defaultValue" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type tosca_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_operation_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type get_sol_network_operation_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_operations_output() :: %{
        "networkOperations" => list(list_sol_network_operations_info()()),
        "nextToken" => String.t()
      }

  """
  @type list_sol_network_operations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_function_package_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type list_sol_function_package_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_function_instance_input() :: %{}

  """
  @type get_sol_function_instance_input() :: %{}

  @typedoc """

  ## Example:

      get_sol_vnfc_resource_info_metadata() :: %{
        "cluster" => [String.t()],
        "helmChart" => [String.t()],
        "nodeGroup" => [String.t()]
      }

  """
  @type get_sol_vnfc_resource_info_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_instance_input() :: %{}

  """
  @type get_sol_network_instance_input() :: %{}

  @typedoc """

  ## Example:

      list_sol_network_instances_output() :: %{
        "networkInstances" => list(list_sol_network_instance_info()()),
        "nextToken" => String.t()
      }

  """
  @type list_sol_network_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sol_network_instance_input() :: %{
        optional("nsDescription") => [String.t()],
        optional("tags") => map(),
        required("nsName") => [String.t()],
        required("nsdInfoId") => String.t()
      }

  """
  @type create_sol_network_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_instance_info() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "metadata" => list_sol_network_instance_metadata(),
        "nsInstanceDescription" => [String.t()],
        "nsInstanceName" => [String.t()],
        "nsState" => list(any()),
        "nsdId" => String.t(),
        "nsdInfoId" => String.t()
      }

  """
  @type list_sol_network_instance_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_function_package_info() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "metadata" => list_sol_function_package_metadata(),
        "onboardingState" => list(any()),
        "operationalState" => list(any()),
        "usageState" => list(any()),
        "vnfProductName" => [String.t()],
        "vnfProvider" => [String.t()],
        "vnfdId" => [String.t()],
        "vnfdVersion" => [String.t()]
      }

  """
  @type list_sol_function_package_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_artifact_meta() :: %{
        "overrides" => list(tosca_override()())
      }

  """
  @type function_artifact_meta() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_sol_function_package_content_input() :: %{
        optional("contentType") => list(any()),
        required("file") => [binary()]
      }

  """
  @type validate_sol_function_package_content_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_sol_function_package_content_output() :: %{
        "id" => String.t(),
        "metadata" => validate_sol_function_package_content_metadata(),
        "vnfProductName" => [String.t()],
        "vnfProvider" => [String.t()],
        "vnfdId" => String.t(),
        "vnfdVersion" => [String.t()]
      }

  """
  @type validate_sol_function_package_content_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_descriptor_output() :: %{
        "contentType" => list(any()),
        "nsd" => [binary()]
      }

  """
  @type get_sol_network_package_descriptor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_sol_function_package_content_metadata() :: %{
        "vnfd" => function_artifact_meta()
      }

  """
  @type validate_sol_function_package_content_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_function_package_content_output() :: %{
        "contentType" => list(any()),
        "packageContent" => [binary()]
      }

  """
  @type get_sol_function_package_content_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sol_network_operation_output() :: %{
        "arn" => String.t(),
        "error" => problem_details(),
        "id" => String.t(),
        "lcmOperationType" => list(any()),
        "metadata" => get_sol_network_operation_metadata(),
        "nsInstanceId" => String.t(),
        "operationState" => list(any()),
        "tags" => map(),
        "tasks" => list(get_sol_network_operation_task_details()())
      }

  """
  @type get_sol_network_operation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_function_instance_info() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "instantiatedVnfInfo" => get_sol_instantiated_vnf_info(),
        "instantiationState" => list(any()),
        "metadata" => list_sol_function_instance_metadata(),
        "nsInstanceId" => String.t(),
        "vnfPkgId" => String.t(),
        "vnfPkgName" => [String.t()]
      }

  """
  @type list_sol_function_instance_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lcm_operation_info() :: %{
        "nsLcmOpOccId" => String.t()
      }

  """
  @type lcm_operation_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sol_function_package_input() :: %{
        required("operationalState") => list(any())
      }

  """
  @type update_sol_function_package_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_function_instances_output() :: %{
        "functionInstances" => list(list_sol_function_instance_info()()),
        "nextToken" => String.t()
      }

  """
  @type list_sol_function_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_network_package_info() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "metadata" => list_sol_network_package_metadata(),
        "nsdDesigner" => [String.t()],
        "nsdId" => [String.t()],
        "nsdInvariantId" => [String.t()],
        "nsdName" => [String.t()],
        "nsdOnboardingState" => list(any()),
        "nsdOperationalState" => list(any()),
        "nsdUsageState" => list(any()),
        "nsdVersion" => [String.t()],
        "vnfPkgIds" => list(String.t()())
      }

  """
  @type list_sol_network_package_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sol_function_packages_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_sol_function_packages_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_artifact_meta() :: %{
        "overrides" => list(tosca_override()())
      }

  """
  @type network_artifact_meta() :: %{String.t() => any()}

  @type cancel_sol_network_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_sol_function_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_sol_network_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type delete_sol_function_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_sol_network_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_function_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_function_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_function_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_function_package_descriptor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_package_descriptor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type instantiate_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_sol_function_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sol_function_packages_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sol_network_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sol_network_operations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sol_network_packages_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_sol_function_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_sol_network_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type terminate_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_sol_function_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_sol_network_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type validate_sol_function_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type validate_sol_network_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2008-10-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "tnb",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "tnb",
      signature_version: "v4",
      signing_name: "tnb",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a network operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20CancelSolNetworkOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ns_lcm_op_occ_id` (`t:string`) The identifier of the network operation.

  ## Optional parameters:
  """
  @spec cancel_sol_network_operation(
          AWS.Client.t(),
          String.t(),
          cancel_sol_network_operation_input(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_sol_network_operation_errors()}
  def cancel_sol_network_operation(%Client{} = client, ns_lcm_op_occ_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_lcm_op_occs/#{AWS.Util.encode_uri(ns_lcm_op_occ_id)}/cancel"
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
      202
    )
  end

  @doc """
  Creates a function package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20CreateSolFunctionPackage&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_sol_function_package(
          AWS.Client.t(),
          create_sol_function_package_input(),
          Keyword.t()
        ) ::
          {:ok, create_sol_function_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sol_function_package_errors()}
  def create_sol_function_package(%Client{} = client, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages"
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
      201
    )
  end

  @doc """
  Creates a network instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20CreateSolNetworkInstance&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_sol_network_instance(
          AWS.Client.t(),
          create_sol_network_instance_input(),
          Keyword.t()
        ) ::
          {:ok, create_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sol_network_instance_errors()}
  def create_sol_network_instance(%Client{} = client, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances"
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
      201
    )
  end

  @doc """
  Creates a network package. A network package is a .zip file in CSAR (Cloud
  Service Archive) format defines the function packages you want to deploy and
  the Amazon Web Services infrastructure you want to deploy them on. For more
  information, see [Network
  instances](https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html)
  in the *Amazon Web Services Telco Network Builder User Guide*. A network
  package consists of a network service descriptor (NSD) file (required) and any
  additional files (optional), such as scripts specific to your needs. For
  example, if you have multiple function packages in your network package, you
  can use the NSD to define which network functions should run in certain VPCs,
  subnets, or EKS clusters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20CreateSolNetworkPackage&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_sol_network_package(
          AWS.Client.t(),
          create_sol_network_package_input(),
          Keyword.t()
        ) ::
          {:ok, create_sol_network_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sol_network_package_errors()}
  def create_sol_network_package(%Client{} = client, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors"
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
      201
    )
  end

  @doc """
  Deletes a function package. A function package is a .zip file in CSAR (Cloud
  Service Archive) format that contains a network function (an ETSI standard
  telecommunication application) and function package descriptor that uses the
  TOSCA standard to describe how the network functions should run on your
  network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20DeleteSolFunctionPackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vnf_pkg_id` (`t:string`) ID of the function package.

  ## Optional parameters:
  """
  @spec delete_sol_function_package(
          AWS.Client.t(),
          String.t(),
          delete_sol_function_package_input(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sol_function_package_errors()}
  def delete_sol_function_package(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}"
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
      204
    )
  end

  @doc """
  Deletes a network instance. A network instance is a single network created in
  Amazon Web Services TNB that can be deployed and on which life-cycle
  operations (like terminate, update, and delete) can be performed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20DeleteSolNetworkInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ns_instance_id` (`t:string`) Network instance ID.

  ## Optional parameters:
  """
  @spec delete_sol_network_instance(
          AWS.Client.t(),
          String.t(),
          delete_sol_network_instance_input(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sol_network_instance_errors()}
  def delete_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}"
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
      204
    )
  end

  @doc """
  Deletes network package. A network package is a .zip file in CSAR (Cloud Service
  Archive) format defines the function packages you want to deploy and the
  Amazon Web Services infrastructure you want to deploy them on.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20DeleteSolNetworkPackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:nsd_info_id` (`t:string`) ID of the network service descriptor in the
    network package.

  ## Optional parameters:
  """
  @spec delete_sol_network_package(
          AWS.Client.t(),
          String.t(),
          delete_sol_network_package_input(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sol_network_package_errors()}
  def delete_sol_network_package(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}"
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
      204
    )
  end

  @doc """
  Gets the details of a network function instance, including the instantation
  state and metadata from the function package descriptor in the network
  function package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20GetSolFunctionInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vnf_instance_id` (`t:string`) ID of the network function.

  ## Optional parameters:
  """
  @spec get_sol_function_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sol_function_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sol_function_instance_errors()}
  def get_sol_function_instance(%Client{} = client, vnf_instance_id, options \\ []) do
    url_path = "/sol/vnflcm/v1/vnf_instances/#{AWS.Util.encode_uri(vnf_instance_id)}"

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
  Gets the details of an individual function package, such as the operational
  state and whether the package is in use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20GetSolFunctionPackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vnf_pkg_id` (`t:string`) ID of the function package.

  ## Optional parameters:
  """
  @spec get_sol_function_package(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sol_function_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sol_function_package_errors()}
  def get_sol_function_package(%Client{} = client, vnf_pkg_id, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}"

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
  Gets the contents of a function package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20GetSolFunctionPackageContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vnf_pkg_id` (`t:string`) ID of the function package.
  * `:accept` (`t:enum["APPLICATION_ZIP"]`) The format of the package that you
    want to download from the function packages.

  ## Optional parameters:
  """
  @spec get_sol_function_package_content(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_sol_function_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sol_function_package_content_errors()}
  def get_sol_function_package_content(%Client{} = client, vnf_pkg_id, accept, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/package_content"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"Accept", accept}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a function package descriptor in a function package. A function package
  descriptor is a .yaml file in a function package that uses the TOSCA standard
  to describe how the network function in the function package should run on
  your network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20GetSolFunctionPackageDescriptor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vnf_pkg_id` (`t:string`) ID of the function package.
  * `:accept` (`t:enum["TEXT_PLAIN"]`) Indicates which content types, expressed as
    MIME types, the client is able to understand.

  ## Optional parameters:
  """
  @spec get_sol_function_package_descriptor(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_sol_function_package_descriptor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sol_function_package_descriptor_errors()}
  def get_sol_function_package_descriptor(%Client{} = client, vnf_pkg_id, accept, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/vnfd"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"Accept", accept}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of the network instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20GetSolNetworkInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ns_instance_id` (`t:string`) ID of the network instance.

  ## Optional parameters:
  """
  @spec get_sol_network_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sol_network_instance_errors()}
  def get_sol_network_instance(%Client{} = client, ns_instance_id, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}"

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
  Gets the details of a network operation, including the tasks involved in the
  network operation and the status of the tasks.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20GetSolNetworkOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ns_lcm_op_occ_id` (`t:string`) The identifier of the network operation.

  ## Optional parameters:
  """
  @spec get_sol_network_operation(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sol_network_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sol_network_operation_errors()}
  def get_sol_network_operation(%Client{} = client, ns_lcm_op_occ_id, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_lcm_op_occs/#{AWS.Util.encode_uri(ns_lcm_op_occ_id)}"

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
  Gets the details of a network package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20GetSolNetworkPackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:nsd_info_id` (`t:string`) ID of the network service descriptor in the
    network package.

  ## Optional parameters:
  """
  @spec get_sol_network_package(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sol_network_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sol_network_package_errors()}
  def get_sol_network_package(%Client{} = client, nsd_info_id, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}"

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
  Gets the contents of a network package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20GetSolNetworkPackageContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:nsd_info_id` (`t:string`) ID of the network service descriptor in the
    network package.
  * `:accept` (`t:enum["APPLICATION_ZIP"]`) The format of the package you want to
    download from the network package.

  ## Optional parameters:
  """
  @spec get_sol_network_package_content(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_sol_network_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sol_network_package_content_errors()}
  def get_sol_network_package_content(%Client{} = client, nsd_info_id, accept, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd_content"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"Accept", accept}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the content of the network service descriptor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20GetSolNetworkPackageDescriptor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:nsd_info_id` (`t:string`) ID of the network service descriptor in the
    network package.

  ## Optional parameters:
  """
  @spec get_sol_network_package_descriptor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sol_network_package_descriptor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sol_network_package_descriptor_errors()}
  def get_sol_network_package_descriptor(%Client{} = client, nsd_info_id, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd"

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
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Instantiates a network instance. A network instance is a single network created
  in Amazon Web Services TNB that can be deployed and on which life-cycle
  operations (like terminate, update, and delete) can be performed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20InstantiateSolNetworkInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ns_instance_id` (`t:string`) ID of the network instance.

  ## Optional parameters:
  * `:dry_run` (`t:`) A check for whether you have the required permissions for
    the action without actually making the request and provides an error
    response. If you have the required permissions, the error response is
    DryRunOperation. Otherwise, it is UnauthorizedOperation.
  """
  @spec instantiate_sol_network_instance(
          AWS.Client.t(),
          String.t(),
          instantiate_sol_network_instance_input(),
          Keyword.t()
        ) ::
          {:ok, instantiate_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, instantiate_sol_network_instance_errors()}
  def instantiate_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}/instantiate"
    headers = []

    {query_params, input} =
      [
        {"dryRun", "dry_run"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:dry_run])

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
  Lists network function instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20ListSolFunctionInstances&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of results to include in the
    response.
  * `:next_token` (`t:string`) The token for the next page of results.
  """
  @spec list_sol_function_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sol_function_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sol_function_instances_errors()}
  def list_sol_function_instances(%Client{} = client, options \\ []) do
    url_path = "/sol/vnflcm/v1/vnf_instances"

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
        [{"nextpage_opaque_marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max_results", opt_val} | query_params]
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
  Lists information about function packages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20ListSolFunctionPackages&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of results to include in the
    response.
  * `:next_token` (`t:string`) The token for the next page of results.
  """
  @spec list_sol_function_packages(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sol_function_packages_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sol_function_packages_errors()}
  def list_sol_function_packages(%Client{} = client, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages"

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
        [{"nextpage_opaque_marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max_results", opt_val} | query_params]
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
  Lists your network instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20ListSolNetworkInstances&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of results to include in the
    response.
  * `:next_token` (`t:string`) The token for the next page of results.
  """
  @spec list_sol_network_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sol_network_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sol_network_instances_errors()}
  def list_sol_network_instances(%Client{} = client, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances"

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
        [{"nextpage_opaque_marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max_results", opt_val} | query_params]
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
  Lists details for a network operation, including when the operation started and
  the status of the operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20ListSolNetworkOperations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of results to include in the
    response.
  * `:next_token` (`t:string`) The token for the next page of results.
  """
  @spec list_sol_network_operations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sol_network_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sol_network_operations_errors()}
  def list_sol_network_operations(%Client{} = client, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_lcm_op_occs"

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
        [{"nextpage_opaque_marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max_results", opt_val} | query_params]
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
  Lists network packages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20ListSolNetworkPackages&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of results to include in the
    response.
  * `:next_token` (`t:string`) The token for the next page of results.
  """
  @spec list_sol_network_packages(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sol_network_packages_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sol_network_packages_errors()}
  def list_sol_network_packages(%Client{} = client, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors"

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
        [{"nextpage_opaque_marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max_results", opt_val} | query_params]
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
  Lists tags for AWS TNB resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) Resource ARN.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
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
  Uploads the contents of a function package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20PutSolFunctionPackageContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vnf_pkg_id` (`t:string`) Function package ID.

  ## Optional parameters:
  * `:content_type` (`t:enum["APPLICATION_ZIP"]`) Function package content type.
  """
  @spec put_sol_function_package_content(
          AWS.Client.t(),
          String.t(),
          put_sol_function_package_content_input(),
          Keyword.t()
        ) ::
          {:ok, put_sol_function_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_sol_function_package_content_errors()}
  def put_sol_function_package_content(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/package_content"

    optional_params = [content_type: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:content_type])

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Uploads the contents of a network package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20PutSolNetworkPackageContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:nsd_info_id` (`t:string`) Network service descriptor info ID.

  ## Optional parameters:
  * `:content_type` (`t:enum["APPLICATION_ZIP"]`) Network package content type.
  """
  @spec put_sol_network_package_content(
          AWS.Client.t(),
          String.t(),
          put_sol_network_package_content_input(),
          Keyword.t()
        ) ::
          {:ok, put_sol_network_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_sol_network_package_content_errors()}
  def put_sol_network_package_content(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd_content"

    optional_params = [content_type: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:content_type])

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Tags an AWS TNB resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) Resource ARN.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_input(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Terminates a network instance. A network instance is a single network created in
  Amazon Web Services TNB that can be deployed and on which life-cycle
  operations (like terminate, update, and delete) can be performed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20TerminateSolNetworkInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ns_instance_id` (`t:string`) ID of the network instance.

  ## Optional parameters:
  """
  @spec terminate_sol_network_instance(
          AWS.Client.t(),
          String.t(),
          terminate_sol_network_instance_input(),
          Keyword.t()
        ) ::
          {:ok, terminate_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, terminate_sol_network_instance_errors()}
  def terminate_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}/terminate"
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
      201
    )
  end

  @doc """
  Untags an AWS TNB resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) Resource ARN.
  * `:tag_keys` (`t:list[com.amazonaws.tnb#TagKey]`) Tag keys.

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_input(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates the operational state of function package.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20UpdateSolFunctionPackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vnf_pkg_id` (`t:string`) ID of the function package.

  ## Optional parameters:
  """
  @spec update_sol_function_package(
          AWS.Client.t(),
          String.t(),
          update_sol_function_package_input(),
          Keyword.t()
        ) ::
          {:ok, update_sol_function_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sol_function_package_errors()}
  def update_sol_function_package(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a network instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20UpdateSolNetworkInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ns_instance_id` (`t:string`) ID of the network instance.

  ## Optional parameters:
  """
  @spec update_sol_network_instance(
          AWS.Client.t(),
          String.t(),
          update_sol_network_instance_input(),
          Keyword.t()
        ) ::
          {:ok, update_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sol_network_instance_errors()}
  def update_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}/update"
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
      201
    )
  end

  @doc """
  Updates the operational state of a network package. A network package is a .zip
  file in CSAR (Cloud Service Archive) format defines the function packages you
  want to deploy and the Amazon Web Services infrastructure you want to deploy
  them on.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20UpdateSolNetworkPackage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:nsd_info_id` (`t:string`) ID of the network service descriptor in the
    network package.

  ## Optional parameters:
  """
  @spec update_sol_network_package(
          AWS.Client.t(),
          String.t(),
          update_sol_network_package_input(),
          Keyword.t()
        ) ::
          {:ok, update_sol_network_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sol_network_package_errors()}
  def update_sol_network_package(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Validates function package content. This can be used as a dry run before
  uploading function package content with
  [PutSolFunctionPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20ValidateSolFunctionPackageContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vnf_pkg_id` (`t:string`) Function package ID.

  ## Optional parameters:
  * `:content_type` (`t:enum["APPLICATION_ZIP"]`) Function package content type.
  """
  @spec validate_sol_function_package_content(
          AWS.Client.t(),
          String.t(),
          validate_sol_function_package_content_input(),
          Keyword.t()
        ) ::
          {:ok, validate_sol_function_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_sol_function_package_content_errors()}
  def validate_sol_function_package_content(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path =
      "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/package_content/validate"

    optional_params = [content_type: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:content_type])

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Validates network package content. This can be used as a dry run before
  uploading network package content with
  [PutSolNetworkPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=tnb%20ValidateSolNetworkPackageContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:nsd_info_id` (`t:string`) Network service descriptor file.

  ## Optional parameters:
  * `:content_type` (`t:enum["APPLICATION_ZIP"]`) Network package content type.
  """
  @spec validate_sol_network_package_content(
          AWS.Client.t(),
          String.t(),
          validate_sol_network_package_content_input(),
          Keyword.t()
        ) ::
          {:ok, validate_sol_network_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_sol_network_package_content_errors()}
  def validate_sol_network_package_content(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path =
      "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd_content/validate"

    optional_params = [content_type: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:content_type])

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
