# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Fis do
  @moduledoc """
  Fault Injection Service is a managed service that enables you to perform fault
  injection experiments on your Amazon Web Services workloads. For more
  information, see the [Fault Injection Service User
  Guide](https://docs.aws.amazon.com/fis/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      target_account_configuration() :: %{
        "accountId" => String.t(),
        "description" => String.t(),
        "roleArn" => String.t()
      }
      
  """
  @type target_account_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_summary() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "tags" => map(),
        "targets" => map()
      }
      
  """
  @type action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiments_response() :: %{
        "experiments" => list(experiment_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_experiments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiment_resolved_targets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("targetName") => String.t()
      }
      
  """
  @type list_experiment_resolved_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "experimentOptions" => experiment_options(),
        "experimentTemplateId" => String.t(),
        "id" => String.t(),
        "state" => experiment_state(),
        "tags" => map()
      }
      
  """
  @type experiment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_experiment_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => experiment_target_account_configuration()
      }
      
  """
  @type get_experiment_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_experiment_response() :: %{
        "experiment" => experiment()
      }
      
  """
  @type get_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => target_account_configuration()
      }
      
  """
  @type update_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_template_target() :: %{
        "filters" => list(experiment_template_target_filter()()),
        "parameters" => map(),
        "resourceArns" => list(String.t()()),
        "resourceTags" => map(),
        "resourceType" => String.t(),
        "selectionMode" => String.t()
      }
      
  """
  @type experiment_template_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_target_account_configuration() :: %{
        "accountId" => String.t(),
        "description" => String.t(),
        "roleArn" => String.t()
      }
      
  """
  @type experiment_target_account_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_experiment_templates_response() :: %{
        "experimentTemplates" => list(experiment_template_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_experiment_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_template_request() :: %{
        optional("actions") => map(),
        optional("description") => String.t(),
        optional("experimentOptions") => update_experiment_template_experiment_options_input(),
        optional("logConfiguration") => update_experiment_template_log_configuration_input(),
        optional("roleArn") => String.t(),
        optional("stopConditions") => list(update_experiment_template_stop_condition_input()()),
        optional("targets") => map()
      }
      
  """
  @type update_experiment_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_target_resource_type_response() :: %{
        "targetResourceType" => target_resource_type()
      }
      
  """
  @type get_target_resource_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_s3_log_configuration() :: %{
        "bucketName" => String.t(),
        "prefix" => String.t()
      }
      
  """
  @type experiment_s3_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_action_state() :: %{
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type experiment_action_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_action() :: %{
        "actionId" => String.t(),
        "description" => String.t(),
        "endTime" => non_neg_integer(),
        "parameters" => map(),
        "startAfter" => list(String.t()()),
        "startTime" => non_neg_integer(),
        "state" => experiment_action_state(),
        "targets" => map()
      }
      
  """
  @type experiment_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_account_configuration_summary() :: %{
        "accountId" => String.t(),
        "description" => String.t(),
        "roleArn" => String.t()
      }
      
  """
  @type target_account_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_experiment_template_request() :: %{}
      
  """
  @type get_experiment_template_request() :: %{}

  @typedoc """

  ## Example:
      
      experiment_template_s3_log_configuration_input() :: %{
        "bucketName" => String.t(),
        "prefix" => String.t()
      }
      
  """
  @type experiment_template_s3_log_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_template_target_filter() :: %{
        "path" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type experiment_template_target_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_target_account_configuration_request() :: %{
        optional("description") => String.t(),
        optional("roleArn") => String.t()
      }
      
  """
  @type update_target_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_log_configuration() :: %{
        "cloudWatchLogsConfiguration" => experiment_cloud_watch_logs_log_configuration(),
        "logSchemaVersion" => integer(),
        "s3Configuration" => experiment_s3_log_configuration()
      }
      
  """
  @type experiment_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        optional("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_experiment_template_request() :: %{}
      
  """
  @type delete_experiment_template_request() :: %{}

  @typedoc """

  ## Example:
      
      create_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => target_account_configuration()
      }
      
  """
  @type create_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiment_target_account_configurations_response() :: %{
        "nextToken" => String.t(),
        "targetAccountConfigurations" => list(experiment_target_account_configuration_summary()())
      }
      
  """
  @type list_experiment_target_account_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_target_account_configuration_request() :: %{}
      
  """
  @type delete_target_account_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      experiment_template_cloud_watch_logs_log_configuration_input() :: %{
        "logGroupArn" => String.t()
      }
      
  """
  @type experiment_template_cloud_watch_logs_log_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_target_account_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_target_account_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_resource_type_summary() :: %{
        "description" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type target_resource_type_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_template_action_input_item() :: %{
        "actionId" => String.t(),
        "description" => String.t(),
        "parameters" => map(),
        "startAfter" => list(String.t()()),
        "targets" => map()
      }
      
  """
  @type update_experiment_template_action_input_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_target_filter() :: %{
        "path" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type experiment_target_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiment_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_experiment_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_template_log_configuration_input() :: %{
        "cloudWatchLogsConfiguration" => experiment_template_cloud_watch_logs_log_configuration_input(),
        "logSchemaVersion" => integer(),
        "s3Configuration" => experiment_template_s3_log_configuration_input()
      }
      
  """
  @type update_experiment_template_log_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_state() :: %{
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type experiment_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_experiment_request() :: %{}
      
  """
  @type get_experiment_request() :: %{}

  @typedoc """

  ## Example:
      
      create_experiment_template_log_configuration_input() :: %{
        "cloudWatchLogsConfiguration" => experiment_template_cloud_watch_logs_log_configuration_input(),
        "logSchemaVersion" => integer(),
        "s3Configuration" => experiment_template_s3_log_configuration_input()
      }
      
  """
  @type create_experiment_template_log_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolved_target() :: %{
        "resourceType" => String.t(),
        "targetInformation" => map(),
        "targetName" => String.t()
      }
      
  """
  @type resolved_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_target_resource_types_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_target_resource_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_template_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "tags" => map()
      }
      
  """
  @type experiment_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_target_account_configuration_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("roleArn") => String.t()
      }
      
  """
  @type create_target_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_resource_type_parameter() :: %{
        "description" => String.t(),
        "required" => boolean()
      }
      
  """
  @type target_resource_type_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_template_request() :: %{
        optional("experimentOptions") => create_experiment_template_experiment_options_input(),
        optional("logConfiguration") => create_experiment_template_log_configuration_input(),
        optional("tags") => map(),
        optional("targets") => map(),
        required("actions") => map(),
        required("clientToken") => String.t(),
        required("description") => String.t(),
        required("roleArn") => String.t(),
        required("stopConditions") => list(create_experiment_template_stop_condition_input()())
      }
      
  """
  @type create_experiment_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_action_request() :: %{}
      
  """
  @type get_action_request() :: %{}

  @typedoc """

  ## Example:
      
      experiment_target() :: %{
        "filters" => list(experiment_target_filter()()),
        "parameters" => map(),
        "resourceArns" => list(String.t()()),
        "resourceTags" => map(),
        "resourceType" => String.t(),
        "selectionMode" => String.t()
      }
      
  """
  @type experiment_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_action_response() :: %{
        "action" => action()
      }
      
  """
  @type get_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiment_target_account_configurations_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_experiment_target_account_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_template_s3_log_configuration() :: %{
        "bucketName" => String.t(),
        "prefix" => String.t()
      }
      
  """
  @type experiment_template_s3_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_actions_response() :: %{
        "actions" => list(action_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_actions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_stop_condition() :: %{
        "source" => String.t(),
        "value" => String.t()
      }
      
  """
  @type experiment_stop_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_resource_type() :: %{
        "description" => String.t(),
        "parameters" => map(),
        "resourceType" => String.t()
      }
      
  """
  @type target_resource_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_target() :: %{
        "resourceType" => String.t()
      }
      
  """
  @type action_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_target_account_configurations_response() :: %{
        "nextToken" => String.t(),
        "targetAccountConfigurations" => list(target_account_configuration_summary()())
      }
      
  """
  @type list_target_account_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_experiment_request() :: %{}
      
  """
  @type stop_experiment_request() :: %{}

  @typedoc """

  ## Example:
      
      experiment_template_stop_condition() :: %{
        "source" => String.t(),
        "value" => String.t()
      }
      
  """
  @type experiment_template_stop_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_template_action() :: %{
        "actionId" => String.t(),
        "description" => String.t(),
        "parameters" => map(),
        "startAfter" => list(String.t()()),
        "targets" => map()
      }
      
  """
  @type experiment_template_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_experiment_template_response() :: %{
        "experimentTemplate" => experiment_template()
      }
      
  """
  @type delete_experiment_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "parameters" => map(),
        "tags" => map(),
        "targets" => map()
      }
      
  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_template() :: %{
        "actions" => map(),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "experimentOptions" => experiment_template_experiment_options(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "logConfiguration" => experiment_template_log_configuration(),
        "roleArn" => String.t(),
        "stopConditions" => list(experiment_template_stop_condition()()),
        "tags" => map(),
        "targetAccountConfigurationsCount" => float(),
        "targets" => map()
      }
      
  """
  @type experiment_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_experiment_response() :: %{
        "experiment" => experiment()
      }
      
  """
  @type start_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_target_account_configuration_request() :: %{}
      
  """
  @type get_target_account_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      update_experiment_template_response() :: %{
        "experimentTemplate" => experiment_template()
      }
      
  """
  @type update_experiment_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiment_resolved_targets_response() :: %{
        "nextToken" => String.t(),
        "resolvedTargets" => list(resolved_target()())
      }
      
  """
  @type list_experiment_resolved_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_experiment_target_account_configuration_request() :: %{}
      
  """
  @type get_experiment_target_account_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_experiment_template_response() :: %{
        "experimentTemplate" => experiment_template()
      }
      
  """
  @type get_experiment_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_template_action_input() :: %{
        "actionId" => String.t(),
        "description" => String.t(),
        "parameters" => map(),
        "startAfter" => list(String.t()()),
        "targets" => map()
      }
      
  """
  @type create_experiment_template_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_template_target_input_filter() :: %{
        "path" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type experiment_template_target_input_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
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
      
      list_target_resource_types_response() :: %{
        "nextToken" => String.t(),
        "targetResourceTypes" => list(target_resource_type_summary()())
      }
      
  """
  @type list_target_resource_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => target_account_configuration()
      }
      
  """
  @type get_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_target_account_configuration_summary() :: %{
        "accountId" => String.t(),
        "description" => String.t(),
        "roleArn" => String.t()
      }
      
  """
  @type experiment_target_account_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_options() :: %{
        "accountTargeting" => list(any()),
        "actionsMode" => list(any()),
        "emptyTargetResolutionMode" => list(any())
      }
      
  """
  @type experiment_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiments_request() :: %{
        optional("experimentTemplateId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_experiments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_experiment_request() :: %{
        optional("experimentOptions") => start_experiment_experiment_options_input(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("experimentTemplateId") => String.t()
      }
      
  """
  @type start_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_template_experiment_options_input() :: %{
        "accountTargeting" => list(any()),
        "emptyTargetResolutionMode" => list(any())
      }
      
  """
  @type create_experiment_template_experiment_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_target_resource_type_request() :: %{}
      
  """
  @type get_target_resource_type_request() :: %{}

  @typedoc """

  ## Example:
      
      experiment_template_experiment_options() :: %{
        "accountTargeting" => list(any()),
        "emptyTargetResolutionMode" => list(any())
      }
      
  """
  @type experiment_template_experiment_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_template_stop_condition_input() :: %{
        "source" => String.t(),
        "value" => String.t()
      }
      
  """
  @type create_experiment_template_stop_condition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_template_response() :: %{
        "experimentTemplate" => experiment_template()
      }
      
  """
  @type create_experiment_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_template_target_input() :: %{
        "filters" => list(experiment_template_target_input_filter()()),
        "parameters" => map(),
        "resourceArns" => list(String.t()()),
        "resourceTags" => map(),
        "resourceType" => String.t(),
        "selectionMode" => String.t()
      }
      
  """
  @type create_experiment_template_target_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_parameter() :: %{
        "description" => String.t(),
        "required" => boolean()
      }
      
  """
  @type action_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_experiment_experiment_options_input() :: %{
        "actionsMode" => list(any())
      }
      
  """
  @type start_experiment_experiment_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => target_account_configuration()
      }
      
  """
  @type delete_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_experiment_response() :: %{
        "experiment" => experiment()
      }
      
  """
  @type stop_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_template_target_input() :: %{
        "filters" => list(experiment_template_target_input_filter()()),
        "parameters" => map(),
        "resourceArns" => list(String.t()()),
        "resourceTags" => map(),
        "resourceType" => String.t(),
        "selectionMode" => String.t()
      }
      
  """
  @type update_experiment_template_target_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_template_experiment_options_input() :: %{
        "emptyTargetResolutionMode" => list(any())
      }
      
  """
  @type update_experiment_template_experiment_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment() :: %{
        "actions" => map(),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "endTime" => non_neg_integer(),
        "experimentOptions" => experiment_options(),
        "experimentTemplateId" => String.t(),
        "id" => String.t(),
        "logConfiguration" => experiment_log_configuration(),
        "roleArn" => String.t(),
        "startTime" => non_neg_integer(),
        "state" => experiment_state(),
        "stopConditions" => list(experiment_stop_condition()()),
        "tags" => map(),
        "targetAccountConfigurationsCount" => float(),
        "targets" => map()
      }
      
  """
  @type experiment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_template_log_configuration() :: %{
        "cloudWatchLogsConfiguration" => experiment_template_cloud_watch_logs_log_configuration(),
        "logSchemaVersion" => integer(),
        "s3Configuration" => experiment_template_s3_log_configuration()
      }
      
  """
  @type experiment_template_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_template_stop_condition_input() :: %{
        "source" => String.t(),
        "value" => String.t()
      }
      
  """
  @type update_experiment_template_stop_condition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_cloud_watch_logs_log_configuration() :: %{
        "logGroupArn" => String.t()
      }
      
  """
  @type experiment_cloud_watch_logs_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_template_cloud_watch_logs_log_configuration() :: %{
        "logGroupArn" => String.t()
      }
      
  """
  @type experiment_template_cloud_watch_logs_log_configuration() :: %{String.t() => any()}

  @type create_experiment_template_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_target_account_configuration_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_experiment_template_errors() ::
          validation_exception() | resource_not_found_exception()

  @type delete_target_account_configuration_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_action_errors() :: validation_exception() | resource_not_found_exception()

  @type get_experiment_errors() :: validation_exception() | resource_not_found_exception()

  @type get_experiment_target_account_configuration_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_experiment_template_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_target_account_configuration_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_target_resource_type_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_actions_errors() :: validation_exception()

  @type list_experiment_resolved_targets_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_experiment_target_account_configurations_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_experiment_templates_errors() :: validation_exception()

  @type list_experiments_errors() :: validation_exception()

  @type list_target_account_configurations_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_target_resource_types_errors() :: validation_exception()

  @type start_experiment_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_experiment_errors() :: validation_exception() | resource_not_found_exception()

  @type update_experiment_template_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_target_account_configuration_errors() ::
          validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "fis",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "fis",
      signature_version: "v4",
      signing_name: "fis",
      target_prefix: nil
    }
  end

  @doc """
  Creates an experiment template. An experiment template includes the following
  components:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20CreateExperimentTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_experiment_template(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_experiment_template_errors()}

  def create_experiment_template(%Client{} = client, options \\ []) do
    url_path = "/experimentTemplates"

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
  Creates a target account configuration for the experiment template. A target
  account configuration is required when `accountTargeting` of
  `experimentOptions` is set to `multi-account`. For more information, see
  [experiment
  options](https://docs.aws.amazon.com/fis/latest/userguide/experiment-options.html)
  in the *Fault Injection Service User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20CreateTargetAccountConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:account_id` (`t:string`) The Amazon Web Services account ID of the target
  account.
  * `:experiment_template_id` (`t:string`) The experiment template ID.

  ## Optional parameters:
  """

  @spec create_target_account_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_target_account_configuration_errors()}

  def create_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

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
  Deletes the specified experiment template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20DeleteExperimentTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the experiment template.

  ## Optional parameters:
  """

  @spec delete_experiment_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_experiment_template_errors()}

  def delete_experiment_template(%Client{} = client, id, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"

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
  Deletes the specified target account configuration of the experiment template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20DeleteTargetAccountConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:account_id` (`t:string`) The Amazon Web Services account ID of the target
  account.
  * `:experiment_template_id` (`t:string`) The ID of the experiment template.

  ## Optional parameters:
  """

  @spec delete_target_account_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_target_account_configuration_errors()}

  def delete_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

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
  Gets information about the specified FIS action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20GetAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the action.

  ## Optional parameters:
  """

  @spec get_action(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_action_errors()}

  def get_action(%Client{} = client, id, options \\ []) do
    url_path = "/actions/#{AWS.Util.encode_uri(id)}"

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
  Gets information about the specified experiment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20GetExperiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the experiment.

  ## Optional parameters:
  """

  @spec get_experiment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_experiment_errors()}

  def get_experiment(%Client{} = client, id, options \\ []) do
    url_path = "/experiments/#{AWS.Util.encode_uri(id)}"

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
  Gets information about the specified target account configuration of the
  experiment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20GetExperimentTargetAccountConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:account_id` (`t:string`) The Amazon Web Services account ID of the target
  account.
  * `:experiment_id` (`t:string`) The ID of the experiment.

  ## Optional parameters:
  """

  @spec get_experiment_target_account_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_experiment_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_experiment_target_account_configuration_errors()}

  def get_experiment_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_id,
        options \\ []
      ) do
    url_path =
      "/experiments/#{AWS.Util.encode_uri(experiment_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

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
  Gets information about the specified experiment template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20GetExperimentTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the experiment template.

  ## Optional parameters:
  """

  @spec get_experiment_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_experiment_template_errors()}

  def get_experiment_template(%Client{} = client, id, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"

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
  Gets information about the specified target account configuration of the
  experiment template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20GetTargetAccountConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:account_id` (`t:string`) The Amazon Web Services account ID of the target
  account.
  * `:experiment_template_id` (`t:string`) The ID of the experiment template.

  ## Optional parameters:
  """

  @spec get_target_account_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_target_account_configuration_errors()}

  def get_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

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
  Gets information about the specified resource type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20GetTargetResourceType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_type` (`t:string`) The resource type.

  ## Optional parameters:
  """

  @spec get_target_resource_type(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_target_resource_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_target_resource_type_errors()}

  def get_target_resource_type(%Client{} = client, resource_type, options \\ []) do
    url_path = "/targetResourceTypes/#{AWS.Util.encode_uri(resource_type)}"

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
  Lists the available FIS actions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20ListActions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return with a
  single call. To retrieve the remaining results, make another call with the
  returned nextToken value.
  * `:next_token` (`t:string`) The token for the next page of results.
  """

  @spec list_actions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_actions_errors()}

  def list_actions(%Client{} = client, options \\ []) do
    url_path = "/actions"

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
  Lists the resolved targets information of the specified experiment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20ListExperimentResolvedTargets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:experiment_id` (`t:string`) The ID of the experiment.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return with a
  single call. To retrieve the remaining results, make another call with the
  returned nextToken value.
  * `:next_token` (`t:string`) The token for the next page of results.
  * `:target_name` (`t:string`) The name of the target.
  """

  @spec list_experiment_resolved_targets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_experiment_resolved_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_experiment_resolved_targets_errors()}

  def list_experiment_resolved_targets(%Client{} = client, experiment_id, options \\ []) do
    url_path = "/experiments/#{AWS.Util.encode_uri(experiment_id)}/resolvedTargets"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, target_name: nil]

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
      if opt_val = Keyword.get(options, :target_name) do
        [{"targetName", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :target_name])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the target account configurations of the specified experiment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20ListExperimentTargetAccountConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:experiment_id` (`t:string`) The ID of the experiment.

  ## Optional parameters:
  * `:next_token` (`t:string`) The token for the next page of results.
  """

  @spec list_experiment_target_account_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_experiment_target_account_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_experiment_target_account_configurations_errors()}

  def list_experiment_target_account_configurations(
        %Client{} = client,
        experiment_id,
        options \\ []
      ) do
    url_path = "/experiments/#{AWS.Util.encode_uri(experiment_id)}/targetAccountConfigurations"

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
  Lists your experiment templates.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20ListExperimentTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return with a
  single call. To retrieve the remaining results, make another call with the
  returned nextToken value.
  * `:next_token` (`t:string`) The token for the next page of results.
  """

  @spec list_experiment_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_experiment_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_experiment_templates_errors()}

  def list_experiment_templates(%Client{} = client, options \\ []) do
    url_path = "/experimentTemplates"

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
  Lists your experiments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20ListExperiments&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:experiment_template_id` (`t:string`) The ID of the experiment template.
  * `:max_results` (`t:integer`) The maximum number of results to return with a
  single call. To retrieve the remaining results, make another call with the
  returned nextToken value.
  * `:next_token` (`t:string`) The token for the next page of results.
  """

  @spec list_experiments(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_experiments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_experiments_errors()}

  def list_experiments(%Client{} = client, options \\ []) do
    url_path = "/experiments"

    # Validate optional parameters
    optional_params = [experiment_template_id: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :experiment_template_id) do
        [{"experimentTemplateId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:experiment_template_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}

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
  Lists the target account configurations of the specified experiment template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20ListTargetAccountConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:experiment_template_id` (`t:string`) The ID of the experiment template.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return with a
  single call. To retrieve the remaining results, make another call with the
  returned nextToken value.
  * `:next_token` (`t:string`) The token for the next page of results.
  """

  @spec list_target_account_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_target_account_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_target_account_configurations_errors()}

  def list_target_account_configurations(
        %Client{} = client,
        experiment_template_id,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations"

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
  Lists the target resource types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20ListTargetResourceTypes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return with a
  single call. To retrieve the remaining results, make another call with the
  returned nextToken value.
  * `:next_token` (`t:string`) The token for the next page of results.
  """

  @spec list_target_resource_types(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_target_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_target_resource_types_errors()}

  def list_target_resource_types(%Client{} = client, options \\ []) do
    url_path = "/targetResourceTypes"

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
  Starts running an experiment from the specified experiment template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20StartExperiment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_experiment(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_experiment_errors()}

  def start_experiment(%Client{} = client, options \\ []) do
    url_path = "/experiments"

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
  Stops the specified experiment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20StopExperiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the experiment.

  ## Optional parameters:
  """

  @spec stop_experiment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, stop_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_experiment_errors()}

  def stop_experiment(%Client{} = client, id, options \\ []) do
    url_path = "/experiments/#{AWS.Util.encode_uri(id)}"

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
  Applies the specified tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}

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
  Removes the specified tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.fis#TagKey]`) The tag keys to remove.
  """

  @spec untag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def untag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # Validate optional parameters
    optional_params = [tag_keys: nil]

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
      if opt_val = Keyword.get(options, :tag_keys) do
        [{"tagKeys", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:tag_keys])

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
  Updates the specified experiment template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20UpdateExperimentTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the experiment template.

  ## Optional parameters:
  """

  @spec update_experiment_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_experiment_template_errors()}

  def update_experiment_template(%Client{} = client, id, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"

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
  Updates the target account configuration for the specified experiment template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fis%20UpdateTargetAccountConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:account_id` (`t:string`) The Amazon Web Services account ID of the target
  account.
  * `:experiment_template_id` (`t:string`) The ID of the experiment template.

  ## Optional parameters:
  """

  @spec update_target_account_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_target_account_configuration_errors()}

  def update_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

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
end
