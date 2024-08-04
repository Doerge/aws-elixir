# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppConfig do
  @moduledoc """
  AppConfig feature flags and dynamic configurations help software builders
  quickly and securely adjust application behavior in production environments
  without full code deployments. AppConfig speeds up software release frequency,
  improves application resiliency, and helps you address emergent issues more
  quickly. With feature flags, you can gradually release new capabilities to
  users and measure the impact of those changes before fully deploying the new
  capabilities to all users. With operational flags and dynamic configurations,
  you can update block lists, allow lists, throttling limits, logging verbosity,
  and perform other operational tuning to quickly respond to issues in
  production environments. AppConfig is a capability of Amazon Web Services
  Systems Manager.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_extensions_request() :: %{
        optional("MaxResults") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_extensions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      applications() :: %{
        optional("Items") => list(application()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type applications() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_deployment_request() :: %{}
      
  """
  @type stop_deployment_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_deployments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extension() :: %{
        optional("Actions") => map(),
        optional("Arn") => String.t(),
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("Parameters") => map(),
        optional("VersionNumber") => integer()
      }
      
  """
  @type extension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_summary() :: %{
        "CompletedAt" => non_neg_integer(),
        "ConfigurationName" => String.t(),
        "ConfigurationVersion" => String.t(),
        "DeploymentDurationInMinutes" => integer(),
        "DeploymentNumber" => integer(),
        "FinalBakeTimeInMinutes" => integer(),
        "GrowthFactor" => float(),
        "GrowthType" => list(any()),
        "PercentageComplete" => float(),
        "StartedAt" => non_neg_integer(),
        "State" => list(any()),
        "VersionLabel" => String.t()
      }
      
  """
  @type deployment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extension_associations() :: %{
        optional("Items") => list(extension_association_summary()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type extension_associations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        optional("ApplicationId") => String.t(),
        optional("AppliedExtensions") => list(applied_extension()()),
        optional("CompletedAt") => non_neg_integer(),
        optional("ConfigurationLocationUri") => String.t(),
        optional("ConfigurationName") => String.t(),
        optional("ConfigurationProfileId") => String.t(),
        optional("ConfigurationVersion") => String.t(),
        optional("DeploymentDurationInMinutes") => integer(),
        optional("DeploymentNumber") => integer(),
        optional("DeploymentStrategyId") => String.t(),
        optional("Description") => String.t(),
        optional("EnvironmentId") => String.t(),
        optional("EventLog") => list(deployment_event()()),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthFactor") => float(),
        optional("GrowthType") => list(any()),
        optional("KmsKeyArn") => String.t(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("PercentageComplete") => float(),
        optional("StartedAt") => non_neg_integer(),
        optional("State") => list(any()),
        optional("VersionLabel") => String.t()
      }
      
  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_configuration_detail() :: %{
        "Constraint" => String.t(),
        "Location" => String.t(),
        "Reason" => String.t(),
        "Type" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type invalid_configuration_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_deployment_strategy_request() :: %{}
      
  """
  @type delete_deployment_strategy_request() :: %{}

  @typedoc """

  ## Example:
      
      get_configuration_request() :: %{
        optional("ClientConfigurationVersion") => String.t(),
        required("ClientId") => String.t()
      }
      
  """
  @type get_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_configuration_request() :: %{
        required("ConfigurationVersion") => String.t()
      }
      
  """
  @type validate_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tags() :: %{
        optional("Tags") => map()
      }
      
  """
  @type resource_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hosted_configuration_version_request() :: %{
        optional("Description") => String.t(),
        optional("LatestVersionNumber") => integer(),
        optional("VersionLabel") => String.t(),
        required("Content") => binary(),
        required("ContentType") => String.t()
      }
      
  """
  @type create_hosted_configuration_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_request() :: %{}
      
  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      update_configuration_profile_request() :: %{
        optional("Description") => String.t(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("Name") => String.t(),
        optional("RetrievalRoleArn") => String.t(),
        optional("Validators") => list(validator()())
      }
      
  """
  @type update_configuration_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_deployment_strategy_request() :: %{
        optional("DeploymentDurationInMinutes") => integer(),
        optional("Description") => String.t(),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthFactor") => float(),
        optional("GrowthType") => list(any())
      }
      
  """
  @type update_deployment_strategy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_strategy() :: %{
        optional("DeploymentDurationInMinutes") => integer(),
        optional("Description") => String.t(),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthFactor") => float(),
        optional("GrowthType") => list(any()),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("ReplicateTo") => list(any())
      }
      
  """
  @type deployment_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration() :: %{
        optional("ConfigurationVersion") => String.t(),
        optional("Content") => binary(),
        optional("ContentType") => String.t()
      }
      
  """
  @type configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extension_association_summary() :: %{
        "ExtensionArn" => String.t(),
        "Id" => String.t(),
        "ResourceArn" => String.t()
      }
      
  """
  @type extension_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hosted_configuration_versions() :: %{
        optional("Items") => list(hosted_configuration_version_summary()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type hosted_configuration_versions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      applied_extension() :: %{
        "ExtensionAssociationId" => String.t(),
        "ExtensionId" => String.t(),
        "Parameters" => map(),
        "VersionNumber" => integer()
      }
      
  """
  @type applied_extension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitor() :: %{
        "AlarmArn" => String.t(),
        "AlarmRoleArn" => String.t()
      }
      
  """
  @type monitor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extension_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "VersionNumber" => integer()
      }
      
  """
  @type extension_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hosted_configuration_version_request() :: %{}
      
  """
  @type delete_hosted_configuration_version_request() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      payload_too_large_exception() :: %{
        "Limit" => float(),
        "Measure" => list(any()),
        "Message" => String.t(),
        "Size" => float()
      }
      
  """
  @type payload_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment() :: %{
        optional("ApplicationId") => String.t(),
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("Monitors") => list(monitor()()),
        optional("Name") => String.t(),
        optional("State") => list(any())
      }
      
  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployment_request() :: %{}
      
  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_configuration_profile_request() :: %{}
      
  """
  @type delete_configuration_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      application() :: %{
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_extension_association_request() :: %{
        optional("Parameters") => map()
      }
      
  """
  @type update_extension_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "Description" => String.t(),
        "Dynamic" => boolean(),
        "Required" => boolean()
      }
      
  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_strategy_request() :: %{
        optional("Description") => String.t(),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthType") => list(any()),
        optional("ReplicateTo") => list(any()),
        optional("Tags") => map(),
        required("DeploymentDurationInMinutes") => integer(),
        required("GrowthFactor") => float(),
        required("Name") => String.t()
      }
      
  """
  @type create_deployment_strategy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_profile() :: %{
        optional("ApplicationId") => String.t(),
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("LocationUri") => String.t(),
        optional("Name") => String.t(),
        optional("RetrievalRoleArn") => String.t(),
        optional("Type") => String.t(),
        optional("Validators") => list(validator()())
      }
      
  """
  @type configuration_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }
      
  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_extension_request() :: %{
        optional("VersionNumber") => integer()
      }
      
  """
  @type get_extension_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hosted_configuration_version_request() :: %{}
      
  """
  @type get_hosted_configuration_version_request() :: %{}

  @typedoc """

  ## Example:
      
      action_invocation() :: %{
        "ActionName" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "ExtensionIdentifier" => String.t(),
        "InvocationId" => String.t(),
        "RoleArn" => String.t(),
        "Uri" => String.t()
      }
      
  """
  @type action_invocation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environments() :: %{
        optional("Items") => list(environment()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type environments() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_configuration_profile_request() :: %{}
      
  """
  @type get_configuration_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      get_deployment_strategy_request() :: %{}
      
  """
  @type get_deployment_strategy_request() :: %{}

  @typedoc """

  ## Example:
      
      deployment_strategies() :: %{
        optional("Items") => list(deployment_strategy()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type deployment_strategies() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hosted_configuration_version_summary() :: %{
        "ApplicationId" => String.t(),
        "ConfigurationProfileId" => String.t(),
        "ContentType" => String.t(),
        "Description" => String.t(),
        "KmsKeyArn" => String.t(),
        "VersionLabel" => String.t(),
        "VersionNumber" => integer()
      }
      
  """
  @type hosted_configuration_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Type") => String.t()
      }
      
  """
  @type list_configuration_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_request() :: %{}
      
  """
  @type delete_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      create_extension_association_request() :: %{
        optional("ExtensionVersionNumber") => integer(),
        optional("Parameters") => map(),
        optional("Tags") => map(),
        required("ExtensionIdentifier") => String.t(),
        required("ResourceIdentifier") => String.t()
      }
      
  """
  @type create_extension_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_profiles() :: %{
        optional("Items") => list(configuration_profile_summary()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type configuration_profiles() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "Description" => String.t(),
        "Name" => String.t(),
        "RoleArn" => String.t(),
        "Uri" => String.t()
      }
      
  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extensions() :: %{
        optional("Items") => list(extension_summary()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type extensions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_profile_request() :: %{
        optional("Description") => String.t(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("RetrievalRoleArn") => String.t(),
        optional("Tags") => map(),
        optional("Type") => String.t(),
        optional("Validators") => list(validator()()),
        required("LocationUri") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_configuration_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      list_extension_associations_request() :: %{
        optional("ExtensionIdentifier") => String.t(),
        optional("ExtensionVersionNumber") => integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceIdentifier") => String.t()
      }
      
  """
  @type list_extension_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_extension_association_request() :: %{}
      
  """
  @type get_extension_association_request() :: %{}

  @typedoc """

  ## Example:
      
      create_extension_request() :: %{
        optional("Description") => String.t(),
        optional("LatestVersionNumber") => integer(),
        optional("Parameters") => map(),
        optional("Tags") => map(),
        required("Actions") => map(),
        required("Name") => String.t()
      }
      
  """
  @type create_extension_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_deployment_strategies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_deployment_strategies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_extension_association_request() :: %{}
      
  """
  @type delete_extension_association_request() :: %{}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Details" => list(),
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hosted_configuration_version() :: %{
        optional("ApplicationId") => String.t(),
        optional("ConfigurationProfileId") => String.t(),
        optional("Content") => binary(),
        optional("ContentType") => String.t(),
        optional("Description") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("VersionLabel") => String.t(),
        optional("VersionNumber") => integer()
      }
      
  """
  @type hosted_configuration_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validator() :: %{
        "Content" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type validator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_extension_request() :: %{
        optional("Actions") => map(),
        optional("Description") => String.t(),
        optional("Parameters") => map(),
        optional("VersionNumber") => integer()
      }
      
  """
  @type update_extension_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_request() :: %{
        optional("Description") => String.t(),
        optional("Monitors") => list(monitor()()),
        optional("Tags") => map(),
        required("Name") => String.t()
      }
      
  """
  @type create_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_event() :: %{
        "ActionInvocations" => list(action_invocation()()),
        "Description" => String.t(),
        "EventType" => list(any()),
        "OccurredAt" => non_neg_integer(),
        "TriggeredBy" => list(any())
      }
      
  """
  @type deployment_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_request() :: %{
        optional("Description") => String.t(),
        optional("Monitors") => list(monitor()()),
        optional("Name") => String.t()
      }
      
  """
  @type update_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_extension_request() :: %{
        optional("VersionNumber") => integer()
      }
      
  """
  @type delete_extension_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_profile_summary() :: %{
        "ApplicationId" => String.t(),
        "Id" => String.t(),
        "LocationUri" => String.t(),
        "Name" => String.t(),
        "Type" => String.t(),
        "ValidatorTypes" => list(list(any())())
      }
      
  """
  @type configuration_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployments() :: %{
        optional("Items") => list(deployment_summary()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type deployments() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_application_request() :: %{}
      
  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:
      
      start_deployment_request() :: %{
        optional("Description") => String.t(),
        optional("DynamicExtensionParameters") => map(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("Tags") => map(),
        required("ConfigurationProfileId") => String.t(),
        required("ConfigurationVersion") => String.t(),
        required("DeploymentStrategyId") => String.t()
      }
      
  """
  @type start_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hosted_configuration_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("VersionLabel") => String.t()
      }
      
  """
  @type list_hosted_configuration_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extension_association() :: %{
        optional("Arn") => String.t(),
        optional("ExtensionArn") => String.t(),
        optional("ExtensionVersionNumber") => integer(),
        optional("Id") => String.t(),
        optional("Parameters") => map(),
        optional("ResourceArn") => String.t()
      }
      
  """
  @type extension_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_request() :: %{}
      
  """
  @type delete_application_request() :: %{}

  @type create_application_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_configuration_profile_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_deployment_strategy_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_environment_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_extension_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_extension_association_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_hosted_configuration_version_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | payload_too_large_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_configuration_profile_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_deployment_strategy_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_environment_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_extension_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_extension_association_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_hosted_configuration_version_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_application_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_configuration_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_configuration_profile_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_deployment_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_deployment_strategy_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_environment_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_extension_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_extension_association_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_hosted_configuration_version_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_applications_errors() :: bad_request_exception() | internal_server_exception()

  @type list_configuration_profiles_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_deployment_strategies_errors() ::
          bad_request_exception() | internal_server_exception()

  @type list_deployments_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_environments_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_extension_associations_errors() ::
          bad_request_exception() | internal_server_exception()

  @type list_extensions_errors() :: bad_request_exception() | internal_server_exception()

  @type list_hosted_configuration_versions_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type start_deployment_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_deployment_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_application_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_configuration_profile_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_deployment_strategy_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_environment_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_extension_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_extension_association_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type validate_configuration_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2019-10-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appconfig",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AppConfig",
      signature_version: "v4",
      signing_name: "appconfig",
      target_prefix: nil
    }
  end

  @doc """
  Creates an application. In AppConfig, an application is simply an organizational
  construct like a folder. This organizational construct has a relationship with
  some unit of executable code. For example, you could create an application
  called MyMobileApp to organize and manage configuration data for a mobile
  application installed by your users.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20CreateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, options \\ []) do
    url_path = "/applications"

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
  Creates a configuration profile, which is information that enables AppConfig to
  access the configuration source. Valid configuration sources include the
  following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20CreateConfigurationProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  ## Keyword parameters:
  """
  @spec create_configuration_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, configuration_profile(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_profile_errors()}
  def create_configuration_profile(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles"

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
  Creates a deployment strategy that defines important criteria for rolling out
  your configuration to the designated targets. A deployment strategy includes
  the overall duration required, a percentage of targets to receive the
  deployment during each interval, an algorithm that defines how percentage
  grows, and bake time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20CreateDeploymentStrategy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_deployment_strategy(AWS.Client.t(), Keyword.t()) ::
          {:ok, deployment_strategy(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_strategy_errors()}
  def create_deployment_strategy(%Client{} = client, options \\ []) do
    url_path = "/deploymentstrategies"

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
  Creates an environment. For each application, you define one or more
  environments. An environment is a deployment group of AppConfig targets, such
  as applications in a `Beta` or `Production` environment. You can also define
  environments for application subcomponents such as the `Web`, `Mobile` and
  `Back-end` components for your application. You can configure Amazon
  CloudWatch alarms for each environment. The system monitors alarms during a
  configuration deployment. If an alarm is triggered, the system rolls back the
  configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20CreateEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  ## Keyword parameters:
  """
  @spec create_environment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, environment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/environments"

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
  Creates an AppConfig extension. An extension augments your ability to inject
  logic or behavior at different points during the AppConfig workflow of
  creating or deploying a configuration. You can create your own extensions or
  use the Amazon Web Services authored extensions provided by AppConfig. For an
  AppConfig extension that uses Lambda, you must create a Lambda function to
  perform any computation and processing defined in the extension. If you plan
  to create custom versions of the Amazon Web Services authored notification
  extensions, you only need to specify an Amazon Resource Name (ARN) in the
  `Uri` field for the new extension version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20CreateExtension&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:latest_version_number` (`t:integer`) You can omit this field when you create
  an extension. When you create a new version, specify the most recent current
  version number. For example, you create version 3, enter 2 for this field.
  """
  @spec create_extension(AWS.Client.t(), Keyword.t()) ::
          {:ok, extension(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_extension_errors()}
  def create_extension(%Client{} = client, options \\ []) do
    url_path = "/extensions"

    # Validate optional parameters
    optional_params = [latest_version_number: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :latest_version_number) do
        [{"Latest-Version-Number", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:latest_version_number])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  When you create an extension or configure an Amazon Web Services authored
  extension, you associate the extension with an AppConfig application,
  environment, or configuration profile. For example, you can choose to run the
  ``` AppConfig deployment events to Amazon SNS ``` Amazon Web Services authored
  extension and receive notifications on an Amazon SNS topic anytime a
  configuration deployment is started for a specific application. Defining which
  extension to associate with an AppConfig resource is called an *extension
  association*. An extension association is a specified relationship between an
  extension and an AppConfig resource, such as an application or a configuration
  profile. For more information about extensions and associations, see
  [Extending
  workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20CreateExtensionAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_extension_association(AWS.Client.t(), Keyword.t()) ::
          {:ok, extension_association(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_extension_association_errors()}
  def create_extension_association(%Client{} = client, options \\ []) do
    url_path = "/extensionassociations"

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
  Creates a new configuration in the AppConfig hosted configuration store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20CreateHostedConfigurationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:configuration_profile_id` (`t:string` required) The configuration profile
  ID.
  * `:content_type` (`t:string` required) A standard MIME type describing the
  format of the configuration content. For more information, see Content-Type.
  * `:input` (`t:map`):
    * `:content` (`t:blob` required) The content of the configuration or the
  configuration data.
  ## Keyword parameters:
  * `:description` (`t:string`) A description of the configuration.
  * `:latest_version_number` (`t:integer`) An optional locking token used to
  prevent race conditions from overwriting configuration updates when creating
  a new version. To ensure your data is not overwritten when creating multiple
  hosted configuration versions in rapid succession, specify the version
  number of the latest hosted configuration version.
  * `:version_label` (`t:string`) An optional, user-defined label for the
  AppConfig hosted configuration version. This value must contain at least one
  non-numeric character. For example, "v2.2.0".
  """
  @spec create_hosted_configuration_version(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, hosted_configuration_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hosted_configuration_version_errors()}
  def create_hosted_configuration_version(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        content_type,
        input,
        options \\ []
      )
      when is_map(input) and is_binary(content_type) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/hostedconfigurationversions"

    # Validate optional parameters
    optional_params = [description: nil, latest_version_number: nil, version_label: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"Content-Type", content_type}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :version_label) do
        [{"VersionLabel", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :latest_version_number) do
        [{"Latest-Version-Number", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :description) do
        [{"Description", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Application-Id", "ApplicationId"},
          {"Configuration-Profile-Id", "ConfigurationProfileId"},
          {"Content-Type", "ContentType"},
          {"Description", "Description"},
          {"KmsKeyArn", "KmsKeyArn"},
          {"VersionLabel", "VersionLabel"},
          {"Version-Number", "VersionNumber"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Application-Id", "ApplicationId"},
          {"Configuration-Profile-Id", "ConfigurationProfileId"},
          {"Content-Type", "ContentType"},
          {"Description", "Description"},
          {"KmsKeyArn", "KmsKeyArn"},
          {"VersionLabel", "VersionLabel"},
          {"Version-Number", "VersionNumber"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:description, :latest_version_number, :version_label])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deletes an application. Deleting an application does not delete a configuration
  from a host.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20DeleteApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The ID of the application to delete.
  ## Keyword parameters:
  """
  @spec delete_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"

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
  Deletes a configuration profile. Deleting a configuration profile does not
  delete a configuration from a host.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20DeleteConfigurationProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID that includes the
  configuration profile you want to delete.
  * `:configuration_profile_id` (`t:string` required) The ID of the configuration
  profile you want to delete.
  ## Keyword parameters:
  """
  @spec delete_configuration_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_profile_errors()}
  def delete_configuration_profile(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}"

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
  Deletes a deployment strategy. Deleting a deployment strategy does not delete a
  configuration from a host.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20DeleteDeploymentStrategy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:deployment_strategy_id` (`t:string` required) The ID of the deployment
  strategy you want to delete.
  ## Keyword parameters:
  """
  @spec delete_deployment_strategy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_deployment_strategy_errors()}
  def delete_deployment_strategy(%Client{} = client, deployment_strategy_id, options \\ []) do
    url_path = "/deployementstrategies/#{AWS.Util.encode_uri(deployment_strategy_id)}"

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
  Deletes an environment. Deleting an environment does not delete a configuration
  from a host.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20DeleteEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID that includes the
  environment that you want to delete.
  * `:environment_id` (`t:string` required) The ID of the environment that you
  want to delete.
  ## Keyword parameters:
  """
  @spec delete_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, application_id, environment_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}"

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
  Deletes an AppConfig extension. You must delete all associations to an extension
  before you delete the extension.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20DeleteExtension&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:extension_identifier` (`t:string` required) The name, ID, or Amazon Resource
  Name (ARN) of the extension you want to delete.
  ## Keyword parameters:
  * `:version_number` (`t:integer`) A specific version of an extension to delete.
  If omitted, the highest version is deleted.
  """
  @spec delete_extension(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_extension_errors()}
  def delete_extension(%Client{} = client, extension_identifier, options \\ []) do
    url_path = "/extensions/#{AWS.Util.encode_uri(extension_identifier)}"

    # Validate optional parameters
    optional_params = [version_number: nil]

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
      if opt_val = Keyword.get(options, :version_number) do
        [{"version", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_number])

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
  Deletes an extension association. This action doesn't delete extensions defined
  in the association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20DeleteExtensionAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:extension_association_id` (`t:string` required) The ID of the extension
  association to delete.
  ## Keyword parameters:
  """
  @spec delete_extension_association(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_extension_association_errors()}
  def delete_extension_association(%Client{} = client, extension_association_id, options \\ []) do
    url_path = "/extensionassociations/#{AWS.Util.encode_uri(extension_association_id)}"

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
  Deletes a version of a configuration from the AppConfig hosted configuration
  store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20DeleteHostedConfigurationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:configuration_profile_id` (`t:string` required) The configuration profile
  ID.
  * `:version_number` (`t:integer` required) The versions number to delete.
  ## Keyword parameters:
  """
  @spec delete_hosted_configuration_version(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hosted_configuration_version_errors()}
  def delete_hosted_configuration_version(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        version_number,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/hostedconfigurationversions/#{AWS.Util.encode_uri(version_number)}"

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
  Retrieves information about an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20GetApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The ID of the application you want to
  get.
  ## Keyword parameters:
  """
  @spec get_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"

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
  (Deprecated) Retrieves the latest deployed configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20GetConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string` required) The application to get. Specify either
  the application name or the application ID.
  * `:configuration` (`t:string` required) The configuration to get. Specify
  either the configuration name or the configuration ID.
  * `:environment` (`t:string` required) The environment to get. Specify either
  the environment name or the environment ID.
  * `:client_id` (`t:string` required) The clientId parameter in the following
  command is a unique, user-specified ID to identify the client for the
  configuration. This ID enables AppConfig to deploy the configuration in
  intervals, as defined in the deployment strategy.
  ## Keyword parameters:
  * `:client_configuration_version` (`t:string`) The configuration version
  returned in the most recent GetConfiguration response.
  """
  @spec get_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configuration_errors()}
  def get_configuration(
        %Client{} = client,
        application,
        configuration,
        environment,
        client_id,
        options \\ []
      )
      when is_binary(client_id) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/environments/#{AWS.Util.encode_uri(environment)}/configurations/#{AWS.Util.encode_uri(configuration)}"

    # Validate optional parameters
    optional_params = [client_configuration_version: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"client_id", client_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :client_configuration_version) do
        [{"client_configuration_version", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Configuration-Version", "ConfigurationVersion"},
          {"Content-Type", "ContentType"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_configuration_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a configuration profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20GetConfigurationProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The ID of the application that
  includes the configuration profile you want to get.
  * `:configuration_profile_id` (`t:string` required) The ID of the configuration
  profile that you want to get.
  ## Keyword parameters:
  """
  @spec get_configuration_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, configuration_profile(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configuration_profile_errors()}
  def get_configuration_profile(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}"

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
  Retrieves information about a configuration deployment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20GetDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The ID of the application that
  includes the deployment you want to get.
  * `:deployment_number` (`t:integer` required) The sequence number of the
  deployment.
  * `:environment_id` (`t:string` required) The ID of the environment that
  includes the deployment you want to get.
  ## Keyword parameters:
  """
  @spec get_deployment(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployment_errors()}
  def get_deployment(
        %Client{} = client,
        application_id,
        deployment_number,
        environment_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}/deployments/#{AWS.Util.encode_uri(deployment_number)}"

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
  Retrieves information about a deployment strategy. A deployment strategy defines
  important criteria for rolling out your configuration to the designated
  targets. A deployment strategy includes the overall duration required, a
  percentage of targets to receive the deployment during each interval, an
  algorithm that defines how percentage grows, and bake time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20GetDeploymentStrategy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:deployment_strategy_id` (`t:string` required) The ID of the deployment
  strategy to get.
  ## Keyword parameters:
  """
  @spec get_deployment_strategy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, deployment_strategy(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployment_strategy_errors()}
  def get_deployment_strategy(%Client{} = client, deployment_strategy_id, options \\ []) do
    url_path = "/deploymentstrategies/#{AWS.Util.encode_uri(deployment_strategy_id)}"

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
  Retrieves information about an environment. An environment is a deployment group
  of AppConfig applications, such as applications in a `Production` environment
  or in an `EU_Region` environment. Each configuration deployment targets an
  environment. You can enable one or more Amazon CloudWatch alarms for an
  environment. If an alarm is triggered during a deployment, AppConfig roles
  back the configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20GetEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The ID of the application that
  includes the environment you want to get.
  * `:environment_id` (`t:string` required) The ID of the environment that you
  want to get.
  ## Keyword parameters:
  """
  @spec get_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, environment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, application_id, environment_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}"

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
  Returns information about an AppConfig extension.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20GetExtension&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:extension_identifier` (`t:string` required) The name, the ID, or the Amazon
  Resource Name (ARN) of the extension.
  ## Keyword parameters:
  * `:version_number` (`t:integer`) The extension version number. If no version
  number was defined, AppConfig uses the highest version.
  """
  @spec get_extension(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, extension(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_extension_errors()}
  def get_extension(%Client{} = client, extension_identifier, options \\ []) do
    url_path = "/extensions/#{AWS.Util.encode_uri(extension_identifier)}"

    # Validate optional parameters
    optional_params = [version_number: nil]

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
      if opt_val = Keyword.get(options, :version_number) do
        [{"version_number", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_number])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an AppConfig extension association. For more
  information about extensions and associations, see [Extending
  workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20GetExtensionAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:extension_association_id` (`t:string` required) The extension association ID
  to get.
  ## Keyword parameters:
  """
  @spec get_extension_association(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, extension_association(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_extension_association_errors()}
  def get_extension_association(%Client{} = client, extension_association_id, options \\ []) do
    url_path = "/extensionassociations/#{AWS.Util.encode_uri(extension_association_id)}"

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
  Retrieves information about a specific configuration version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20GetHostedConfigurationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:configuration_profile_id` (`t:string` required) The configuration profile
  ID.
  * `:version_number` (`t:integer` required) The version.
  ## Keyword parameters:
  """
  @spec get_hosted_configuration_version(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, hosted_configuration_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_hosted_configuration_version_errors()}
  def get_hosted_configuration_version(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        version_number,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/hostedconfigurationversions/#{AWS.Util.encode_uri(version_number)}"

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
        [
          {"Application-Id", "ApplicationId"},
          {"Configuration-Profile-Id", "ConfigurationProfileId"},
          {"Content-Type", "ContentType"},
          {"Description", "Description"},
          {"KmsKeyArn", "KmsKeyArn"},
          {"VersionLabel", "VersionLabel"},
          {"Version-Number", "VersionNumber"}
        ]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all applications in your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ListApplications&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to return for this
  call. The call also returns a token that you can specify in a subsequent
  call to get the next set of results.
  * `:next_token` (`t:string`) A token to start the list. Next token is a
  pagination token generated by AppConfig to describe what page the previous
  List call ended on. For the first List request, the nextToken should not be
  set. On subsequent calls, the nextToken parameter should be set to the
  previous responses nextToken value. Use this token to get the next set of
  results.
  """
  @spec list_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, applications(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, options \\ []) do
    url_path = "/applications"

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
        [{"next_token", opt_val} | query_params]
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
  Lists the configuration profiles for an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ListConfigurationProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to return for this
  call. The call also returns a token that you can specify in a subsequent
  call to get the next set of results.
  * `:next_token` (`t:string`) A token to start the list. Use this token to get
  the next set of results.
  * `:type` (`t:string`) A filter based on the type of configurations that the
  configuration profile contains. A configuration can be a feature flag or a
  freeform configuration.
  """
  @spec list_configuration_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, configuration_profiles(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configuration_profiles_errors()}
  def list_configuration_profiles(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, type: nil]

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
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next_token", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists deployment strategies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ListDeploymentStrategies&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to return for this
  call. The call also returns a token that you can specify in a subsequent
  call to get the next set of results.
  * `:next_token` (`t:string`) A token to start the list. Use this token to get
  the next set of results.
  """
  @spec list_deployment_strategies(AWS.Client.t(), Keyword.t()) ::
          {:ok, deployment_strategies(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployment_strategies_errors()}
  def list_deployment_strategies(%Client{} = client, options \\ []) do
    url_path = "/deploymentstrategies"

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
        [{"next_token", opt_val} | query_params]
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
  Lists the deployments for an environment in descending deployment number order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ListDeployments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:environment_id` (`t:string` required) The environment ID.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items that may be returned
  for this call. If there are items that have not yet been returned, the
  response will include a non-null NextToken that you can provide in a
  subsequent call to get the next set of results.
  * `:next_token` (`t:string`) The token returned by a prior call to this
  operation indicating the next set of results to be returned. If not
  specified, the operation will return the first set of results.
  """
  @spec list_deployments(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, deployments(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployments_errors()}
  def list_deployments(%Client{} = client, application_id, environment_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}/deployments"

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
        [{"next_token", opt_val} | query_params]
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
  Lists the environments for an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ListEnvironments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to return for this
  call. The call also returns a token that you can specify in a subsequent
  call to get the next set of results.
  * `:next_token` (`t:string`) A token to start the list. Use this token to get
  the next set of results.
  """
  @spec list_environments(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, environments(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/environments"

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
        [{"next_token", opt_val} | query_params]
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
  Lists all AppConfig extension associations in the account. For more information
  about extensions and associations, see [Extending
  workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ListExtensionAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:extension_identifier` (`t:string`) The name, the ID, or the Amazon Resource
  Name (ARN) of the extension.
  * `:extension_version_number` (`t:integer`) The version number for the extension
  defined in the association.
  * `:max_results` (`t:integer`) The maximum number of items to return for this
  call. The call also returns a token that you can specify in a subsequent
  call to get the next set of results.
  * `:next_token` (`t:string`) A token to start the list. Use this token to get
  the next set of results or pass null to get the first set of results.
  * `:resource_identifier` (`t:string`) The ARN of an application, configuration
  profile, or environment.
  """
  @spec list_extension_associations(AWS.Client.t(), Keyword.t()) ::
          {:ok, extension_associations(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_extension_associations_errors()}
  def list_extension_associations(%Client{} = client, options \\ []) do
    url_path = "/extensionassociations"

    # Validate optional parameters
    optional_params = [
      extension_identifier: nil,
      extension_version_number: nil,
      max_results: nil,
      next_token: nil,
      resource_identifier: nil
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
      if opt_val = Keyword.get(options, :resource_identifier) do
        [{"resource_identifier", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next_token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max_results", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :extension_version_number) do
        [{"extension_version_number", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :extension_identifier) do
        [{"extension_identifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :extension_identifier,
        :extension_version_number,
        :max_results,
        :next_token,
        :resource_identifier
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all custom and Amazon Web Services authored AppConfig extensions in the
  account. For more information about extensions, see [Extending
  workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ListExtensions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to return for this
  call. The call also returns a token that you can specify in a subsequent
  call to get the next set of results.
  * `:name` (`t:string`) The extension name.
  * `:next_token` (`t:string`) A token to start the list. Use this token to get
  the next set of results.
  """
  @spec list_extensions(AWS.Client.t(), Keyword.t()) ::
          {:ok, extensions(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_extensions_errors()}
  def list_extensions(%Client{} = client, options \\ []) do
    url_path = "/extensions"

    # Validate optional parameters
    optional_params = [max_results: nil, name: nil, next_token: nil]

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
        [{"next_token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :name, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists configurations stored in the AppConfig hosted configuration store by
  version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ListHostedConfigurationVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:configuration_profile_id` (`t:string` required) The configuration profile
  ID.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to return for this
  call. The call also returns a token that you can specify in a subsequent
  call to get the next set of results.
  * `:next_token` (`t:string`) A token to start the list. Use this token to get
  the next set of results.
  * `:version_label` (`t:string`) An optional filter that can be used to specify
  the version label of an AppConfig hosted configuration version. This
  parameter supports filtering by prefix using a wildcard, for example "v2*".
  If you don't specify an asterisk at the end of the value, only an exact
  match is returned.
  """
  @spec list_hosted_configuration_versions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, hosted_configuration_versions(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hosted_configuration_versions_errors()}
  def list_hosted_configuration_versions(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/hostedconfigurationversions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, version_label: nil]

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
      if opt_val = Keyword.get(options, :version_label) do
        [{"version_label", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next_token", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :version_label])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The resource ARN.
  ## Keyword parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, resource_tags(), any()}
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
  Starts a deployment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20StartDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:environment_id` (`t:string` required) The environment ID.
  ## Keyword parameters:
  """
  @spec start_deployment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_deployment_errors()}
  def start_deployment(%Client{} = client, application_id, environment_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}/deployments"

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
  Stops a deployment. This API action works only on deployments that have a status
  of `DEPLOYING`. This action moves the deployment to a status of `ROLLED_BACK`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20StopDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:deployment_number` (`t:integer` required) The sequence number of the
  deployment.
  * `:environment_id` (`t:string` required) The environment ID.
  ## Keyword parameters:
  """
  @spec stop_deployment(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_deployment_errors()}
  def stop_deployment(
        %Client{} = client,
        application_id,
        deployment_number,
        environment_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}/deployments/#{AWS.Util.encode_uri(deployment_number)}"

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
  Assigns metadata to an AppConfig resource. Tags help organize and categorize
  your AppConfig resources. Each tag consists of a key and an optional value,
  both of which you define. You can specify a maximum of 50 tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource for which to
  retrieve tags.
  ## Keyword parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Deletes a tag key and value from an AppConfig resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource for which to
  remove tags.
  * `:tag_keys` (`t:list[com.amazonaws.appconfig#TagKey]` required) The tag keys
  to delete.
  ## Keyword parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
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
      204
    )
  end

  @doc """
  Updates an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20UpdateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  ## Keyword parameters:
  """
  @spec update_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates a configuration profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20UpdateConfigurationProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:configuration_profile_id` (`t:string` required) The ID of the configuration
  profile.
  ## Keyword parameters:
  """
  @spec update_configuration_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, configuration_profile(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_profile_errors()}
  def update_configuration_profile(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates a deployment strategy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20UpdateDeploymentStrategy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:deployment_strategy_id` (`t:string` required) The deployment strategy ID.
  ## Keyword parameters:
  """
  @spec update_deployment_strategy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, deployment_strategy(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_deployment_strategy_errors()}
  def update_deployment_strategy(%Client{} = client, deployment_strategy_id, options \\ []) do
    url_path = "/deploymentstrategies/#{AWS.Util.encode_uri(deployment_strategy_id)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates an environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20UpdateEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:environment_id` (`t:string` required) The environment ID.
  ## Keyword parameters:
  """
  @spec update_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, environment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, application_id, environment_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates an AppConfig extension. For more information about extensions, see
  [Extending
  workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20UpdateExtension&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:extension_identifier` (`t:string` required) The name, the ID, or the Amazon
  Resource Name (ARN) of the extension.
  ## Keyword parameters:
  """
  @spec update_extension(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, extension(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_extension_errors()}
  def update_extension(%Client{} = client, extension_identifier, options \\ []) do
    url_path = "/extensions/#{AWS.Util.encode_uri(extension_identifier)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates an association. For more information about extensions and associations,
  see [Extending
  workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20UpdateExtensionAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:extension_association_id` (`t:string` required) The system-generated ID for
  the association.
  ## Keyword parameters:
  """
  @spec update_extension_association(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, extension_association(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_extension_association_errors()}
  def update_extension_association(%Client{} = client, extension_association_id, options \\ []) do
    url_path = "/extensionassociations/#{AWS.Util.encode_uri(extension_association_id)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Uses the validators in a configuration profile to validate a configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfig%20ValidateConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string` required) The application ID.
  * `:configuration_profile_id` (`t:string` required) The configuration profile
  ID.
  * `:configuration_version` (`t:string` required) The version of the
  configuration to validate.
  ## Keyword parameters:
  """
  @spec validate_configuration(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_configuration_errors()}
  def validate_configuration(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        configuration_version,
        options \\ []
      )
      when is_binary(configuration_version) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/validators"

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
    query_params = [{"configuration_version", configuration_version}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end
end
