# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Mq do
  @moduledoc """
  Amazon MQ is a managed message broker service for Apache ActiveMQ and RabbitMQ
  that makes it easy to set up and operate message brokers in the cloud. A
  message broker allows software applications and components to communicate
  using various programming languages, operating systems, and formal messaging
  protocols.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      user_pending_changes() :: %{
        "ConsoleAccess" => boolean(),
        "Groups" => list(String.t()()),
        "PendingChange" => list(any())
      }
      
  """
  @type user_pending_changes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sanitization_warning() :: %{
        "AttributeName" => String.t(),
        "ElementName" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type sanitization_warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_summary() :: %{
        "PendingChange" => list(any()),
        "Username" => String.t()
      }
      
  """
  @type user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_broker_response() :: %{
        "PendingSecurityGroups" => list(String.t()()),
        "Tags" => map(),
        "AuthenticationStrategy" => list(any()),
        "BrokerName" => String.t(),
        "PendingLdapServerMetadata" => ldap_server_metadata_output(),
        "Configurations" => configurations(),
        "Logs" => logs_summary(),
        "LdapServerMetadata" => ldap_server_metadata_output(),
        "BrokerArn" => String.t(),
        "EngineType" => list(any()),
        "Created" => non_neg_integer(),
        "ActionsRequired" => list(action_required()()),
        "AutoMinorVersionUpgrade" => boolean(),
        "PendingHostInstanceType" => String.t(),
        "DataReplicationMode" => list(any()),
        "EncryptionOptions" => encryption_options(),
        "MaintenanceWindowStartTime" => weekly_start_time(),
        "HostInstanceType" => String.t(),
        "Users" => list(user_summary()()),
        "DeploymentMode" => list(any()),
        "PendingEngineVersion" => String.t(),
        "BrokerId" => String.t(),
        "BrokerInstances" => list(broker_instance()()),
        "PendingAuthenticationStrategy" => list(any()),
        "SubnetIds" => list(String.t()()),
        "StorageType" => list(any()),
        "PendingDataReplicationMetadata" => data_replication_metadata_output(),
        "BrokerState" => list(any()),
        "PubliclyAccessible" => boolean(),
        "EngineVersion" => String.t(),
        "PendingDataReplicationMode" => list(any()),
        "DataReplicationMetadata" => data_replication_metadata_output(),
        "SecurityGroups" => list(String.t()())
      }
      
  """
  @type describe_broker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      promote_response() :: %{
        "BrokerId" => String.t()
      }
      
  """
  @type promote_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type delete_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "Name" => String.t()
      }
      
  """
  @type availability_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "ErrorAttribute" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_broker_request() :: %{
        optional("AuthenticationStrategy") => list(any()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("Configuration") => configuration_id(),
        optional("CreatorRequestId") => String.t(),
        optional("DataReplicationMode") => list(any()),
        optional("DataReplicationPrimaryBrokerArn") => String.t(),
        optional("EncryptionOptions") => encryption_options(),
        optional("EngineVersion") => String.t(),
        optional("LdapServerMetadata") => ldap_server_metadata_input(),
        optional("Logs") => logs(),
        optional("MaintenanceWindowStartTime") => weekly_start_time(),
        optional("SecurityGroups") => list(String.t()()),
        optional("StorageType") => list(any()),
        optional("SubnetIds") => list(String.t()()),
        optional("Tags") => map(),
        required("BrokerName") => String.t(),
        required("DeploymentMode") => list(any()),
        required("EngineType") => list(any()),
        required("HostInstanceType") => String.t(),
        required("PubliclyAccessible") => boolean(),
        required("Users") => list(user()())
      }
      
  """
  @type create_broker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_request() :: %{
        optional("Description") => String.t(),
        required("Data") => String.t()
      }
      
  """
  @type update_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_broker_engine_types_response() :: %{
        "BrokerEngineTypes" => list(broker_engine_type()()),
        "MaxResults" => integer(),
        "NextToken" => String.t()
      }
      
  """
  @type describe_broker_engine_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_broker_response() :: %{
        "BrokerArn" => String.t(),
        "BrokerId" => String.t()
      }
      
  """
  @type create_broker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_response() :: %{}
      
  """
  @type update_user_response() :: %{}

  @typedoc """

  ## Example:
      
      engine_version() :: %{
        "Name" => String.t()
      }
      
  """
  @type engine_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forbidden_exception() :: %{
        "ErrorAttribute" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configurations_response() :: %{
        "Configurations" => list(configuration()()),
        "MaxResults" => integer(),
        "NextToken" => String.t()
      }
      
  """
  @type list_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_broker_response() :: %{}
      
  """
  @type reboot_broker_response() :: %{}

  @typedoc """

  ## Example:
      
      data_replication_metadata_output() :: %{
        "DataReplicationCounterpart" => data_replication_counterpart(),
        "DataReplicationRole" => String.t()
      }
      
  """
  @type data_replication_metadata_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_broker_response() :: %{
        "BrokerId" => String.t()
      }
      
  """
  @type delete_broker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration() :: %{
        "Arn" => String.t(),
        "AuthenticationStrategy" => list(any()),
        "Created" => non_neg_integer(),
        "Description" => String.t(),
        "EngineType" => list(any()),
        "EngineVersion" => String.t(),
        "Id" => String.t(),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t(),
        "Tags" => map()
      }
      
  """
  @type configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logs() :: %{
        "Audit" => boolean(),
        "General" => boolean()
      }
      
  """
  @type logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_options() :: %{
        "KmsKeyId" => String.t(),
        "UseAwsOwnedKey" => boolean()
      }
      
  """
  @type encryption_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tags_request() :: %{
        optional("Tags") => map()
      }
      
  """
  @type create_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_logs() :: %{
        "Audit" => boolean(),
        "General" => boolean()
      }
      
  """
  @type pending_logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_brokers_response() :: %{
        "BrokerSummaries" => list(broker_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_brokers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "ErrorAttribute" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_broker_engine_types_request() :: %{
        optional("EngineType") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_broker_engine_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      promote_request() :: %{
        required("Mode") => list(any())
      }
      
  """
  @type promote_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_broker_request() :: %{}
      
  """
  @type reboot_broker_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_configuration_revision_request() :: %{}
      
  """
  @type describe_configuration_revision_request() :: %{}

  @typedoc """

  ## Example:
      
      list_users_response() :: %{
        "BrokerId" => String.t(),
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "Users" => list(user_summary()())
      }
      
  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "ErrorAttribute" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      broker_summary() :: %{
        "BrokerArn" => String.t(),
        "BrokerId" => String.t(),
        "BrokerName" => String.t(),
        "BrokerState" => list(any()),
        "Created" => non_neg_integer(),
        "DeploymentMode" => list(any()),
        "EngineType" => list(any()),
        "HostInstanceType" => String.t()
      }
      
  """
  @type broker_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_request() :: %{
        optional("AuthenticationStrategy") => list(any()),
        optional("EngineVersion") => String.t(),
        optional("Tags") => map(),
        required("EngineType") => list(any()),
        required("Name") => String.t()
      }
      
  """
  @type create_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_revisions_response() :: %{
        "ConfigurationId" => String.t(),
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "Revisions" => list(configuration_revision()())
      }
      
  """
  @type list_configuration_revisions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{}
      
  """
  @type delete_user_request() :: %{}

  @typedoc """

  ## Example:
      
      create_configuration_response() :: %{
        "Arn" => String.t(),
        "AuthenticationStrategy" => list(any()),
        "Created" => non_neg_integer(),
        "Id" => String.t(),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t()
      }
      
  """
  @type create_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ldap_server_metadata_input() :: %{
        "Hosts" => list(String.t()()),
        "RoleBase" => String.t(),
        "RoleName" => String.t(),
        "RoleSearchMatching" => String.t(),
        "RoleSearchSubtree" => boolean(),
        "ServiceAccountPassword" => String.t(),
        "ServiceAccountUsername" => String.t(),
        "UserBase" => String.t(),
        "UserRoleName" => String.t(),
        "UserSearchMatching" => String.t(),
        "UserSearchSubtree" => boolean()
      }
      
  """
  @type ldap_server_metadata_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_broker_request() :: %{}
      
  """
  @type delete_broker_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_user_response() :: %{}
      
  """
  @type delete_user_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_broker_instance_options_request() :: %{
        optional("EngineType") => String.t(),
        optional("HostInstanceType") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StorageType") => String.t()
      }
      
  """
  @type describe_broker_instance_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_response() :: %{
        "Arn" => String.t(),
        "Created" => non_neg_integer(),
        "Id" => String.t(),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t(),
        "Warnings" => list(sanitization_warning()())
      }
      
  """
  @type update_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      broker_engine_type() :: %{
        "EngineType" => list(any()),
        "EngineVersions" => list(engine_version()())
      }
      
  """
  @type broker_engine_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_revision_response() :: %{
        "ConfigurationId" => String.t(),
        "Created" => non_neg_integer(),
        "Data" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type describe_configuration_revision_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_response() :: %{
        "BrokerId" => String.t(),
        "ConsoleAccess" => boolean(),
        "Groups" => list(String.t()()),
        "Pending" => user_pending_changes(),
        "ReplicationUser" => boolean(),
        "Username" => String.t()
      }
      
  """
  @type describe_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ldap_server_metadata_output() :: %{
        "Hosts" => list(String.t()()),
        "RoleBase" => String.t(),
        "RoleName" => String.t(),
        "RoleSearchMatching" => String.t(),
        "RoleSearchSubtree" => boolean(),
        "ServiceAccountUsername" => String.t(),
        "UserBase" => String.t(),
        "UserRoleName" => String.t(),
        "UserSearchMatching" => String.t(),
        "UserSearchSubtree" => boolean()
      }
      
  """
  @type ldap_server_metadata_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      broker_instance() :: %{
        "ConsoleURL" => String.t(),
        "Endpoints" => list(String.t()()),
        "IpAddress" => String.t()
      }
      
  """
  @type broker_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_response() :: %{
        "Arn" => String.t(),
        "AuthenticationStrategy" => list(any()),
        "Created" => non_neg_integer(),
        "Description" => String.t(),
        "EngineType" => list(any()),
        "EngineVersion" => String.t(),
        "Id" => String.t(),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t(),
        "Tags" => map()
      }
      
  """
  @type describe_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      weekly_start_time() :: %{
        "DayOfWeek" => list(any()),
        "TimeOfDay" => String.t(),
        "TimeZone" => String.t()
      }
      
  """
  @type weekly_start_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_request() :: %{}
      
  """
  @type describe_user_request() :: %{}

  @typedoc """

  ## Example:
      
      update_user_request() :: %{
        optional("ConsoleAccess") => boolean(),
        optional("Groups") => list(String.t()()),
        optional("Password") => String.t(),
        optional("ReplicationUser") => boolean()
      }
      
  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error_exception() :: %{
        "ErrorAttribute" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        "ConsoleAccess" => boolean(),
        "Groups" => list(String.t()()),
        "Password" => String.t(),
        "ReplicationUser" => boolean(),
        "Username" => String.t()
      }
      
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logs_summary() :: %{
        "Audit" => boolean(),
        "AuditLogGroup" => String.t(),
        "General" => boolean(),
        "GeneralLogGroup" => String.t(),
        "Pending" => pending_logs()
      }
      
  """
  @type logs_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_broker_request() :: %{}
      
  """
  @type describe_broker_request() :: %{}

  @typedoc """

  ## Example:
      
      broker_instance_option() :: %{
        "AvailabilityZones" => list(availability_zone()()),
        "EngineType" => list(any()),
        "HostInstanceType" => String.t(),
        "StorageType" => list(any()),
        "SupportedDeploymentModes" => list(list(any())()),
        "SupportedEngineVersions" => list(String.t()())
      }
      
  """
  @type broker_instance_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_request() :: %{}
      
  """
  @type describe_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      configuration_id() :: %{
        "Id" => String.t(),
        "Revision" => integer()
      }
      
  """
  @type configuration_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "ErrorAttribute" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_broker_response() :: %{
        "AuthenticationStrategy" => list(any()),
        "AutoMinorVersionUpgrade" => boolean(),
        "BrokerId" => String.t(),
        "Configuration" => configuration_id(),
        "DataReplicationMetadata" => data_replication_metadata_output(),
        "DataReplicationMode" => list(any()),
        "EngineVersion" => String.t(),
        "HostInstanceType" => String.t(),
        "LdapServerMetadata" => ldap_server_metadata_output(),
        "Logs" => logs(),
        "MaintenanceWindowStartTime" => weekly_start_time(),
        "PendingDataReplicationMetadata" => data_replication_metadata_output(),
        "PendingDataReplicationMode" => list(any()),
        "SecurityGroups" => list(String.t()())
      }
      
  """
  @type update_broker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_replication_counterpart() :: %{
        "BrokerId" => String.t(),
        "Region" => String.t()
      }
      
  """
  @type data_replication_counterpart() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configurations() :: %{
        "Current" => configuration_id(),
        "History" => list(configuration_id()()),
        "Pending" => configuration_id()
      }
      
  """
  @type configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_revision() :: %{
        "Created" => non_neg_integer(),
        "Description" => String.t(),
        "Revision" => integer()
      }
      
  """
  @type configuration_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_request() :: %{}
      
  """
  @type list_tags_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_broker_instance_options_response() :: %{
        "BrokerInstanceOptions" => list(broker_instance_option()()),
        "MaxResults" => integer(),
        "NextToken" => String.t()
      }
      
  """
  @type describe_broker_instance_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_broker_request() :: %{
        optional("AuthenticationStrategy") => list(any()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("Configuration") => configuration_id(),
        optional("DataReplicationMode") => list(any()),
        optional("EngineVersion") => String.t(),
        optional("HostInstanceType") => String.t(),
        optional("LdapServerMetadata") => ldap_server_metadata_input(),
        optional("Logs") => logs(),
        optional("MaintenanceWindowStartTime") => weekly_start_time(),
        optional("SecurityGroups") => list(String.t()())
      }
      
  """
  @type update_broker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{}
      
  """
  @type create_user_response() :: %{}

  @typedoc """

  ## Example:
      
      action_required() :: %{
        "ActionRequiredCode" => String.t(),
        "ActionRequiredInfo" => String.t()
      }
      
  """
  @type action_required() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_revisions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_configuration_revisions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_brokers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_brokers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("ConsoleAccess") => boolean(),
        optional("Groups") => list(String.t()()),
        optional("ReplicationUser") => boolean(),
        required("Password") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @type create_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | forbidden_exception()

  @type create_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type create_user_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()

  @type delete_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type delete_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type delete_user_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_broker_engine_types_errors() ::
          bad_request_exception() | internal_server_error_exception() | forbidden_exception()

  @type describe_broker_instance_options_errors() ::
          bad_request_exception() | internal_server_error_exception() | forbidden_exception()

  @type describe_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_configuration_revision_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_user_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type list_brokers_errors() ::
          bad_request_exception() | internal_server_error_exception() | forbidden_exception()

  @type list_configuration_revisions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type list_configurations_errors() ::
          bad_request_exception() | internal_server_error_exception() | forbidden_exception()

  @type list_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type list_users_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type promote_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type reboot_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type update_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()

  @type update_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()

  @type update_user_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mq",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "mq",
      signature_version: "v4",
      signing_name: "mq",
      target_prefix: nil
    }
  end

  @doc """
  Creates a broker. Note: This API is asynchronous. To create a broker, you must
  either use the AmazonMQFullAccess IAM policy or include the following EC2
  permissions in your IAM policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20CreateBroker&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `"brokerName" => t:string` (required) Required. The broker's name. This value
    must be unique in your Amazon Web Services account, 1-50 characters long,
    must contain only letters, numbers, dashes, and underscores, and must not
    contain white spaces, brackets, wildcard characters, or special characters.
    * `"deploymentMode" =>
    t:enum["ACTIVE_STANDBY_MULTI_AZ|CLUSTER_MULTI_AZ|SINGLE_INSTANCE"]`
    (required) Required. The broker's deployment mode.
    * `"engineType" => t:enum["ACTIVEMQ|RABBITMQ"]` (required) Required. The type of
    broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
    * `"hostInstanceType" => t:string` (required) Required. The broker's instance
    type.
    * `"publiclyAccessible" => t:boolean` (required) Enables connections from
    applications outside of the VPC that hosts the broker's subnets. Set to
    false by default, if no value is provided.
    * `"users" => t:list[com.amazonaws.mq#User]` (required) The list of broker users
    (persons or applications) who can access queues and topics. For Amazon MQ
    for RabbitMQ brokers, one and only one administrative user is accepted and
    created when a broker is first provisioned. All subsequent broker users are
    created by making RabbitMQ API calls directly to brokers or via the RabbitMQ
    web console.
    * `"authenticationStrategy" => t:enum["LDAP|SIMPLE"]` Optional. The
    authentication strategy used to secure the broker. The default is SIMPLE.
    * `"autoMinorVersionUpgrade" => t:boolean` Enables automatic upgrades to new
    patch versions for brokers as new versions are released and supported by
    Amazon MQ. Automatic upgrades occur during the scheduled maintenance window
    or after a manual broker reboot. Set to true by default, if no value is
    specified.
    * `"configuration" => t:structure` A list of information about the
    configuration.
    * `"creatorRequestId" => t:string` The unique ID that the requester receives for
    the created broker. Amazon MQ passes your ID with the API action.
    * `"dataReplicationMode" => t:enum["CRDR|NONE"]` Defines whether this broker is
    a part of a data replication pair.
    * `"dataReplicationPrimaryBrokerArn" => t:string` The Amazon Resource Name (ARN)
    of the primary broker that is used to replicate data from in a data
    replication pair, and is applied to the replica broker. Must be set when
    dataReplicationMode is set to CRDR.
    * `"encryptionOptions" => t:structure` Encryption options for the broker.
    * `"engineVersion" => t:string` The broker engine version. Defaults to the
    latest available version for the specified broker engine type. For more
    information, see the ActiveMQ version management and the RabbitMQ version
    management sections in the Amazon MQ Developer Guide.
    * `"ldapServerMetadata" => t:structure` Optional. The metadata of the LDAP
    server used to authenticate and authorize connections to the broker. Does
    not apply to RabbitMQ brokers.
    * `"logs" => t:structure` Enables Amazon CloudWatch logging for brokers.
    * `"maintenanceWindowStartTime" => t:structure` The parameters that determine
    the WeeklyStartTime.
    * `"securityGroups" => t:list[com.amazonaws.mq#__string]` The list of rules (1
    minimum, 125 maximum) that authorize connections to brokers.
    * `"storageType" => t:enum["EBS|EFS"]` The broker's storage type.
    * `"subnetIds" => t:list[com.amazonaws.mq#__string]` The list of groups that
    define which subnets and IP ranges the broker can use from different
    Availability Zones. If you specify more than one subnet, the subnets must be
    in different Availability Zones. Amazon MQ will not be able to create VPC
    endpoints for your broker with multiple subnets in the same Availability
    Zone. A SINGLE_INSTANCE deployment requires one subnet (for example, the
    default subnet). An ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ
    deployment requires two subnets. A CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ
    deployment has no subnet requirements when deployed with public
    accessibility. Deployment without public accessibility requires at least one
    subnet.
    * `"tags" => t:map` Create tags when creating the broker.
  """
  @spec create_broker(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_broker_errors()}
  def create_broker(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/v1/brokers"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new configuration for the specified configuration name. Amazon MQ uses
  the default configuration (the engine type and version).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20CreateConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `"engineType" => t:enum["ACTIVEMQ|RABBITMQ"]` (required) Required. The type of
    broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
    * `"name" => t:string` (required) Required. The name of the configuration. This
    value can contain only alphanumeric characters, dashes, periods,
    underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
    * `"authenticationStrategy" => t:enum["LDAP|SIMPLE"]` Optional. The
    authentication strategy associated with the configuration. The default is
    SIMPLE.
    * `"engineVersion" => t:string` The broker engine version. Defaults to the
    latest available version for the specified broker engine type. For more
    information, see the ActiveMQ version management and the RabbitMQ version
    management sections in the Amazon MQ Developer Guide.
    * `"tags" => t:map` Create tags when creating the configuration.
  """
  @spec create_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_errors()}
  def create_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/v1/configurations"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Add a tag to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20CreateTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource tag.
  * `:input` (`t:map | nil`):
    * `"tags" => t:map` The key-value pair for the resource tag.
  """
  @spec create_tags(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tags_errors()}
  def create_tags(%Client{} = client, resource_arn, input, options \\ [])
      when is_map(input) or is_nil(input) do
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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Creates an ActiveMQ user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20CreateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.
  * `:username` (`t:string` required) The username of the ActiveMQ user. This
    value can contain only alphanumeric characters, dashes, periods,
    underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
  * `:input` (`t:map`):
    * `"password" => t:string` (required) Required. The password of the user. This
    value must be at least 12 characters long, must contain at least 4 unique
    characters, and must not contain commas, colons, or equal signs (,:=).
    * `"consoleAccess" => t:boolean` Enables access to the ActiveMQ Web Console for
    the ActiveMQ user.
    * `"groups" => t:list[com.amazonaws.mq#__string]` The list of groups (20
    maximum) to which the ActiveMQ user belongs. This value can contain only
    alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~).
    This value must be 2-100 characters long.
    * `"replicationUser" => t:boolean` Defines if this user is intended for CRDR
    replication purposes.
  """
  @spec create_user(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, broker_id, username, input, options \\ [])
      when is_map(input) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes a broker. Note: This API is asynchronous.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20DeleteBroker&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.
  """
  @spec delete_broker(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_broker_errors()}
  def delete_broker(%Client{} = client, broker_id, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}"

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
  Removes a tag from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20DeleteTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource tag.
  * `:tag_keys` (`t:list[com.amazonaws.mq#__string]` required) An array of tag
    keys to delete
  """
  @spec delete_tags(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tags_errors()}
  def delete_tags(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
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
  Deletes an ActiveMQ user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20DeleteUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.
  * `:username` (`t:string` required) The username of the ActiveMQ user. This
    value can contain only alphanumeric characters, dashes, periods,
    underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
  """
  @spec delete_user(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, broker_id, username, options \\ []) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

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
  Returns information about the specified broker.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20DescribeBroker&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.
  """
  @spec describe_broker(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_broker_errors()}
  def describe_broker(%Client{} = client, broker_id, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}"

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
  Describe available engine types and versions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20DescribeBrokerEngineTypes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:engine_type` (`t:string`) Filter response by engine type.
  * `:max_results` (`t:integer`) The maximum number of brokers that Amazon MQ can
    return per page (20 by default). This value must be an integer from 5 to
    100.
  * `:next_token` (`t:string`) The token that specifies the next page of results
    Amazon MQ should return. To request the first page, leave nextToken empty.
  """
  @spec describe_broker_engine_types(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_broker_engine_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_broker_engine_types_errors()}
  def describe_broker_engine_types(%Client{} = client, options \\ []) do
    url_path = "/v1/broker-engine-types"

    # Validate optional parameters
    optional_params = [engine_type: nil, max_results: nil, next_token: nil]

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
      |> Keyword.drop([:engine_type, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe available broker instance options.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20DescribeBrokerInstanceOptions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:engine_type` (`t:string`) Filter response by engine type.
  * `:host_instance_type` (`t:string`) Filter response by host instance type.
  * `:max_results` (`t:integer`) The maximum number of brokers that Amazon MQ can
    return per page (20 by default). This value must be an integer from 5 to
    100.
  * `:next_token` (`t:string`) The token that specifies the next page of results
    Amazon MQ should return. To request the first page, leave nextToken empty.
  * `:storage_type` (`t:string`) Filter response by storage type.
  """
  @spec describe_broker_instance_options(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_broker_instance_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_broker_instance_options_errors()}
  def describe_broker_instance_options(%Client{} = client, options \\ []) do
    url_path = "/v1/broker-instance-options"

    # Validate optional parameters
    optional_params = [
      engine_type: nil,
      host_instance_type: nil,
      max_results: nil,
      next_token: nil,
      storage_type: nil
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
      if opt_val = Keyword.get(options, :storage_type) do
        [{"storageType", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :host_instance_type) do
        [{"hostInstanceType", opt_val} | query_params]
      else
        query_params
      end

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
      |> Keyword.drop([
        :engine_type,
        :host_instance_type,
        :max_results,
        :next_token,
        :storage_type
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the specified configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20DescribeConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_id` (`t:string` required) The unique ID that Amazon MQ
    generates for the configuration.
  """
  @spec describe_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_errors()}
  def describe_configuration(%Client{} = client, configuration_id, options \\ []) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}"

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
  Returns the specified configuration revision for the specified configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20DescribeConfigurationRevision&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_id` (`t:string` required) The unique ID that Amazon MQ
    generates for the configuration.
  * `:configuration_revision` (`t:string` required) The revision of the
    configuration.
  """
  @spec describe_configuration_revision(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_configuration_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_revision_errors()}
  def describe_configuration_revision(
        %Client{} = client,
        configuration_id,
        configuration_revision,
        options \\ []
      ) do
    url_path =
      "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}/revisions/#{AWS.Util.encode_uri(configuration_revision)}"

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
  Returns information about an ActiveMQ user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20DescribeUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.
  * `:username` (`t:string` required) The username of the ActiveMQ user. This
    value can contain only alphanumeric characters, dashes, periods,
    underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
  """
  @spec describe_user(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_errors()}
  def describe_user(%Client{} = client, broker_id, username, options \\ []) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

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
  Returns a list of all brokers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20ListBrokers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of brokers that Amazon MQ can
    return per page (20 by default). This value must be an integer from 5 to
    100.
  * `:next_token` (`t:string`) The token that specifies the next page of results
    Amazon MQ should return. To request the first page, leave nextToken empty.
  """
  @spec list_brokers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_brokers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_brokers_errors()}
  def list_brokers(%Client{} = client, options \\ []) do
    url_path = "/v1/brokers"

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
  Returns a list of all revisions for the specified configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20ListConfigurationRevisions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_id` (`t:string` required) The unique ID that Amazon MQ
    generates for the configuration.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of brokers that Amazon MQ can
    return per page (20 by default). This value must be an integer from 5 to
    100.
  * `:next_token` (`t:string`) The token that specifies the next page of results
    Amazon MQ should return. To request the first page, leave nextToken empty.
  """
  @spec list_configuration_revisions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_configuration_revisions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configuration_revisions_errors()}
  def list_configuration_revisions(%Client{} = client, configuration_id, options \\ []) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}/revisions"

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
  Returns a list of all configurations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20ListConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of brokers that Amazon MQ can
    return per page (20 by default). This value must be an integer from 5 to
    100.
  * `:next_token` (`t:string`) The token that specifies the next page of results
    Amazon MQ should return. To request the first page, leave nextToken empty.
  """
  @spec list_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configurations_errors()}
  def list_configurations(%Client{} = client, options \\ []) do
    url_path = "/v1/configurations"

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
  Lists tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20ListTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource tag.
  """
  @spec list_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, resource_arn, options \\ []) do
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
  Returns a list of all ActiveMQ users.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20ListUsers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of brokers that Amazon MQ can
    return per page (20 by default). This value must be an integer from 5 to
    100.
  * `:next_token` (`t:string`) The token that specifies the next page of results
    Amazon MQ should return. To request the first page, leave nextToken empty.
  """
  @spec list_users(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, broker_id, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users"

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
  Promotes a data replication replica broker to the primary broker role.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20Promote&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.
  * `:input` (`t:map`):
    * `"mode" => t:enum["FAILOVER|SWITCHOVER"]` (required) The Promote mode
    requested. Note: Valid values for the parameter are SWITCHOVER, FAILOVER.
  """
  @spec promote(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, promote_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, promote_errors()}
  def promote(%Client{} = client, broker_id, input, options \\ []) when is_map(input) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/promote"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Reboots a broker. Note: This API is asynchronous.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20RebootBroker&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.
  """
  @spec reboot_broker(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, reboot_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reboot_broker_errors()}
  def reboot_broker(%Client{} = client, broker_id, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/reboot"

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
  Adds a pending configuration change to a broker.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20UpdateBroker&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.
  * `:input` (`t:map | nil`):
    * `"authenticationStrategy" => t:enum["LDAP|SIMPLE"]` Optional. The
    authentication strategy used to secure the broker. The default is SIMPLE.
    * `"autoMinorVersionUpgrade" => t:boolean` Enables automatic upgrades to new
    patch versions for brokers as new versions are released and supported by
    Amazon MQ. Automatic upgrades occur during the scheduled maintenance window
    or after a manual broker reboot.
    * `"configuration" => t:structure` A list of information about the
    configuration.
    * `"dataReplicationMode" => t:enum["CRDR|NONE"]` Defines whether this broker is
    a part of a data replication pair.
    * `"engineVersion" => t:string` The broker engine version. For more information,
    see the ActiveMQ version management and the RabbitMQ version management
    sections in the Amazon MQ Developer Guide.
    * `"hostInstanceType" => t:string` The broker's host instance type to upgrade
    to. For a list of supported instance types, see Broker instance types.
    * `"ldapServerMetadata" => t:structure` Optional. The metadata of the LDAP
    server used to authenticate and authorize connections to the broker. Does
    not apply to RabbitMQ brokers.
    * `"logs" => t:structure` Enables Amazon CloudWatch logging for brokers.
    * `"maintenanceWindowStartTime" => t:structure` The parameters that determine
    the WeeklyStartTime.
    * `"securityGroups" => t:list[com.amazonaws.mq#__string]` The list of security
    groups (1 minimum, 5 maximum) that authorizes connections to brokers.
  """
  @spec update_broker(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_broker_errors()}
  def update_broker(%Client{} = client, broker_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the specified configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20UpdateConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_id` (`t:string` required) The unique ID that Amazon MQ
    generates for the configuration.
  * `:input` (`t:map`):
    * `"data" => t:string` (required) Amazon MQ for Active MQ: The base64-encoded
    XML configuration. Amazon MQ for RabbitMQ: the base64-encoded Cuttlefish
    configuration.
    * `"description" => t:string` The description of the configuration.
  """
  @spec update_configuration(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_errors()}
  def update_configuration(%Client{} = client, configuration_id, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the information for an ActiveMQ user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mq%20UpdateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:broker_id` (`t:string` required) The unique ID that Amazon MQ generates for
    the broker.
  * `:username` (`t:string` required) The username of the ActiveMQ user. This
    value can contain only alphanumeric characters, dashes, periods,
    underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
  * `:input` (`t:map | nil`):
    * `"consoleAccess" => t:boolean` Enables access to the the ActiveMQ Web Console
    for the ActiveMQ user.
    * `"groups" => t:list[com.amazonaws.mq#__string]` The list of groups (20
    maximum) to which the ActiveMQ user belongs. This value can contain only
    alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~).
    This value must be 2-100 characters long.
    * `"password" => t:string` The password of the user. This value must be at least
    12 characters long, must contain at least 4 unique characters, and must not
    contain commas, colons, or equal signs (,:=).
    * `"replicationUser" => t:boolean` Defines whether the user is intended for data
    replication.
  """
  @spec update_user(AWS.Client.t(), String.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, broker_id, username, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
