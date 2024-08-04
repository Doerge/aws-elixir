# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Appflow do
  @moduledoc """
  Welcome to the Amazon AppFlow API reference. This guide is for developers who
  need detailed information about the Amazon AppFlow API operations, data types,
  and errors. Amazon AppFlow is a fully managed integration service that enables
  you to securely transfer data between software as a service (SaaS)
  applications like Salesforce, Marketo, Slack, and ServiceNow, and Amazon Web
  Services like Amazon S3 and Amazon Redshift.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      event_bridge_destination_properties() :: %{
        "errorHandlingConfig" => error_handling_config(),
        "object" => String.t()
      }
      
  """
  @type event_bridge_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_flow_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("metadataCatalogConfig") => metadata_catalog_config(),
        required("destinationFlowConfigList") => list(destination_flow_config()()),
        required("flowName") => String.t(),
        required("sourceFlowConfig") => source_flow_config(),
        required("tasks") => list(task()()),
        required("triggerConfig") => trigger_config()
      }
      
  """
  @type update_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      basic_auth_credentials() :: %{
        "password" => String.t(),
        "username" => String.t()
      }
      
  """
  @type basic_auth_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynatrace_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type dynatrace_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_profile() :: %{
        "connectionMode" => list(any()),
        "connectorLabel" => String.t(),
        "connectorProfileArn" => String.t(),
        "connectorProfileName" => String.t(),
        "connectorProfileProperties" => connector_profile_properties(),
        "connectorType" => list(any()),
        "createdAt" => non_neg_integer(),
        "credentialsArn" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "privateConnectionProvisioningState" => private_connection_provisioning_state()
      }
      
  """
  @type connector_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task() :: %{
        "connectorOperator" => connector_operator(),
        "destinationField" => String.t(),
        "sourceFields" => list(String.t()()),
        "taskProperties" => map(),
        "taskType" => list(any())
      }
      
  """
  @type task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_trigger_properties() :: %{
        "dataPullMode" => list(any()),
        "firstExecutionFrom" => non_neg_integer(),
        "flowErrorDeactivationThreshold" => integer(),
        "scheduleEndTime" => non_neg_integer(),
        "scheduleExpression" => String.t(),
        "scheduleOffset" => float(),
        "scheduleStartTime" => non_neg_integer(),
        "timezone" => String.t()
      }
      
  """
  @type scheduled_trigger_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      honeycode_connector_profile_properties() :: %{}
      
  """
  @type honeycode_connector_profile_properties() :: %{}

  @typedoc """

  ## Example:
      
      range() :: %{
        "maximum" => float(),
        "minimum" => float()
      }
      
  """
  @type range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_metadata() :: %{
        "supportedRegions" => list(String.t()())
      }
      
  """
  @type snowflake_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_a_p_o_data_source_properties() :: %{
        "objectPath" => String.t(),
        "paginationConfig" => s_a_p_o_data_pagination_config(),
        "parallelismConfig" => s_a_p_o_data_parallelism_config()
      }
      
  """
  @type s_a_p_o_data_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      honeycode_metadata() :: %{
        "oAuthScopes" => list(String.t()())
      }
      
  """
  @type honeycode_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_connector_profile_credentials() :: %{
        "password" => String.t(),
        "username" => String.t()
      }
      
  """
  @type snowflake_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_connector_profile_credentials() :: %{
        "password" => String.t(),
        "username" => String.t()
      }
      
  """
  @type redshift_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      marketo_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type marketo_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lookout_metrics_destination_properties() :: %{}
      
  """
  @type lookout_metrics_destination_properties() :: %{}

  @typedoc """

  ## Example:
      
      trendmicro_connector_profile_properties() :: %{}
      
  """
  @type trendmicro_connector_profile_properties() :: %{}

  @typedoc """

  ## Example:
      
      list_connectors_response() :: %{
        "connectors" => list(connector_detail()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pardot_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type pardot_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_connector_properties() :: %{
        "CustomConnector" => custom_connector_destination_properties(),
        "CustomerProfiles" => customer_profiles_destination_properties(),
        "EventBridge" => event_bridge_destination_properties(),
        "Honeycode" => honeycode_destination_properties(),
        "LookoutMetrics" => lookout_metrics_destination_properties(),
        "Marketo" => marketo_destination_properties(),
        "Redshift" => redshift_destination_properties(),
        "S3" => s3_destination_properties(),
        "SAPOData" => s_a_p_o_data_destination_properties(),
        "Salesforce" => salesforce_destination_properties(),
        "Snowflake" => snowflake_destination_properties(),
        "Upsolver" => upsolver_destination_properties(),
        "Zendesk" => zendesk_destination_properties()
      }
      
  """
  @type destination_connector_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slack_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type slack_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_connector_metadata_cache_response() :: %{}
      
  """
  @type reset_connector_metadata_cache_response() :: %{}

  @typedoc """

  ## Example:
      
      create_flow_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("kmsArn") => String.t(),
        optional("metadataCatalogConfig") => metadata_catalog_config(),
        optional("tags") => map(),
        required("destinationFlowConfigList") => list(destination_flow_config()()),
        required("flowName") => String.t(),
        required("sourceFlowConfig") => source_flow_config(),
        required("tasks") => list(task()()),
        required("triggerConfig") => trigger_config()
      }
      
  """
  @type create_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zendesk_destination_properties() :: %{
        "errorHandlingConfig" => error_handling_config(),
        "idFieldNames" => list(String.t()()),
        "object" => String.t(),
        "writeOperationType" => list(any())
      }
      
  """
  @type zendesk_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_connector_entities_response() :: %{
        "connectorEntityMap" => map(),
        "nextToken" => String.t()
      }
      
  """
  @type list_connector_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amplitude_metadata() :: %{}
      
  """
  @type amplitude_metadata() :: %{}

  @typedoc """

  ## Example:
      
      execution_details() :: %{
        "mostRecentExecutionMessage" => String.t(),
        "mostRecentExecutionStatus" => list(any()),
        "mostRecentExecutionTime" => non_neg_integer()
      }
      
  """
  @type execution_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      amplitude_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type amplitude_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_connector_entities_request() :: %{
        optional("apiVersion") => String.t(),
        optional("connectorProfileName") => String.t(),
        optional("connectorType") => list(any()),
        optional("entitiesPath") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_connector_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connector_response() :: %{
        "connectorConfiguration" => connector_configuration()
      }
      
  """
  @type describe_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      o_auth2_defaults() :: %{
        "authCodeUrls" => list(String.t()()),
        "oauth2CustomProperties" => list(o_auth2_custom_parameter()()),
        "oauth2GrantTypesSupported" => list(list(any())()),
        "oauthScopes" => list(String.t()()),
        "tokenUrls" => list(String.t()())
      }
      
  """
  @type o_auth2_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_destination_properties() :: %{
        "bucketPrefix" => String.t(),
        "errorHandlingConfig" => error_handling_config(),
        "intermediateBucketName" => String.t(),
        "object" => String.t()
      }
      
  """
  @type snowflake_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      google_analytics_connector_profile_properties() :: %{}
      
  """
  @type google_analytics_connector_profile_properties() :: %{}

  @typedoc """

  ## Example:
      
      s3_source_properties() :: %{
        "bucketName" => String.t(),
        "bucketPrefix" => String.t(),
        "s3InputFormatConfig" => s3_input_format_config()
      }
      
  """
  @type s3_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregation_config() :: %{
        "aggregationType" => list(any()),
        "targetFileSize" => float()
      }
      
  """
  @type aggregation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_profile_credentials() :: %{
        "Amplitude" => amplitude_connector_profile_credentials(),
        "CustomConnector" => custom_connector_profile_credentials(),
        "Datadog" => datadog_connector_profile_credentials(),
        "Dynatrace" => dynatrace_connector_profile_credentials(),
        "GoogleAnalytics" => google_analytics_connector_profile_credentials(),
        "Honeycode" => honeycode_connector_profile_credentials(),
        "InforNexus" => infor_nexus_connector_profile_credentials(),
        "Marketo" => marketo_connector_profile_credentials(),
        "Pardot" => pardot_connector_profile_credentials(),
        "Redshift" => redshift_connector_profile_credentials(),
        "SAPOData" => s_a_p_o_data_connector_profile_credentials(),
        "Salesforce" => salesforce_connector_profile_credentials(),
        "ServiceNow" => service_now_connector_profile_credentials(),
        "Singular" => singular_connector_profile_credentials(),
        "Slack" => slack_connector_profile_credentials(),
        "Snowflake" => snowflake_connector_profile_credentials(),
        "Trendmicro" => trendmicro_connector_profile_credentials(),
        "Veeva" => veeva_connector_profile_credentials(),
        "Zendesk" => zendesk_connector_profile_credentials()
      }
      
  """
  @type connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connector_entity_response() :: %{
        "connectorEntityFields" => list(connector_entity_field()())
      }
      
  """
  @type describe_connector_entity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connector_profiles_response() :: %{
        "connectorProfileDetails" => list(connector_profile()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_connector_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_input_format_config() :: %{
        "s3InputFileType" => list(any())
      }
      
  """
  @type s3_input_format_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_provisioning_config() :: %{
        "lambda" => lambda_connector_provisioning_config()
      }
      
  """
  @type connector_provisioning_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upsolver_s3_output_format_config() :: %{
        "aggregationConfig" => aggregation_config(),
        "fileType" => list(any()),
        "prefixConfig" => prefix_config()
      }
      
  """
  @type upsolver_s3_output_format_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_flow_config() :: %{
        "apiVersion" => String.t(),
        "connectorProfileName" => String.t(),
        "connectorType" => list(any()),
        "destinationConnectorProperties" => destination_connector_properties()
      }
      
  """
  @type destination_flow_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      google_analytics_metadata() :: %{
        "oAuthScopes" => list(String.t()())
      }
      
  """
  @type google_analytics_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_flow_request() :: %{
        optional("forceDelete") => boolean(),
        required("flowName") => String.t()
      }
      
  """
  @type delete_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_metadata() :: %{}
      
  """
  @type redshift_metadata() :: %{}

  @typedoc """

  ## Example:
      
      s3_destination_properties() :: %{
        "bucketName" => String.t(),
        "bucketPrefix" => String.t(),
        "s3OutputFormatConfig" => s3_output_format_config()
      }
      
  """
  @type s3_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infor_nexus_connector_profile_credentials() :: %{
        "accessKeyId" => String.t(),
        "datakey" => String.t(),
        "secretAccessKey" => String.t(),
        "userId" => String.t()
      }
      
  """
  @type infor_nexus_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_destination_properties() :: %{
        "bucketPrefix" => String.t(),
        "errorHandlingConfig" => error_handling_config(),
        "intermediateBucketName" => String.t(),
        "object" => String.t()
      }
      
  """
  @type redshift_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_a_p_o_data_pagination_config() :: %{
        "maxPageSize" => integer()
      }
      
  """
  @type s_a_p_o_data_pagination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_field_properties() :: %{
        "isCreatable" => boolean(),
        "isDefaultedOnCreate" => boolean(),
        "isNullable" => boolean(),
        "isUpdatable" => boolean(),
        "isUpsertable" => boolean(),
        "supportedWriteOperations" => list(list(any())())
      }
      
  """
  @type destination_field_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_definition() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "destinationConnectorLabel" => String.t(),
        "destinationConnectorType" => list(any()),
        "flowArn" => String.t(),
        "flowName" => String.t(),
        "flowStatus" => list(any()),
        "lastRunExecutionDetails" => execution_details(),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "sourceConnectorLabel" => String.t(),
        "sourceConnectorType" => list(any()),
        "tags" => map(),
        "triggerType" => list(any())
      }
      
  """
  @type flow_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slack_connector_profile_credentials() :: %{
        "accessToken" => String.t(),
        "clientId" => String.t(),
        "clientSecret" => String.t(),
        "oAuthRequest" => connector_o_auth_request()
      }
      
  """
  @type slack_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_metadata() :: %{}
      
  """
  @type s3_metadata() :: %{}

  @typedoc """

  ## Example:
      
      describe_connectors_response() :: %{
        "connectorConfigurations" => map(),
        "connectors" => list(connector_detail()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zendesk_connector_profile_properties() :: %{
        "instanceUrl" => String.t()
      }
      
  """
  @type zendesk_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      o_auth_credentials() :: %{
        "accessToken" => String.t(),
        "clientId" => String.t(),
        "clientSecret" => String.t(),
        "oAuthRequest" => connector_o_auth_request(),
        "refreshToken" => String.t()
      }
      
  """
  @type o_auth_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infor_nexus_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type infor_nexus_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_now_connector_profile_properties() :: %{
        "instanceUrl" => String.t()
      }
      
  """
  @type service_now_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connector_entity_request() :: %{
        optional("apiVersion") => String.t(),
        optional("connectorProfileName") => String.t(),
        optional("connectorType") => list(any()),
        required("connectorEntityName") => String.t()
      }
      
  """
  @type describe_connector_entity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      salesforce_destination_properties() :: %{
        "dataTransferApi" => list(any()),
        "errorHandlingConfig" => error_handling_config(),
        "idFieldNames" => list(String.t()()),
        "object" => String.t(),
        "writeOperationType" => list(any())
      }
      
  """
  @type salesforce_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_connectors_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_field_properties() :: %{
        "isQueryable" => boolean(),
        "isRetrievable" => boolean(),
        "isTimestampFieldForIncrementalQueries" => boolean()
      }
      
  """
  @type source_field_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connector_profile_request() :: %{
        optional("clientToken") => String.t(),
        required("connectionMode") => list(any()),
        required("connectorProfileConfig") => connector_profile_config(),
        required("connectorProfileName") => String.t()
      }
      
  """
  @type update_connector_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      salesforce_connector_profile_properties() :: %{
        "instanceUrl" => String.t(),
        "isSandboxEnvironment" => boolean(),
        "usePrivateLinkForMetadataAndAuthorization" => boolean()
      }
      
  """
  @type salesforce_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metadata_catalog_detail() :: %{
        "catalogType" => list(any()),
        "partitionRegistrationOutput" => registration_output(),
        "tableName" => String.t(),
        "tableRegistrationOutput" => registration_output()
      }
      
  """
  @type metadata_catalog_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      api_key_credentials() :: %{
        "apiKey" => String.t(),
        "apiSecretKey" => String.t()
      }
      
  """
  @type api_key_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_flow_response() :: %{
        "flowArn" => String.t(),
        "flowStatus" => list(any())
      }
      
  """
  @type create_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      honeycode_connector_profile_credentials() :: %{
        "accessToken" => String.t(),
        "oAuthRequest" => connector_o_auth_request(),
        "refreshToken" => String.t()
      }
      
  """
  @type honeycode_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_flow_response() :: %{}
      
  """
  @type delete_flow_response() :: %{}

  @typedoc """

  ## Example:
      
      error_info() :: %{
        "executionMessage" => String.t(),
        "putFailuresCount" => float()
      }
      
  """
  @type error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_entity_field() :: %{
        "customProperties" => map(),
        "defaultValue" => String.t(),
        "description" => String.t(),
        "destinationProperties" => destination_field_properties(),
        "identifier" => String.t(),
        "isDeprecated" => boolean(),
        "isPrimaryKey" => boolean(),
        "label" => String.t(),
        "parentIdentifier" => String.t(),
        "sourceProperties" => source_field_properties(),
        "supportedFieldTypeDetails" => supported_field_type_details()
      }
      
  """
  @type connector_entity_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_authentication_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type connector_authentication_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_a_p_o_data_connector_profile_properties() :: %{
        "applicationHostUrl" => String.t(),
        "applicationServicePath" => String.t(),
        "clientNumber" => String.t(),
        "disableSSO" => boolean(),
        "logonLanguage" => String.t(),
        "oAuthProperties" => o_auth_properties(),
        "portNumber" => integer(),
        "privateLinkServiceName" => String.t()
      }
      
  """
  @type s_a_p_o_data_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_connection_provisioning_state() :: %{
        "failureCause" => list(any()),
        "failureMessage" => String.t(),
        "status" => list(any())
      }
      
  """
  @type private_connection_provisioning_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      marketo_metadata() :: %{}
      
  """
  @type marketo_metadata() :: %{}

  @typedoc """

  ## Example:
      
      zendesk_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type zendesk_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trigger_properties() :: %{
        "Scheduled" => scheduled_trigger_properties()
      }
      
  """
  @type trigger_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_output_format_config() :: %{
        "aggregationConfig" => aggregation_config(),
        "fileType" => list(any()),
        "prefixConfig" => prefix_config(),
        "preserveSourceDataTyping" => boolean()
      }
      
  """
  @type s3_output_format_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      marketo_connector_profile_credentials() :: %{
        "accessToken" => String.t(),
        "clientId" => String.t(),
        "clientSecret" => String.t(),
        "oAuthRequest" => connector_o_auth_request()
      }
      
  """
  @type marketo_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      marketo_destination_properties() :: %{
        "errorHandlingConfig" => error_handling_config(),
        "object" => String.t()
      }
      
  """
  @type marketo_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trendmicro_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type trendmicro_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amplitude_connector_profile_properties() :: %{}
      
  """
  @type amplitude_connector_profile_properties() :: %{}

  @typedoc """

  ## Example:
      
      singular_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type singular_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_auth_config() :: %{
        "authParameters" => list(auth_parameter()()),
        "customAuthenticationType" => String.t()
      }
      
  """
  @type custom_auth_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connector_registration_request() :: %{
        optional("clientToken") => String.t(),
        optional("connectorProvisioningConfig") => connector_provisioning_config(),
        optional("description") => String.t(),
        required("connectorLabel") => String.t()
      }
      
  """
  @type update_connector_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_flow_executions_response() :: %{
        "invalidExecutions" => list(String.t()())
      }
      
  """
  @type cancel_flow_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      o_auth_properties() :: %{
        "authCodeUrl" => String.t(),
        "oAuthScopes" => list(String.t()()),
        "tokenUrl" => String.t()
      }
      
  """
  @type o_auth_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connectors_request() :: %{
        optional("connectorTypes") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      salesforce_connector_profile_credentials() :: %{
        "accessToken" => String.t(),
        "clientCredentialsArn" => String.t(),
        "jwtToken" => String.t(),
        "oAuth2GrantType" => list(any()),
        "oAuthRequest" => connector_o_auth_request(),
        "refreshToken" => String.t()
      }
      
  """
  @type salesforce_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flows_response() :: %{
        "flows" => list(flow_definition()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_flows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_a_p_o_data_metadata() :: %{}
      
  """
  @type s_a_p_o_data_metadata() :: %{}

  @typedoc """

  ## Example:
      
      zendesk_metadata() :: %{
        "oAuthScopes" => list(String.t()())
      }
      
  """
  @type zendesk_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prefix_config() :: %{
        "pathPrefixHierarchy" => list(list(any())()),
        "prefixFormat" => list(any()),
        "prefixType" => list(any())
      }
      
  """
  @type prefix_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_result() :: %{
        "bytesProcessed" => float(),
        "bytesWritten" => float(),
        "errorInfo" => error_info(),
        "maxPageSize" => float(),
        "numParallelProcesses" => float(),
        "recordsProcessed" => float()
      }
      
  """
  @type execution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unregister_connector_response() :: %{}
      
  """
  @type unregister_connector_response() :: %{}

  @typedoc """

  ## Example:
      
      pardot_connector_profile_credentials() :: %{
        "accessToken" => String.t(),
        "clientCredentialsArn" => String.t(),
        "oAuthRequest" => connector_o_auth_request(),
        "refreshToken" => String.t()
      }
      
  """
  @type pardot_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_auth_credentials() :: %{
        "credentialsMap" => map(),
        "customAuthenticationType" => String.t()
      }
      
  """
  @type custom_auth_credentials() :: %{String.t() => any()}

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
      
      start_flow_request() :: %{
        optional("clientToken") => String.t(),
        required("flowName") => String.t()
      }
      
  """
  @type start_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slack_connector_profile_properties() :: %{
        "instanceUrl" => String.t()
      }
      
  """
  @type slack_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datadog_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type datadog_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connector_profiles_request() :: %{
        optional("connectorLabel") => String.t(),
        optional("connectorProfileNames") => list(String.t()()),
        optional("connectorType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_connector_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_now_connector_profile_credentials() :: %{
        "oAuth2Credentials" => o_auth2_credentials(),
        "password" => String.t(),
        "username" => String.t()
      }
      
  """
  @type service_now_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      veeva_connector_profile_credentials() :: %{
        "password" => String.t(),
        "username" => String.t()
      }
      
  """
  @type veeva_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datadog_connector_profile_properties() :: %{
        "instanceUrl" => String.t()
      }
      
  """
  @type datadog_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_a_p_o_data_destination_properties() :: %{
        "errorHandlingConfig" => error_handling_config(),
        "idFieldNames" => list(String.t()()),
        "objectPath" => String.t(),
        "successResponseHandlingConfig" => success_response_handling_config(),
        "writeOperationType" => list(any())
      }
      
  """
  @type s_a_p_o_data_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      honeycode_destination_properties() :: %{
        "errorHandlingConfig" => error_handling_config(),
        "object" => String.t()
      }
      
  """
  @type honeycode_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unregister_connector_request() :: %{
        optional("forceDelete") => boolean(),
        required("connectorLabel") => String.t()
      }
      
  """
  @type unregister_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_output() :: %{
        "message" => String.t(),
        "result" => String.t(),
        "status" => list(any())
      }
      
  """
  @type registration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      singular_connector_profile_credentials() :: %{
        "apiKey" => String.t()
      }
      
  """
  @type singular_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glue_data_catalog_config() :: %{
        "databaseName" => String.t(),
        "roleArn" => String.t(),
        "tablePrefix" => String.t()
      }
      
  """
  @type glue_data_catalog_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amplitude_connector_profile_credentials() :: %{
        "apiKey" => String.t(),
        "secretKey" => String.t()
      }
      
  """
  @type amplitude_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trendmicro_connector_profile_credentials() :: %{
        "apiSecretKey" => String.t()
      }
      
  """
  @type trendmicro_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_profiles_metadata() :: %{}
      
  """
  @type customer_profiles_metadata() :: %{}

  @typedoc """

  ## Example:
      
      describe_flow_request() :: %{
        required("flowName") => String.t()
      }
      
  """
  @type describe_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_entity() :: %{
        "hasNestedEntities" => boolean(),
        "label" => String.t(),
        "name" => String.t()
      }
      
  """
  @type connector_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_flow_response() :: %{
        "executionId" => String.t(),
        "flowArn" => String.t(),
        "flowStatus" => list(any())
      }
      
  """
  @type start_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_flow_response() :: %{
        "flowArn" => String.t(),
        "flowStatus" => list(any())
      }
      
  """
  @type stop_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_transfer_api() :: %{
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type data_transfer_api() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metadata_catalog_config() :: %{
        "glueDataCatalog" => glue_data_catalog_config()
      }
      
  """
  @type metadata_catalog_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flow_execution_records_response() :: %{
        "flowExecutions" => list(execution_record()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_flow_execution_records_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trendmicro_metadata() :: %{}
      
  """
  @type trendmicro_metadata() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_connector_properties() :: %{
        "Amplitude" => amplitude_source_properties(),
        "CustomConnector" => custom_connector_source_properties(),
        "Datadog" => datadog_source_properties(),
        "Dynatrace" => dynatrace_source_properties(),
        "GoogleAnalytics" => google_analytics_source_properties(),
        "InforNexus" => infor_nexus_source_properties(),
        "Marketo" => marketo_source_properties(),
        "Pardot" => pardot_source_properties(),
        "S3" => s3_source_properties(),
        "SAPOData" => s_a_p_o_data_source_properties(),
        "Salesforce" => salesforce_source_properties(),
        "ServiceNow" => service_now_source_properties(),
        "Singular" => singular_source_properties(),
        "Slack" => slack_source_properties(),
        "Trendmicro" => trendmicro_source_properties(),
        "Veeva" => veeva_source_properties(),
        "Zendesk" => zendesk_source_properties()
      }
      
  """
  @type source_connector_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_metadata() :: %{
        "Amplitude" => amplitude_metadata(),
        "CustomerProfiles" => customer_profiles_metadata(),
        "Datadog" => datadog_metadata(),
        "Dynatrace" => dynatrace_metadata(),
        "EventBridge" => event_bridge_metadata(),
        "GoogleAnalytics" => google_analytics_metadata(),
        "Honeycode" => honeycode_metadata(),
        "InforNexus" => infor_nexus_metadata(),
        "Marketo" => marketo_metadata(),
        "Pardot" => pardot_metadata(),
        "Redshift" => redshift_metadata(),
        "S3" => s3_metadata(),
        "SAPOData" => s_a_p_o_data_metadata(),
        "Salesforce" => salesforce_metadata(),
        "ServiceNow" => service_now_metadata(),
        "Singular" => singular_metadata(),
        "Slack" => slack_metadata(),
        "Snowflake" => snowflake_metadata(),
        "Trendmicro" => trendmicro_metadata(),
        "Upsolver" => upsolver_metadata(),
        "Veeva" => veeva_metadata(),
        "Zendesk" => zendesk_metadata()
      }
      
  """
  @type connector_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infor_nexus_metadata() :: %{}
      
  """
  @type infor_nexus_metadata() :: %{}

  @typedoc """

  ## Example:
      
      create_connector_profile_request() :: %{
        optional("clientToken") => String.t(),
        optional("connectorLabel") => String.t(),
        optional("kmsArn") => String.t(),
        required("connectionMode") => list(any()),
        required("connectorProfileConfig") => connector_profile_config(),
        required("connectorProfileName") => String.t(),
        required("connectorType") => list(any())
      }
      
  """
  @type create_connector_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_detail() :: %{
        "applicationType" => String.t(),
        "connectorDescription" => String.t(),
        "connectorLabel" => String.t(),
        "connectorModes" => list(String.t()()),
        "connectorName" => String.t(),
        "connectorOwner" => String.t(),
        "connectorProvisioningType" => list(any()),
        "connectorType" => list(any()),
        "connectorVersion" => String.t(),
        "registeredAt" => non_neg_integer(),
        "registeredBy" => String.t(),
        "supportedDataTransferTypes" => list(list(any())())
      }
      
  """
  @type connector_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flow_execution_records_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("flowName") => String.t()
      }
      
  """
  @type describe_flow_execution_records_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flows_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_flows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connector_request() :: %{
        optional("connectorLabel") => String.t(),
        required("connectorType") => list(any())
      }
      
  """
  @type describe_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upsolver_metadata() :: %{}
      
  """
  @type upsolver_metadata() :: %{}

  @typedoc """

  ## Example:
      
      custom_connector_profile_credentials() :: %{
        "apiKey" => api_key_credentials(),
        "authenticationType" => list(any()),
        "basic" => basic_auth_credentials(),
        "custom" => custom_auth_credentials(),
        "oauth2" => o_auth2_credentials()
      }
      
  """
  @type custom_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type connector_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_connector_request() :: %{
        optional("clientToken") => String.t(),
        optional("connectorLabel") => String.t(),
        optional("connectorProvisioningConfig") => connector_provisioning_config(),
        optional("connectorProvisioningType") => list(any()),
        optional("description") => String.t()
      }
      
  """
  @type register_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_connector_destination_properties() :: %{
        "customProperties" => map(),
        "entityName" => String.t(),
        "errorHandlingConfig" => error_handling_config(),
        "idFieldNames" => list(String.t()()),
        "writeOperationType" => list(any())
      }
      
  """
  @type custom_connector_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auth_parameter() :: %{
        "connectorSuppliedValues" => list(String.t()()),
        "description" => String.t(),
        "isRequired" => boolean(),
        "isSensitiveField" => boolean(),
        "key" => String.t(),
        "label" => String.t()
      }
      
  """
  @type auth_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_flow_config() :: %{
        "apiVersion" => String.t(),
        "connectorProfileName" => String.t(),
        "connectorType" => list(any()),
        "incrementalPullConfig" => incremental_pull_config(),
        "sourceConnectorProperties" => source_connector_properties()
      }
      
  """
  @type source_flow_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connector_profile_response() :: %{
        "connectorProfileArn" => String.t()
      }
      
  """
  @type update_connector_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slack_metadata() :: %{
        "oAuthScopes" => list(String.t()())
      }
      
  """
  @type slack_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      singular_metadata() :: %{}
      
  """
  @type singular_metadata() :: %{}

  @typedoc """

  ## Example:
      
      register_connector_response() :: %{
        "connectorArn" => String.t()
      }
      
  """
  @type register_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      o_auth2_credentials() :: %{
        "accessToken" => String.t(),
        "clientId" => String.t(),
        "clientSecret" => String.t(),
        "oAuthRequest" => connector_o_auth_request(),
        "refreshToken" => String.t()
      }
      
  """
  @type o_auth2_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      salesforce_source_properties() :: %{
        "dataTransferApi" => list(any()),
        "enableDynamicFieldUpdate" => boolean(),
        "includeDeletedRecords" => boolean(),
        "object" => String.t()
      }
      
  """
  @type salesforce_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datadog_connector_profile_credentials() :: %{
        "apiKey" => String.t(),
        "applicationKey" => String.t()
      }
      
  """
  @type datadog_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_connector_metadata_cache_request() :: %{
        optional("apiVersion") => String.t(),
        optional("connectorEntityName") => String.t(),
        optional("connectorProfileName") => String.t(),
        optional("connectorType") => list(any()),
        optional("entitiesPath") => String.t()
      }
      
  """
  @type reset_connector_metadata_cache_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      veeva_source_properties() :: %{
        "documentType" => String.t(),
        "includeAllVersions" => boolean(),
        "includeRenditions" => boolean(),
        "includeSourceFiles" => boolean(),
        "object" => String.t()
      }
      
  """
  @type veeva_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pardot_metadata() :: %{}
      
  """
  @type pardot_metadata() :: %{}

  @typedoc """

  ## Example:
      
      delete_connector_profile_request() :: %{
        optional("forceDelete") => boolean(),
        required("connectorProfileName") => String.t()
      }
      
  """
  @type delete_connector_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_profile_config() :: %{
        "connectorProfileCredentials" => connector_profile_credentials(),
        "connectorProfileProperties" => connector_profile_properties()
      }
      
  """
  @type connector_profile_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_o_auth_request() :: %{
        "authCode" => String.t(),
        "redirectUri" => String.t()
      }
      
  """
  @type connector_o_auth_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zendesk_connector_profile_credentials() :: %{
        "accessToken" => String.t(),
        "clientId" => String.t(),
        "clientSecret" => String.t(),
        "oAuthRequest" => connector_o_auth_request()
      }
      
  """
  @type zendesk_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_record() :: %{
        "dataPullEndTime" => non_neg_integer(),
        "dataPullStartTime" => non_neg_integer(),
        "executionId" => String.t(),
        "executionResult" => execution_result(),
        "executionStatus" => list(any()),
        "lastUpdatedAt" => non_neg_integer(),
        "metadataCatalogDetails" => list(metadata_catalog_detail()()),
        "startedAt" => non_neg_integer()
      }
      
  """
  @type execution_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      google_analytics_connector_profile_credentials() :: %{
        "accessToken" => String.t(),
        "clientId" => String.t(),
        "clientSecret" => String.t(),
        "oAuthRequest" => connector_o_auth_request(),
        "refreshToken" => String.t()
      }
      
  """
  @type google_analytics_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      o_auth2_custom_parameter() :: %{
        "connectorSuppliedValues" => list(String.t()()),
        "description" => String.t(),
        "isRequired" => boolean(),
        "isSensitiveField" => boolean(),
        "key" => String.t(),
        "label" => String.t(),
        "type" => list(any())
      }
      
  """
  @type o_auth2_custom_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_connector_profile_response() :: %{
        "connectorProfileArn" => String.t()
      }
      
  """
  @type create_connector_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_connector_profile_properties() :: %{
        "oAuth2Properties" => o_auth2_properties(),
        "profileProperties" => map()
      }
      
  """
  @type custom_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      singular_connector_profile_properties() :: %{}
      
  """
  @type singular_connector_profile_properties() :: %{}

  @typedoc """

  ## Example:
      
      veeva_connector_profile_properties() :: %{
        "instanceUrl" => String.t()
      }
      
  """
  @type veeva_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      success_response_handling_config() :: %{
        "bucketName" => String.t(),
        "bucketPrefix" => String.t()
      }
      
  """
  @type success_response_handling_config() :: %{String.t() => any()}

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
      
      dynatrace_connector_profile_credentials() :: %{
        "apiToken" => String.t()
      }
      
  """
  @type dynatrace_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_handling_config() :: %{
        "bucketName" => String.t(),
        "bucketPrefix" => String.t(),
        "failOnFirstDestinationError" => boolean()
      }
      
  """
  @type error_handling_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connector_registration_response() :: %{
        "connectorArn" => String.t()
      }
      
  """
  @type update_connector_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      google_analytics_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type google_analytics_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upsolver_destination_properties() :: %{
        "bucketName" => String.t(),
        "bucketPrefix" => String.t(),
        "s3OutputFormatConfig" => upsolver_s3_output_format_config()
      }
      
  """
  @type upsolver_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_a_p_o_data_parallelism_config() :: %{
        "maxParallelism" => integer()
      }
      
  """
  @type s_a_p_o_data_parallelism_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supported_field_type_details() :: %{
        "v1" => field_type_details()
      }
      
  """
  @type supported_field_type_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pardot_connector_profile_properties() :: %{
        "businessUnitId" => String.t(),
        "instanceUrl" => String.t(),
        "isSandboxEnvironment" => boolean()
      }
      
  """
  @type pardot_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynatrace_connector_profile_properties() :: %{
        "instanceUrl" => String.t()
      }
      
  """
  @type dynatrace_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_a_p_o_data_connector_profile_credentials() :: %{
        "basicAuthCredentials" => basic_auth_credentials(),
        "oAuthCredentials" => o_auth_credentials()
      }
      
  """
  @type s_a_p_o_data_connector_profile_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_connector_source_properties() :: %{
        "customProperties" => map(),
        "dataTransferApi" => data_transfer_api(),
        "entityName" => String.t()
      }
      
  """
  @type custom_connector_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      o_auth2_properties() :: %{
        "oAuth2GrantType" => list(any()),
        "tokenUrl" => String.t(),
        "tokenUrlCustomProperties" => map()
      }
      
  """
  @type o_auth2_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      marketo_connector_profile_properties() :: %{
        "instanceUrl" => String.t()
      }
      
  """
  @type marketo_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_type_details() :: %{
        "fieldLengthRange" => range(),
        "fieldType" => String.t(),
        "fieldValueRange" => range(),
        "filterOperators" => list(list(any())()),
        "supportedDateFormat" => String.t(),
        "supportedValues" => list(String.t()()),
        "valueRegexPattern" => String.t()
      }
      
  """
  @type field_type_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynatrace_metadata() :: %{}
      
  """
  @type dynatrace_metadata() :: %{}

  @typedoc """

  ## Example:
      
      connector_operator() :: %{
        "Amplitude" => list(any()),
        "CustomConnector" => list(any()),
        "Datadog" => list(any()),
        "Dynatrace" => list(any()),
        "GoogleAnalytics" => list(any()),
        "InforNexus" => list(any()),
        "Marketo" => list(any()),
        "Pardot" => list(any()),
        "S3" => list(any()),
        "SAPOData" => list(any()),
        "Salesforce" => list(any()),
        "ServiceNow" => list(any()),
        "Singular" => list(any()),
        "Slack" => list(any()),
        "Trendmicro" => list(any()),
        "Veeva" => list(any()),
        "Zendesk" => list(any())
      }
      
  """
  @type connector_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_flow_response() :: %{
        "flowStatus" => list(any())
      }
      
  """
  @type update_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_connector_profile_properties() :: %{
        "accountName" => String.t(),
        "bucketName" => String.t(),
        "bucketPrefix" => String.t(),
        "privateLinkServiceName" => String.t(),
        "region" => String.t(),
        "stage" => String.t(),
        "warehouse" => String.t()
      }
      
  """
  @type snowflake_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infor_nexus_connector_profile_properties() :: %{
        "instanceUrl" => String.t()
      }
      
  """
  @type infor_nexus_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_flow_executions_request() :: %{
        optional("executionIds") => list(String.t()()),
        required("flowName") => String.t()
      }
      
  """
  @type cancel_flow_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flow_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "destinationFlowConfigList" => list(destination_flow_config()()),
        "flowArn" => String.t(),
        "flowName" => String.t(),
        "flowStatus" => list(any()),
        "flowStatusMessage" => String.t(),
        "kmsArn" => String.t(),
        "lastRunExecutionDetails" => execution_details(),
        "lastRunMetadataCatalogDetails" => list(metadata_catalog_detail()()),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "metadataCatalogConfig" => metadata_catalog_config(),
        "schemaVersion" => float(),
        "sourceFlowConfig" => source_flow_config(),
        "tags" => map(),
        "tasks" => list(task()()),
        "triggerConfig" => trigger_config()
      }
      
  """
  @type describe_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_connector_provisioning_config() :: %{
        "lambdaArn" => String.t()
      }
      
  """
  @type lambda_connector_provisioning_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_bridge_metadata() :: %{}
      
  """
  @type event_bridge_metadata() :: %{}

  @typedoc """

  ## Example:
      
      redshift_connector_profile_properties() :: %{
        "bucketName" => String.t(),
        "bucketPrefix" => String.t(),
        "clusterIdentifier" => String.t(),
        "dataApiRoleArn" => String.t(),
        "databaseName" => String.t(),
        "databaseUrl" => String.t(),
        "isRedshiftServerless" => boolean(),
        "roleArn" => String.t(),
        "workgroupName" => String.t()
      }
      
  """
  @type redshift_connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      veeva_metadata() :: %{}
      
  """
  @type veeva_metadata() :: %{}

  @typedoc """

  ## Example:
      
      service_now_metadata() :: %{}
      
  """
  @type service_now_metadata() :: %{}

  @typedoc """

  ## Example:
      
      delete_connector_profile_response() :: %{}
      
  """
  @type delete_connector_profile_response() :: %{}

  @typedoc """

  ## Example:
      
      customer_profiles_destination_properties() :: %{
        "domainName" => String.t(),
        "objectTypeName" => String.t()
      }
      
  """
  @type customer_profiles_destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      salesforce_metadata() :: %{
        "dataTransferApis" => list(list(any())()),
        "oAuthScopes" => list(String.t()()),
        "oauth2GrantTypesSupported" => list(list(any())())
      }
      
  """
  @type salesforce_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_now_source_properties() :: %{
        "object" => String.t()
      }
      
  """
  @type service_now_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_profile_properties() :: %{
        "Amplitude" => amplitude_connector_profile_properties(),
        "CustomConnector" => custom_connector_profile_properties(),
        "Datadog" => datadog_connector_profile_properties(),
        "Dynatrace" => dynatrace_connector_profile_properties(),
        "GoogleAnalytics" => google_analytics_connector_profile_properties(),
        "Honeycode" => honeycode_connector_profile_properties(),
        "InforNexus" => infor_nexus_connector_profile_properties(),
        "Marketo" => marketo_connector_profile_properties(),
        "Pardot" => pardot_connector_profile_properties(),
        "Redshift" => redshift_connector_profile_properties(),
        "SAPOData" => s_a_p_o_data_connector_profile_properties(),
        "Salesforce" => salesforce_connector_profile_properties(),
        "ServiceNow" => service_now_connector_profile_properties(),
        "Singular" => singular_connector_profile_properties(),
        "Slack" => slack_connector_profile_properties(),
        "Snowflake" => snowflake_connector_profile_properties(),
        "Trendmicro" => trendmicro_connector_profile_properties(),
        "Veeva" => veeva_connector_profile_properties(),
        "Zendesk" => zendesk_connector_profile_properties()
      }
      
  """
  @type connector_profile_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incremental_pull_config() :: %{
        "datetimeTypeFieldName" => String.t()
      }
      
  """
  @type incremental_pull_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_flow_request() :: %{
        required("flowName") => String.t()
      }
      
  """
  @type stop_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_runtime_setting() :: %{
        "connectorSuppliedValueOptions" => list(String.t()()),
        "dataType" => String.t(),
        "description" => String.t(),
        "isRequired" => boolean(),
        "key" => String.t(),
        "label" => String.t(),
        "scope" => String.t()
      }
      
  """
  @type connector_runtime_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trigger_config() :: %{
        "triggerProperties" => trigger_properties(),
        "triggerType" => list(any())
      }
      
  """
  @type trigger_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_config() :: %{
        "customAuthConfigs" => list(custom_auth_config()()),
        "isApiKeyAuthSupported" => boolean(),
        "isBasicAuthSupported" => boolean(),
        "isCustomAuthSupported" => boolean(),
        "isOAuth2Supported" => boolean(),
        "oAuth2Defaults" => o_auth2_defaults()
      }
      
  """
  @type authentication_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datadog_metadata() :: %{}
      
  """
  @type datadog_metadata() :: %{}

  @typedoc """

  ## Example:
      
      connector_configuration() :: %{
        "authenticationConfig" => authentication_config(),
        "canUseAsDestination" => boolean(),
        "canUseAsSource" => boolean(),
        "connectorArn" => String.t(),
        "connectorDescription" => String.t(),
        "connectorLabel" => String.t(),
        "connectorMetadata" => connector_metadata(),
        "connectorModes" => list(String.t()()),
        "connectorName" => String.t(),
        "connectorOwner" => String.t(),
        "connectorProvisioningConfig" => connector_provisioning_config(),
        "connectorProvisioningType" => list(any()),
        "connectorRuntimeSettings" => list(connector_runtime_setting()()),
        "connectorType" => list(any()),
        "connectorVersion" => String.t(),
        "isPrivateLinkEnabled" => boolean(),
        "isPrivateLinkEndpointUrlRequired" => boolean(),
        "logoURL" => String.t(),
        "registeredAt" => non_neg_integer(),
        "registeredBy" => String.t(),
        "supportedApiVersions" => list(String.t()()),
        "supportedDataTransferApis" => list(data_transfer_api()()),
        "supportedDataTransferTypes" => list(list(any())()),
        "supportedDestinationConnectors" => list(list(any())()),
        "supportedOperators" => list(list(any())()),
        "supportedSchedulingFrequencies" => list(list(any())()),
        "supportedTriggerTypes" => list(list(any())()),
        "supportedWriteOperations" => list(list(any())())
      }
      
  """
  @type connector_configuration() :: %{String.t() => any()}

  @type cancel_flow_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_connector_profile_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | connector_authentication_exception()

  @type create_flow_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | connector_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | connector_authentication_exception()

  @type delete_connector_profile_errors() ::
          internal_server_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_flow_errors() ::
          internal_server_exception() | resource_not_found_exception() | conflict_exception()

  @type describe_connector_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_connector_entity_errors() ::
          validation_exception()
          | internal_server_exception()
          | connector_server_exception()
          | resource_not_found_exception()
          | connector_authentication_exception()

  @type describe_connector_profiles_errors() ::
          validation_exception() | internal_server_exception()

  @type describe_connectors_errors() :: validation_exception() | internal_server_exception()

  @type describe_flow_errors() :: internal_server_exception() | resource_not_found_exception()

  @type describe_flow_execution_records_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_connector_entities_errors() ::
          validation_exception()
          | internal_server_exception()
          | connector_server_exception()
          | resource_not_found_exception()
          | connector_authentication_exception()

  @type list_connectors_errors() :: validation_exception() | internal_server_exception()

  @type list_flows_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type register_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | connector_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | connector_authentication_exception()

  @type reset_connector_metadata_cache_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_flow_errors() ::
          internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_flow_errors() ::
          internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_operation_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type unregister_connector_errors() ::
          internal_server_exception() | resource_not_found_exception() | conflict_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_connector_profile_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | connector_authentication_exception()

  @type update_connector_registration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | connector_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | connector_authentication_exception()

  @type update_flow_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | connector_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | connector_authentication_exception()

  def metadata do
    %{
      api_version: "2020-08-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appflow",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Appflow",
      signature_version: "v4",
      signing_name: "appflow",
      target_prefix: nil
    }
  end

  @doc """
  Cancels active runs for a flow. You can cancel all of the active runs for a
  flow, or you can cancel specific runs by providing their IDs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20CancelFlowExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec cancel_flow_executions(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_flow_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_flow_executions_errors()}
  def cancel_flow_executions(%Client{} = client, options \\ []) do
    url_path = "/cancel-flow-executions"

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
  Creates a new connector profile associated with your Amazon Web Services
  account. There is a soft quota of 100 connector profiles per Amazon Web
  Services account. If you need more connector profiles than this quota allows,
  you can submit a request to the Amazon AppFlow team through the Amazon AppFlow
  support channel. In each connector profile that you create, you can provide
  the credentials and properties for only one connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20CreateConnectorProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_connector_profile(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_connector_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connector_profile_errors()}
  def create_connector_profile(%Client{} = client, options \\ []) do
    url_path = "/create-connector-profile"

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
  Enables your application to create a new flow using Amazon AppFlow. You must
  create a connector profile before calling this API. Please note that the
  Request Syntax below shows syntax for multiple destinations, however, you can
  only transfer data to one item in this list at a time. Amazon AppFlow does not
  currently support flows to multiple destinations at once.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20CreateFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_flow(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_flow_errors()}
  def create_flow(%Client{} = client, options \\ []) do
    url_path = "/create-flow"

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
  Enables you to delete an existing connector profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20DeleteConnectorProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_connector_profile(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_connector_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connector_profile_errors()}
  def delete_connector_profile(%Client{} = client, options \\ []) do
    url_path = "/delete-connector-profile"

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
  Enables your application to delete an existing flow. Before deleting the flow,
  Amazon AppFlow validates the request by checking the flow configuration and
  status. You can delete flows one at a time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20DeleteFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_flow(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_flow_errors()}
  def delete_flow(%Client{} = client, options \\ []) do
    url_path = "/delete-flow"

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
  Describes the given custom connector registered in your Amazon Web Services
  account. This API can be used for custom connectors that are registered in
  your account and also for Amazon authored connectors.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20DescribeConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec describe_connector(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connector_errors()}
  def describe_connector(%Client{} = client, options \\ []) do
    url_path = "/describe-connector"

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
  Provides details regarding the entity used with the connector, with a
  description of the data model for each field in that entity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20DescribeConnectorEntity&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec describe_connector_entity(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_connector_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connector_entity_errors()}
  def describe_connector_entity(%Client{} = client, options \\ []) do
    url_path = "/describe-connector-entity"

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
  Returns a list of `connector-profile` details matching the provided
  `connector-profile` names and `connector-types`. Both input lists are
  optional, and you can use them to filter the result.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20DescribeConnectorProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec describe_connector_profiles(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_connector_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connector_profiles_errors()}
  def describe_connector_profiles(%Client{} = client, options \\ []) do
    url_path = "/describe-connector-profiles"

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
  Describes the connectors vended by Amazon AppFlow for specified connector types.
  If you don't specify a connector type, this operation describes all connectors
  vended by Amazon AppFlow. If there are more connectors than can be returned in
  one page, the response contains a `nextToken` object, which can be be passed
  in to the next call to the `DescribeConnectors` API operation to retrieve the
  next page.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20DescribeConnectors&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec describe_connectors(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connectors_errors()}
  def describe_connectors(%Client{} = client, options \\ []) do
    url_path = "/describe-connectors"

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
  Provides a description of the specified flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20DescribeFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec describe_flow(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_flow_errors()}
  def describe_flow(%Client{} = client, options \\ []) do
    url_path = "/describe-flow"

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
  Fetches the execution history of the flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20DescribeFlowExecutionRecords&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec describe_flow_execution_records(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_flow_execution_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_flow_execution_records_errors()}
  def describe_flow_execution_records(%Client{} = client, options \\ []) do
    url_path = "/describe-flow-execution-records"

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
  Returns the list of available connector entities supported by Amazon AppFlow.
  For example, you can query Salesforce for *Account* and *Opportunity*
  entities, or query ServiceNow for the *Incident* entity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20ListConnectorEntities&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_connector_entities(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_connector_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_connector_entities_errors()}
  def list_connector_entities(%Client{} = client, options \\ []) do
    url_path = "/list-connector-entities"

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
  Returns the list of all registered custom connectors in your Amazon Web Services
  account. This API lists only custom connectors registered in this account, not
  the Amazon Web Services authored connectors.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20ListConnectors&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_connectors(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_connectors_errors()}
  def list_connectors(%Client{} = client, options \\ []) do
    url_path = "/list-connectors"

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
  Lists all of the flows associated with your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20ListFlows&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_flows(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_flows_errors()}
  def list_flows(%Client{} = client, options \\ []) do
    url_path = "/list-flows"

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
  Retrieves the tags that are associated with a specified flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  specified flow.
  ## Keyword parameters:
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
  Registers a new custom connector with your Amazon Web Services account. Before
  you can register the connector, you must deploy the associated AWS lambda
  function in your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20RegisterConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec register_connector(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_connector_errors()}
  def register_connector(%Client{} = client, options \\ []) do
    url_path = "/register-connector"

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
  Resets metadata about your connector entities that Amazon AppFlow stored in its
  cache. Use this action when you want Amazon AppFlow to return the latest
  information about the data that you have in a source application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20ResetConnectorMetadataCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec reset_connector_metadata_cache(AWS.Client.t(), Keyword.t()) ::
          {:ok, reset_connector_metadata_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_connector_metadata_cache_errors()}
  def reset_connector_metadata_cache(%Client{} = client, options \\ []) do
    url_path = "/reset-connector-metadata-cache"

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
  Activates an existing flow. For on-demand flows, this operation runs the flow
  immediately. For schedule and event-triggered flows, this operation activates
  the flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20StartFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_flow(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_flow_errors()}
  def start_flow(%Client{} = client, options \\ []) do
    url_path = "/start-flow"

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
  Deactivates the existing flow. For on-demand flows, this operation returns an
  `unsupportedOperationException` error message. For schedule and
  event-triggered flows, this operation deactivates the flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20StopFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec stop_flow(AWS.Client.t(), Keyword.t()) ::
          {:ok, stop_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_flow_errors()}
  def stop_flow(%Client{} = client, options \\ []) do
    url_path = "/stop-flow"

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
  Applies a tag to the specified flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  flow that you want to tag.
  ## Keyword parameters:
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
  Unregisters the custom connector registered in your account that matches the
  connector label provided in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20UnregisterConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec unregister_connector(AWS.Client.t(), Keyword.t()) ::
          {:ok, unregister_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unregister_connector_errors()}
  def unregister_connector(%Client{} = client, options \\ []) do
    url_path = "/unregister-connector"

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
  Removes a tag from the specified flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  flow that you want to untag.
  * `:tag_keys` (`t:list[com.amazonaws.appflow#TagKey]` required) The tag keys
  associated with the tag that you want to remove from your flow.
  ## Keyword parameters:
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
  Updates a given connector profile associated with your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20UpdateConnectorProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_connector_profile(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_connector_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connector_profile_errors()}
  def update_connector_profile(%Client{} = client, options \\ []) do
    url_path = "/update-connector-profile"

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
  Updates a custom connector that you've previously registered. This operation
  updates the connector with one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20UpdateConnectorRegistration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_connector_registration(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_connector_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connector_registration_errors()}
  def update_connector_registration(%Client{} = client, options \\ []) do
    url_path = "/update-connector-registration"

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
  Updates an existing flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appflow%20UpdateFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_flow(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_flow_errors()}
  def update_flow(%Client{} = client, options \\ []) do
    url_path = "/update-flow"

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
