# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ControlTower do
  @moduledoc """
  Amazon Web Services Control Tower offers application programming interface (API)
  operations that support programmatic interaction with these types of
  resources:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_enabled_controls_output() :: %{
        "enabledControls" => list(enabled_control_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_enabled_controls_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_control_input() :: %{
        required("controlIdentifier") => String.t(),
        required("targetIdentifier") => String.t()
      }
      
  """
  @type disable_control_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_control_output() :: %{
        "operationIdentifier" => String.t()
      }
      
  """
  @type disable_control_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enablement_status_summary() :: %{
        "lastOperationIdentifier" => String.t(),
        "status" => list(any())
      }
      
  """
  @type enablement_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_control_parameter() :: %{
        "key" => [String.t()],
        "value" => [any()]
      }
      
  """
  @type enabled_control_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_enabled_baselines_input() :: %{
        optional("filter") => enabled_baseline_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_enabled_baselines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_control_filter() :: %{
        "controlIdentifiers" => list(String.t()()),
        "driftStatuses" => list(list(any())()),
        "statuses" => list(list(any())())
      }
      
  """
  @type enabled_control_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      landing_zone_operation_summary() :: %{
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "status" => list(any())
      }
      
  """
  @type landing_zone_operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_control_input() :: %{
        optional("parameters") => list(enabled_control_parameter()()),
        optional("tags") => map(),
        required("controlIdentifier") => String.t(),
        required("targetIdentifier") => String.t()
      }
      
  """
  @type enable_control_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_landing_zone_output() :: %{
        "operationIdentifier" => String.t()
      }
      
  """
  @type update_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_enabled_control_output() :: %{
        "enabledControlDetails" => enabled_control_details()
      }
      
  """
  @type get_enabled_control_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_enabled_controls_input() :: %{
        optional("filter") => enabled_control_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        optional("targetIdentifier") => String.t()
      }
      
  """
  @type list_enabled_controls_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_landing_zones_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_landing_zones_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_control_operations_output() :: %{
        "controlOperations" => list(control_operation_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_control_operations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_enabled_baseline_input() :: %{
        required("enabledBaselineIdentifier") => String.t()
      }
      
  """
  @type reset_enabled_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_baseline_summary() :: %{
        "arn" => String.t(),
        "baselineIdentifier" => [String.t()],
        "baselineVersion" => [String.t()],
        "statusSummary" => enablement_status_summary(),
        "targetIdentifier" => [String.t()]
      }
      
  """
  @type enabled_baseline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_baseline_operation_input() :: %{
        required("operationIdentifier") => String.t()
      }
      
  """
  @type get_baseline_operation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      landing_zone_operation_filter() :: %{
        "statuses" => list(list(any())()),
        "types" => list(list(any())())
      }
      
  """
  @type landing_zone_operation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_baselines_output() :: %{
        "baselines" => list(baseline_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_baselines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_enabled_baselines_output() :: %{
        "enabledBaselines" => list(enabled_baseline_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_enabled_baselines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_control_summary() :: %{
        "arn" => String.t(),
        "controlIdentifier" => String.t(),
        "driftStatusSummary" => drift_status_summary(),
        "statusSummary" => enablement_status_summary(),
        "targetIdentifier" => String.t()
      }
      
  """
  @type enabled_control_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      region() :: %{
        "name" => String.t()
      }
      
  """
  @type region() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_baseline_input() :: %{
        required("enabledBaselineIdentifier") => String.t()
      }
      
  """
  @type disable_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_enabled_baseline_output() :: %{
        "enabledBaselineDetails" => enabled_baseline_details()
      }
      
  """
  @type get_enabled_baseline_output() :: %{String.t() => any()}

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
      
      enabled_baseline_parameter() :: %{
        "key" => [String.t()],
        "value" => any()
      }
      
  """
  @type enabled_baseline_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_landing_zone_input() :: %{
        optional("tags") => map(),
        required("manifest") => any(),
        required("version") => String.t()
      }
      
  """
  @type create_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_enabled_control_input() :: %{
        required("enabledControlIdentifier") => String.t()
      }
      
  """
  @type get_enabled_control_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      landing_zone_detail() :: %{
        "arn" => String.t(),
        "driftStatus" => landing_zone_drift_status_summary(),
        "latestAvailableVersion" => String.t(),
        "manifest" => any(),
        "status" => list(any()),
        "version" => String.t()
      }
      
  """
  @type landing_zone_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_landing_zone_input() :: %{
        required("landingZoneIdentifier") => [String.t()],
        required("manifest") => any(),
        required("version") => String.t()
      }
      
  """
  @type update_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_landing_zones_output() :: %{
        "landingZones" => list(landing_zone_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_landing_zones_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_landing_zone_output() :: %{
        "landingZone" => landing_zone_detail()
      }
      
  """
  @type get_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_landing_zone_operation_input() :: %{
        required("operationIdentifier") => String.t()
      }
      
  """
  @type get_landing_zone_operation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_control_parameter_summary() :: %{
        "key" => [String.t()],
        "value" => [any()]
      }
      
  """
  @type enabled_control_parameter_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_baseline_output() :: %{
        "arn" => String.t(),
        "operationIdentifier" => String.t()
      }
      
  """
  @type enable_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_control_operation_input() :: %{
        required("operationIdentifier") => String.t()
      }
      
  """
  @type get_control_operation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_landing_zone_input() :: %{
        required("landingZoneIdentifier") => [String.t()]
      }
      
  """
  @type delete_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_landing_zone_output() :: %{
        "operationIdentifier" => String.t()
      }
      
  """
  @type delete_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_landing_zone_operation_output() :: %{
        "operationDetails" => landing_zone_operation_detail()
      }
      
  """
  @type get_landing_zone_operation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_control_output() :: %{
        "arn" => String.t(),
        "operationIdentifier" => String.t()
      }
      
  """
  @type enable_control_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      landing_zone_summary() :: %{
        "arn" => String.t()
      }
      
  """
  @type landing_zone_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_landing_zone_operations_input() :: %{
        optional("filter") => landing_zone_operation_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_landing_zone_operations_input() :: %{String.t() => any()}

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
      
      get_baseline_operation_output() :: %{
        "baselineOperation" => baseline_operation()
      }
      
  """
  @type get_baseline_operation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      baseline_operation() :: %{
        "endTime" => non_neg_integer(),
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusMessage" => [String.t()]
      }
      
  """
  @type baseline_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_baseline_filter() :: %{
        "baselineIdentifiers" => list(String.t()()),
        "targetIdentifiers" => list(String.t()())
      }
      
  """
  @type enabled_baseline_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_baseline_input() :: %{
        optional("parameters") => list(enabled_baseline_parameter()()),
        optional("tags") => map(),
        required("baselineIdentifier") => String.t(),
        required("baselineVersion") => String.t(),
        required("targetIdentifier") => String.t()
      }
      
  """
  @type enable_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_operation() :: %{
        "controlIdentifier" => String.t(),
        "enabledControlIdentifier" => String.t(),
        "endTime" => non_neg_integer(),
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusMessage" => [String.t()],
        "targetIdentifier" => String.t()
      }
      
  """
  @type control_operation() :: %{String.t() => any()}

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
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      list_control_operations_input() :: %{
        optional("filter") => control_operation_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_control_operations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_enabled_baseline_input() :: %{
        optional("parameters") => list(enabled_baseline_parameter()()),
        required("baselineVersion") => String.t(),
        required("enabledBaselineIdentifier") => String.t()
      }
      
  """
  @type update_enabled_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_operation_filter() :: %{
        "controlIdentifiers" => list(String.t()()),
        "controlOperationTypes" => list(list(any())()),
        "enabledControlIdentifiers" => list(String.t()()),
        "statuses" => list(list(any())()),
        "targetIdentifiers" => list(String.t()())
      }
      
  """
  @type control_operation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_enabled_baseline_input() :: %{
        required("enabledBaselineIdentifier") => String.t()
      }
      
  """
  @type get_enabled_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_baseline_details() :: %{
        "arn" => String.t(),
        "baselineIdentifier" => [String.t()],
        "baselineVersion" => [String.t()],
        "parameters" => list(enabled_baseline_parameter_summary()()),
        "statusSummary" => enablement_status_summary(),
        "targetIdentifier" => [String.t()]
      }
      
  """
  @type enabled_baseline_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      landing_zone_drift_status_summary() :: %{
        "status" => list(any())
      }
      
  """
  @type landing_zone_drift_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_enabled_control_input() :: %{
        required("enabledControlIdentifier") => String.t(),
        required("parameters") => list(enabled_control_parameter()())
      }
      
  """
  @type update_enabled_control_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      baseline_summary() :: %{
        "arn" => [String.t()],
        "description" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type baseline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_landing_zone_input() :: %{
        required("landingZoneIdentifier") => [String.t()]
      }
      
  """
  @type reset_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_control_details() :: %{
        "arn" => String.t(),
        "controlIdentifier" => String.t(),
        "driftStatusSummary" => drift_status_summary(),
        "parameters" => list(enabled_control_parameter_summary()()),
        "statusSummary" => enablement_status_summary(),
        "targetIdentifier" => String.t(),
        "targetRegions" => list(region()())
      }
      
  """
  @type enabled_control_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_control_operation_output() :: %{
        "controlOperation" => control_operation()
      }
      
  """
  @type get_control_operation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_enabled_baseline_output() :: %{
        "operationIdentifier" => String.t()
      }
      
  """
  @type update_enabled_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_landing_zone_output() :: %{
        "arn" => String.t(),
        "operationIdentifier" => String.t()
      }
      
  """
  @type create_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_baseline_output() :: %{
        "arn" => String.t(),
        "description" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type get_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_landing_zone_output() :: %{
        "operationIdentifier" => String.t()
      }
      
  """
  @type reset_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_landing_zone_operations_output() :: %{
        "landingZoneOperations" => list(landing_zone_operation_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_landing_zone_operations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_baseline_parameter_summary() :: %{
        "key" => [String.t()],
        "value" => any()
      }
      
  """
  @type enabled_baseline_parameter_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_baselines_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_baselines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_enabled_baseline_output() :: %{
        "operationIdentifier" => String.t()
      }
      
  """
  @type reset_enabled_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_landing_zone_input() :: %{
        required("landingZoneIdentifier") => [String.t()]
      }
      
  """
  @type get_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      drift_status_summary() :: %{
        "driftStatus" => list(any())
      }
      
  """
  @type drift_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      landing_zone_operation_detail() :: %{
        "endTime" => non_neg_integer(),
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusMessage" => [String.t()]
      }
      
  """
  @type landing_zone_operation_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_enabled_control_output() :: %{
        "operationIdentifier" => String.t()
      }
      
  """
  @type update_enabled_control_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_baseline_output() :: %{
        "operationIdentifier" => String.t()
      }
      
  """
  @type disable_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_operation_summary() :: %{
        "controlIdentifier" => String.t(),
        "enabledControlIdentifier" => String.t(),
        "endTime" => non_neg_integer(),
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusMessage" => [String.t()],
        "targetIdentifier" => String.t()
      }
      
  """
  @type control_operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_baseline_input() :: %{
        required("baselineIdentifier") => String.t()
      }
      
  """
  @type get_baseline_input() :: %{String.t() => any()}

  @type create_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_baseline_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_control_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_enabled_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_enabled_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_landing_zone_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_baselines_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_control_operations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_enabled_baselines_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_enabled_controls_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_landing_zone_operations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_landing_zones_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type reset_enabled_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reset_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_enabled_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_enabled_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "controltower",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ControlTower",
      signature_version: "v4",
      signing_name: "controltower",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new landing zone. This API call starts an asynchronous operation that
  creates and configures a landing zone, based on the parameters specified in
  the manifest JSON file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20CreateLandingZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_landing_zone(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_landing_zone_errors()}
  def create_landing_zone(%Client{} = client, options \\ []) do
    url_path = "/create-landingzone"

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
  Decommissions a landing zone. This API call starts an asynchronous operation
  that deletes Amazon Web Services Control Tower resources deployed in accounts
  managed by Amazon Web Services Control Tower.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20DeleteLandingZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_landing_zone(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_landing_zone_errors()}
  def delete_landing_zone(%Client{} = client, options \\ []) do
    url_path = "/delete-landingzone"

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
  Disable an `EnabledBaseline` resource on the specified Target. This API starts
  an asynchronous operation to remove all resources deployed as part of the
  baseline enablement. The resource will vary depending on the enabled baseline.
  For usage examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20DisableBaseline&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec disable_baseline(AWS.Client.t(), Keyword.t()) ::
          {:ok, disable_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_baseline_errors()}
  def disable_baseline(%Client{} = client, options \\ []) do
    url_path = "/disable-baseline"

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
  This API call turns off a control. It starts an asynchronous operation that
  deletes Amazon Web Services resources on the specified organizational unit and
  the accounts it contains. The resources will vary according to the control
  that you specify. For usage examples, see the [ *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20DisableControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec disable_control(AWS.Client.t(), Keyword.t()) ::
          {:ok, disable_control_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_control_errors()}
  def disable_control(%Client{} = client, options \\ []) do
    url_path = "/disable-control"

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
  Enable (apply) a `Baseline` to a Target. This API starts an asynchronous
  operation to deploy resources specified by the `Baseline` to the specified
  Target. For usage examples, see [ *the Amazon Web Services Control Tower User
  Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20EnableBaseline&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec enable_baseline(AWS.Client.t(), Keyword.t()) ::
          {:ok, enable_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_baseline_errors()}
  def enable_baseline(%Client{} = client, options \\ []) do
    url_path = "/enable-baseline"

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
  This API call activates a control. It starts an asynchronous operation that
  creates Amazon Web Services resources on the specified organizational unit and
  the accounts it contains. The resources created will vary according to the
  control that you specify. For usage examples, see the [ *Controls Reference
  Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20EnableControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec enable_control(AWS.Client.t(), Keyword.t()) ::
          {:ok, enable_control_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_control_errors()}
  def enable_control(%Client{} = client, options \\ []) do
    url_path = "/enable-control"

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
  Retrieve details about an existing `Baseline` resource by specifying its
  identifier. For usage examples, see [ *the Amazon Web Services Control Tower
  User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20GetBaseline&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_baseline(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_baseline_errors()}
  def get_baseline(%Client{} = client, options \\ []) do
    url_path = "/get-baseline"

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
  Returns the details of an asynchronous baseline operation, as initiated by any
  of these APIs: `EnableBaseline`, `DisableBaseline`, `UpdateEnabledBaseline`,
  `ResetEnabledBaseline`. A status message is displayed in case of operation
  failure. For usage examples, see [ *the Amazon Web Services Control Tower User
  Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20GetBaselineOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_baseline_operation(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_baseline_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_baseline_operation_errors()}
  def get_baseline_operation(%Client{} = client, options \\ []) do
    url_path = "/get-baseline-operation"

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
  Returns the status of a particular `EnableControl` or `DisableControl`
  operation. Displays a message in case of error. Details for an operation are
  available for 90 days. For usage examples, see the [ *Controls Reference
  Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20GetControlOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_control_operation(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_control_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_control_operation_errors()}
  def get_control_operation(%Client{} = client, options \\ []) do
    url_path = "/get-control-operation"

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
  Retrieve details of an `EnabledBaseline` resource by specifying its identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20GetEnabledBaseline&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_enabled_baseline(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_enabled_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_enabled_baseline_errors()}
  def get_enabled_baseline(%Client{} = client, options \\ []) do
    url_path = "/get-enabled-baseline"

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
  Retrieves details about an enabled control. For usage examples, see the [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20GetEnabledControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_enabled_control(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_enabled_control_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_enabled_control_errors()}
  def get_enabled_control(%Client{} = client, options \\ []) do
    url_path = "/get-enabled-control"

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
  Returns details about the landing zone. Displays a message in case of error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20GetLandingZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_landing_zone(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_landing_zone_errors()}
  def get_landing_zone(%Client{} = client, options \\ []) do
    url_path = "/get-landingzone"

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
  Returns the status of the specified landing zone operation. Details for an
  operation are available for 90 days.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20GetLandingZoneOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_landing_zone_operation(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_landing_zone_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_landing_zone_operation_errors()}
  def get_landing_zone_operation(%Client{} = client, options \\ []) do
    url_path = "/get-landingzone-operation"

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
  Returns a summary list of all available baselines. For usage examples, see [
  *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20ListBaselines&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_baselines(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_baselines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_baselines_errors()}
  def list_baselines(%Client{} = client, options \\ []) do
    url_path = "/list-baselines"

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
  Provides a list of operations in progress or queued. For usage examples, see
  [ListControlOperation
  examples](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html#list-control-operations-api-examples).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20ListControlOperations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_control_operations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_control_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_control_operations_errors()}
  def list_control_operations(%Client{} = client, options \\ []) do
    url_path = "/list-control-operations"

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
  Returns a list of summaries describing `EnabledBaseline` resources. You can
  filter the list by the corresponding `Baseline` or `Target` of the
  `EnabledBaseline` resources. For usage examples, see [ *the Amazon Web
  Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20ListEnabledBaselines&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_enabled_baselines(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_enabled_baselines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_enabled_baselines_errors()}
  def list_enabled_baselines(%Client{} = client, options \\ []) do
    url_path = "/list-enabled-baselines"

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
  Lists the controls enabled by Amazon Web Services Control Tower on the specified
  organizational unit and the accounts it contains. For usage examples, see the
  [ *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20ListEnabledControls&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_enabled_controls(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_enabled_controls_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_enabled_controls_errors()}
  def list_enabled_controls(%Client{} = client, options \\ []) do
    url_path = "/list-enabled-controls"

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
  Lists all landing zone operations from the past 90 days. Results are sorted by
  time, with the most recent operation first.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20ListLandingZoneOperations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_landing_zone_operations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_landing_zone_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_landing_zone_operations_errors()}
  def list_landing_zone_operations(%Client{} = client, options \\ []) do
    url_path = "/list-landingzone-operations"

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
  Returns the landing zone ARN for the landing zone deployed in your managed
  account. This API also creates an ARN for existing accounts that do not yet
  have a landing zone ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20ListLandingZones&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_landing_zones(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_landing_zones_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_landing_zones_errors()}
  def list_landing_zones(%Client{} = client, options \\ []) do
    url_path = "/list-landingzones"

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
  Returns a list of tags associated with the resource. For usage examples, see the
  [ *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  ## Keyword parameters:
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
  Re-enables an `EnabledBaseline` resource. For example, this API can re-apply the
  existing `Baseline` after a new member account is moved to the target OU. For
  usage examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20ResetEnabledBaseline&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec reset_enabled_baseline(AWS.Client.t(), Keyword.t()) ::
          {:ok, reset_enabled_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_enabled_baseline_errors()}
  def reset_enabled_baseline(%Client{} = client, options \\ []) do
    url_path = "/reset-enabled-baseline"

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
  This API call resets a landing zone. It starts an asynchronous operation that
  resets the landing zone to the parameters specified in the original
  configuration, which you specified in the manifest file. Nothing in the
  manifest file's original landing zone configuration is changed during the
  reset process, by default. This API is not the same as a rollback of a landing
  zone version, which is not a supported operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20ResetLandingZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec reset_landing_zone(AWS.Client.t(), Keyword.t()) ::
          {:ok, reset_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_landing_zone_errors()}
  def reset_landing_zone(%Client{} = client, options \\ []) do
    url_path = "/reset-landingzone"

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
  Applies tags to a resource. For usage examples, see the [ *Controls Reference
  Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to be tagged.
  ## Keyword parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
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
  Removes tags from a resource. For usage examples, see the [ *Controls Reference
  Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  * `:tag_keys` (`t:list[com.amazonaws.controltower#TagKey]` required) Tag keys to
  be removed from the resource.
  ## Keyword parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
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
  Updates an `EnabledBaseline` resource's applied parameters or version. For usage
  examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20UpdateEnabledBaseline&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_enabled_baseline(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_enabled_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_enabled_baseline_errors()}
  def update_enabled_baseline(%Client{} = client, options \\ []) do
    url_path = "/update-enabled-baseline"

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
  Updates the configuration of an already enabled control. If the enabled control
  shows an `EnablementStatus` of SUCCEEDED, supply parameters that are different
  from the currently configured parameters. Otherwise, Amazon Web Services
  Control Tower will not accept the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20UpdateEnabledControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_enabled_control(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_enabled_control_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_enabled_control_errors()}
  def update_enabled_control(%Client{} = client, options \\ []) do
    url_path = "/update-enabled-control"

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
  This API call updates the landing zone. It starts an asynchronous operation that
  updates the landing zone based on the new landing zone version, or on the
  changed parameters specified in the updated manifest file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controltower%20UpdateLandingZone&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_landing_zone(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_landing_zone_errors()}
  def update_landing_zone(%Client{} = client, options \\ []) do
    url_path = "/update-landingzone"

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
end
