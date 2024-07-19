# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.APIGateway do
  @moduledoc """
  Amazon API Gateway
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_stage_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      api_key_ids() :: %{
        "ids" => list(String.t()()),
        "warnings" => list(String.t()())
      }
      
  """
  @type api_key_ids() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_configuration() :: %{
        "types" => list(list(any())()),
        "vpcEndpointIds" => list(String.t()())
      }
      
  """
  @type endpoint_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_api_keys_request() :: %{
        optional("failOnWarnings") => boolean(),
        required("body") => binary(),
        required("format") => list(any())
      }
      
  """
  @type import_api_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stages_request() :: %{
        optional("deploymentId") => String.t()
      }
      
  """
  @type get_stages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sdk_types_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_sdk_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      canary_settings() :: %{
        "deploymentId" => String.t(),
        "percentTraffic" => float(),
        "stageVariableOverrides" => map(),
        "useStageCache" => boolean()
      }
      
  """
  @type canary_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      method_setting() :: %{
        "cacheDataEncrypted" => boolean(),
        "cacheTtlInSeconds" => integer(),
        "cachingEnabled" => boolean(),
        "dataTraceEnabled" => boolean(),
        "loggingLevel" => String.t(),
        "metricsEnabled" => boolean(),
        "requireAuthorizationForCacheControl" => boolean(),
        "throttlingBurstLimit" => integer(),
        "throttlingRateLimit" => float(),
        "unauthorizedCacheControlHeaderStrategy" => list(any())
      }
      
  """
  @type method_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage() :: %{
        "accessLogSettings" => access_log_settings(),
        "cacheClusterEnabled" => boolean(),
        "cacheClusterSize" => list(any()),
        "cacheClusterStatus" => list(any()),
        "canarySettings" => canary_settings(),
        "clientCertificateId" => String.t(),
        "createdDate" => non_neg_integer(),
        "deploymentId" => String.t(),
        "description" => String.t(),
        "documentationVersion" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "methodSettings" => map(),
        "stageName" => String.t(),
        "tags" => map(),
        "tracingEnabled" => boolean(),
        "variables" => map(),
        "webAclArn" => String.t()
      }
      
  """
  @type stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployments_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorizer() :: %{
        "authType" => String.t(),
        "authorizerCredentials" => String.t(),
        "authorizerResultTtlInSeconds" => integer(),
        "authorizerUri" => String.t(),
        "id" => String.t(),
        "identitySource" => String.t(),
        "identityValidationExpression" => String.t(),
        "name" => String.t(),
        "providerARNs" => list(String.t()()),
        "type" => list(any())
      }
      
  """
  @type authorizer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_usage_request() :: %{
        optional("keyId") => String.t(),
        optional("limit") => integer(),
        optional("position") => String.t(),
        required("endDate") => String.t(),
        required("startDate") => String.t()
      }
      
  """
  @type get_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sdk_response() :: %{
        "body" => binary(),
        "contentDisposition" => String.t(),
        "contentType" => String.t()
      }
      
  """
  @type sdk_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_response() :: %{
        "body" => binary(),
        "contentDisposition" => String.t(),
        "contentType" => String.t()
      }
      
  """
  @type export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tags_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttle_settings() :: %{
        "burstLimit" => integer(),
        "rateLimit" => float()
      }
      
  """
  @type throttle_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_request() :: %{}
      
  """
  @type delete_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      update_resource_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        "apiSummary" => map(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t()
      }
      
  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration() :: %{
        "cacheKeyParameters" => list(String.t()()),
        "cacheNamespace" => String.t(),
        "connectionId" => String.t(),
        "connectionType" => list(any()),
        "contentHandling" => list(any()),
        "credentials" => String.t(),
        "httpMethod" => String.t(),
        "integrationResponses" => map(),
        "passthroughBehavior" => String.t(),
        "requestParameters" => map(),
        "requestTemplates" => map(),
        "timeoutInMillis" => integer(),
        "tlsConfig" => tls_config(),
        "type" => list(any()),
        "uri" => String.t()
      }
      
  """
  @type integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_client_certificate_request() :: %{}
      
  """
  @type delete_client_certificate_request() :: %{}

  @typedoc """

  ## Example:
      
      get_usage_plan_key_request() :: %{}
      
  """
  @type get_usage_plan_key_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_documentation_part_request() :: %{}
      
  """
  @type delete_documentation_part_request() :: %{}

  @typedoc """

  ## Example:
      
      get_documentation_parts_request() :: %{
        optional("limit") => integer(),
        optional("locationStatus") => list(any()),
        optional("nameQuery") => String.t(),
        optional("path") => String.t(),
        optional("position") => String.t(),
        optional("type") => list(any())
      }
      
  """
  @type get_documentation_parts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_method_response_request() :: %{}
      
  """
  @type get_method_response_request() :: %{}

  @typedoc """

  ## Example:
      
      test_invoke_authorizer_request() :: %{
        optional("additionalContext") => map(),
        optional("body") => String.t(),
        optional("headers") => map(),
        optional("multiValueHeaders") => map(),
        optional("pathWithQueryString") => String.t(),
        optional("stageVariables") => map()
      }
      
  """
  @type test_invoke_authorizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_client_certificate_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_client_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_integration_response_request() :: %{}
      
  """
  @type delete_integration_response_request() :: %{}

  @typedoc """

  ## Example:
      
      patch_operation() :: %{
        "from" => String.t(),
        "op" => list(any()),
        "path" => String.t(),
        "value" => String.t()
      }
      
  """
  @type patch_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mutual_tls_authentication() :: %{
        "truststoreUri" => String.t(),
        "truststoreVersion" => String.t(),
        "truststoreWarnings" => list(String.t()())
      }
      
  """
  @type mutual_tls_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      base_path_mapping() :: %{
        "basePath" => String.t(),
        "restApiId" => String.t(),
        "stage" => String.t()
      }
      
  """
  @type base_path_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_documentation_version_request() :: %{
        optional("description") => String.t(),
        optional("stageName") => String.t(),
        required("documentationVersion") => String.t()
      }
      
  """
  @type create_documentation_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gateway_response() :: %{
        "defaultResponse" => boolean(),
        "responseParameters" => map(),
        "responseTemplates" => map(),
        "responseType" => list(any()),
        "statusCode" => String.t()
      }
      
  """
  @type gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_rest_api_request() :: %{
        optional("failOnWarnings") => boolean(),
        optional("parameters") => map(),
        required("body") => binary()
      }
      
  """
  @type import_rest_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      documentation_versions() :: %{
        "items" => list(documentation_version()()),
        "position" => String.t()
      }
      
  """
  @type documentation_versions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_api_key_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_api_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_links() :: %{
        "items" => list(vpc_link()()),
        "position" => String.t()
      }
      
  """
  @type vpc_links() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_usage_plan_request() :: %{}
      
  """
  @type get_usage_plan_request() :: %{}

  @typedoc """

  ## Example:
      
      usage_plans() :: %{
        "items" => list(usage_plan()()),
        "position" => String.t()
      }
      
  """
  @type usage_plans() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_request() :: %{
        optional("cacheClusterEnabled") => boolean(),
        optional("cacheClusterSize") => list(any()),
        optional("canarySettings") => deployment_canary_settings(),
        optional("description") => String.t(),
        optional("stageDescription") => String.t(),
        optional("stageName") => String.t(),
        optional("tracingEnabled") => boolean(),
        optional("variables") => map()
      }
      
  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_base_path_mapping_request() :: %{}
      
  """
  @type get_base_path_mapping_request() :: %{}

  @typedoc """

  ## Example:
      
      create_model_request() :: %{
        optional("description") => String.t(),
        optional("schema") => String.t(),
        required("contentType") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_integration_request() :: %{
        optional("cacheKeyParameters") => list(String.t()()),
        optional("cacheNamespace") => String.t(),
        optional("connectionId") => String.t(),
        optional("connectionType") => list(any()),
        optional("contentHandling") => list(any()),
        optional("credentials") => String.t(),
        optional("integrationHttpMethod") => String.t(),
        optional("passthroughBehavior") => String.t(),
        optional("requestParameters") => map(),
        optional("requestTemplates") => map(),
        optional("timeoutInMillis") => integer(),
        optional("tlsConfig") => tls_config(),
        optional("uri") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type put_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_gateway_response_request() :: %{}
      
  """
  @type get_gateway_response_request() :: %{}

  @typedoc """

  ## Example:
      
      update_request_validator_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_request_validator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_name_request() :: %{
        optional("certificateArn") => String.t(),
        optional("certificateBody") => String.t(),
        optional("certificateChain") => String.t(),
        optional("certificateName") => String.t(),
        optional("certificatePrivateKey") => String.t(),
        optional("endpointConfiguration") => endpoint_configuration(),
        optional("mutualTlsAuthentication") => mutual_tls_authentication_input(),
        optional("ownershipVerificationCertificateArn") => String.t(),
        optional("regionalCertificateArn") => String.t(),
        optional("regionalCertificateName") => String.t(),
        optional("securityPolicy") => list(any()),
        optional("tags") => map(),
        required("domainName") => String.t()
      }
      
  """
  @type create_domain_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_base_path_mapping_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_base_path_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_plan_keys() :: %{
        "items" => list(usage_plan_key()()),
        "position" => String.t()
      }
      
  """
  @type usage_plan_keys() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sdk_type() :: %{
        "configurationProperties" => list(sdk_configuration_property()()),
        "description" => String.t(),
        "friendlyName" => String.t(),
        "id" => String.t()
      }
      
  """
  @type sdk_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_link() :: %{
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "statusMessage" => String.t(),
        "tags" => map(),
        "targetArns" => list(String.t()())
      }
      
  """
  @type vpc_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_documentation_part_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_documentation_part_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_model_template_request() :: %{}
      
  """
  @type get_model_template_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_authorizer_request() :: %{}
      
  """
  @type delete_authorizer_request() :: %{}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_request_validator_request() :: %{}
      
  """
  @type delete_request_validator_request() :: %{}

  @typedoc """

  ## Example:
      
      create_authorizer_request() :: %{
        optional("authType") => String.t(),
        optional("authorizerCredentials") => String.t(),
        optional("authorizerResultTtlInSeconds") => integer(),
        optional("authorizerUri") => String.t(),
        optional("identitySource") => String.t(),
        optional("identityValidationExpression") => String.t(),
        optional("providerARNs") => list(String.t()()),
        required("name") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type create_authorizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stage_request() :: %{}
      
  """
  @type get_stage_request() :: %{}

  @typedoc """

  ## Example:
      
      get_authorizer_request() :: %{}
      
  """
  @type get_authorizer_request() :: %{}

  @typedoc """

  ## Example:
      
      stages() :: %{
        "item" => list(stage()())
      }
      
  """
  @type stages() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_usage_plan_keys_request() :: %{
        optional("limit") => integer(),
        optional("nameQuery") => String.t(),
        optional("position") => String.t()
      }
      
  """
  @type get_usage_plan_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_response_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_gateway_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage() :: %{
        "endDate" => String.t(),
        "items" => map(),
        "position" => String.t(),
        "startDate" => String.t(),
        "usagePlanId" => String.t()
      }
      
  """
  @type usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gateway_responses() :: %{
        "items" => list(gateway_response()()),
        "position" => String.t()
      }
      
  """
  @type gateway_responses() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_key() :: %{
        "restApiId" => String.t(),
        "stageName" => String.t()
      }
      
  """
  @type stage_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_method_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_method_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      client_certificates() :: %{
        "items" => list(client_certificate()()),
        "position" => String.t()
      }
      
  """
  @type client_certificates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_usage_plan_key_request() :: %{}
      
  """
  @type delete_usage_plan_key_request() :: %{}

  @typedoc """

  ## Example:
      
      domain_names() :: %{
        "items" => list(domain_name()()),
        "position" => String.t()
      }
      
  """
  @type domain_names() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resources() :: %{
        "items" => list(resource()()),
        "position" => String.t()
      }
      
  """
  @type resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stage_request() :: %{}
      
  """
  @type delete_stage_request() :: %{}

  @typedoc """

  ## Example:
      
      get_authorizers_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_authorizers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rest_api_request() :: %{}
      
  """
  @type delete_rest_api_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_documentation_version_request() :: %{}
      
  """
  @type delete_documentation_version_request() :: %{}

  @typedoc """

  ## Example:
      
      create_documentation_part_request() :: %{
        required("location") => documentation_part_location(),
        required("properties") => String.t()
      }
      
  """
  @type create_documentation_part_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_validator() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "validateRequestBody" => boolean(),
        "validateRequestParameters" => boolean()
      }
      
  """
  @type request_validator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_method_request() :: %{}
      
  """
  @type get_method_request() :: %{}

  @typedoc """

  ## Example:
      
      rest_api() :: %{
        "apiKeySource" => list(any()),
        "binaryMediaTypes" => list(String.t()()),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "disableExecuteApiEndpoint" => boolean(),
        "endpointConfiguration" => endpoint_configuration(),
        "id" => String.t(),
        "minimumCompressionSize" => integer(),
        "name" => String.t(),
        "policy" => String.t(),
        "rootResourceId" => String.t(),
        "tags" => map(),
        "version" => String.t(),
        "warnings" => list(String.t()())
      }
      
  """
  @type rest_api() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_client_certificates_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_client_certificates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resources_request() :: %{
        optional("embed") => list(String.t()()),
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_gateway_responses_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_gateway_responses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_integration_request() :: %{}
      
  """
  @type delete_integration_request() :: %{}

  @typedoc """

  ## Example:
      
      get_sdk_request() :: %{
        optional("parameters") => map()
      }
      
  """
  @type get_sdk_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_documentation_parts_request() :: %{
        optional("failOnWarnings") => boolean(),
        optional("mode") => list(any()),
        required("body") => binary()
      }
      
  """
  @type import_documentation_parts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_request_validator_request() :: %{
        optional("name") => String.t(),
        optional("validateRequestBody") => boolean(),
        optional("validateRequestParameters") => boolean()
      }
      
  """
  @type create_request_validator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sdk_configuration_property() :: %{
        "defaultValue" => String.t(),
        "description" => String.t(),
        "friendlyName" => String.t(),
        "name" => String.t(),
        "required" => boolean()
      }
      
  """
  @type sdk_configuration_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      base_path_mappings() :: %{
        "items" => list(base_path_mapping()()),
        "position" => String.t()
      }
      
  """
  @type base_path_mappings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployment_request() :: %{
        optional("embed") => list(String.t()())
      }
      
  """
  @type get_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_link_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("targetArns") => list(String.t()())
      }
      
  """
  @type create_vpc_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_request_validators_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_request_validators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_client_certificate_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map()
      }
      
  """
  @type generate_client_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account() :: %{
        "apiKeyVersion" => String.t(),
        "cloudwatchRoleArn" => String.t(),
        "features" => list(String.t()()),
        "throttleSettings" => throttle_settings()
      }
      
  """
  @type account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flush_stage_authorizers_cache_request() :: %{}
      
  """
  @type flush_stage_authorizers_cache_request() :: %{}

  @typedoc """

  ## Example:
      
      tags() :: %{
        "tags" => map()
      }
      
  """
  @type tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_names_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_domain_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_usage_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_integration_request() :: %{}
      
  """
  @type get_integration_request() :: %{}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_integration_response_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_integration_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      documentation_part_location() :: %{
        "method" => String.t(),
        "name" => String.t(),
        "path" => String.t(),
        "statusCode" => String.t(),
        "type" => list(any())
      }
      
  """
  @type documentation_part_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rest_api_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_rest_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_integration_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_method_request() :: %{
        optional("apiKeyRequired") => boolean(),
        optional("authorizationScopes") => list(String.t()()),
        optional("authorizerId") => String.t(),
        optional("operationName") => String.t(),
        optional("requestModels") => map(),
        optional("requestParameters") => map(),
        optional("requestValidatorId") => String.t(),
        required("authorizationType") => String.t()
      }
      
  """
  @type put_method_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_request() :: %{
        required("pathPart") => String.t()
      }
      
  """
  @type create_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_name_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_domain_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rest_apis() :: %{
        "items" => list(rest_api()()),
        "position" => String.t()
      }
      
  """
  @type rest_apis() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_api_key_request() :: %{
        optional("customerId") => String.t(),
        optional("description") => String.t(),
        optional("enabled") => boolean(),
        optional("generateDistinctId") => boolean(),
        optional("name") => String.t(),
        optional("stageKeys") => list(stage_key()()),
        optional("tags") => map(),
        optional("value") => String.t()
      }
      
  """
  @type create_api_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_name() :: %{
        "certificateArn" => String.t(),
        "certificateName" => String.t(),
        "certificateUploadDate" => non_neg_integer(),
        "distributionDomainName" => String.t(),
        "distributionHostedZoneId" => String.t(),
        "domainName" => String.t(),
        "domainNameStatus" => list(any()),
        "domainNameStatusMessage" => String.t(),
        "endpointConfiguration" => endpoint_configuration(),
        "mutualTlsAuthentication" => mutual_tls_authentication(),
        "ownershipVerificationCertificateArn" => String.t(),
        "regionalCertificateArn" => String.t(),
        "regionalCertificateName" => String.t(),
        "regionalDomainName" => String.t(),
        "regionalHostedZoneId" => String.t(),
        "securityPolicy" => list(any()),
        "tags" => map()
      }
      
  """
  @type domain_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stage_request() :: %{
        optional("cacheClusterEnabled") => boolean(),
        optional("cacheClusterSize") => list(any()),
        optional("canarySettings") => canary_settings(),
        optional("description") => String.t(),
        optional("documentationVersion") => String.t(),
        optional("tags") => map(),
        optional("tracingEnabled") => boolean(),
        optional("variables") => map(),
        required("deploymentId") => String.t(),
        required("stageName") => String.t()
      }
      
  """
  @type create_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_method_response_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_method_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_deployment_request() :: %{}
      
  """
  @type delete_deployment_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_method_response_request() :: %{}
      
  """
  @type delete_method_response_request() :: %{}

  @typedoc """

  ## Example:
      
      client_certificate() :: %{
        "clientCertificateId" => String.t(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "expirationDate" => non_neg_integer(),
        "pemEncodedCertificate" => String.t(),
        "tags" => map()
      }
      
  """
  @type client_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_api_keys_request() :: %{
        optional("customerId") => String.t(),
        optional("includeValues") => boolean(),
        optional("limit") => integer(),
        optional("nameQuery") => String.t(),
        optional("position") => String.t()
      }
      
  """
  @type get_api_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mutual_tls_authentication_input() :: %{
        "truststoreUri" => String.t(),
        "truststoreVersion" => String.t()
      }
      
  """
  @type mutual_tls_authentication_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_request() :: %{
        optional("embed") => list(String.t()())
      }
      
  """
  @type get_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_canary_settings() :: %{
        "percentTraffic" => float(),
        "stageVariableOverrides" => map(),
        "useStageCache" => boolean()
      }
      
  """
  @type deployment_canary_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_method_request() :: %{}
      
  """
  @type delete_method_request() :: %{}

  @typedoc """

  ## Example:
      
      api_stage() :: %{
        "apiId" => String.t(),
        "stage" => String.t(),
        "throttle" => map()
      }
      
  """
  @type api_stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_export_request() :: %{
        optional("accepts") => String.t(),
        optional("parameters") => map()
      }
      
  """
  @type get_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_request() :: %{}
      
  """
  @type delete_model_request() :: %{}

  @typedoc """

  ## Example:
      
      tls_config() :: %{
        "insecureSkipVerification" => boolean()
      }
      
  """
  @type tls_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_documentation_part_request() :: %{}
      
  """
  @type get_documentation_part_request() :: %{}

  @typedoc """

  ## Example:
      
      access_log_settings() :: %{
        "destinationArn" => String.t(),
        "format" => String.t()
      }
      
  """
  @type access_log_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      documentation_version() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "version" => String.t()
      }
      
  """
  @type documentation_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_integration_response_request() :: %{}
      
  """
  @type get_integration_response_request() :: %{}

  @typedoc """

  ## Example:
      
      get_rest_api_request() :: %{}
      
  """
  @type get_rest_api_request() :: %{}

  @typedoc """

  ## Example:
      
      api_keys() :: %{
        "items" => list(api_key()()),
        "position" => String.t(),
        "warnings" => list(String.t()())
      }
      
  """
  @type api_keys() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_models_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_base_path_mapping_request() :: %{
        optional("basePath") => String.t(),
        optional("stage") => String.t(),
        required("restApiId") => String.t()
      }
      
  """
  @type create_base_path_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      method_response() :: %{
        "responseModels" => map(),
        "responseParameters" => map(),
        "statusCode" => String.t()
      }
      
  """
  @type method_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpc_link_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_vpc_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sdk_type_request() :: %{}
      
  """
  @type get_sdk_type_request() :: %{}

  @typedoc """

  ## Example:
      
      usage_plan() :: %{
        "apiStages" => list(api_stage()()),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "productCode" => String.t(),
        "quota" => quota_settings(),
        "tags" => map(),
        "throttle" => throttle_settings()
      }
      
  """
  @type usage_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_name_request() :: %{}
      
  """
  @type get_domain_name_request() :: %{}

  @typedoc """

  ## Example:
      
      update_usage_plan_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_usage_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sdk_types() :: %{
        "items" => list(sdk_type()())
      }
      
  """
  @type sdk_types() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_usage_plan_key_request() :: %{
        required("keyId") => String.t(),
        required("keyType") => String.t()
      }
      
  """
  @type create_usage_plan_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_api_key_request() :: %{}
      
  """
  @type delete_api_key_request() :: %{}

  @typedoc """

  ## Example:
      
      get_model_request() :: %{
        optional("flatten") => boolean()
      }
      
  """
  @type get_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_documentation_version_request() :: %{}
      
  """
  @type get_documentation_version_request() :: %{}

  @typedoc """

  ## Example:
      
      get_usage_plans_request() :: %{
        optional("keyId") => String.t(),
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_usage_plans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_usage_plan_request() :: %{
        optional("apiStages") => list(api_stage()()),
        optional("description") => String.t(),
        optional("quota") => quota_settings(),
        optional("tags") => map(),
        optional("throttle") => throttle_settings(),
        required("name") => String.t()
      }
      
  """
  @type create_usage_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rest_apis_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_rest_apis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_client_certificate_request() :: %{}
      
  """
  @type get_client_certificate_request() :: %{}

  @typedoc """

  ## Example:
      
      documentation_part() :: %{
        "id" => String.t(),
        "location" => documentation_part_location(),
        "properties" => String.t()
      }
      
  """
  @type documentation_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      method_snapshot() :: %{
        "apiKeyRequired" => boolean(),
        "authorizationType" => String.t()
      }
      
  """
  @type method_snapshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_method_response_request() :: %{
        optional("responseModels") => map(),
        optional("responseParameters") => map()
      }
      
  """
  @type put_method_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_validators() :: %{
        "items" => list(request_validator()()),
        "position" => String.t()
      }
      
  """
  @type request_validators() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      models() :: %{
        "items" => list(model()()),
        "position" => String.t()
      }
      
  """
  @type models() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_base_path_mapping_request() :: %{}
      
  """
  @type delete_base_path_mapping_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_domain_name_request() :: %{}
      
  """
  @type delete_domain_name_request() :: %{}

  @typedoc """

  ## Example:
      
      documentation_parts() :: %{
        "items" => list(documentation_part()()),
        "position" => String.t()
      }
      
  """
  @type documentation_parts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpc_link_request() :: %{}
      
  """
  @type get_vpc_link_request() :: %{}

  @typedoc """

  ## Example:
      
      test_invoke_authorizer_response() :: %{
        "authorization" => map(),
        "claims" => map(),
        "clientStatus" => integer(),
        "latency" => float(),
        "log" => String.t(),
        "policy" => String.t(),
        "principalId" => String.t()
      }
      
  """
  @type test_invoke_authorizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      documentation_part_ids() :: %{
        "ids" => list(String.t()()),
        "warnings" => list(String.t()())
      }
      
  """
  @type documentation_part_ids() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_usage_plan_request() :: %{}
      
  """
  @type delete_usage_plan_request() :: %{}

  @typedoc """

  ## Example:
      
      method() :: %{
        "apiKeyRequired" => boolean(),
        "authorizationScopes" => list(String.t()()),
        "authorizationType" => String.t(),
        "authorizerId" => String.t(),
        "httpMethod" => String.t(),
        "methodIntegration" => integration(),
        "methodResponses" => map(),
        "operationName" => String.t(),
        "requestModels" => map(),
        "requestParameters" => map(),
        "requestValidatorId" => String.t()
      }
      
  """
  @type method() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template() :: %{
        "value" => String.t()
      }
      
  """
  @type template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_invoke_method_request() :: %{
        optional("body") => String.t(),
        optional("clientCertificateId") => String.t(),
        optional("headers") => map(),
        optional("multiValueHeaders") => map(),
        optional("pathWithQueryString") => String.t(),
        optional("stageVariables") => map()
      }
      
  """
  @type test_invoke_method_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_api_key_request() :: %{
        optional("includeValue") => boolean()
      }
      
  """
  @type get_api_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpc_links_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_vpc_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorizers() :: %{
        "items" => list(authorizer()()),
        "position" => String.t()
      }
      
  """
  @type authorizers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_base_path_mappings_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_base_path_mappings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_request_validator_request() :: %{}
      
  """
  @type get_request_validator_request() :: %{}

  @typedoc """

  ## Example:
      
      api_key() :: %{
        "createdDate" => non_neg_integer(),
        "customerId" => String.t(),
        "description" => String.t(),
        "enabled" => boolean(),
        "id" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "stageKeys" => list(String.t()()),
        "tags" => map(),
        "value" => String.t()
      }
      
  """
  @type api_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_integration_response_request() :: %{
        optional("contentHandling") => list(any()),
        optional("responseParameters") => map(),
        optional("responseTemplates") => map(),
        optional("selectionPattern") => String.t()
      }
      
  """
  @type put_integration_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_request() :: %{}
      
  """
  @type get_account_request() :: %{}

  @typedoc """

  ## Example:
      
      integration_response() :: %{
        "contentHandling" => list(any()),
        "responseParameters" => map(),
        "responseTemplates" => map(),
        "selectionPattern" => String.t(),
        "statusCode" => String.t()
      }
      
  """
  @type integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_invoke_method_response() :: %{
        "body" => String.t(),
        "headers" => map(),
        "latency" => float(),
        "log" => String.t(),
        "multiValueHeaders" => map(),
        "status" => integer()
      }
      
  """
  @type test_invoke_method_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flush_stage_cache_request() :: %{}
      
  """
  @type flush_stage_cache_request() :: %{}

  @typedoc """

  ## Example:
      
      model() :: %{
        "contentType" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "schema" => String.t()
      }
      
  """
  @type model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployments() :: %{
        "items" => list(deployment()()),
        "position" => String.t()
      }
      
  """
  @type deployments() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_documentation_version_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_documentation_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_deployment_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_rest_api_request() :: %{
        optional("failOnWarnings") => boolean(),
        optional("mode") => list(any()),
        optional("parameters") => map(),
        required("body") => binary()
      }
      
  """
  @type put_rest_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quota_settings() :: %{
        "limit" => integer(),
        "offset" => integer(),
        "period" => list(any())
      }
      
  """
  @type quota_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_gateway_response_request() :: %{}
      
  """
  @type delete_gateway_response_request() :: %{}

  @typedoc """

  ## Example:
      
      get_documentation_versions_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t()
      }
      
  """
  @type get_documentation_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_plan_key() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "type" => String.t(),
        "value" => String.t()
      }
      
  """
  @type usage_plan_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_link_request() :: %{}
      
  """
  @type delete_vpc_link_request() :: %{}

  @typedoc """

  ## Example:
      
      update_authorizer_request() :: %{
        optional("patchOperations") => list(patch_operation()())
      }
      
  """
  @type update_authorizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_gateway_response_request() :: %{
        optional("responseParameters") => map(),
        optional("responseTemplates") => map(),
        optional("statusCode") => String.t()
      }
      
  """
  @type put_gateway_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rest_api_request() :: %{
        optional("apiKeySource") => list(any()),
        optional("binaryMediaTypes") => list(String.t()()),
        optional("cloneFrom") => String.t(),
        optional("description") => String.t(),
        optional("disableExecuteApiEndpoint") => boolean(),
        optional("endpointConfiguration") => endpoint_configuration(),
        optional("minimumCompressionSize") => integer(),
        optional("policy") => String.t(),
        optional("tags") => map(),
        optional("version") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_rest_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "id" => String.t(),
        "parentId" => String.t(),
        "path" => String.t(),
        "pathPart" => String.t(),
        "resourceMethods" => map()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type create_api_key_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_authorizer_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_base_path_mapping_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_deployment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_documentation_part_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_documentation_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_domain_name_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_model_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_request_validator_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_rest_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_stage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_usage_plan_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_usage_plan_key_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_vpc_link_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_api_key_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_base_path_mapping_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_client_certificate_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_deployment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_documentation_part_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_documentation_version_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_domain_name_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_gateway_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_integration_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_integration_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_method_errors() ::
          not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_method_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_model_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_request_validator_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_rest_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_stage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_usage_plan_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_usage_plan_key_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_vpc_link_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type flush_stage_authorizers_cache_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type flush_stage_cache_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type generate_client_certificate_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_account_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_api_key_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_api_keys_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_authorizers_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_base_path_mapping_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_base_path_mappings_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_client_certificate_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_client_certificates_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_deployment_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_deployments_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_documentation_part_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_documentation_parts_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_documentation_version_errors() ::
          not_found_exception() | too_many_requests_exception() | unauthorized_exception()

  @type get_documentation_versions_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_domain_name_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_domain_names_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_export_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_gateway_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_gateway_responses_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_integration_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_integration_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_method_errors() ::
          not_found_exception() | too_many_requests_exception() | unauthorized_exception()

  @type get_method_response_errors() ::
          not_found_exception() | too_many_requests_exception() | unauthorized_exception()

  @type get_model_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_model_template_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_models_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_request_validator_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_request_validators_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_resource_errors() ::
          not_found_exception() | too_many_requests_exception() | unauthorized_exception()

  @type get_resources_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_rest_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_rest_apis_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_sdk_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_sdk_type_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_sdk_types_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_stage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_stages_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_tags_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_plan_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_plan_key_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_plan_keys_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_plans_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_vpc_link_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_vpc_links_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type import_api_keys_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type import_documentation_parts_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type import_rest_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_gateway_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_integration_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_integration_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_method_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_method_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_rest_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type test_invoke_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type test_invoke_method_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_account_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_api_key_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_authorizer_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_base_path_mapping_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_client_certificate_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_deployment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_documentation_part_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_documentation_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_domain_name_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_gateway_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_integration_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_integration_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_method_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_method_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_model_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_request_validator_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_rest_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_stage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_usage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_usage_plan_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_vpc_link_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2015-07-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "apigateway",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "API Gateway",
      signature_version: "v4",
      signing_name: "apigateway",
      target_prefix: nil
    }
  end

  @doc """
  Create an ApiKey resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateApiKey&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_api_key(AWS.Client.t(), Keyword.t()) ::
          {:ok, api_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_api_key_errors()}

  def create_api_key(%Client{} = client, options \\ []) do
    url_path = "/apikeys"

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
  Adds a new Authorizer resource to an existing RestApi resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateAuthorizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec create_authorizer(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, authorizer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_authorizer_errors()}

  def create_authorizer(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers"

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
  Creates a new BasePathMapping resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateBasePathMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The domain name of the BasePathMapping resource to
  create.

  ## Optional parameters:
  """

  @spec create_base_path_mapping(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, base_path_mapping(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_base_path_mapping_errors()}

  def create_base_path_mapping(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings"

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
  Creates a Deployment resource, which makes a specified RestApi callable over the
  internet.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec create_deployment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_errors()}

  def create_deployment(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments"

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
  Creates a documentation part.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateDocumentationPart&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec create_documentation_part(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, documentation_part(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_documentation_part_errors()}

  def create_documentation_part(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts"

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
  Creates a documentation version

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateDocumentationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec create_documentation_version(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, documentation_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_documentation_version_errors()}

  def create_documentation_version(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions"

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
  Creates a new domain name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateDomainName&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_domain_name(AWS.Client.t(), Keyword.t()) ::
          {:ok, domain_name(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_name_errors()}

  def create_domain_name(%Client{} = client, options \\ []) do
    url_path = "/domainnames"

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
  Adds a new Model resource to an existing RestApi resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The RestApi identifier under which the Model will
  be created.

  ## Optional parameters:
  """

  @spec create_model(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, model(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_errors()}

  def create_model(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models"

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
  Creates a RequestValidator of a given RestApi.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateRequestValidator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec create_request_validator(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, request_validator(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_request_validator_errors()}

  def create_request_validator(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators"

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
  Creates a Resource resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:parent_id` (`t:string`) The parent resource's identifier.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec create_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, resource(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_resource_errors()}

  def create_resource(%Client{} = client, parent_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(parent_id)}"

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
  Creates a new RestApi resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateRestApi&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_rest_api(AWS.Client.t(), Keyword.t()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rest_api_errors()}

  def create_rest_api(%Client{} = client, options \\ []) do
    url_path = "/restapis"

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
  Creates a new Stage resource that references a pre-existing Deployment for the
  API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec create_stage(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, stage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stage_errors()}

  def create_stage(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages"

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
  Creates a usage plan with the throttle and quota limits, as well as the
  associated API stages, specified in the payload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateUsagePlan&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_usage_plan(AWS.Client.t(), Keyword.t()) ::
          {:ok, usage_plan(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_usage_plan_errors()}

  def create_usage_plan(%Client{} = client, options \\ []) do
    url_path = "/usageplans"

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
  Creates a usage plan key for adding an existing API key to a usage plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateUsagePlanKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:usage_plan_id` (`t:string`) The Id of the UsagePlan resource representing
  the usage plan containing the to-be-created UsagePlanKey resource
  representing a plan customer.

  ## Optional parameters:
  """

  @spec create_usage_plan_key(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, usage_plan_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_usage_plan_key_errors()}

  def create_usage_plan_key(%Client{} = client, usage_plan_id, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys"

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
  Creates a VPC link, under the caller's account in a selected region, in an
  asynchronous operation that typically takes 2-4 minutes to complete and become
  operational. The caller must have permissions to create and update VPC
  Endpoint services.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20CreateVpcLink&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_vpc_link(AWS.Client.t(), Keyword.t()) ::
          {:ok, vpc_link(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_link_errors()}

  def create_vpc_link(%Client{} = client, options \\ []) do
    url_path = "/vpclinks"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Deletes the ApiKey resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteApiKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_key` (`t:string`) The identifier of the ApiKey resource to be deleted.

  ## Optional parameters:
  """

  @spec delete_api_key(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_api_key_errors()}

  def delete_api_key(%Client{} = client, api_key, options \\ []) do
    url_path = "/apikeys/#{AWS.Util.encode_uri(api_key)}"

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
  Deletes an existing Authorizer resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteAuthorizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:authorizer_id` (`t:string`) The identifier of the Authorizer resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_authorizer(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_authorizer_errors()}

  def delete_authorizer(%Client{} = client, authorizer_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Deletes the BasePathMapping resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteBasePathMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:base_path` (`t:string`) The base path name of the BasePathMapping resource
  to delete.
  * `:domain_name` (`t:string`) The domain name of the BasePathMapping resource to
  delete.

  ## Optional parameters:
  """

  @spec delete_base_path_mapping(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_base_path_mapping_errors()}

  def delete_base_path_mapping(%Client{} = client, base_path, domain_name, options \\ []) do
    url_path =
      "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings/#{AWS.Util.encode_uri(base_path)}"

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
  Deletes the ClientCertificate resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteClientCertificate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:client_certificate_id` (`t:string`) The identifier of the ClientCertificate
  resource to be deleted.

  ## Optional parameters:
  """

  @spec delete_client_certificate(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_client_certificate_errors()}

  def delete_client_certificate(%Client{} = client, client_certificate_id, options \\ []) do
    url_path = "/clientcertificates/#{AWS.Util.encode_uri(client_certificate_id)}"

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
  Deletes a Deployment resource. Deleting a deployment will only succeed if there
  are no Stage resources associated with it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:deployment_id` (`t:string`) The identifier of the Deployment resource to
  delete.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_deployment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_deployment_errors()}

  def delete_deployment(%Client{} = client, deployment_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Deletes a documentation part

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteDocumentationPart&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:documentation_part_id` (`t:string`) The identifier of the to-be-deleted
  documentation part.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_documentation_part(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_documentation_part_errors()}

  def delete_documentation_part(
        %Client{} = client,
        documentation_part_id,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts/#{AWS.Util.encode_uri(documentation_part_id)}"

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
  Deletes a documentation version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteDocumentationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:documentation_version` (`t:string`) The version identifier of a
  to-be-deleted documentation snapshot.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_documentation_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_documentation_version_errors()}

  def delete_documentation_version(
        %Client{} = client,
        documentation_version,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions/#{AWS.Util.encode_uri(documentation_version)}"

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
  Deletes the DomainName resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteDomainName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the DomainName resource to be deleted.

  ## Optional parameters:
  """

  @spec delete_domain_name(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_name_errors()}

  def delete_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}"

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
  Clears any customization of a GatewayResponse of a specified response type on
  the given RestApi and resets it with the default settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteGatewayResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:response_type`
  (`t:enum["ACCESS_DENIED|API_CONFIGURATION_ERROR|AUTHORIZER_CONFIGURATION_ERROR|AUTHORIZER_FAILURE|BAD_REQUEST_BODY|BAD_REQUEST_PARAMETERS|DEFAULT_4XX|DEFAULT_5XX|EXPIRED_TOKEN|INTEGRATION_FAILURE|INTEGRATION_TIMEOUT|INVALID_API_KEY|INVALID_SIGNATURE|MISSING_AUTHENTICATION_TOKEN|QUOTA_EXCEEDED|REQUEST_TOO_LARGE|RESOURCE_NOT_FOUND|THROTTLED|UNAUTHORIZED|UNSUPPORTED_MEDIA_TYPE|WAF_FILTERED"]`)
  The response type of the associated GatewayResponse.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_gateway_response(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_gateway_response_errors()}

  def delete_gateway_response(%Client{} = client, response_type, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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
  Represents a delete integration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies a delete integration request's HTTP
  method.
  * `:resource_id` (`t:string`) Specifies a delete integration request's resource
  identifier.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_integration(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_integration_errors()}

  def delete_integration(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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
  Represents a delete integration response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteIntegrationResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies a delete integration response request's
  HTTP method.
  * `:resource_id` (`t:string`) Specifies a delete integration response request's
  resource identifier.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:status_code` (`t:string`) Specifies a delete integration response request's
  status code.

  ## Optional parameters:
  """

  @spec delete_integration_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_integration_response_errors()}

  def delete_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Deletes an existing Method resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteMethod&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) The HTTP verb of the Method resource.
  * `:resource_id` (`t:string`) The Resource identifier for the Method resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_method(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_method_errors()}

  def delete_method(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
  Deletes an existing MethodResponse resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteMethodResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) The HTTP verb of the Method resource.
  * `:resource_id` (`t:string`) The Resource identifier for the MethodResponse
  resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:status_code` (`t:string`) The status code identifier for the MethodResponse
  resource.

  ## Optional parameters:
  """

  @spec delete_method_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_method_response_errors()}

  def delete_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Deletes a model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_name` (`t:string`) The name of the model to delete.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_errors()}

  def delete_model(%Client{} = client, model_name, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}"

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
  Deletes a RequestValidator of a given RestApi.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteRequestValidator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:request_validator_id` (`t:string`) The identifier of the RequestValidator to
  be deleted.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_request_validator(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_request_validator_errors()}

  def delete_request_validator(
        %Client{} = client,
        request_validator_id,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators/#{AWS.Util.encode_uri(request_validator_id)}"

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
  Deletes a Resource resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string`) The identifier of the Resource resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_errors()}

  def delete_resource(%Client{} = client, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}"

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
  Deletes the specified API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteRestApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec delete_rest_api(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rest_api_errors()}

  def delete_rest_api(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"

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
  Deletes a Stage resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:stage_name` (`t:string`) The name of the Stage resource to delete.

  ## Optional parameters:
  """

  @spec delete_stage(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stage_errors()}

  def delete_stage(%Client{} = client, rest_api_id, stage_name, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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
  Deletes a usage plan of a given plan Id.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteUsagePlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:usage_plan_id` (`t:string`) The Id of the to-be-deleted usage plan.

  ## Optional parameters:
  """

  @spec delete_usage_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_usage_plan_errors()}

  def delete_usage_plan(%Client{} = client, usage_plan_id, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}"

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
  Deletes a usage plan key and remove the underlying API key from the associated
  usage plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteUsagePlanKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:key_id` (`t:string`) The Id of the UsagePlanKey resource to be deleted.
  * `:usage_plan_id` (`t:string`) The Id of the UsagePlan resource representing
  the usage plan containing the to-be-deleted UsagePlanKey resource
  representing a plan customer.

  ## Optional parameters:
  """

  @spec delete_usage_plan_key(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_usage_plan_key_errors()}

  def delete_usage_plan_key(%Client{} = client, key_id, usage_plan_id, options \\ []) do
    url_path =
      "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys/#{AWS.Util.encode_uri(key_id)}"

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
  Deletes an existing VpcLink of a specified identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20DeleteVpcLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vpc_link_id` (`t:string`) The identifier of the VpcLink. It is used in an
  Integration to reference this VpcLink.

  ## Optional parameters:
  """

  @spec delete_vpc_link(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_link_errors()}

  def delete_vpc_link(%Client{} = client, vpc_link_id, options \\ []) do
    url_path = "/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"

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
  Flushes all authorizer cache entries on a stage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20FlushStageAuthorizersCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:stage_name` (`t:string`) The name of the stage to flush.

  ## Optional parameters:
  """

  @spec flush_stage_authorizers_cache(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, flush_stage_authorizers_cache_errors()}

  def flush_stage_authorizers_cache(%Client{} = client, rest_api_id, stage_name, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/authorizers"

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
  Flushes a stage's cache.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20FlushStageCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:stage_name` (`t:string`) The name of the stage to flush its cache.

  ## Optional parameters:
  """

  @spec flush_stage_cache(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, flush_stage_cache_errors()}

  def flush_stage_cache(%Client{} = client, rest_api_id, stage_name, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/data"

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
  Generates a ClientCertificate resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GenerateClientCertificate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec generate_client_certificate(AWS.Client.t(), Keyword.t()) ::
          {:ok, client_certificate(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_client_certificate_errors()}

  def generate_client_certificate(%Client{} = client, options \\ []) do
    url_path = "/clientcertificates"

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
  Gets information about the current Account resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetAccount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, account(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_errors()}

  def get_account(%Client{} = client, options \\ []) do
    url_path = "/account"

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
  Gets information about the current ApiKey resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetApiKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_key` (`t:string`) The identifier of the ApiKey resource.

  ## Optional parameters:
  * `:include_value` (`t:boolean`) A boolean flag to specify whether (true) or not
  (false) the result contains the key value.
  """

  @spec get_api_key(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, api_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_api_key_errors()}

  def get_api_key(%Client{} = client, api_key, options \\ []) do
    url_path = "/apikeys/#{AWS.Util.encode_uri(api_key)}"

    # Validate optional parameters
    optional_params = [include_value: nil]

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
      if opt_val = Keyword.get(options, :include_value) do
        [{"includeValue", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_value])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the current ApiKeys resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetApiKeys&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:customer_id` (`t:string`) The identifier of a customer in Amazon Web
  Services Marketplace or an external system, such as a developer portal.
  * `:include_values` (`t:boolean`) A boolean flag to specify whether (true) or
  not (false) the result contains key values.
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:name_query` (`t:string`) The name of queried API keys.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_api_keys(AWS.Client.t(), Keyword.t()) ::
          {:ok, api_keys(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_api_keys_errors()}

  def get_api_keys(%Client{} = client, options \\ []) do
    url_path = "/apikeys"

    # Validate optional parameters
    optional_params = [
      customer_id: nil,
      include_values: nil,
      limit: nil,
      name_query: nil,
      position: nil
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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name_query) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include_values) do
        [{"includeValues", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :customer_id) do
        [{"customerId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:customer_id, :include_values, :limit, :name_query, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe an existing Authorizer resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetAuthorizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:authorizer_id` (`t:string`) The identifier of the Authorizer resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec get_authorizer(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, authorizer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_authorizer_errors()}

  def get_authorizer(%Client{} = client, authorizer_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Describe an existing Authorizers resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetAuthorizers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_authorizers(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, authorizers(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_authorizers_errors()}

  def get_authorizers(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe a BasePathMapping resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetBasePathMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:base_path` (`t:string`) The base path name that callers of the API must
  provide as part of the URL after the domain name. This value must be unique
  for all of the mappings across a single API. Specify '(none)' if you do not
  want callers to specify any base path name after the domain name.
  * `:domain_name` (`t:string`) The domain name of the BasePathMapping resource to
  be described.

  ## Optional parameters:
  """

  @spec get_base_path_mapping(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, base_path_mapping(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_base_path_mapping_errors()}

  def get_base_path_mapping(%Client{} = client, base_path, domain_name, options \\ []) do
    url_path =
      "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings/#{AWS.Util.encode_uri(base_path)}"

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
  Represents a collection of BasePathMapping resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetBasePathMappings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The domain name of a BasePathMapping resource.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_base_path_mappings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, base_path_mappings(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_base_path_mappings_errors()}

  def get_base_path_mappings(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the current ClientCertificate resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetClientCertificate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:client_certificate_id` (`t:string`) The identifier of the ClientCertificate
  resource to be described.

  ## Optional parameters:
  """

  @spec get_client_certificate(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, client_certificate(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_client_certificate_errors()}

  def get_client_certificate(%Client{} = client, client_certificate_id, options \\ []) do
    url_path = "/clientcertificates/#{AWS.Util.encode_uri(client_certificate_id)}"

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
  Gets a collection of ClientCertificate resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetClientCertificates&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_client_certificates(AWS.Client.t(), Keyword.t()) ::
          {:ok, client_certificates(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_client_certificates_errors()}

  def get_client_certificates(%Client{} = client, options \\ []) do
    url_path = "/clientcertificates"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Deployment resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:deployment_id` (`t:string`) The identifier of the Deployment resource to get
  information about.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:embed` (`t:list[com.amazonaws.apigateway#String]`) A query parameter to
  retrieve the specified embedded resources of the returned Deployment
  resource in the response. In a REST API call, this embed parameter value is
  a list of comma-separated strings, as in GET
  /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2. The SDK
  and other platform-dependent libraries might use a different format for the
  list. Currently, this request supports only retrieval of the embedded API
  summary this way. Hence, the parameter value must be a single-valued list
  containing only the "apisummary" string. For example, GET
  /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary.
  """

  @spec get_deployment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployment_errors()}

  def get_deployment(%Client{} = client, deployment_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

    # Validate optional parameters
    optional_params = [embed: nil]

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
      if opt_val = Keyword.get(options, :embed) do
        [{"embed", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:embed])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Deployments collection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetDeployments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_deployments(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, deployments(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployments_errors()}

  def get_deployments(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a documentation part.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetDocumentationPart&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:documentation_part_id` (`t:string`) The string identifier of the associated
  RestApi.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec get_documentation_part(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, documentation_part(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_documentation_part_errors()}

  def get_documentation_part(
        %Client{} = client,
        documentation_part_id,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts/#{AWS.Util.encode_uri(documentation_part_id)}"

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
  Gets documentation parts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetDocumentationParts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:location_status` (`t:enum["DOCUMENTED|UNDOCUMENTED"]`) The status of the API
  documentation parts to retrieve. Valid values are DOCUMENTED for retrieving
  DocumentationPart resources with content and UNDOCUMENTED for
  DocumentationPart resources without content.
  * `:name_query` (`t:string`) The name of API entities of the to-be-retrieved
  documentation parts.
  * `:path` (`t:string`) The path of API entities of the to-be-retrieved
  documentation parts.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  * `:type`
  (`t:enum["API|AUTHORIZER|METHOD|MODEL|PATH_PARAMETER|QUERY_PARAMETER|REQUEST_BODY|REQUEST_HEADER|RESOURCE|RESPONSE|RESPONSE_BODY|RESPONSE_HEADER"]`)
  The type of API entities of the to-be-retrieved documentation parts.
  """

  @spec get_documentation_parts(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, documentation_parts(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_documentation_parts_errors()}

  def get_documentation_parts(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts"

    # Validate optional parameters
    optional_params = [
      limit: nil,
      location_status: nil,
      name_query: nil,
      path: nil,
      position: nil,
      type: nil
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
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :path) do
        [{"path", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name_query) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :location_status) do
        [{"locationStatus", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :location_status, :name_query, :path, :position, :type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a documentation version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetDocumentationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:documentation_version` (`t:string`) The version identifier of the
  to-be-retrieved documentation snapshot.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec get_documentation_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, documentation_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_documentation_version_errors()}

  def get_documentation_version(
        %Client{} = client,
        documentation_version,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions/#{AWS.Util.encode_uri(documentation_version)}"

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
  Gets documentation versions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetDocumentationVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_documentation_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, documentation_versions(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_documentation_versions_errors()}

  def get_documentation_versions(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Represents a domain name that is contained in a simpler, more intuitive URL that
  can be called.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetDomainName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the DomainName resource.

  ## Optional parameters:
  """

  @spec get_domain_name(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, domain_name(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_name_errors()}

  def get_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}"

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
  Represents a collection of DomainName resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetDomainNames&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_domain_names(AWS.Client.t(), Keyword.t()) ::
          {:ok, domain_names(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_names_errors()}

  def get_domain_names(%Client{} = client, options \\ []) do
    url_path = "/domainnames"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Exports a deployed version of a RestApi in a specified format.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetExport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:export_type` (`t:string`) The type of export. Acceptable values are 'oas30'
  for OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:stage_name` (`t:string`) The name of the Stage that will be exported.

  ## Optional parameters:
  * `:parameters` (`t:map`) A key-value map of query string parameters that
  specify properties of the export, depending on the requested exportType. For
  exportType oas30 and swagger, any combination of the following parameters
  are supported: extensions='integrations' or extensions='apigateway' will
  export the API with x-amazon-apigateway-integration extensions.
  extensions='authorizers' will export the API with
  x-amazon-apigateway-authorizer extensions. postman will export the API with
  Postman extensions, allowing for import to the Postman tool
  * `:accepts` (`t:string`) The content-type of the export, for example
  application/json. Currently application/json and application/yaml are
  supported for exportType ofoas30 and swagger. This should be specified in
  the Accept header for direct API requests.
  """

  @spec get_export(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_export_errors()}

  def get_export(%Client{} = client, export_type, rest_api_id, stage_name, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/exports/#{AWS.Util.encode_uri(export_type)}"

    # Validate optional parameters
    optional_params = [parameters: nil, accepts: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :accepts) do
        [{"Accept", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :parameters) do
        [{"parameters", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Disposition", "contentDisposition"}, {"Content-Type", "contentType"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:parameters, :accepts])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a GatewayResponse of a specified response type on the given RestApi.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetGatewayResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:response_type`
  (`t:enum["ACCESS_DENIED|API_CONFIGURATION_ERROR|AUTHORIZER_CONFIGURATION_ERROR|AUTHORIZER_FAILURE|BAD_REQUEST_BODY|BAD_REQUEST_PARAMETERS|DEFAULT_4XX|DEFAULT_5XX|EXPIRED_TOKEN|INTEGRATION_FAILURE|INTEGRATION_TIMEOUT|INVALID_API_KEY|INVALID_SIGNATURE|MISSING_AUTHENTICATION_TOKEN|QUOTA_EXCEEDED|REQUEST_TOO_LARGE|RESOURCE_NOT_FOUND|THROTTLED|UNAUTHORIZED|UNSUPPORTED_MEDIA_TYPE|WAF_FILTERED"]`)
  The response type of the associated GatewayResponse.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec get_gateway_response(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_gateway_response_errors()}

  def get_gateway_response(%Client{} = client, response_type, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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
  Gets the GatewayResponses collection on the given RestApi. If an API developer
  has not added any definitions for gateway responses, the result will be the
  API Gateway-generated default GatewayResponses collection for the supported
  response types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetGatewayResponses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500. The GatewayResponses
  collection does not support pagination and the limit does not apply here.
  * `:position` (`t:string`) The current pagination position in the paged result
  set. The GatewayResponse collection does not support pagination and the
  position does not apply here.
  """

  @spec get_gateway_responses(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, gateway_responses(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_gateway_responses_errors()}

  def get_gateway_responses(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the integration settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies a get integration request's HTTP method.
  * `:resource_id` (`t:string`) Specifies a get integration request's resource
  identifier
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec get_integration(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_integration_errors()}

  def get_integration(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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
  Represents a get integration response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetIntegrationResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies a get integration response request's
  HTTP method.
  * `:resource_id` (`t:string`) Specifies a get integration response request's
  resource identifier.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:status_code` (`t:string`) Specifies a get integration response request's
  status code.

  ## Optional parameters:
  """

  @spec get_integration_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_integration_response_errors()}

  def get_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Describe an existing Method resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetMethod&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies the method request's HTTP method type.
  * `:resource_id` (`t:string`) The Resource identifier for the Method resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec get_method(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, method(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_method_errors()}

  def get_method(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
  Describes a MethodResponse resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetMethodResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) The HTTP verb of the Method resource.
  * `:resource_id` (`t:string`) The Resource identifier for the MethodResponse
  resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:status_code` (`t:string`) The status code for the MethodResponse resource.

  ## Optional parameters:
  """

  @spec get_method_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_method_response_errors()}

  def get_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Describes an existing model defined for a RestApi resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_name` (`t:string`) The name of the model as an identifier.
  * `:rest_api_id` (`t:string`) The RestApi identifier under which the Model
  exists.

  ## Optional parameters:
  * `:flatten` (`t:boolean`) A query parameter of a Boolean value to resolve
  (true) all external model references and returns a flattened model schema or
  not (false) The default is false.
  """

  @spec get_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, model(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_errors()}

  def get_model(%Client{} = client, model_name, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}"

    # Validate optional parameters
    optional_params = [flatten: nil]

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
      if opt_val = Keyword.get(options, :flatten) do
        [{"flatten", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:flatten])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generates a sample mapping template that can be used to transform a payload into
  the structure of a model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetModelTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_name` (`t:string`) The name of the model for which to generate a
  template.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec get_model_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, template(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_template_errors()}

  def get_model_template(%Client{} = client, model_name, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}/default_template"

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
  Describes existing Models defined for a RestApi resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetModels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_models(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, models(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_models_errors()}

  def get_models(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a RequestValidator of a given RestApi.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetRequestValidator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:request_validator_id` (`t:string`) The identifier of the RequestValidator to
  be retrieved.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec get_request_validator(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, request_validator(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_request_validator_errors()}

  def get_request_validator(%Client{} = client, request_validator_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators/#{AWS.Util.encode_uri(request_validator_id)}"

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
  Gets the RequestValidators collection of a given RestApi.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetRequestValidators&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_request_validators(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, request_validators(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_request_validators_errors()}

  def get_request_validators(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists information about a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string`) The identifier for the Resource resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:embed` (`t:list[com.amazonaws.apigateway#String]`) A query parameter to
  retrieve the specified resources embedded in the returned Resource
  representation in the response. This embed parameter value is a list of
  comma-separated strings. Currently, the request supports only retrieval of
  the embedded Method resources this way. The query parameter value must be a
  single-valued list and contain the "methods" string. For example, GET
  /restapis/{restapi_id}/resources/{resource_id}?embed=methods.
  """

  @spec get_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, resource(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_errors()}

  def get_resource(%Client{} = client, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}"

    # Validate optional parameters
    optional_params = [embed: nil]

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
      if opt_val = Keyword.get(options, :embed) do
        [{"embed", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:embed])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists information about a collection of Resource resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:embed` (`t:list[com.amazonaws.apigateway#String]`) A query parameter used to
  retrieve the specified resources embedded in the returned Resources resource
  in the response. This embed parameter value is a list of comma-separated
  strings. Currently, the request supports only retrieval of the embedded
  Method resources this way. The query parameter value must be a single-valued
  list and contain the "methods" string. For example, GET
  /restapis/{restapi_id}/resources?embed=methods.
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_resources(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, resources(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resources_errors()}

  def get_resources(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources"

    # Validate optional parameters
    optional_params = [embed: nil, limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :embed) do
        [{"embed", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:embed, :limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the RestApi resource in the collection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetRestApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec get_rest_api(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rest_api_errors()}

  def get_rest_api(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"

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
  Lists the RestApis resources for your collection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetRestApis&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_rest_apis(AWS.Client.t(), Keyword.t()) ::
          {:ok, rest_apis(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rest_apis_errors()}

  def get_rest_apis(%Client{} = client, options \\ []) do
    url_path = "/restapis"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generates a client SDK for a RestApi and Stage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetSdk&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:sdk_type` (`t:string`) The language for the generated SDK. Currently java,
  javascript, android, objectivec (for iOS), swift (for iOS), and ruby are
  supported.
  * `:stage_name` (`t:string`) The name of the Stage that the SDK will use.

  ## Optional parameters:
  * `:parameters` (`t:map`) A string-to-string key-value map of query parameters
  sdkType-dependent properties of the SDK. For sdkType of objectivec or swift,
  a parameter named classPrefix is required. For sdkType of android,
  parameters named groupId, artifactId, artifactVersion, and invokerPackage
  are required. For sdkType of java, parameters named serviceName and
  javaPackageName are required.
  """

  @spec get_sdk(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, sdk_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sdk_errors()}

  def get_sdk(%Client{} = client, rest_api_id, sdk_type, stage_name, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/sdks/#{AWS.Util.encode_uri(sdk_type)}"

    # Validate optional parameters
    optional_params = [parameters: nil]

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
      if opt_val = Keyword.get(options, :parameters) do
        [{"parameters", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Disposition", "contentDisposition"}, {"Content-Type", "contentType"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:parameters])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an SDK type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetSdkType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The identifier of the queried SdkType instance.

  ## Optional parameters:
  """

  @spec get_sdk_type(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, sdk_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sdk_type_errors()}

  def get_sdk_type(%Client{} = client, id, options \\ []) do
    url_path = "/sdktypes/#{AWS.Util.encode_uri(id)}"

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
  Gets SDK types

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetSdkTypes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_sdk_types(AWS.Client.t(), Keyword.t()) ::
          {:ok, sdk_types(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sdk_types_errors()}

  def get_sdk_types(%Client{} = client, options \\ []) do
    url_path = "/sdktypes"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Stage resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:stage_name` (`t:string`) The name of the Stage resource to get information
  about.

  ## Optional parameters:
  """

  @spec get_stage(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, stage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stage_errors()}

  def get_stage(%Client{} = client, rest_api_id, stage_name, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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
  Gets information about one or more Stage resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetStages&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  * `:deployment_id` (`t:string`) The stages' deployment identifiers.
  """

  @spec get_stages(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, stages(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stages_errors()}

  def get_stages(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages"

    # Validate optional parameters
    optional_params = [deployment_id: nil]

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
      if opt_val = Keyword.get(options, :deployment_id) do
        [{"deploymentId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:deployment_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Tags collection for a given resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of a resource that can be tagged.

  ## Optional parameters:
  * `:limit` (`t:integer`) (Not currently supported) The maximum number of
  returned results per page. The default value is 25 and the maximum value is
  500.
  * `:position` (`t:string`) (Not currently supported) The current pagination
  position in the paged result set.
  """

  @spec get_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tags(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tags_errors()}

  def get_tags(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the usage data of a usage plan in a specified time interval.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetUsage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:usage_plan_id` (`t:string`) The Id of the usage plan associated with the
  usage data.
  * `:end_date` (`t:string`) The ending date (e.g., 2016-12-31) of the usage data.
  * `:start_date` (`t:string`) The starting date (e.g., 2016-01-01) of the usage
  data.

  ## Optional parameters:
  * `:key_id` (`t:string`) The Id of the API key associated with the resultant
  usage data.
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_usage(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, usage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_usage_errors()}

  def get_usage(%Client{} = client, usage_plan_id, end_date, start_date, options \\ [])
      when is_binary(end_date) and is_binary(start_date) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/usage"

    # Validate optional parameters
    optional_params = [key_id: nil, limit: nil, position: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"endDate", end_date}, {"startDate", start_date}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :key_id) do
        [{"keyId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:key_id, :limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a usage plan of a given plan identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetUsagePlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:usage_plan_id` (`t:string`) The identifier of the UsagePlan resource to be
  retrieved.

  ## Optional parameters:
  """

  @spec get_usage_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, usage_plan(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_usage_plan_errors()}

  def get_usage_plan(%Client{} = client, usage_plan_id, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}"

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
  Gets a usage plan key of a given key identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetUsagePlanKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:key_id` (`t:string`) The key Id of the to-be-retrieved UsagePlanKey resource
  representing a plan customer.
  * `:usage_plan_id` (`t:string`) The Id of the UsagePlan resource representing
  the usage plan containing the to-be-retrieved UsagePlanKey resource
  representing a plan customer.

  ## Optional parameters:
  """

  @spec get_usage_plan_key(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, usage_plan_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_usage_plan_key_errors()}

  def get_usage_plan_key(%Client{} = client, key_id, usage_plan_id, options \\ []) do
    url_path =
      "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys/#{AWS.Util.encode_uri(key_id)}"

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
  Gets all the usage plan keys representing the API keys added to a specified
  usage plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetUsagePlanKeys&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:usage_plan_id` (`t:string`) The Id of the UsagePlan resource representing
  the usage plan containing the to-be-retrieved UsagePlanKey resource
  representing a plan customer.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:name_query` (`t:string`) A query parameter specifying the name of the
  to-be-returned usage plan keys.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_usage_plan_keys(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, usage_plan_keys(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_usage_plan_keys_errors()}

  def get_usage_plan_keys(%Client{} = client, usage_plan_id, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys"

    # Validate optional parameters
    optional_params = [limit: nil, name_query: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name_query) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :name_query, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets all the usage plans of the caller's account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetUsagePlans&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:key_id` (`t:string`) The identifier of the API key associated with the usage
  plans.
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_usage_plans(AWS.Client.t(), Keyword.t()) ::
          {:ok, usage_plans(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_usage_plans_errors()}

  def get_usage_plans(%Client{} = client, options \\ []) do
    url_path = "/usageplans"

    # Validate optional parameters
    optional_params = [key_id: nil, limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :key_id) do
        [{"keyId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:key_id, :limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a specified VPC link under the caller's account in a region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetVpcLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vpc_link_id` (`t:string`) The identifier of the VpcLink. It is used in an
  Integration to reference this VpcLink.

  ## Optional parameters:
  """

  @spec get_vpc_link(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, vpc_link(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vpc_link_errors()}

  def get_vpc_link(%Client{} = client, vpc_link_id, options \\ []) do
    url_path = "/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"

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
  Gets the VpcLinks collection under the caller's account in a selected region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20GetVpcLinks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of returned results per page. The
  default value is 25 and the maximum value is 500.
  * `:position` (`t:string`) The current pagination position in the paged result
  set.
  """

  @spec get_vpc_links(AWS.Client.t(), Keyword.t()) ::
          {:ok, vpc_links(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vpc_links_errors()}

  def get_vpc_links(%Client{} = client, options \\ []) do
    url_path = "/vpclinks"

    # Validate optional parameters
    optional_params = [limit: nil, position: nil]

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
      if opt_val = Keyword.get(options, :position) do
        [{"position", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :position])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Import API keys from an external source, such as a CSV-formatted file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20ImportApiKeys&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:format` (`t:enum["csv"]`) A query parameter to specify the input format to
  imported API keys. Currently, only the csv format is supported.
  * `:input` (`t:map`):
    * `:body` (`t:blob`) The payload of the POST request to import API keys. For the
  payload format, see API Key File Format.

  ## Optional parameters:
  * `:fail_on_warnings` (`t:boolean`) A query parameter to indicate whether to
  rollback ApiKey importation (true) or not (false) when error is encountered.
  """

  @spec import_api_keys(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, api_key_ids(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_api_keys_errors()}

  def import_api_keys(%Client{} = client, format, input, options \\ [])
      when is_map(input) and is_binary(format) do
    url_path = "/apikeys?mode=import"

    # Validate optional parameters
    optional_params = [fail_on_warnings: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"format", format}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :fail_on_warnings) do
        [{"failonwarnings", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:fail_on_warnings])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Imports documentation parts

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20ImportDocumentationParts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:input` (`t:map`):
    * `:body` (`t:blob`) Raw byte array representing the to-be-imported
  documentation parts. To import from an OpenAPI file, this is a JSON object.

  ## Optional parameters:
  * `:fail_on_warnings` (`t:boolean`) A query parameter to specify whether to
  rollback the documentation importation (true) or not (false) when a warning
  is encountered. The default value is false.
  * `:mode` (`t:enum["Merge|Overwrite"]`) A query parameter to indicate whether to
  overwrite (overwrite) any existing DocumentationParts definition or to merge
  (merge) the new definition into the existing one. The default value is
  merge.
  """

  @spec import_documentation_parts(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, documentation_part_ids(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_documentation_parts_errors()}

  def import_documentation_parts(%Client{} = client, rest_api_id, input, options \\ [])
      when is_map(input) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts"

    # Validate optional parameters
    optional_params = [fail_on_warnings: nil, mode: nil]

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
      if opt_val = Keyword.get(options, :mode) do
        [{"mode", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :fail_on_warnings) do
        [{"failonwarnings", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:fail_on_warnings, :mode])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  A feature of the API Gateway control service for creating a new API from an
  external API definition file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20ImportRestApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:body` (`t:blob`) The POST request body containing external API definitions.
  Currently, only OpenAPI definition JSON/YAML files are supported. The
  maximum size of the API definition file is 6MB.

  ## Optional parameters:
  * `:parameters` (`t:map`) A key-value map of context-specific query string
  parameters specifying the behavior of different API importing operations.
  The following shows operation-specific parameters and their supported
  values.
  * `:fail_on_warnings` (`t:boolean`) A query parameter to indicate whether to
  rollback the API creation (true) or not (false) when a warning is
  encountered. The default value is false.
  """

  @spec import_rest_api(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_rest_api_errors()}

  def import_rest_api(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/restapis?mode=import"

    # Validate optional parameters
    optional_params = [parameters: nil, fail_on_warnings: nil]

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
      if opt_val = Keyword.get(options, :fail_on_warnings) do
        [{"failonwarnings", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :parameters) do
        [{"parameters", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:parameters, :fail_on_warnings])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a customization of a GatewayResponse of a specified response type and
  status code on the given RestApi.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20PutGatewayResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:response_type`
  (`t:enum["ACCESS_DENIED|API_CONFIGURATION_ERROR|AUTHORIZER_CONFIGURATION_ERROR|AUTHORIZER_FAILURE|BAD_REQUEST_BODY|BAD_REQUEST_PARAMETERS|DEFAULT_4XX|DEFAULT_5XX|EXPIRED_TOKEN|INTEGRATION_FAILURE|INTEGRATION_TIMEOUT|INVALID_API_KEY|INVALID_SIGNATURE|MISSING_AUTHENTICATION_TOKEN|QUOTA_EXCEEDED|REQUEST_TOO_LARGE|RESOURCE_NOT_FOUND|THROTTLED|UNAUTHORIZED|UNSUPPORTED_MEDIA_TYPE|WAF_FILTERED"]`)
  The response type of the associated GatewayResponse
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec put_gateway_response(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_gateway_response_errors()}

  def put_gateway_response(%Client{} = client, response_type, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Sets up a method's integration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20PutIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies the HTTP method for the integration.
  * `:resource_id` (`t:string`) Specifies a put integration request's resource ID.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:input` (`t:map`):
    * `:http_method` (`t:string`) Specifies the HTTP method for the integration.
    * `:integration_http_method` (`t:string`) The HTTP method for the integration.

  ## Optional parameters:
  """

  @spec put_integration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_integration_errors()}

  def put_integration(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Represents a put integration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20PutIntegrationResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies a put integration response request's
  HTTP method.
  * `:resource_id` (`t:string`) Specifies a put integration response request's
  resource identifier.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:status_code` (`t:string`) Specifies the status code that is used to map the
  integration response to an existing MethodResponse.

  ## Optional parameters:
  """

  @spec put_integration_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_integration_response_errors()}

  def put_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Add a method to an existing Resource resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20PutMethod&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies the method request's HTTP method type.
  * `:resource_id` (`t:string`) The Resource identifier for the new Method
  resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec put_method(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, method(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_method_errors()}

  def put_method(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Adds a MethodResponse to an existing Method resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20PutMethodResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) The HTTP verb of the Method resource.
  * `:resource_id` (`t:string`) The Resource identifier for the Method resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:status_code` (`t:string`) The method response's status code.

  ## Optional parameters:
  """

  @spec put_method_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_method_response_errors()}

  def put_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  A feature of the API Gateway control service for updating an existing API with
  an input of external API definitions. The update can take the form of merging
  the supplied definition into the existing API or overwriting the existing API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20PutRestApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:input` (`t:map`):
    * `:body` (`t:blob`) The PUT request body containing external API definitions.
  Currently, only OpenAPI definition JSON/YAML files are supported. The
  maximum size of the API definition file is 6MB.

  ## Optional parameters:
  * `:parameters` (`t:map`) Custom header parameters as part of the request. For
  example, to exclude DocumentationParts from an imported API, set
  ignore=documentation as a parameters value, as in the AWS CLI command of aws
  apigateway import-rest-api --parameters ignore=documentation --body
  'file:///path/to/imported-api-body.json'.
  * `:fail_on_warnings` (`t:boolean`) A query parameter to indicate whether to
  rollback the API update (true) or not (false) when a warning is encountered.
  The default value is false.
  * `:mode` (`t:enum["Merge|Overwrite"]`) The mode query parameter to specify the
  update mode. Valid values are "merge" and "overwrite". By default, the
  update mode is "merge".
  """

  @spec put_rest_api(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_rest_api_errors()}

  def put_rest_api(%Client{} = client, rest_api_id, input, options \\ []) when is_map(input) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"

    # Validate optional parameters
    optional_params = [parameters: nil, fail_on_warnings: nil, mode: nil]

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
      if opt_val = Keyword.get(options, :mode) do
        [{"mode", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :fail_on_warnings) do
        [{"failonwarnings", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :parameters) do
        [{"parameters", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:parameters, :fail_on_warnings, :mode])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds or updates a tag on a given resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of a resource that can be tagged.

  ## Optional parameters:
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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Simulate the execution of an Authorizer in your RestApi with headers,
  parameters, and an incoming request body.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20TestInvokeAuthorizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:authorizer_id` (`t:string`) Specifies a test invoke authorizer request's
  Authorizer ID.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec test_invoke_authorizer(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, test_invoke_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_invoke_authorizer_errors()}

  def test_invoke_authorizer(%Client{} = client, authorizer_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Simulate the invocation of a Method in your RestApi with headers, parameters,
  and an incoming request body.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20TestInvokeMethod&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies a test invoke method request's HTTP
  method.
  * `:resource_id` (`t:string`) Specifies a test invoke method request's resource
  ID.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec test_invoke_method(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, test_invoke_method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_invoke_method_errors()}

  def test_invoke_method(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
  Removes a tag from a given resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of a resource that can be tagged.
  * `:tag_keys` (`t:list[com.amazonaws.apigateway#String]`) The Tag keys to
  delete.

  ## Optional parameters:
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
  Changes information about the current Account resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateAccount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, account(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_errors()}

  def update_account(%Client{} = client, options \\ []) do
    url_path = "/account"

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
  Changes information about an ApiKey resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateApiKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_key` (`t:string`) The identifier of the ApiKey resource to be updated.

  ## Optional parameters:
  """

  @spec update_api_key(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, api_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_api_key_errors()}

  def update_api_key(%Client{} = client, api_key, options \\ []) do
    url_path = "/apikeys/#{AWS.Util.encode_uri(api_key)}"

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
  Updates an existing Authorizer resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateAuthorizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:authorizer_id` (`t:string`) The identifier of the Authorizer resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_authorizer(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, authorizer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_authorizer_errors()}

  def update_authorizer(%Client{} = client, authorizer_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Changes information about the BasePathMapping resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateBasePathMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:base_path` (`t:string`) The base path of the BasePathMapping resource to
  change.
  * `:domain_name` (`t:string`) The domain name of the BasePathMapping resource to
  change.

  ## Optional parameters:
  """

  @spec update_base_path_mapping(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, base_path_mapping(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_base_path_mapping_errors()}

  def update_base_path_mapping(%Client{} = client, base_path, domain_name, options \\ []) do
    url_path =
      "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings/#{AWS.Util.encode_uri(base_path)}"

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
  Changes information about an ClientCertificate resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateClientCertificate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:client_certificate_id` (`t:string`) The identifier of the ClientCertificate
  resource to be updated.

  ## Optional parameters:
  """

  @spec update_client_certificate(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, client_certificate(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_client_certificate_errors()}

  def update_client_certificate(%Client{} = client, client_certificate_id, options \\ []) do
    url_path = "/clientcertificates/#{AWS.Util.encode_uri(client_certificate_id)}"

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
  Changes information about a Deployment resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:deployment_id` (`t:string`) The replacement identifier for the Deployment
  resource to change information about.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_deployment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_deployment_errors()}

  def update_deployment(%Client{} = client, deployment_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Updates a documentation part.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateDocumentationPart&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:documentation_part_id` (`t:string`) The identifier of the to-be-updated
  documentation part.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_documentation_part(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, documentation_part(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_documentation_part_errors()}

  def update_documentation_part(
        %Client{} = client,
        documentation_part_id,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts/#{AWS.Util.encode_uri(documentation_part_id)}"

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
  Updates a documentation version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateDocumentationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:documentation_version` (`t:string`) The version identifier of the
  to-be-updated documentation version.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_documentation_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, documentation_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_documentation_version_errors()}

  def update_documentation_version(
        %Client{} = client,
        documentation_version,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions/#{AWS.Util.encode_uri(documentation_version)}"

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
  Changes information about the DomainName resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateDomainName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The name of the DomainName resource to be changed.

  ## Optional parameters:
  """

  @spec update_domain_name(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, domain_name(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_name_errors()}

  def update_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}"

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
  Updates a GatewayResponse of a specified response type on the given RestApi.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateGatewayResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:response_type`
  (`t:enum["ACCESS_DENIED|API_CONFIGURATION_ERROR|AUTHORIZER_CONFIGURATION_ERROR|AUTHORIZER_FAILURE|BAD_REQUEST_BODY|BAD_REQUEST_PARAMETERS|DEFAULT_4XX|DEFAULT_5XX|EXPIRED_TOKEN|INTEGRATION_FAILURE|INTEGRATION_TIMEOUT|INVALID_API_KEY|INVALID_SIGNATURE|MISSING_AUTHENTICATION_TOKEN|QUOTA_EXCEEDED|REQUEST_TOO_LARGE|RESOURCE_NOT_FOUND|THROTTLED|UNAUTHORIZED|UNSUPPORTED_MEDIA_TYPE|WAF_FILTERED"]`)
  The response type of the associated GatewayResponse.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_gateway_response(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_gateway_response_errors()}

  def update_gateway_response(%Client{} = client, response_type, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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
  Represents an update integration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Represents an update integration request's HTTP
  method.
  * `:resource_id` (`t:string`) Represents an update integration request's
  resource identifier.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_integration(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_integration_errors()}

  def update_integration(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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
  Represents an update integration response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateIntegrationResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) Specifies an update integration response request's
  HTTP method.
  * `:resource_id` (`t:string`) Specifies an update integration response request's
  resource identifier.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:status_code` (`t:string`) Specifies an update integration response request's
  status code.

  ## Optional parameters:
  """

  @spec update_integration_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_integration_response_errors()}

  def update_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Updates an existing Method resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateMethod&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) The HTTP verb of the Method resource.
  * `:resource_id` (`t:string`) The Resource identifier for the Method resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_method(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, method(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_method_errors()}

  def update_method(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
  Updates an existing MethodResponse resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateMethodResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:http_method` (`t:string`) The HTTP verb of the Method resource.
  * `:resource_id` (`t:string`) The Resource identifier for the MethodResponse
  resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:status_code` (`t:string`) The status code for the MethodResponse resource.

  ## Optional parameters:
  """

  @spec update_method_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_method_response_errors()}

  def update_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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
      201
    )
  end

  @doc """
  Changes information about a model. The maximum size of the model is 400 KB.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_name` (`t:string`) The name of the model to update.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, model(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_model_errors()}

  def update_model(%Client{} = client, model_name, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}"

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
  Updates a RequestValidator of a given RestApi.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateRequestValidator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:request_validator_id` (`t:string`) The identifier of RequestValidator to be
  updated.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_request_validator(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, request_validator(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_request_validator_errors()}

  def update_request_validator(
        %Client{} = client,
        request_validator_id,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators/#{AWS.Util.encode_uri(request_validator_id)}"

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
  Changes information about a Resource resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string`) The identifier of the Resource resource.
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, resource(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_errors()}

  def update_resource(%Client{} = client, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}"

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
  Changes information about the specified API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateRestApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.

  ## Optional parameters:
  """

  @spec update_rest_api(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rest_api_errors()}

  def update_rest_api(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"

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
  Changes information about a Stage resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:rest_api_id` (`t:string`) The string identifier of the associated RestApi.
  * `:stage_name` (`t:string`) The name of the Stage resource to change
  information about.

  ## Optional parameters:
  """

  @spec update_stage(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, stage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_stage_errors()}

  def update_stage(%Client{} = client, rest_api_id, stage_name, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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
  Grants a temporary extension to the remaining quota of a usage plan associated
  with a specified API key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateUsage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:key_id` (`t:string`) The identifier of the API key associated with the usage
  plan in which a temporary extension is granted to the remaining quota.
  * `:usage_plan_id` (`t:string`) The Id of the usage plan associated with the
  usage data.

  ## Optional parameters:
  """

  @spec update_usage(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, usage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_usage_errors()}

  def update_usage(%Client{} = client, key_id, usage_plan_id, options \\ []) do
    url_path =
      "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys/#{AWS.Util.encode_uri(key_id)}/usage"

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
  Updates a usage plan of a given plan Id.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateUsagePlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:usage_plan_id` (`t:string`) The Id of the to-be-updated usage plan.

  ## Optional parameters:
  """

  @spec update_usage_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, usage_plan(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_usage_plan_errors()}

  def update_usage_plan(%Client{} = client, usage_plan_id, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}"

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
  Updates an existing VpcLink of a specified identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigateway%20UpdateVpcLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vpc_link_id` (`t:string`) The identifier of the VpcLink. It is used in an
  Integration to reference this VpcLink.

  ## Optional parameters:
  """

  @spec update_vpc_link(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, vpc_link(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpc_link_errors()}

  def update_vpc_link(%Client{} = client, vpc_link_id, options \\ []) do
    url_path = "/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"

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
