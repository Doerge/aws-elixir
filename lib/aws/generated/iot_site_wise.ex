# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTSiteWise do
  @moduledoc """
  Welcome to the IoT SiteWise API Reference. IoT SiteWise is an Amazon Web
  Services service that connects [Industrial Internet of Things
  (IIoT)](https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications)
  devices to the power of the Amazon Web Services Cloud. For more information,
  see the [IoT SiteWise User
  Guide](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/). For
  information about IoT SiteWise quotas, see
  [Quotas](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
  in the *IoT SiteWise User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      delete_asset_model_response() :: %{
        "assetModelStatus" => asset_model_status()
      }

  """
  @type delete_asset_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_request() :: %{
        required("gatewayName") => String.t()
      }

  """
  @type update_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_query_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("queryStatement") => String.t()
      }

  """
  @type execute_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_summary() :: %{
        "actionDefinitionId" => String.t(),
        "actionId" => String.t(),
        "targetResource" => target_resource()
      }

  """
  @type action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dashboards_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("projectId") => String.t()
      }

  """
  @type list_dashboards_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_response() :: %{
        "errorEntries" => list(batch_get_asset_property_aggregates_error_entry()()),
        "nextToken" => String.t(),
        "skippedEntries" => list(batch_get_asset_property_aggregates_skipped_entry()()),
        "successEntries" => list(batch_get_asset_property_aggregates_success_entry()())
      }

  """
  @type batch_get_asset_property_aggregates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_project_response() :: %{
        "portalId" => String.t(),
        "projectArn" => String.t(),
        "projectCreationDate" => non_neg_integer(),
        "projectDescription" => String.t(),
        "projectId" => String.t(),
        "projectLastUpdateDate" => non_neg_integer(),
        "projectName" => String.t()
      }

  """
  @type describe_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_default_encryption_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t()
      }

  """
  @type put_default_encryption_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_composition_relationships_response() :: %{
        "compositionRelationshipSummaries" => list(composition_relationship_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_composition_relationships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_policies_response() :: %{
        "accessPolicySummaries" => list(access_policy_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_access_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_response() :: %{}

  """
  @type update_dashboard_response() :: %{}

  @typedoc """

  ## Example:

      portal_resource() :: %{
        "id" => String.t()
      }

  """
  @type portal_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_model_composite_model_response() :: %{
        "actionDefinitions" => list(action_definition()()),
        "assetModelCompositeModelDescription" => String.t(),
        "assetModelCompositeModelExternalId" => String.t(),
        "assetModelCompositeModelId" => String.t(),
        "assetModelCompositeModelName" => String.t(),
        "assetModelCompositeModelPath" => list(asset_model_composite_model_path_segment()()),
        "assetModelCompositeModelProperties" => list(asset_model_property()()),
        "assetModelCompositeModelSummaries" => list(asset_model_composite_model_summary()()),
        "assetModelCompositeModelType" => String.t(),
        "assetModelId" => String.t(),
        "compositionDetails" => composition_details()
      }

  """
  @type describe_asset_model_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_request() :: %{
        optional("clientToken") => String.t(),
        optional("dashboardDescription") => String.t(),
        required("dashboardDefinition") => String.t(),
        required("dashboardName") => String.t()
      }

  """
  @type update_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_associate_project_assets_response() :: %{
        "errors" => list(asset_error_details()())
      }

  """
  @type batch_associate_project_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_property() :: %{
        "alias" => String.t(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "notification" => property_notification(),
        "path" => list(asset_property_path_segment()()),
        "unit" => String.t()
      }

  """
  @type asset_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflicting_operation_exception() :: %{
        "message" => String.t(),
        "resourceArn" => String.t(),
        "resourceId" => String.t()
      }

  """
  @type conflicting_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_model_composite_model_request() :: %{}

  """
  @type describe_asset_model_composite_model_request() :: %{}

  @typedoc """

  ## Example:

      get_asset_property_aggregates_response() :: %{
        "aggregatedValues" => list(aggregated_value()()),
        "nextToken" => String.t()
      }

  """
  @type get_asset_property_aggregates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_project_assets_response() :: %{
        "assetIds" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_project_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      interpolated_asset_property_value() :: %{
        "timestamp" => time_in_nanos(),
        "value" => variant()
      }

  """
  @type interpolated_asset_property_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      greengrass() :: %{
        "groupArn" => String.t()
      }

  """
  @type greengrass() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      detailed_error() :: %{
        "code" => list(any()),
        "message" => String.t()
      }

  """
  @type detailed_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_hierarchy() :: %{
        "childAssetModelId" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_model_hierarchy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_response() :: %{
        "gatewayArn" => String.t(),
        "gatewayId" => String.t()
      }

  """
  @type create_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric() :: %{
        "expression" => String.t(),
        "processingConfig" => metric_processing_config(),
        "variables" => list(expression_variable()()),
        "window" => metric_window()
      }

  """
  @type metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_access_policy_response() :: %{}

  """
  @type delete_access_policy_response() :: %{}

  @typedoc """

  ## Example:

      list_gateways_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_gateways_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      expression_variable() :: %{
        "name" => String.t(),
        "value" => variable_value()
      }

  """
  @type expression_variable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_model_composite_models_response() :: %{
        "assetModelCompositeModelSummaries" => list(asset_model_composite_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_model_composite_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bulk_import_job_request() :: %{
        optional("adaptiveIngestion") => boolean(),
        optional("deleteFilesAfterImport") => boolean(),
        required("errorReportLocation") => error_report_location(),
        required("files") => list(file()()),
        required("jobConfiguration") => job_configuration(),
        required("jobName") => String.t(),
        required("jobRoleArn") => String.t()
      }

  """
  @type create_bulk_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_response() :: %{
        "propertyValue" => asset_property_value()
      }

  """
  @type get_asset_property_value_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_property_value() :: %{
        "quality" => list(any()),
        "timestamp" => time_in_nanos(),
        "value" => variant()
      }

  """
  @type asset_property_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_logging_options_response() :: %{}

  """
  @type put_logging_options_response() :: %{}

  @typedoc """

  ## Example:

      identity() :: %{
        "group" => group_identity(),
        "iamRole" => iam_role_identity(),
        "iamUser" => iam_user_identity(),
        "user" => user_identity()
      }

  """
  @type identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_format() :: %{
        "csv" => csv(),
        "parquet" => parquet()
      }

  """
  @type file_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bulk_import_jobs_request() :: %{
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_bulk_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_default_encryption_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t()
      }

  """
  @type describe_default_encryption_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_project_request() :: %{}

  """
  @type describe_project_request() :: %{}

  @typedoc """

  ## Example:

      describe_action_response() :: %{
        "actionDefinitionId" => String.t(),
        "actionId" => String.t(),
        "actionPayload" => action_payload(),
        "executionTime" => non_neg_integer(),
        "targetResource" => target_resource()
      }

  """
  @type describe_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bulk_import_job_request() :: %{}

  """
  @type describe_bulk_import_job_request() :: %{}

  @typedoc """

  ## Example:

      describe_asset_response() :: %{
        "assetArn" => String.t(),
        "assetCompositeModelSummaries" => list(asset_composite_model_summary()()),
        "assetCompositeModels" => list(asset_composite_model()()),
        "assetCreationDate" => non_neg_integer(),
        "assetDescription" => String.t(),
        "assetExternalId" => String.t(),
        "assetHierarchies" => list(asset_hierarchy()()),
        "assetId" => String.t(),
        "assetLastUpdateDate" => non_neg_integer(),
        "assetModelId" => String.t(),
        "assetName" => String.t(),
        "assetProperties" => list(asset_property()()),
        "assetStatus" => asset_status()
      }

  """
  @type describe_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_asset_property_value_entry() :: %{
        "assetId" => String.t(),
        "entryId" => String.t(),
        "propertyAlias" => String.t(),
        "propertyId" => String.t(),
        "propertyValues" => list(asset_property_value()())
      }

  """
  @type put_asset_property_value_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retention_period() :: %{
        "numberOfDays" => integer(),
        "unlimited" => boolean()
      }

  """
  @type retention_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_skipped_entry() :: %{
        "completionStatus" => list(any()),
        "entryId" => String.t(),
        "errorInfo" => batch_get_asset_property_value_error_info()
      }

  """
  @type batch_get_asset_property_value_skipped_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_access_policy_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_property() :: %{
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "path" => list(asset_model_property_path_segment()()),
        "type" => property_type(),
        "unit" => String.t()
      }

  """
  @type asset_model_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datum() :: %{
        "arrayValue" => list(datum()()),
        "nullValue" => boolean(),
        "rowValue" => row(),
        "scalarValue" => String.t()
      }

  """
  @type datum() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_resource() :: %{
        "id" => String.t()
      }

  """
  @type project_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_portal_response() :: %{
        "portalArn" => String.t(),
        "portalId" => String.t(),
        "portalStartUrl" => String.t(),
        "portalStatus" => portal_status(),
        "ssoApplicationId" => String.t()
      }

  """
  @type create_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_property_response() :: %{
        "assetExternalId" => String.t(),
        "assetId" => String.t(),
        "assetModelId" => String.t(),
        "assetName" => String.t(),
        "assetProperty" => property(),
        "compositeModel" => composite_model_property()
      }

  """
  @type describe_asset_property_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_request() :: %{
        optional("assetId") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyId") => String.t()
      }

  """
  @type get_asset_property_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "properties" => list(asset_model_property()()),
        "type" => String.t()
      }

  """
  @type asset_model_composite_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_policies_request() :: %{
        optional("iamArn") => String.t(),
        optional("identityId") => String.t(),
        optional("identityType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceId") => String.t(),
        optional("resourceType") => list(any())
      }

  """
  @type list_access_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_policy_response() :: %{
        "accessPolicyArn" => String.t(),
        "accessPolicyId" => String.t()
      }

  """
  @type create_access_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_report_location() :: %{
        "bucket" => String.t(),
        "prefix" => String.t()
      }

  """
  @type error_report_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_skipped_entry() :: %{
        "completionStatus" => list(any()),
        "entryId" => String.t(),
        "errorInfo" => batch_get_asset_property_value_history_error_info()
      }

  """
  @type batch_get_asset_property_value_history_skipped_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_policy_summary() :: %{
        "creationDate" => non_neg_integer(),
        "id" => String.t(),
        "identity" => identity(),
        "lastUpdateDate" => non_neg_integer(),
        "permission" => list(any()),
        "resource" => resource()
      }

  """
  @type access_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_model_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_asset_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("entries") => list(batch_get_asset_property_aggregates_entry()())
      }

  """
  @type batch_get_asset_property_aggregates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_logging_options_response() :: %{
        "loggingOptions" => logging_options()
      }

  """
  @type describe_logging_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composite_model_property() :: %{
        "assetProperty" => property(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "type" => String.t()
      }

  """
  @type composite_model_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_identity() :: %{
        "id" => String.t()
      }

  """
  @type user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_processing_config() :: %{
        "computeLocation" => list(any())
      }

  """
  @type metric_processing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_identity() :: %{
        "id" => String.t()
      }

  """
  @type group_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_request() :: %{
        optional("assetDescription") => String.t(),
        optional("assetExternalId") => String.t(),
        optional("assetId") => String.t(),
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("assetModelId") => String.t(),
        required("assetName") => String.t()
      }

  """
  @type create_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_window() :: %{
        "tumbling" => tumbling_window()
      }

  """
  @type metric_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file() :: %{
        "bucket" => String.t(),
        "key" => String.t(),
        "versionId" => String.t()
      }

  """
  @type file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_status() :: %{
        "error" => error_details(),
        "state" => list(any())
      }

  """
  @type asset_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_summary() :: %{
        "arn" => String.t(),
        "assetModelId" => String.t(),
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "externalId" => String.t(),
        "hierarchies" => list(asset_hierarchy()()),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t(),
        "status" => asset_status()
      }

  """
  @type asset_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_skipped_entry() :: %{
        "completionStatus" => list(any()),
        "entryId" => String.t(),
        "errorInfo" => batch_get_asset_property_aggregates_error_info()
      }

  """
  @type batch_get_asset_property_aggregates_skipped_entry() :: %{String.t() => any()}

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

      update_project_response() :: %{}

  """
  @type update_project_response() :: %{}

  @typedoc """

  ## Example:

      portal_status() :: %{
        "error" => monitor_error_details(),
        "state" => list(any())
      }

  """
  @type portal_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_summary() :: %{
        "arn" => String.t(),
        "assetModelType" => list(any()),
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t(),
        "status" => asset_model_status()
      }

  """
  @type asset_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_time_series_request() :: %{
        optional("alias") => String.t(),
        optional("assetId") => String.t(),
        optional("propertyId") => String.t()
      }

  """
  @type describe_time_series_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alarms() :: %{
        "alarmRoleArn" => String.t(),
        "notificationLambdaArn" => String.t()
      }

  """
  @type alarms() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_assets_request() :: %{
        optional("hierarchyId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("traversalDirection") => list(any())
      }

  """
  @type list_associated_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_status() :: %{
        "error" => configuration_error_details(),
        "state" => list(any())
      }

  """
  @type configuration_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_response() :: %{
        "errorEntries" => list(batch_get_asset_property_value_history_error_entry()()),
        "nextToken" => String.t(),
        "skippedEntries" => list(batch_get_asset_property_value_history_skipped_entry()()),
        "successEntries" => list(batch_get_asset_property_value_history_success_entry()())
      }

  """
  @type batch_get_asset_property_value_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multi_layer_storage() :: %{
        "customerManagedS3Storage" => customer_managed_s3_storage()
      }

  """
  @type multi_layer_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      target_resource() :: %{
        "assetId" => String.t()
      }

  """
  @type target_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_project_assets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_project_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_action_request() :: %{}

  """
  @type describe_action_request() :: %{}

  @typedoc """

  ## Example:

      describe_bulk_import_job_response() :: %{
        "adaptiveIngestion" => boolean(),
        "deleteFilesAfterImport" => boolean(),
        "errorReportLocation" => error_report_location(),
        "files" => list(file()()),
        "jobConfiguration" => job_configuration(),
        "jobCreationDate" => non_neg_integer(),
        "jobId" => String.t(),
        "jobLastUpdateDate" => non_neg_integer(),
        "jobName" => String.t(),
        "jobRoleArn" => String.t(),
        "jobStatus" => list(any())
      }

  """
  @type describe_bulk_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_associate_project_assets_request() :: %{
        optional("clientToken") => String.t(),
        required("assetIds") => list(String.t()())
      }

  """
  @type batch_associate_project_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_model_response() :: %{
        "assetModelArn" => String.t(),
        "assetModelId" => String.t(),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type create_asset_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_response() :: %{
        "assetStatus" => asset_status()
      }

  """
  @type update_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_access_policy_response() :: %{}

  """
  @type update_access_policy_response() :: %{}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_error_entry() :: %{
        "entryId" => String.t(),
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type batch_get_asset_property_value_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_action_response() :: %{
        "actionId" => String.t()
      }

  """
  @type execute_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_summary() :: %{
        "creationDate" => non_neg_integer(),
        "gatewayCapabilitySummaries" => list(gateway_capability_summary()()),
        "gatewayId" => String.t(),
        "gatewayName" => String.t(),
        "gatewayPlatform" => gateway_platform(),
        "lastUpdateDate" => non_neg_integer()
      }

  """
  @type gateway_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_time_series_response() :: %{
        "TimeSeriesSummaries" => list(time_series_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_time_series_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_portals_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_portals_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_composite_model() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "properties" => list(asset_property()()),
        "type" => String.t()
      }

  """
  @type asset_composite_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_capability_configuration_request() :: %{}

  """
  @type describe_gateway_capability_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_gateway_capability_configuration_request() :: %{
        required("capabilityConfiguration") => String.t(),
        required("capabilityNamespace") => String.t()
      }

  """
  @type update_gateway_capability_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_portal_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_time_series_response() :: %{
        "alias" => String.t(),
        "assetId" => String.t(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "propertyId" => String.t(),
        "timeSeriesArn" => String.t(),
        "timeSeriesCreationDate" => non_neg_integer(),
        "timeSeriesId" => String.t(),
        "timeSeriesLastUpdateDate" => non_neg_integer()
      }

  """
  @type describe_time_series_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_success_entry() :: %{
        "aggregatedValues" => list(aggregated_value()()),
        "entryId" => String.t()
      }

  """
  @type batch_get_asset_property_aggregates_success_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_interpolated_asset_property_values_request() :: %{
        optional("assetId") => String.t(),
        optional("endTimeOffsetInNanos") => integer(),
        optional("intervalWindowInSeconds") => float(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyId") => String.t(),
        optional("startTimeOffsetInNanos") => integer(),
        required("endTimeInSeconds") => float(),
        required("intervalInSeconds") => float(),
        required("quality") => list(any()),
        required("startTimeInSeconds") => float(),
        required("type") => String.t()
      }

  """
  @type get_interpolated_asset_property_values_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_response() :: %{
        "projectArn" => String.t(),
        "projectId" => String.t()
      }

  """
  @type create_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitor_error_details() :: %{
        "code" => list(any()),
        "message" => String.t()
      }

  """
  @type monitor_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_error_entry() :: %{
        "entryId" => String.t(),
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type batch_get_asset_property_aggregates_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      warm_tier_retention_period() :: %{
        "numberOfDays" => integer(),
        "unlimited" => boolean()
      }

  """
  @type warm_tier_retention_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_error_info() :: %{
        "errorCode" => list(any()),
        "errorTimestamp" => non_neg_integer()
      }

  """
  @type batch_get_asset_property_value_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_composite_model_path_segment() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_composite_model_path_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregated_value() :: %{
        "quality" => list(any()),
        "timestamp" => non_neg_integer(),
        "value" => aggregates()
      }

  """
  @type aggregated_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      row() :: %{
        "data" => list(datum()())
      }

  """
  @type row() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_time_series_from_asset_property_request() :: %{
        optional("clientToken") => String.t(),
        required("alias") => String.t(),
        required("assetId") => String.t(),
        required("propertyId") => String.t()
      }

  """
  @type disassociate_time_series_from_asset_property_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_portal_response() :: %{
        "portalStatus" => portal_status()
      }

  """
  @type delete_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_model_request() :: %{
        optional("assetModelCompositeModels") => list(asset_model_composite_model()()),
        optional("assetModelDescription") => String.t(),
        optional("assetModelExternalId") => String.t(),
        optional("assetModelHierarchies") => list(asset_model_hierarchy()()),
        optional("assetModelProperties") => list(asset_model_property()()),
        optional("clientToken") => String.t(),
        required("assetModelName") => String.t()
      }

  """
  @type update_asset_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_portal_request() :: %{
        optional("alarms") => alarms(),
        optional("clientToken") => String.t(),
        optional("notificationSenderEmail") => String.t(),
        optional("portalAuthMode") => list(any()),
        optional("portalDescription") => String.t(),
        optional("portalLogoImageFile") => image_file(),
        optional("tags") => map(),
        required("portalContactEmail") => String.t(),
        required("portalName") => String.t(),
        required("roleArn") => String.t()
      }

  """
  @type create_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associated_assets_summary() :: %{
        "arn" => String.t(),
        "assetModelId" => String.t(),
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "externalId" => String.t(),
        "hierarchies" => list(asset_hierarchy()()),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t(),
        "status" => asset_status()
      }

  """
  @type associated_assets_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_capability_summary() :: %{
        "capabilityNamespace" => String.t(),
        "capabilitySyncStatus" => list(any())
      }

  """
  @type gateway_capability_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_error_details() :: %{
        "code" => list(any()),
        "message" => String.t()
      }

  """
  @type configuration_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_portal_response() :: %{
        "portalStatus" => portal_status()
      }

  """
  @type update_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_capability_configuration_response() :: %{
        "capabilityConfiguration" => String.t(),
        "capabilityNamespace" => String.t(),
        "capabilitySyncStatus" => list(any()),
        "gatewayId" => String.t()
      }

  """
  @type describe_gateway_capability_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_property_summary() :: %{
        "alias" => String.t(),
        "assetCompositeModelId" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "notification" => property_notification(),
        "path" => list(asset_property_path_segment()()),
        "unit" => String.t()
      }

  """
  @type asset_property_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model_definition() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "properties" => list(asset_model_property_definition()()),
        "type" => String.t()
      }

  """
  @type asset_model_composite_model_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      csv() :: %{
        "columnNames" => list(list(any())())
      }

  """
  @type csv() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_default_encryption_configuration_request() :: %{}

  """
  @type describe_default_encryption_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_asset_relationships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("traversalType") => list(any())
      }

  """
  @type list_asset_relationships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_response() :: %{
        "dashboardArn" => String.t(),
        "dashboardCreationDate" => non_neg_integer(),
        "dashboardDefinition" => String.t(),
        "dashboardDescription" => String.t(),
        "dashboardId" => String.t(),
        "dashboardLastUpdateDate" => non_neg_integer(),
        "dashboardName" => String.t(),
        "projectId" => String.t()
      }

  """
  @type describe_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_portal_response() :: %{
        "alarms" => alarms(),
        "notificationSenderEmail" => String.t(),
        "portalArn" => String.t(),
        "portalAuthMode" => list(any()),
        "portalClientId" => String.t(),
        "portalContactEmail" => String.t(),
        "portalCreationDate" => non_neg_integer(),
        "portalDescription" => String.t(),
        "portalId" => String.t(),
        "portalLastUpdateDate" => non_neg_integer(),
        "portalLogoImageLocation" => image_location(),
        "portalName" => String.t(),
        "portalStartUrl" => String.t(),
        "portalStatus" => portal_status(),
        "roleArn" => String.t()
      }

  """
  @type describe_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_property_path_segment() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_model_property_path_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_response() :: %{
        "nextToken" => String.t(),
        "projectSummaries" => list(project_summary()())
      }

  """
  @type list_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_response() :: %{
        "assetStatus" => asset_status()
      }

  """
  @type delete_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_configuration() :: %{
        "fileFormat" => file_format()
      }

  """
  @type job_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_details() :: %{
        "code" => list(any()),
        "details" => list(detailed_error()()),
        "message" => String.t()
      }

  """
  @type error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property_notification() :: %{
        "state" => list(any()),
        "topic" => String.t()
      }

  """
  @type property_notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_property_request() :: %{
        optional("clientToken") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyNotificationState") => list(any()),
        optional("propertyUnit") => String.t()
      }

  """
  @type update_asset_property_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_capability_configuration_response() :: %{
        "capabilityNamespace" => String.t(),
        "capabilitySyncStatus" => list(any())
      }

  """
  @type update_gateway_capability_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_payload() :: %{
        "stringValue" => String.t()
      }

  """
  @type action_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_actions_response() :: %{
        "actionSummaries" => list(action_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_s3_storage() :: %{
        "roleArn" => String.t(),
        "s3ResourceArn" => String.t()
      }

  """
  @type customer_managed_s3_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_location() :: %{
        "id" => String.t(),
        "url" => String.t()
      }

  """
  @type image_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composition_relationship_summary() :: %{
        "assetModelCompositeModelId" => String.t(),
        "assetModelCompositeModelType" => String.t(),
        "assetModelId" => String.t()
      }

  """
  @type composition_relationship_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_actions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("targetResourceId") => String.t(),
        required("targetResourceType") => list(any())
      }

  """
  @type list_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iam_role_identity() :: %{
        "arn" => String.t()
      }

  """
  @type iam_role_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transform_processing_config() :: %{
        "computeLocation" => list(any()),
        "forwardingConfig" => forwarding_config()
      }

  """
  @type transform_processing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_model_composite_model_request() :: %{
        optional("assetModelCompositeModelDescription") => String.t(),
        optional("assetModelCompositeModelExternalId") => String.t(),
        optional("assetModelCompositeModelId") => String.t(),
        optional("assetModelCompositeModelProperties") => list(asset_model_property_definition()()),
        optional("clientToken") => String.t(),
        optional("composedAssetModelId") => String.t(),
        optional("parentAssetModelCompositeModelId") => String.t(),
        required("assetModelCompositeModelName") => String.t(),
        required("assetModelCompositeModelType") => String.t()
      }

  """
  @type create_asset_model_composite_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_file() :: %{
        "data" => binary(),
        "type" => list(any())
      }

  """
  @type image_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_model_request() :: %{
        optional("excludeProperties") => boolean()
      }

  """
  @type describe_asset_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_storage_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "disassociatedDataStorage" => list(any()),
        "multiLayerStorage" => multi_layer_storage(),
        "retentionPeriod" => retention_period(),
        "storageType" => list(any()),
        "warmTier" => list(any()),
        "warmTierRetentionPeriod" => warm_tier_retention_period()
      }

  """
  @type put_storage_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("entries") => list(batch_get_asset_property_value_history_entry()())
      }

  """
  @type batch_get_asset_property_value_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_logging_options_request() :: %{}

  """
  @type describe_logging_options_request() :: %{}

  @typedoc """

  ## Example:

      iam_user_identity() :: %{
        "arn" => String.t()
      }

  """
  @type iam_user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_error_entry() :: %{
        "entryId" => String.t(),
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type batch_get_asset_property_value_history_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_model_composite_model_response() :: %{
        "assetModelCompositeModelId" => String.t(),
        "assetModelCompositeModelPath" => list(asset_model_composite_model_path_segment()()),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type create_asset_model_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dashboard_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_model_composite_model_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_asset_model_composite_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_models_response() :: %{
        "assetModelSummaries" => list(asset_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_property_request() :: %{}

  """
  @type describe_asset_property_request() :: %{}

  @typedoc """

  ## Example:

      asset_model_status() :: %{
        "error" => error_details(),
        "state" => list(any())
      }

  """
  @type asset_model_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_access_policy_request() :: %{}

  """
  @type describe_access_policy_request() :: %{}

  @typedoc """

  ## Example:

      list_asset_model_composite_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_asset_model_composite_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_composite_model_request() :: %{}

  """
  @type describe_asset_composite_model_request() :: %{}

  @typedoc """

  ## Example:

      delete_dashboard_response() :: %{}

  """
  @type delete_dashboard_response() :: %{}

  @typedoc """

  ## Example:

      batch_put_asset_property_value_request() :: %{
        required("entries") => list(put_asset_property_value_entry()())
      }

  """
  @type batch_put_asset_property_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_hierarchy_definition() :: %{
        "childAssetModelId" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_model_hierarchy_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_model_response() :: %{
        "assetModelArn" => String.t(),
        "assetModelCompositeModelSummaries" => list(asset_model_composite_model_summary()()),
        "assetModelCompositeModels" => list(asset_model_composite_model()()),
        "assetModelCreationDate" => non_neg_integer(),
        "assetModelDescription" => String.t(),
        "assetModelExternalId" => String.t(),
        "assetModelHierarchies" => list(asset_model_hierarchy()()),
        "assetModelId" => String.t(),
        "assetModelLastUpdateDate" => non_neg_integer(),
        "assetModelName" => String.t(),
        "assetModelProperties" => list(asset_model_property()()),
        "assetModelStatus" => asset_model_status(),
        "assetModelType" => list(any())
      }

  """
  @type describe_asset_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_success_entry() :: %{
        "assetPropertyValue" => asset_property_value(),
        "entryId" => String.t()
      }

  """
  @type batch_get_asset_property_value_success_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_portals_response() :: %{
        "nextToken" => String.t(),
        "portalSummaries" => list(portal_summary()())
      }

  """
  @type list_portals_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parquet() :: %{}

  """
  @type parquet() :: %{}

  @typedoc """

  ## Example:

      put_storage_configuration_request() :: %{
        optional("disassociatedDataStorage") => list(any()),
        optional("multiLayerStorage") => multi_layer_storage(),
        optional("retentionPeriod") => retention_period(),
        optional("warmTier") => list(any()),
        optional("warmTierRetentionPeriod") => warm_tier_retention_period(),
        required("storageType") => list(any())
      }

  """
  @type put_storage_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_response() :: %{}

  """
  @type delete_project_response() :: %{}

  @typedoc """

  ## Example:

      forwarding_config() :: %{
        "state" => list(any())
      }

  """
  @type forwarding_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_platform() :: %{
        "greengrass" => greengrass(),
        "greengrassV2" => greengrass_v2()
      }

  """
  @type gateway_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dashboard_response() :: %{
        "dashboardArn" => String.t(),
        "dashboardId" => String.t()
      }

  """
  @type create_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_request() :: %{
        optional("clientToken") => String.t(),
        optional("projectDescription") => String.t(),
        required("projectName") => String.t()
      }

  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_request() :: %{
        optional("tags") => map(),
        required("gatewayName") => String.t(),
        required("gatewayPlatform") => gateway_platform()
      }

  """
  @type create_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bulk_import_job_response() :: %{
        "jobId" => String.t(),
        "jobName" => String.t(),
        "jobStatus" => list(any())
      }

  """
  @type create_bulk_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_model_properties_request() :: %{
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_asset_model_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_access_policy_response() :: %{
        "accessPolicyArn" => String.t(),
        "accessPolicyCreationDate" => non_neg_integer(),
        "accessPolicyId" => String.t(),
        "accessPolicyIdentity" => identity(),
        "accessPolicyLastUpdateDate" => non_neg_integer(),
        "accessPolicyPermission" => list(any()),
        "accessPolicyResource" => resource()
      }

  """
  @type describe_access_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model_path_segment() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_model_composite_model_path_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_interpolated_asset_property_values_response() :: %{
        "interpolatedAssetPropertyValues" => list(interpolated_asset_property_value()()),
        "nextToken" => String.t()
      }

  """
  @type get_interpolated_asset_property_values_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image() :: %{
        "file" => image_file(),
        "id" => String.t()
      }

  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_assets_request() :: %{
        optional("clientToken") => String.t(),
        required("childAssetId") => String.t(),
        required("hierarchyId") => String.t()
      }

  """
  @type associate_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_entry() :: %{
        "aggregateTypes" => list(list(any())()),
        "assetId" => String.t(),
        "endDate" => non_neg_integer(),
        "entryId" => String.t(),
        "propertyAlias" => String.t(),
        "propertyId" => String.t(),
        "qualities" => list(list(any())()),
        "resolution" => String.t(),
        "startDate" => non_neg_integer(),
        "timeOrdering" => list(any())
      }

  """
  @type batch_get_asset_property_aggregates_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_response() :: %{
        "errorEntries" => list(batch_get_asset_property_value_error_entry()()),
        "nextToken" => String.t(),
        "skippedEntries" => list(batch_get_asset_property_value_skipped_entry()()),
        "successEntries" => list(batch_get_asset_property_value_success_entry()())
      }

  """
  @type batch_get_asset_property_value_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transform() :: %{
        "expression" => String.t(),
        "processingConfig" => transform_processing_config(),
        "variables" => list(expression_variable()())
      }

  """
  @type transform() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_history_request() :: %{
        optional("assetId") => String.t(),
        optional("endDate") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyId") => String.t(),
        optional("qualities") => list(list(any())()),
        optional("startDate") => non_neg_integer(),
        optional("timeOrdering") => list(any())
      }

  """
  @type get_asset_property_value_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_relationship_summary() :: %{
        "hierarchyInfo" => asset_hierarchy_info(),
        "relationshipType" => list(any())
      }

  """
  @type asset_relationship_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_composite_model_summary() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "path" => list(asset_composite_model_path_segment()()),
        "type" => String.t()
      }

  """
  @type asset_composite_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_response() :: %{
        "assetArn" => String.t(),
        "assetId" => String.t(),
        "assetStatus" => asset_status()
      }

  """
  @type create_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_access_policy_request() :: %{
        optional("clientToken") => String.t(),
        required("accessPolicyIdentity") => identity(),
        required("accessPolicyPermission") => list(any()),
        required("accessPolicyResource") => resource()
      }

  """
  @type update_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_request() :: %{
        optional("assetDescription") => String.t(),
        optional("assetExternalId") => String.t(),
        optional("clientToken") => String.t(),
        required("assetName") => String.t()
      }

  """
  @type update_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      dashboard_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type dashboard_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_logging_options_request() :: %{
        required("loggingOptions") => logging_options()
      }

  """
  @type put_logging_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      measurement_processing_config() :: %{
        "forwardingConfig" => forwarding_config()
      }

  """
  @type measurement_processing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property_type() :: %{
        "attribute" => attribute(),
        "measurement" => measurement(),
        "metric" => metric(),
        "transform" => transform()
      }

  """
  @type property_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_time_series_request() :: %{
        optional("alias") => String.t(),
        optional("assetId") => String.t(),
        optional("clientToken") => String.t(),
        optional("propertyId") => String.t()
      }

  """
  @type delete_time_series_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_request() :: %{}

  """
  @type delete_gateway_request() :: %{}

  @typedoc """

  ## Example:

      describe_gateway_request() :: %{}

  """
  @type describe_gateway_request() :: %{}

  @typedoc """

  ## Example:

      batch_disassociate_project_assets_response() :: %{
        "errors" => list(asset_error_details()())
      }

  """
  @type batch_disassociate_project_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_portal_request() :: %{
        optional("alarms") => alarms(),
        optional("clientToken") => String.t(),
        optional("notificationSenderEmail") => String.t(),
        optional("portalDescription") => String.t(),
        optional("portalLogoImage") => image(),
        required("portalContactEmail") => String.t(),
        required("portalName") => String.t(),
        required("roleArn") => String.t()
      }

  """
  @type update_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_storage_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "disassociatedDataStorage" => list(any()),
        "lastUpdateDate" => non_neg_integer(),
        "multiLayerStorage" => multi_layer_storage(),
        "retentionPeriod" => retention_period(),
        "storageType" => list(any()),
        "warmTier" => list(any()),
        "warmTierRetentionPeriod" => warm_tier_retention_period()
      }

  """
  @type describe_storage_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_error_details() :: %{
        "assetId" => String.t(),
        "code" => list(any()),
        "message" => String.t()
      }

  """
  @type asset_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_in_nanos() :: %{
        "offsetInNanos" => integer(),
        "timeInSeconds" => float()
      }

  """
  @type time_in_nanos() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tumbling_window() :: %{
        "interval" => String.t(),
        "offset" => String.t()
      }

  """
  @type tumbling_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      measurement() :: %{
        "processingConfig" => measurement_processing_config()
      }

  """
  @type measurement() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
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

      batch_get_asset_property_value_history_error_info() :: %{
        "errorCode" => list(any()),
        "errorTimestamp" => non_neg_integer()
      }

  """
  @type batch_get_asset_property_value_history_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_model_composite_model_response() :: %{
        "assetModelStatus" => asset_model_status()
      }

  """
  @type delete_asset_model_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property() :: %{
        "alias" => String.t(),
        "dataType" => list(any()),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "notification" => property_notification(),
        "path" => list(asset_property_path_segment()()),
        "type" => property_type(),
        "unit" => String.t()
      }

  """
  @type property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_query_response() :: %{
        "columns" => list(column_info()()),
        "nextToken" => String.t(),
        "rows" => list(row()())
      }

  """
  @type execute_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_timeout_exception() :: %{
        "message" => String.t()
      }

  """
  @type query_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_history_response() :: %{
        "assetPropertyValueHistory" => list(asset_property_value()()),
        "nextToken" => String.t()
      }

  """
  @type get_asset_property_value_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model_summary() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "path" => list(asset_model_composite_model_path_segment()()),
        "type" => String.t()
      }

  """
  @type asset_model_composite_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_composition_relationships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_composition_relationships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composition_details() :: %{
        "compositionRelationship" => list(composition_relationship_item()())
      }

  """
  @type composition_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_request() :: %{
        optional("clientToken") => String.t(),
        optional("projectDescription") => String.t(),
        optional("tags") => map(),
        required("portalId") => String.t(),
        required("projectName") => String.t()
      }

  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_response() :: %{
        "creationDate" => non_neg_integer(),
        "gatewayArn" => String.t(),
        "gatewayCapabilitySummaries" => list(gateway_capability_summary()()),
        "gatewayId" => String.t(),
        "gatewayName" => String.t(),
        "gatewayPlatform" => gateway_platform(),
        "lastUpdateDate" => non_neg_integer()
      }

  """
  @type describe_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_request() :: %{
        optional("nextToken") => String.t(),
        required("entries") => list(batch_get_asset_property_value_entry()())
      }

  """
  @type batch_get_asset_property_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_assets_request() :: %{
        optional("clientToken") => String.t(),
        required("childAssetId") => String.t(),
        required("hierarchyId") => String.t()
      }

  """
  @type disassociate_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_success_entry() :: %{
        "assetPropertyValueHistory" => list(asset_property_value()()),
        "entryId" => String.t()
      }

  """
  @type batch_get_asset_property_value_history_success_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_property_path_segment() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_property_path_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_time_series_request() :: %{
        optional("aliasPrefix") => String.t(),
        optional("assetId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("timeSeriesType") => list(any())
      }

  """
  @type list_time_series_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("portalId") => String.t()
      }

  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dashboard_request() :: %{
        optional("clientToken") => String.t(),
        optional("dashboardDescription") => String.t(),
        optional("tags") => map(),
        required("dashboardDefinition") => String.t(),
        required("dashboardName") => String.t(),
        required("projectId") => String.t()
      }

  """
  @type create_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_model_composite_model_request() :: %{
        optional("assetModelCompositeModelDescription") => String.t(),
        optional("assetModelCompositeModelExternalId") => String.t(),
        optional("assetModelCompositeModelProperties") => list(asset_model_property()()),
        optional("clientToken") => String.t(),
        required("assetModelCompositeModelName") => String.t()
      }

  """
  @type update_asset_model_composite_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_relationships_response() :: %{
        "assetRelationshipSummaries" => list(asset_relationship_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_relationships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregates() :: %{
        "average" => float(),
        "count" => float(),
        "maximum" => float(),
        "minimum" => float(),
        "standardDeviation" => float(),
        "sum" => float()
      }

  """
  @type aggregates() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_model_properties_response() :: %{
        "assetModelPropertySummaries" => list(asset_model_property_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_model_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute() :: %{
        "defaultValue" => String.t()
      }

  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      portal_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t(),
        "roleArn" => String.t(),
        "startUrl" => String.t(),
        "status" => portal_status()
      }

  """
  @type portal_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assets_request() :: %{
        optional("assetModelId") => String.t(),
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_disassociate_project_assets_request() :: %{
        optional("clientToken") => String.t(),
        required("assetIds") => list(String.t()())
      }

  """
  @type batch_disassociate_project_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_value_response() :: %{
        "errorEntries" => list(batch_put_asset_property_error_entry()())
      }

  """
  @type batch_put_asset_property_value_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_composite_model_response() :: %{
        "actionDefinitions" => list(action_definition()()),
        "assetCompositeModelDescription" => String.t(),
        "assetCompositeModelExternalId" => String.t(),
        "assetCompositeModelId" => String.t(),
        "assetCompositeModelName" => String.t(),
        "assetCompositeModelPath" => list(asset_composite_model_path_segment()()),
        "assetCompositeModelProperties" => list(asset_property()()),
        "assetCompositeModelSummaries" => list(asset_composite_model_summary()()),
        "assetCompositeModelType" => String.t(),
        "assetId" => String.t()
      }

  """
  @type describe_asset_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composition_relationship_item() :: %{
        "id" => String.t()
      }

  """
  @type composition_relationship_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_options() :: %{
        "level" => list(any())
      }

  """
  @type logging_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_request() :: %{}

  """
  @type describe_dashboard_request() :: %{}

  @typedoc """

  ## Example:

      list_asset_properties_response() :: %{
        "assetPropertySummaries" => list(asset_property_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_hierarchy() :: %{
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_hierarchy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_property_definition() :: %{
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "type" => property_type(),
        "unit" => String.t()
      }

  """
  @type asset_model_property_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_hierarchy_info() :: %{
        "childAssetId" => String.t(),
        "parentAssetId" => String.t()
      }

  """
  @type asset_hierarchy_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_error_entry() :: %{
        "entryId" => String.t(),
        "errors" => list(batch_put_asset_property_error()())
      }

  """
  @type batch_put_asset_property_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_properties_request() :: %{
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_asset_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      variable_value() :: %{
        "hierarchyId" => String.t(),
        "propertyId" => String.t(),
        "propertyPath" => list(asset_model_property_path_segment()())
      }

  """
  @type variable_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_portal_request() :: %{}

  """
  @type describe_portal_request() :: %{}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t(),
        "resourceArn" => String.t(),
        "resourceId" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_info() :: %{
        "name" => String.t(),
        "type" => column_type()
      }

  """
  @type column_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_series_summary() :: %{
        "alias" => String.t(),
        "assetId" => String.t(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "propertyId" => String.t(),
        "timeSeriesArn" => String.t(),
        "timeSeriesCreationDate" => non_neg_integer(),
        "timeSeriesId" => String.t(),
        "timeSeriesLastUpdateDate" => non_neg_integer()
      }

  """
  @type time_series_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_model_request() :: %{
        optional("assetModelCompositeModels") => list(asset_model_composite_model_definition()()),
        optional("assetModelDescription") => String.t(),
        optional("assetModelExternalId") => String.t(),
        optional("assetModelHierarchies") => list(asset_model_hierarchy_definition()()),
        optional("assetModelId") => String.t(),
        optional("assetModelProperties") => list(asset_model_property_definition()()),
        optional("assetModelType") => list(any()),
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("assetModelName") => String.t()
      }

  """
  @type create_asset_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_action_request() :: %{
        optional("clientToken") => String.t(),
        required("actionDefinitionId") => String.t(),
        required("actionPayload") => action_payload(),
        required("targetResource") => target_resource()
      }

  """
  @type execute_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "timestamps" => list(time_in_nanos()())
      }

  """
  @type batch_put_asset_property_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assets_response() :: %{
        "assetSummaries" => list(asset_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_model_response() :: %{
        "assetModelStatus" => asset_model_status()
      }

  """
  @type update_asset_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_request() :: %{
        optional("excludeProperties") => boolean()
      }

  """
  @type describe_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dashboards_response() :: %{
        "dashboardSummaries" => list(dashboard_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_dashboards_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_entry() :: %{
        "assetId" => String.t(),
        "entryId" => String.t(),
        "propertyAlias" => String.t(),
        "propertyId" => String.t()
      }

  """
  @type batch_get_asset_property_value_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gateways_response() :: %{
        "gatewaySummaries" => list(gateway_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_gateways_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_error_info() :: %{
        "errorCode" => list(any()),
        "errorTimestamp" => non_neg_integer()
      }

  """
  @type batch_get_asset_property_aggregates_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_policy_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("accessPolicyIdentity") => identity(),
        required("accessPolicyPermission") => list(any()),
        required("accessPolicyResource") => resource()
      }

  """
  @type create_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_default_encryption_configuration_request() :: %{
        optional("kmsKeyId") => String.t(),
        required("encryptionType") => list(any())
      }

  """
  @type put_default_encryption_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      greengrass_v2() :: %{
        "coreDeviceThingName" => String.t()
      }

  """
  @type greengrass_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_entry() :: %{
        "assetId" => String.t(),
        "endDate" => non_neg_integer(),
        "entryId" => String.t(),
        "propertyAlias" => String.t(),
        "propertyId" => String.t(),
        "qualities" => list(list(any())()),
        "startDate" => non_neg_integer(),
        "timeOrdering" => list(any())
      }

  """
  @type batch_get_asset_property_value_history_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_aggregates_request() :: %{
        optional("assetId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyId") => String.t(),
        optional("qualities") => list(list(any())()),
        optional("timeOrdering") => list(any()),
        required("aggregateTypes") => list(list(any())()),
        required("endDate") => non_neg_integer(),
        required("resolution") => String.t(),
        required("startDate") => non_neg_integer()
      }

  """
  @type get_asset_property_aggregates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      variant() :: %{
        "booleanValue" => boolean(),
        "doubleValue" => float(),
        "integerValue" => integer(),
        "stringValue" => String.t()
      }

  """
  @type variant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_models_request() :: %{
        optional("assetModelTypes") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_asset_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_assets_response() :: %{
        "assetSummaries" => list(associated_assets_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_associated_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_storage_configuration_request() :: %{}

  """
  @type describe_storage_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_asset_model_composite_model_response() :: %{
        "assetModelCompositeModelPath" => list(asset_model_composite_model_path_segment()()),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type update_asset_model_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_definition() :: %{
        "actionDefinitionId" => String.t(),
        "actionName" => String.t(),
        "actionType" => String.t()
      }

  """
  @type action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_property_summary() :: %{
        "assetModelCompositeModelId" => String.t(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "path" => list(asset_model_property_path_segment()()),
        "type" => property_type(),
        "unit" => String.t()
      }

  """
  @type asset_model_property_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_type() :: %{
        "scalarType" => list(any())
      }

  """
  @type column_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_time_series_to_asset_property_request() :: %{
        optional("clientToken") => String.t(),
        required("alias") => String.t(),
        required("assetId") => String.t(),
        required("propertyId") => String.t()
      }

  """
  @type associate_time_series_to_asset_property_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "portal" => portal_resource(),
        "project" => project_resource()
      }

  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bulk_import_jobs_response() :: %{
        "jobSummaries" => list(job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_bulk_import_jobs_response() :: %{String.t() => any()}

  @type associate_assets_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type associate_time_series_to_asset_property_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type batch_associate_project_assets_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type batch_disassociate_project_assets_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type batch_get_asset_property_aggregates_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_get_asset_property_value_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_get_asset_property_value_history_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_put_asset_property_value_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_access_policy_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_asset_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_asset_model_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_asset_model_composite_model_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_bulk_import_job_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_dashboard_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_gateway_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_portal_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_project_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_access_policy_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_asset_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_asset_model_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_asset_model_composite_model_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_dashboard_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_gateway_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_portal_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_project_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_time_series_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type describe_access_policy_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_action_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_composite_model_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_model_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_model_composite_model_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_property_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_bulk_import_job_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_dashboard_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_default_encryption_configuration_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type describe_gateway_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_gateway_capability_configuration_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_logging_options_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_portal_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_project_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_storage_configuration_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type describe_time_series_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type disassociate_assets_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type disassociate_time_series_from_asset_property_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type execute_action_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type execute_query_errors() ::
          throttling_exception()
          | query_timeout_exception()
          | validation_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_asset_property_aggregates_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_asset_property_value_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_asset_property_value_history_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_interpolated_asset_property_values_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_access_policies_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_actions_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_asset_model_composite_models_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_asset_model_properties_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_asset_models_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_asset_properties_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_asset_relationships_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_assets_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_associated_assets_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_bulk_import_jobs_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_composition_relationships_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_dashboards_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_gateways_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_portals_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_project_assets_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_projects_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type list_time_series_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type put_default_encryption_configuration_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type put_logging_options_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type put_storage_configuration_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_access_policy_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_asset_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_asset_model_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_asset_model_composite_model_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_asset_property_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_dashboard_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_gateway_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_gateway_capability_configuration_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_portal_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_project_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotsitewise",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoTSiteWise",
      signature_version: "v4",
      signing_name: "iotsitewise",
      target_prefix: nil
    }
  end

  @doc """
  Associates a child asset with the given parent asset through a hierarchy defined
  in the parent asset's model. For more information, see [Associating
  assets](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20AssociateAssets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the parent asset. This can be either the
    actual ID in UUID format, or else externalId: followed by the external ID,
    if it has one. For more information, see Referencing objects with external
    IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  """
  @spec associate_assets(AWS.Client.t(), String.t(), associate_assets_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_assets_errors()}
  def associate_assets(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/associate"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Associates a time series (data stream) with an asset property.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20AssociateTimeSeriesToAssetProperty&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:alias` (`t:string`) The alias that identifies the time series.
  * `:asset_id` (`t:string`) The ID of the asset in which the asset property was
    created. This can be either the actual ID in UUID format, or else
    externalId: followed by the external ID, if it has one. For more
    information, see Referencing objects with external IDs in the IoT SiteWise
    User Guide.
  * `:property_id` (`t:string`) The ID of the asset property. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  """
  @spec associate_time_series_to_asset_property(
          AWS.Client.t(),
          associate_time_series_to_asset_property_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_time_series_to_asset_property_errors()}
  def associate_time_series_to_asset_property(%Client{} = client, input, options \\ []) do
    url_path = "/timeseries/associate"
    headers = []

    {query_params, input} =
      [
        {"alias", "alias"},
        {"assetId", "assetId"},
        {"propertyId", "propertyId"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Associates a group (batch) of assets with an IoT SiteWise Monitor project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20BatchAssociateProjectAssets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_id` (`t:string`) The ID of the project to which to associate the
    assets.

  ## Optional parameters:
  """
  @spec batch_associate_project_assets(
          AWS.Client.t(),
          String.t(),
          batch_associate_project_assets_request(),
          Keyword.t()
        ) ::
          {:ok, batch_associate_project_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_associate_project_assets_errors()}
  def batch_associate_project_assets(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}/assets/associate"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Disassociates a group (batch) of assets from an IoT SiteWise Monitor project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20BatchDisassociateProjectAssets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_id` (`t:string`) The ID of the project from which to disassociate
    the assets.

  ## Optional parameters:
  """
  @spec batch_disassociate_project_assets(
          AWS.Client.t(),
          String.t(),
          batch_disassociate_project_assets_request(),
          Keyword.t()
        ) ::
          {:ok, batch_disassociate_project_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disassociate_project_assets_errors()}
  def batch_disassociate_project_assets(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}/assets/disassociate"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Gets aggregated values (for example, average, minimum, and maximum) for one or
  more asset properties. For more information, see [Querying
  aggregates](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20BatchGetAssetPropertyAggregates&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_get_asset_property_aggregates(
          AWS.Client.t(),
          batch_get_asset_property_aggregates_request(),
          Keyword.t()
        ) ::
          {:ok, batch_get_asset_property_aggregates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_asset_property_aggregates_errors()}
  def batch_get_asset_property_aggregates(%Client{} = client, input, options \\ []) do
    url_path = "/properties/batch/aggregates"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

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
  Gets the current value for one or more asset properties. For more information,
  see [Querying current
  values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20BatchGetAssetPropertyValue&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_get_asset_property_value(
          AWS.Client.t(),
          batch_get_asset_property_value_request(),
          Keyword.t()
        ) ::
          {:ok, batch_get_asset_property_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_asset_property_value_errors()}
  def batch_get_asset_property_value(%Client{} = client, input, options \\ []) do
    url_path = "/properties/batch/latest"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

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
  Gets the historical values for one or more asset properties. For more
  information, see [Querying historical
  values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20BatchGetAssetPropertyValueHistory&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_get_asset_property_value_history(
          AWS.Client.t(),
          batch_get_asset_property_value_history_request(),
          Keyword.t()
        ) ::
          {:ok, batch_get_asset_property_value_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_asset_property_value_history_errors()}
  def batch_get_asset_property_value_history(%Client{} = client, input, options \\ []) do
    url_path = "/properties/batch/history"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

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
  Sends a list of asset property values to IoT SiteWise. Each value is a
  timestamp-quality-value (TQV) data point. For more information, see [Ingesting
  data using the
  API](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html)
  in the *IoT SiteWise User Guide*. To identify an asset property, you must
  specify one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20BatchPutAssetPropertyValue&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_put_asset_property_value(
          AWS.Client.t(),
          batch_put_asset_property_value_request(),
          Keyword.t()
        ) ::
          {:ok, batch_put_asset_property_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_asset_property_value_errors()}
  def batch_put_asset_property_value(%Client{} = client, input, options \\ []) do
    url_path = "/properties"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

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
  Creates an access policy that grants the specified identity (IAM Identity Center
  user, IAM Identity Center group, or IAM user) access to the specified IoT
  SiteWise Monitor portal or project resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20CreateAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_access_policy(AWS.Client.t(), create_access_policy_request(), Keyword.t()) ::
          {:ok, create_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_access_policy_errors()}
  def create_access_policy(%Client{} = client, input, options \\ []) do
    url_path = "/access-policies"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Creates an asset from an existing asset model. For more information, see
  [Creating
  assets](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20CreateAsset&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_asset(AWS.Client.t(), create_asset_request(), Keyword.t()) ::
          {:ok, create_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_errors()}
  def create_asset(%Client{} = client, input, options \\ []) do
    url_path = "/assets"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Creates an asset model from specified property and hierarchy definitions. You
  create assets from asset models. With asset models, you can easily create
  assets of the same type that have standardized definitions. Each asset created
  from a model inherits the asset model's property and hierarchy definitions.
  For more information, see [Defining asset
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html)
  in the *IoT SiteWise User Guide*. You can create two types of asset models,
  `ASSET_MODEL` or `COMPONENT_MODEL`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20CreateAssetModel&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_asset_model(AWS.Client.t(), create_asset_model_request(), Keyword.t()) ::
          {:ok, create_asset_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_model_errors()}
  def create_asset_model(%Client{} = client, input, options \\ []) do
    url_path = "/asset-models"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Creates a custom composite model from specified property and hierarchy
  definitions. There are two types of custom composite models, `inline` and
  `component-model-based`. Use component-model-based custom composite models to
  define standard, reusable components. A component-model-based custom composite
  model consists of a name, a description, and the ID of the component model it
  references. A component-model-based custom composite model has no properties
  of its own; its referenced component model provides its associated properties
  to any created assets. For more information, see [Custom composite models
  (Components)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20CreateAssetModelCompositeModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_id` (`t:string`) The ID of the asset model this composite model
    is a part of.

  ## Optional parameters:
  """
  @spec create_asset_model_composite_model(
          AWS.Client.t(),
          String.t(),
          create_asset_model_composite_model_request(),
          Keyword.t()
        ) ::
          {:ok, create_asset_model_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_model_composite_model_errors()}
  def create_asset_model_composite_model(%Client{} = client, asset_model_id, input, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Defines a job to ingest data to IoT SiteWise from Amazon S3. For more
  information, see [Create a bulk import job
  (CLI)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/CreateBulkImportJob.html)
  in the *Amazon Simple Storage Service User Guide*. Before you create a bulk
  import job, you must enable IoT SiteWise warm tier or IoT SiteWise cold tier.
  For more information about how to configure storage settings, see
  [PutStorageConfiguration](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_PutStorageConfiguration.html).
  Bulk import is designed to store historical data to IoT SiteWise. It does not
  trigger computations or notifications on IoT SiteWise warm or cold tier
  storage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20CreateBulkImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_bulk_import_job(AWS.Client.t(), create_bulk_import_job_request(), Keyword.t()) ::
          {:ok, create_bulk_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_bulk_import_job_errors()}
  def create_bulk_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

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
  Creates a dashboard in an IoT SiteWise Monitor project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20CreateDashboard&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_dashboard(AWS.Client.t(), create_dashboard_request(), Keyword.t()) ::
          {:ok, create_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dashboard_errors()}
  def create_dashboard(%Client{} = client, input, options \\ []) do
    url_path = "/dashboards"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Creates a gateway, which is a virtual or edge device that delivers industrial
  data streams from local servers to IoT SiteWise. For more information, see
  [Ingesting data using a
  gateway](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20CreateGateway&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_gateway(AWS.Client.t(), create_gateway_request(), Keyword.t()) ::
          {:ok, create_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_gateway_errors()}
  def create_gateway(%Client{} = client, input, options \\ []) do
    url_path = "/20200301/gateways"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Creates a portal, which can contain projects and dashboards. IoT SiteWise
  Monitor uses IAM Identity Center or IAM to authenticate portal users and
  manage user permissions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20CreatePortal&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_portal(AWS.Client.t(), create_portal_request(), Keyword.t()) ::
          {:ok, create_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_portal_errors()}
  def create_portal(%Client{} = client, input, options \\ []) do
    url_path = "/portals"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Creates a project in the specified portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20CreateProject&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_project(AWS.Client.t(), create_project_request(), Keyword.t()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/projects"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Deletes an access policy that grants the specified identity access to the
  specified IoT SiteWise Monitor resource. You can use this operation to revoke
  access to an IoT SiteWise Monitor resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DeleteAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:access_policy_id` (`t:string`) The ID of the access policy to be deleted.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique case-sensitive identifier that you can
    provide to ensure the idempotency of the request. Don't reuse this client
    token if a new idempotent request is required.
  """
  @spec delete_access_policy(
          AWS.Client.t(),
          String.t(),
          delete_access_policy_request(),
          Keyword.t()
        ) ::
          {:ok, delete_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_policy_errors()}
  def delete_access_policy(%Client{} = client, access_policy_id, input, options \\ []) do
    url_path = "/access-policies/#{AWS.Util.encode_uri(access_policy_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Deletes an asset. This action can't be undone. For more information, see
  [Deleting assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *IoT SiteWise User Guide*. You can't delete an asset that's associated
  to another asset. For more information, see
  [DisassociateAssets](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DeleteAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the asset to delete. This can be either the
    actual ID in UUID format, or else externalId: followed by the external ID,
    if it has one. For more information, see Referencing objects with external
    IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique case-sensitive identifier that you can
    provide to ensure the idempotency of the request. Don't reuse this client
    token if a new idempotent request is required.
  """
  @spec delete_asset(AWS.Client.t(), String.t(), delete_asset_request(), Keyword.t()) ::
          {:ok, delete_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_errors()}
  def delete_asset(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes an asset model. This action can't be undone. You must delete all assets
  created from an asset model before you can delete the model. Also, you can't
  delete an asset model if a parent asset model exists that contains a property
  formula expression that depends on the asset model that you want to delete.
  For more information, see [Deleting assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DeleteAssetModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_id` (`t:string`) The ID of the asset model to delete. This can
    be either the actual ID in UUID format, or else externalId: followed by the
    external ID, if it has one. For more information, see Referencing objects
    with external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique case-sensitive identifier that you can
    provide to ensure the idempotency of the request. Don't reuse this client
    token if a new idempotent request is required.
  """
  @spec delete_asset_model(AWS.Client.t(), String.t(), delete_asset_model_request(), Keyword.t()) ::
          {:ok, delete_asset_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_model_errors()}
  def delete_asset_model(%Client{} = client, asset_model_id, input, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a composite model. This action can't be undone. You must delete all
  assets created from a composite model before you can delete the model. Also,
  you can't delete a composite model if a parent asset model exists that
  contains a property formula expression that depends on the asset model that
  you want to delete. For more information, see [Deleting assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DeleteAssetModelCompositeModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_composite_model_id` (`t:string`) The ID of a composite model on
    this asset model.
  * `:asset_model_id` (`t:string`) The ID of the asset model, in UUID format.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique case-sensitive identifier that you can
    provide to ensure the idempotency of the request. Don't reuse this client
    token if a new idempotent request is required.
  """
  @spec delete_asset_model_composite_model(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_asset_model_composite_model_request(),
          Keyword.t()
        ) ::
          {:ok, delete_asset_model_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_model_composite_model_errors()}
  def delete_asset_model_composite_model(
        %Client{} = client,
        asset_model_composite_model_id,
        asset_model_id,
        input,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models/#{AWS.Util.encode_uri(asset_model_composite_model_id)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a dashboard from IoT SiteWise Monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DeleteDashboard&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dashboard_id` (`t:string`) The ID of the dashboard to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique case-sensitive identifier that you can
    provide to ensure the idempotency of the request. Don't reuse this client
    token if a new idempotent request is required.
  """
  @spec delete_dashboard(AWS.Client.t(), String.t(), delete_dashboard_request(), Keyword.t()) ::
          {:ok, delete_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dashboard_errors()}
  def delete_dashboard(%Client{} = client, dashboard_id, input, options \\ []) do
    url_path = "/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Deletes a gateway from IoT SiteWise. When you delete a gateway, some of the
  gateway's files remain in your gateway's file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DeleteGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:gateway_id` (`t:string`) The ID of the gateway to delete.

  ## Optional parameters:
  """
  @spec delete_gateway(AWS.Client.t(), String.t(), delete_gateway_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_gateway_errors()}
  def delete_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Deletes a portal from IoT SiteWise Monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DeletePortal&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_id` (`t:string`) The ID of the portal to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique case-sensitive identifier that you can
    provide to ensure the idempotency of the request. Don't reuse this client
    token if a new idempotent request is required.
  """
  @spec delete_portal(AWS.Client.t(), String.t(), delete_portal_request(), Keyword.t()) ::
          {:ok, delete_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_portal_errors()}
  def delete_portal(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a project from IoT SiteWise Monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DeleteProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_id` (`t:string`) The ID of the project.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique case-sensitive identifier that you can
    provide to ensure the idempotency of the request. Don't reuse this client
    token if a new idempotent request is required.
  """
  @spec delete_project(AWS.Client.t(), String.t(), delete_project_request(), Keyword.t()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Deletes a time series (data stream). If you delete a time series that's
  associated with an asset property, the asset property still exists, but the
  time series will no longer be associated with this asset property. To identify
  a time series, do one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DeleteTimeSeries&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:alias` (`t:string`) The alias that identifies the time series.
  * `:asset_id` (`t:string`) The ID of the asset in which the asset property was
    created. This can be either the actual ID in UUID format, or else
    externalId: followed by the external ID, if it has one. For more
    information, see Referencing objects with external IDs in the IoT SiteWise
    User Guide.
  * `:property_id` (`t:string`) The ID of the asset property. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.
  """
  @spec delete_time_series(AWS.Client.t(), delete_time_series_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_time_series_errors()}
  def delete_time_series(%Client{} = client, input, options \\ []) do
    url_path = "/timeseries/delete"
    headers = []

    {query_params, input} =
      [
        {"alias", "alias"},
        {"assetId", "assetId"},
        {"propertyId", "propertyId"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:alias, :asset_id, :property_id])

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
  Describes an access policy, which specifies an identity's access to an IoT
  SiteWise Monitor portal or project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:access_policy_id` (`t:string`) The ID of the access policy.

  ## Optional parameters:
  """
  @spec describe_access_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_access_policy_errors()}
  def describe_access_policy(%Client{} = client, access_policy_id, options \\ []) do
    url_path = "/access-policies/#{AWS.Util.encode_uri(access_policy_id)}"

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
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:action_id` (`t:string`) The ID of the action.

  ## Optional parameters:
  """
  @spec describe_action(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_action_errors()}
  def describe_action(%Client{} = client, action_id, options \\ []) do
    url_path = "/actions/#{AWS.Util.encode_uri(action_id)}"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the asset. This can be either the actual ID
    in UUID format, or else externalId: followed by the external ID, if it has
    one. For more information, see Referencing objects with external IDs in the
    IoT SiteWise User Guide.

  ## Optional parameters:
  * `:exclude_properties` (`t:boolean`) Whether or not to exclude asset properties
    from the response.
  """
  @spec describe_asset(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_asset_errors()}
  def describe_asset(%Client{} = client, asset_id, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}"

    # Validate optional parameters
    optional_params = [exclude_properties: nil]

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
      if opt_val = Keyword.get(options, :exclude_properties) do
        [{"excludeProperties", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:exclude_properties])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset composite model (also known as an asset
  component). An `AssetCompositeModel` is an instance of an
  `AssetModelCompositeModel`. If you want to see information about the model
  this is based on, call
  [DescribeAssetModelCompositeModel](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModelCompositeModel.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeAssetCompositeModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_composite_model_id` (`t:string`) The ID of a composite model on this
    asset. This can be either the actual ID in UUID format, or else externalId:
    followed by the external ID, if it has one. For more information, see
    Referencing objects with external IDs in the IoT SiteWise User Guide.
  * `:asset_id` (`t:string`) The ID of the asset. This can be either the actual ID
    in UUID format, or else externalId: followed by the external ID, if it has
    one. For more information, see Referencing objects with external IDs in the
    IoT SiteWise User Guide.

  ## Optional parameters:
  """
  @spec describe_asset_composite_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_asset_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_asset_composite_model_errors()}
  def describe_asset_composite_model(
        %Client{} = client,
        asset_composite_model_id,
        asset_id,
        options \\ []
      ) do
    url_path =
      "/assets/#{AWS.Util.encode_uri(asset_id)}/composite-models/#{AWS.Util.encode_uri(asset_composite_model_id)}"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeAssetModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_id` (`t:string`) The ID of the asset model. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  * `:exclude_properties` (`t:boolean`) Whether or not to exclude asset model
    properties from the response.
  """
  @spec describe_asset_model(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_asset_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_asset_model_errors()}
  def describe_asset_model(%Client{} = client, asset_model_id, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}"

    # Validate optional parameters
    optional_params = [exclude_properties: nil]

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
      if opt_val = Keyword.get(options, :exclude_properties) do
        [{"excludeProperties", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:exclude_properties])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset model composite model (also known as an
  asset model component). For more information, see [Custom composite models
  (Components)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeAssetModelCompositeModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_composite_model_id` (`t:string`) The ID of a composite model on
    this asset model. This can be either the actual ID in UUID format, or else
    externalId: followed by the external ID, if it has one. For more
    information, see Referencing objects with external IDs in the IoT SiteWise
    User Guide.
  * `:asset_model_id` (`t:string`) The ID of the asset model. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  """
  @spec describe_asset_model_composite_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_asset_model_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_asset_model_composite_model_errors()}
  def describe_asset_model_composite_model(
        %Client{} = client,
        asset_model_composite_model_id,
        asset_model_id,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models/#{AWS.Util.encode_uri(asset_model_composite_model_id)}"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset property. When you call this operation for
  an attribute property, this response includes the default attribute value that
  you define in the asset model. If you update the default value in the model,
  this operation's response includes the new default value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeAssetProperty&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the asset. This can be either the actual ID
    in UUID format, or else externalId: followed by the external ID, if it has
    one. For more information, see Referencing objects with external IDs in the
    IoT SiteWise User Guide.
  * `:property_id` (`t:string`) The ID of the asset property. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  """
  @spec describe_asset_property(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_asset_property_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_asset_property_errors()}
  def describe_asset_property(%Client{} = client, asset_id, property_id, options \\ []) do
    url_path =
      "/assets/#{AWS.Util.encode_uri(asset_id)}/properties/#{AWS.Util.encode_uri(property_id)}"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a bulk import job request. For more information, see
  [Describe a bulk import job
  (CLI)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/DescribeBulkImportJob.html)
  in the *Amazon Simple Storage Service User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeBulkImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The ID of the job.

  ## Optional parameters:
  """
  @spec describe_bulk_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_bulk_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_bulk_import_job_errors()}
  def describe_bulk_import_job(%Client{} = client, job_id, options \\ []) do
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
      metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a dashboard.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeDashboard&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dashboard_id` (`t:string`) The ID of the dashboard.

  ## Optional parameters:
  """
  @spec describe_dashboard(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dashboard_errors()}
  def describe_dashboard(%Client{} = client, dashboard_id, options \\ []) do
    url_path = "/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"

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
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the default encryption configuration for the Amazon
  Web Services account in the default or specified Region. For more information,
  see [Key
  management](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeDefaultEncryptionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_default_encryption_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_default_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_default_encryption_configuration_errors()}
  def describe_default_encryption_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration/account/encryption"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:gateway_id` (`t:string`) The ID of the gateway device.

  ## Optional parameters:
  """
  @spec describe_gateway(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_gateway_errors()}
  def describe_gateway(%Client{} = client, gateway_id, options \\ []) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a gateway capability configuration. Each gateway
  capability defines data sources for a gateway. A capability configuration can
  contain multiple data source configurations. If you define OPC-UA sources for
  a gateway in the IoT SiteWise console, all of your OPC-UA sources are stored
  in one capability configuration. To list all capability configurations for a
  gateway, use
  [DescribeGateway](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeGatewayCapabilityConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:capability_namespace` (`t:string`) The namespace of the capability
    configuration. For example, if you configure OPC-UA sources from the IoT
    SiteWise console, your OPC-UA capability configuration has the namespace
    iotsitewise:opcuacollector:version, where version is a number such as 1.
  * `:gateway_id` (`t:string`) The ID of the gateway that defines the capability
    configuration.

  ## Optional parameters:
  """
  @spec describe_gateway_capability_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, describe_gateway_capability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_gateway_capability_configuration_errors()}
  def describe_gateway_capability_configuration(
        %Client{} = client,
        capability_namespace,
        gateway_id,
        options \\ []
      ) do
    url_path =
      "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}/capability/#{AWS.Util.encode_uri(capability_namespace)}"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current IoT SiteWise logging options.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeLoggingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_logging_options(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_logging_options_errors()}
  def describe_logging_options(%Client{} = client, options \\ []) do
    url_path = "/logging"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribePortal&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_id` (`t:string`) The ID of the portal.

  ## Optional parameters:
  """
  @spec describe_portal(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_portal_errors()}
  def describe_portal(%Client{} = client, portal_id, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"

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
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_id` (`t:string`) The ID of the project.

  ## Optional parameters:
  """
  @spec describe_project(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_project_errors()}
  def describe_project(%Client{} = client, project_id, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"

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
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the storage configuration for IoT SiteWise.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeStorageConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_storage_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_storage_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_storage_configuration_errors()}
  def describe_storage_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration/account/storage"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a time series (data stream). To identify a time
  series, do one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DescribeTimeSeries&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:alias` (`t:string`) The alias that identifies the time series.
  * `:asset_id` (`t:string`) The ID of the asset in which the asset property was
    created. This can be either the actual ID in UUID format, or else
    externalId: followed by the external ID, if it has one. For more
    information, see Referencing objects with external IDs in the IoT SiteWise
    User Guide.
  * `:property_id` (`t:string`) The ID of the asset property. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.
  """
  @spec describe_time_series(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_time_series_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_time_series_errors()}
  def describe_time_series(%Client{} = client, options \\ []) do
    url_path = "/timeseries/describe"

    # Validate optional parameters
    optional_params = [alias: nil, asset_id: nil, property_id: nil]

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
      if opt_val = Keyword.get(options, :property_id) do
        [{"propertyId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :asset_id) do
        [{"assetId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :alias) do
        [{"alias", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:alias, :asset_id, :property_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates a child asset from the given parent asset through a hierarchy
  defined in the parent asset's model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DisassociateAssets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the parent asset from which to disassociate
    the child asset. This can be either the actual ID in UUID format, or else
    externalId: followed by the external ID, if it has one. For more
    information, see Referencing objects with external IDs in the IoT SiteWise
    User Guide.

  ## Optional parameters:
  """
  @spec disassociate_assets(
          AWS.Client.t(),
          String.t(),
          disassociate_assets_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_assets_errors()}
  def disassociate_assets(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/disassociate"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Disassociates a time series (data stream) from an asset property.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20DisassociateTimeSeriesFromAssetProperty&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:alias` (`t:string`) The alias that identifies the time series.
  * `:asset_id` (`t:string`) The ID of the asset in which the asset property was
    created. This can be either the actual ID in UUID format, or else
    externalId: followed by the external ID, if it has one. For more
    information, see Referencing objects with external IDs in the IoT SiteWise
    User Guide.
  * `:property_id` (`t:string`) The ID of the asset property. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  """
  @spec disassociate_time_series_from_asset_property(
          AWS.Client.t(),
          disassociate_time_series_from_asset_property_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_time_series_from_asset_property_errors()}
  def disassociate_time_series_from_asset_property(%Client{} = client, input, options \\ []) do
    url_path = "/timeseries/disassociate"
    headers = []

    {query_params, input} =
      [
        {"alias", "alias"},
        {"assetId", "assetId"},
        {"propertyId", "propertyId"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Executes an action on a target resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ExecuteAction&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec execute_action(AWS.Client.t(), execute_action_request(), Keyword.t()) ::
          {:ok, execute_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_action_errors()}
  def execute_action(%Client{} = client, input, options \\ []) do
    url_path = "/actions"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Run SQL queries to retrieve metadata and time-series data from asset models,
  assets, measurements, metrics, transforms, and aggregates.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ExecuteQuery&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec execute_query(AWS.Client.t(), execute_query_request(), Keyword.t()) ::
          {:ok, execute_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_query_errors()}
  def execute_query(%Client{} = client, input, options \\ []) do
    url_path = "/queries/execution"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

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
  Gets aggregated values for an asset property. For more information, see
  [Querying
  aggregates](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
  in the *IoT SiteWise User Guide*. To identify an asset property, you must
  specify one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20GetAssetPropertyAggregates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:aggregate_types` (`t:list[com.amazonaws.iotsitewise#AggregateType]`) The
    data aggregating function.
  * `:end_date` (`t:timestamp`) The inclusive end of the range from which to query
    historical data, expressed in seconds in Unix epoch time.
  * `:resolution` (`t:string`) The time interval over which to aggregate data.
  * `:start_date` (`t:timestamp`) The exclusive start of the range from which to
    query historical data, expressed in seconds in Unix epoch time.

  ## Optional parameters:
  * `:asset_id` (`t:string`) The ID of the asset, in UUID format.
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request. A result set is returned in the two cases, whichever
    occurs first.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  * `:property_alias` (`t:string`) The alias that identifies the property, such as
    an OPC-UA server data stream path (for example,
    /company/windfarm/3/turbine/7/temperature). For more information, see
    Mapping industrial data streams to asset properties in the IoT SiteWise User
    Guide.
  * `:property_id` (`t:string`) The ID of the asset property, in UUID format.
  * `:qualities` (`t:list[com.amazonaws.iotsitewise#Quality]`) The quality by
    which to filter asset data.
  * `:time_ordering` (`t:enum["ASCENDING|DESCENDING"]`) The chronological sorting
    order of the requested information.
  """
  @spec get_asset_property_aggregates(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_asset_property_aggregates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_property_aggregates_errors()}
  def get_asset_property_aggregates(
        %Client{} = client,
        aggregate_types,
        end_date,
        resolution,
        start_date,
        options \\ []
      ) do
    url_path = "/properties/aggregates"

    # Validate optional parameters
    optional_params = [
      asset_id: nil,
      max_results: nil,
      next_token: nil,
      property_alias: nil,
      property_id: nil,
      qualities: nil,
      time_ordering: nil
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
      {"aggregateTypes", aggregate_types},
      {"endDate", end_date},
      {"resolution", resolution},
      {"startDate", start_date}
    ]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :time_ordering) do
        [{"timeOrdering", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :qualities) do
        [{"qualities", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :property_id) do
        [{"propertyId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :property_alias) do
        [{"propertyAlias", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :asset_id) do
        [{"assetId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :asset_id,
        :max_results,
        :next_token,
        :property_alias,
        :property_id,
        :qualities,
        :time_ordering
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an asset property's current value. For more information, see [Querying
  current
  values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
  in the *IoT SiteWise User Guide*. To identify an asset property, you must
  specify one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20GetAssetPropertyValue&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:asset_id` (`t:string`) The ID of the asset, in UUID format.
  * `:property_alias` (`t:string`) The alias that identifies the property, such as
    an OPC-UA server data stream path (for example,
    /company/windfarm/3/turbine/7/temperature). For more information, see
    Mapping industrial data streams to asset properties in the IoT SiteWise User
    Guide.
  * `:property_id` (`t:string`) The ID of the asset property, in UUID format.
  """
  @spec get_asset_property_value(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_asset_property_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_property_value_errors()}
  def get_asset_property_value(%Client{} = client, options \\ []) do
    url_path = "/properties/latest"

    # Validate optional parameters
    optional_params = [asset_id: nil, property_alias: nil, property_id: nil]

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
      if opt_val = Keyword.get(options, :property_id) do
        [{"propertyId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :property_alias) do
        [{"propertyAlias", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :asset_id) do
        [{"assetId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:asset_id, :property_alias, :property_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the history of an asset property's values. For more information, see
  [Querying historical
  values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
  in the *IoT SiteWise User Guide*. To identify an asset property, you must
  specify one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20GetAssetPropertyValueHistory&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:asset_id` (`t:string`) The ID of the asset, in UUID format.
  * `:end_date` (`t:timestamp`) The inclusive end of the range from which to query
    historical data, expressed in seconds in Unix epoch time.
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request. A result set is returned in the two cases, whichever
    occurs first.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  * `:property_alias` (`t:string`) The alias that identifies the property, such as
    an OPC-UA server data stream path (for example,
    /company/windfarm/3/turbine/7/temperature). For more information, see
    Mapping industrial data streams to asset properties in the IoT SiteWise User
    Guide.
  * `:property_id` (`t:string`) The ID of the asset property, in UUID format.
  * `:qualities` (`t:list[com.amazonaws.iotsitewise#Quality]`) The quality by
    which to filter asset data.
  * `:start_date` (`t:timestamp`) The exclusive start of the range from which to
    query historical data, expressed in seconds in Unix epoch time.
  * `:time_ordering` (`t:enum["ASCENDING|DESCENDING"]`) The chronological sorting
    order of the requested information.
  """
  @spec get_asset_property_value_history(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_asset_property_value_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_property_value_history_errors()}
  def get_asset_property_value_history(%Client{} = client, options \\ []) do
    url_path = "/properties/history"

    # Validate optional parameters
    optional_params = [
      asset_id: nil,
      end_date: nil,
      max_results: nil,
      next_token: nil,
      property_alias: nil,
      property_id: nil,
      qualities: nil,
      start_date: nil,
      time_ordering: nil
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
      if opt_val = Keyword.get(options, :time_ordering) do
        [{"timeOrdering", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :start_date) do
        [{"startDate", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :qualities) do
        [{"qualities", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :property_id) do
        [{"propertyId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :property_alias) do
        [{"propertyAlias", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :end_date) do
        [{"endDate", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :asset_id) do
        [{"assetId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :asset_id,
        :end_date,
        :max_results,
        :next_token,
        :property_alias,
        :property_id,
        :qualities,
        :start_date,
        :time_ordering
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get interpolated values for an asset property for a specified time interval,
  during a period of time. If your time series is missing data points during the
  specified time interval, you can use interpolation to estimate the missing
  data. For example, you can use this operation to return the interpolated
  temperature values for a wind turbine every 24 hours over a duration of 7
  days.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20GetInterpolatedAssetPropertyValues&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:end_time_in_seconds` (`t:long`) The inclusive end of the range from which to
    interpolate data, expressed in seconds in Unix epoch time.
  * `:interval_in_seconds` (`t:long`) The time interval in seconds over which to
    interpolate data. Each interval starts when the previous one ends.
  * `:quality` (`t:enum["BAD|GOOD|UNCERTAIN"]`) The quality of the asset property
    value. You can use this parameter as a filter to choose only the asset
    property values that have a specific quality.
  * `:start_time_in_seconds` (`t:long`) The exclusive start of the range from
    which to interpolate data, expressed in seconds in Unix epoch time.
  * `:type` (`t:string`) The interpolation type.

  ## Optional parameters:
  * `:asset_id` (`t:string`) The ID of the asset, in UUID format.
  * `:end_time_offset_in_nanos` (`t:integer`) The nanosecond offset converted from
    endTimeInSeconds.
  * `:interval_window_in_seconds` (`t:long`) The query interval for the window, in
    seconds. IoT SiteWise computes each interpolated value by using data points
    from the timestamp of each interval, minus the window to the timestamp of
    each interval plus the window. If not specified, the window ranges between
    the start time minus the interval and the end time plus the interval.
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request. If not specified, the default value is 10.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  * `:property_alias` (`t:string`) The alias that identifies the property, such as
    an OPC-UA server data stream path (for example,
    /company/windfarm/3/turbine/7/temperature). For more information, see
    Mapping industrial data streams to asset properties in the IoT SiteWise User
    Guide.
  * `:property_id` (`t:string`) The ID of the asset property, in UUID format.
  * `:start_time_offset_in_nanos` (`t:integer`) The nanosecond offset converted
    from startTimeInSeconds.
  """
  @spec get_interpolated_asset_property_values(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_interpolated_asset_property_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_interpolated_asset_property_values_errors()}
  def get_interpolated_asset_property_values(
        %Client{} = client,
        end_time_in_seconds,
        interval_in_seconds,
        quality,
        start_time_in_seconds,
        type,
        options \\ []
      ) do
    url_path = "/properties/interpolated"

    # Validate optional parameters
    optional_params = [
      asset_id: nil,
      end_time_offset_in_nanos: nil,
      interval_window_in_seconds: nil,
      max_results: nil,
      next_token: nil,
      property_alias: nil,
      property_id: nil,
      start_time_offset_in_nanos: nil
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
      {"endTimeInSeconds", end_time_in_seconds},
      {"intervalInSeconds", interval_in_seconds},
      {"quality", quality},
      {"startTimeInSeconds", start_time_in_seconds},
      {"type", type}
    ]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :start_time_offset_in_nanos) do
        [{"startTimeOffsetInNanos", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :property_id) do
        [{"propertyId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :property_alias) do
        [{"propertyAlias", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :interval_window_in_seconds) do
        [{"intervalWindowInSeconds", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :end_time_offset_in_nanos) do
        [{"endTimeOffsetInNanos", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :asset_id) do
        [{"assetId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :asset_id,
        :end_time_offset_in_nanos,
        :interval_window_in_seconds,
        :max_results,
        :next_token,
        :property_alias,
        :property_id,
        :start_time_offset_in_nanos
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of access policies for an identity (an IAM Identity
  Center user, an IAM Identity Center group, or an IAM user) or an IoT SiteWise
  Monitor resource (a portal or project).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListAccessPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:iam_arn` (`t:string`) The ARN of the IAM user. For more information, see IAM
    ARNs in the IAM User Guide. This parameter is required if you specify IAM
    for identityType.
  * `:identity_id` (`t:string`) The ID of the identity. This parameter is required
    if you specify USER or GROUP for identityType.
  * `:identity_type` (`t:enum["GROUP|IAM|USER"]`) The type of identity (IAM
    Identity Center user, IAM Identity Center group, or IAM user). This
    parameter is required if you specify identityId.
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  * `:resource_id` (`t:string`) The ID of the resource. This parameter is required
    if you specify resourceType.
  * `:resource_type` (`t:enum["PORTAL|PROJECT"]`) The type of resource (portal or
    project). This parameter is required if you specify resourceId.
  """
  @spec list_access_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_access_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_policies_errors()}
  def list_access_policies(%Client{} = client, options \\ []) do
    url_path = "/access-policies"

    # Validate optional parameters
    optional_params = [
      iam_arn: nil,
      identity_id: nil,
      identity_type: nil,
      max_results: nil,
      next_token: nil,
      resource_id: nil,
      resource_type: nil
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
      if opt_val = Keyword.get(options, :resource_type) do
        [{"resourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :resource_id) do
        [{"resourceId", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :identity_type) do
        [{"identityType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :identity_id) do
        [{"identityId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :iam_arn) do
        [{"iamArn", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :iam_arn,
        :identity_id,
        :identity_type,
        :max_results,
        :next_token,
        :resource_id,
        :resource_type
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of actions for a specific target resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListActions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:target_resource_id` (`t:string`) The ID of the target resource.
  * `:target_resource_type` (`t:enum["ASSET"]`) The type of resource.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_actions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_actions_errors()}
  def list_actions(%Client{} = client, target_resource_id, target_resource_type, options \\ []) do
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
    query_params = [
      {"targetResourceId", target_resource_id},
      {"targetResourceType", target_resource_type}
    ]

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of composite models associated with the asset model

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListAssetModelCompositeModels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_id` (`t:string`) The ID of the asset model. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_asset_model_composite_models(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_asset_model_composite_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_model_composite_models_errors()}
  def list_asset_model_composite_models(%Client{} = client, asset_model_id, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of properties associated with an asset model. If you
  update properties associated with the model before you finish listing all the
  properties, you need to start all over again.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListAssetModelProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_id` (`t:string`) The ID of the asset model. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  * `:filter` (`t:enum["ALL|BASE"]`) Filters the requested list of asset model
    properties. You can choose one of the following options:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request. If not specified, the default value is 50.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_asset_model_properties(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_asset_model_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_model_properties_errors()}
  def list_asset_model_properties(%Client{} = client, asset_model_id, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/properties"

    # Validate optional parameters
    optional_params = [filter: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :filter) do
        [{"filter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:filter, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of summaries of all asset models.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListAssetModels&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:asset_model_types` (`t:list[com.amazonaws.iotsitewise#AssetModelType]`) The
    type of asset model.
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_asset_models(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_asset_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_models_errors()}
  def list_asset_models(%Client{} = client, options \\ []) do
    url_path = "/asset-models"

    # Validate optional parameters
    optional_params = [asset_model_types: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :asset_model_types) do
        [{"assetModelTypes", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:asset_model_types, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of properties associated with an asset. If you update
  properties associated with the model before you finish listing all the
  properties, you need to start all over again.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListAssetProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the asset. This can be either the actual ID
    in UUID format, or else externalId: followed by the external ID, if it has
    one. For more information, see Referencing objects with external IDs in the
    IoT SiteWise User Guide.

  ## Optional parameters:
  * `:filter` (`t:enum["ALL|BASE"]`) Filters the requested list of asset
    properties. You can choose one of the following options:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request. If not specified, the default value is 50.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_asset_properties(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_asset_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_properties_errors()}
  def list_asset_properties(%Client{} = client, asset_id, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/properties"

    # Validate optional parameters
    optional_params = [filter: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :filter) do
        [{"filter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:filter, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of asset relationships for an asset. You can use this
  operation to identify an asset's root asset and all associated assets between
  that asset and its root.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListAssetRelationships&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the asset. This can be either the actual ID
    in UUID format, or else externalId: followed by the external ID, if it has
    one. For more information, see Referencing objects with external IDs in the
    IoT SiteWise User Guide.
  * `:traversal_type` (`t:enum["PATH_TO_ROOT"]`) The type of traversal to use to
    identify asset relationships. Choose the following option:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_asset_relationships(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_asset_relationships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_relationships_errors()}
  def list_asset_relationships(%Client{} = client, asset_id, traversal_type, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/assetRelationships"

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
    query_params = [{"traversalType", traversal_type}]

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of asset summaries. You can use this operation to do
  the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListAssets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:asset_model_id` (`t:string`) The ID of the asset model by which to filter
    the list of assets. This parameter is required if you choose ALL for filter.
    This can be either the actual ID in UUID format, or else externalId:
    followed by the external ID, if it has one. For more information, see
    Referencing objects with external IDs in the IoT SiteWise User Guide.
  * `:filter` (`t:enum["ALL|TOP_LEVEL"]`) The filter for the requested list of
    assets. Choose one of the following options:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_assets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assets_errors()}
  def list_assets(%Client{} = client, options \\ []) do
    url_path = "/assets"

    # Validate optional parameters
    optional_params = [asset_model_id: nil, filter: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :filter) do
        [{"filter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :asset_model_id) do
        [{"assetModelId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:asset_model_id, :filter, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of associated assets. You can use this operation to
  do the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListAssociatedAssets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the asset to query. This can be either the
    actual ID in UUID format, or else externalId: followed by the external ID,
    if it has one. For more information, see Referencing objects with external
    IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  * `:hierarchy_id` (`t:string`) The ID of the hierarchy by which child assets are
    associated to the asset. (This can be either the actual ID in UUID format,
    or else externalId: followed by the external ID, if it has one. For more
    information, see Referencing objects with external IDs in the IoT SiteWise
    User Guide.) To find a hierarchy ID, use the DescribeAsset or
    DescribeAssetModel operations. This parameter is required if you choose
    CHILD for traversalDirection.
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  * `:traversal_direction` (`t:enum["CHILD|PARENT"]`) The direction to list
    associated assets. Choose one of the following options:
  """
  @spec list_associated_assets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_associated_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_associated_assets_errors()}
  def list_associated_assets(%Client{} = client, asset_id, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/hierarchies"

    # Validate optional parameters
    optional_params = [
      hierarchy_id: nil,
      max_results: nil,
      next_token: nil,
      traversal_direction: nil
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
      if opt_val = Keyword.get(options, :traversal_direction) do
        [{"traversalDirection", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :hierarchy_id) do
        [{"hierarchyId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:hierarchy_id, :max_results, :next_token, :traversal_direction])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of bulk import job requests. For more information,
  see [List bulk import jobs
  (CLI)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ListBulkImportJobs.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListBulkImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:filter`
    (`t:enum["ALL|CANCELLED|COMPLETED|COMPLETED_WITH_FAILURES|FAILED|PENDING|RUNNING"]`)
    You can use a filter to select the bulk import jobs that you want to
    retrieve.
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_bulk_import_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_bulk_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bulk_import_jobs_errors()}
  def list_bulk_import_jobs(%Client{} = client, options \\ []) do
    url_path = "/jobs"

    # Validate optional parameters
    optional_params = [filter: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :filter) do
        [{"filter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "data.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:filter, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of composition relationships for an asset model of
  type `COMPONENT_MODEL`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListCompositionRelationships&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_id` (`t:string`) The ID of the asset model. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_composition_relationships(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_composition_relationships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_composition_relationships_errors()}
  def list_composition_relationships(%Client{} = client, asset_model_id, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composition-relationships"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of dashboards for an IoT SiteWise Monitor project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListDashboards&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_id` (`t:string`) The ID of the project.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_dashboards(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_dashboards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dashboards_errors()}
  def list_dashboards(%Client{} = client, project_id, options \\ []) do
    url_path = "/dashboards"

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
    query_params = [{"projectId", project_id}]

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
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListGateways&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_gateways(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_gateways_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_gateways_errors()}
  def list_gateways(%Client{} = client, options \\ []) do
    url_path = "/20200301/gateways"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of IoT SiteWise Monitor portals.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListPortals&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_portals(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_portals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_portals_errors()}
  def list_portals(%Client{} = client, options \\ []) do
    url_path = "/portals"

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
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of assets associated with an IoT SiteWise Monitor
  project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListProjectAssets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_id` (`t:string`) The ID of the project.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_project_assets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_project_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_project_assets_errors()}
  def list_project_assets(%Client{} = client, project_id, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}/assets"

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
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of projects for an IoT SiteWise Monitor portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListProjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_id` (`t:string`) The ID of the portal.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  """
  @spec list_projects(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, portal_id, options \\ []) do
    url_path = "/projects"

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
    query_params = [{"portalId", portal_id}]

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
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of tags for an IoT SiteWise resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"

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
    query_params = [{"resourceArn", resource_arn}]

    # Optional query params

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of time series (data streams).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20ListTimeSeries&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:alias_prefix` (`t:string`) The alias prefix of the time series.
  * `:asset_id` (`t:string`) The ID of the asset in which the asset property was
    created. This can be either the actual ID in UUID format, or else
    externalId: followed by the external ID, if it has one. For more
    information, see Referencing objects with external IDs in the IoT SiteWise
    User Guide.
  * `:max_results` (`t:integer`) The maximum number of results to return for each
    paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
    results.
  * `:time_series_type` (`t:enum["ASSOCIATED|DISASSOCIATED"]`) The type of the
    time series. The time series type can be one of the following values:
  """
  @spec list_time_series(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_time_series_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_time_series_errors()}
  def list_time_series(%Client{} = client, options \\ []) do
    url_path = "/timeseries"

    # Validate optional parameters
    optional_params = [
      alias_prefix: nil,
      asset_id: nil,
      max_results: nil,
      next_token: nil,
      time_series_type: nil
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
      if opt_val = Keyword.get(options, :time_series_type) do
        [{"timeSeriesType", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :asset_id) do
        [{"assetId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :alias_prefix) do
        [{"aliasPrefix", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:alias_prefix, :asset_id, :max_results, :next_token, :time_series_type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the default encryption configuration for the Amazon Web Services account.
  For more information, see [Key
  management](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20PutDefaultEncryptionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_default_encryption_configuration(
          AWS.Client.t(),
          put_default_encryption_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, put_default_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_default_encryption_configuration_errors()}
  def put_default_encryption_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/account/encryption"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Sets logging options for IoT SiteWise.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20PutLoggingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_logging_options(AWS.Client.t(), put_logging_options_request(), Keyword.t()) ::
          {:ok, put_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_logging_options_errors()}
  def put_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Configures storage settings for IoT SiteWise.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20PutStorageConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_storage_configuration(
          AWS.Client.t(),
          put_storage_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, put_storage_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_storage_configuration_errors()}
  def put_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/account/storage"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Adds tags to an IoT SiteWise resource. If a tag already exists for the resource,
  this operation updates the tag's value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource to tag.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Removes a tag from an IoT SiteWise resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource to untag.
  * `:tag_keys` (`t:list[com.amazonaws.iotsitewise#TagKey]`) A list of keys for
    tags to remove from the resource.

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"},
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Updates an existing access policy that specifies an identity's access to an IoT
  SiteWise Monitor portal or project resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdateAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:access_policy_id` (`t:string`) The ID of the access policy.

  ## Optional parameters:
  """
  @spec update_access_policy(
          AWS.Client.t(),
          String.t(),
          update_access_policy_request(),
          Keyword.t()
        ) ::
          {:ok, update_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_access_policy_errors()}
  def update_access_policy(%Client{} = client, access_policy_id, input, options \\ []) do
    url_path = "/access-policies/#{AWS.Util.encode_uri(access_policy_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an asset's name. For more information, see [Updating assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdateAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the asset to update. This can be either the
    actual ID in UUID format, or else externalId: followed by the external ID,
    if it has one. For more information, see Referencing objects with external
    IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  """
  @spec update_asset(AWS.Client.t(), String.t(), update_asset_request(), Keyword.t()) ::
          {:ok, update_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_asset_errors()}
  def update_asset(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an asset model and all of the assets that were created from the model.
  Each asset created from the model inherits the updated asset model's property
  and hierarchy definitions. For more information, see [Updating assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the *IoT SiteWise User Guide*. This operation overwrites the existing model
  with the provided model. To avoid deleting your asset model's properties or
  hierarchies, you must include their IDs and definitions in the updated asset
  model payload. For more information, see
  [DescribeAssetModel](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html).
  If you remove a property from an asset model, IoT SiteWise deletes all
  previous data for that property. If you remove a hierarchy definition from an
  asset model, IoT SiteWise disassociates every asset associated with that
  hierarchy. You can't change the type or data type of an existing property.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdateAssetModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_id` (`t:string`) The ID of the asset model to update. This can
    be either the actual ID in UUID format, or else externalId: followed by the
    external ID, if it has one. For more information, see Referencing objects
    with external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  """
  @spec update_asset_model(AWS.Client.t(), String.t(), update_asset_model_request(), Keyword.t()) ::
          {:ok, update_asset_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_asset_model_errors()}
  def update_asset_model(%Client{} = client, asset_model_id, input, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates a composite model and all of the assets that were created from the
  model. Each asset created from the model inherits the updated asset model's
  property and hierarchy definitions. For more information, see [Updating assets
  and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the *IoT SiteWise User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdateAssetModelCompositeModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_model_composite_model_id` (`t:string`) The ID of a composite model on
    this asset model.
  * `:asset_model_id` (`t:string`) The ID of the asset model, in UUID format.

  ## Optional parameters:
  """
  @spec update_asset_model_composite_model(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_asset_model_composite_model_request(),
          Keyword.t()
        ) ::
          {:ok, update_asset_model_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_asset_model_composite_model_errors()}
  def update_asset_model_composite_model(
        %Client{} = client,
        asset_model_composite_model_id,
        asset_model_id,
        input,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models/#{AWS.Util.encode_uri(asset_model_composite_model_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an asset property's alias and notification state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdateAssetProperty&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The ID of the asset to be updated. This can be either
    the actual ID in UUID format, or else externalId: followed by the external
    ID, if it has one. For more information, see Referencing objects with
    external IDs in the IoT SiteWise User Guide.
  * `:property_id` (`t:string`) The ID of the asset property to be updated. This
    can be either the actual ID in UUID format, or else externalId: followed by
    the external ID, if it has one. For more information, see Referencing
    objects with external IDs in the IoT SiteWise User Guide.

  ## Optional parameters:
  """
  @spec update_asset_property(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_asset_property_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_asset_property_errors()}
  def update_asset_property(%Client{} = client, asset_id, property_id, input, options \\ []) do
    url_path =
      "/assets/#{AWS.Util.encode_uri(asset_id)}/properties/#{AWS.Util.encode_uri(property_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an IoT SiteWise Monitor dashboard.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdateDashboard&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dashboard_id` (`t:string`) The ID of the dashboard to update.

  ## Optional parameters:
  """
  @spec update_dashboard(AWS.Client.t(), String.t(), update_dashboard_request(), Keyword.t()) ::
          {:ok, update_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dashboard_errors()}
  def update_dashboard(%Client{} = client, dashboard_id, input, options \\ []) do
    url_path = "/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a gateway's name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdateGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:gateway_id` (`t:string`) The ID of the gateway to update.

  ## Optional parameters:
  """
  @spec update_gateway(AWS.Client.t(), String.t(), update_gateway_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_gateway_errors()}
  def update_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a gateway capability configuration or defines a new capability
  configuration. Each gateway capability defines data sources for a gateway. A
  capability configuration can contain multiple data source configurations. If
  you define OPC-UA sources for a gateway in the IoT SiteWise console, all of
  your OPC-UA sources are stored in one capability configuration. To list all
  capability configurations for a gateway, use
  [DescribeGateway](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdateGatewayCapabilityConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:gateway_id` (`t:string`) The ID of the gateway to be updated.

  ## Optional parameters:
  """
  @spec update_gateway_capability_configuration(
          AWS.Client.t(),
          String.t(),
          update_gateway_capability_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, update_gateway_capability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_gateway_capability_configuration_errors()}
  def update_gateway_capability_configuration(
        %Client{} = client,
        gateway_id,
        input,
        options \\ []
      ) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}/capability"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Updates an IoT SiteWise Monitor portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdatePortal&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_id` (`t:string`) The ID of the portal to update.

  ## Optional parameters:
  """
  @spec update_portal(AWS.Client.t(), String.t(), update_portal_request(), Keyword.t()) ::
          {:ok, update_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_portal_errors()}
  def update_portal(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an IoT SiteWise Monitor project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotsitewise%20UpdateProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_id` (`t:string`) The ID of the project to update.

  ## Optional parameters:
  """
  @spec update_project(AWS.Client.t(), String.t(), update_project_request(), Keyword.t()) ::
          {:ok, update_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
