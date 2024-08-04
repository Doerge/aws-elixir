# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApiGatewayV2 do
  @moduledoc """
  Amazon API Gateway V2
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_stage_request() :: %{
        optional("AccessLogSettings") => access_log_settings(),
        optional("AutoDeploy") => boolean(),
        optional("ClientCertificateId") => String.t(),
        optional("DefaultRouteSettings") => route_settings(),
        optional("DeploymentId") => String.t(),
        optional("Description") => String.t(),
        optional("RouteSettings") => map(),
        optional("StageVariables") => map()
      }
      
  """
  @type update_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_integration_response_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t(),
        "IntegrationResponseKey" => String.t(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t()
      }
      
  """
  @type update_integration_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stages_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_stages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_integration_response_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t(),
        "IntegrationResponseKey" => String.t(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t()
      }
      
  """
  @type create_integration_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_api_request() :: %{
        optional("ExportVersion") => String.t(),
        optional("IncludeExtensions") => boolean(),
        optional("StageName") => String.t(),
        required("OutputType") => String.t()
      }
      
  """
  @type export_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t(),
        "Description" => String.t(),
        "LastDeploymentStatusMessage" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t(),
        "StageVariables" => map(),
        "Tags" => map()
      }
      
  """
  @type stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployments_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        optional("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tls_config_input() :: %{
        "ServerNameToVerify" => String.t()
      }
      
  """
  @type tls_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_link_response() :: %{}
      
  """
  @type delete_vpc_link_response() :: %{}

  @typedoc """

  ## Example:
      
      authorizer() :: %{
        "AuthorizerCredentialsArn" => String.t(),
        "AuthorizerId" => String.t(),
        "AuthorizerPayloadFormatVersion" => String.t(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t()()),
        "IdentityValidationExpression" => String.t(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t()
      }
      
  """
  @type authorizer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_authorizer_response() :: %{
        "AuthorizerCredentialsArn" => String.t(),
        "AuthorizerId" => String.t(),
        "AuthorizerPayloadFormatVersion" => String.t(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t()()),
        "IdentityValidationExpression" => String.t(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t()
      }
      
  """
  @type get_authorizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stage_response() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t(),
        "Description" => String.t(),
        "LastDeploymentStatusMessage" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t(),
        "StageVariables" => map(),
        "Tags" => map()
      }
      
  """
  @type create_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpc_links_response() :: %{
        "Items" => list(vpc_link()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_vpc_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tags_request() :: %{}
      
  """
  @type get_tags_request() :: %{}

  @typedoc """

  ## Example:
      
      get_stage_response() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t(),
        "Description" => String.t(),
        "LastDeploymentStatusMessage" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t(),
        "StageVariables" => map(),
        "Tags" => map()
      }
      
  """
  @type get_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_constraints() :: %{
        "Required" => boolean()
      }
      
  """
  @type parameter_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_api_mapping_request() :: %{}
      
  """
  @type delete_api_mapping_request() :: %{}

  @typedoc """

  ## Example:
      
      integration() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t(),
        "Description" => String.t(),
        "IntegrationId" => String.t(),
        "IntegrationMethod" => String.t(),
        "IntegrationResponseSelectionExpression" => String.t(),
        "IntegrationSubtype" => String.t(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }
      
  """
  @type integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_api_mapping_request() :: %{
        optional("ApiMappingKey") => String.t(),
        optional("Stage") => String.t(),
        required("ApiId") => String.t()
      }
      
  """
  @type update_api_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_integration_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t(),
        "Description" => String.t(),
        "IntegrationId" => String.t(),
        "IntegrationMethod" => String.t(),
        "IntegrationResponseSelectionExpression" => String.t(),
        "IntegrationSubtype" => String.t(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }
      
  """
  @type get_integration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_authorizers_response() :: %{
        "Items" => list(authorizer()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_authorizers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_integration_response_request() :: %{}
      
  """
  @type delete_integration_response_request() :: %{}

  @typedoc """

  ## Example:
      
      route_settings() :: %{
        "DataTraceEnabled" => boolean(),
        "DetailedMetricsEnabled" => boolean(),
        "LoggingLevel" => list(any()),
        "ThrottlingBurstLimit" => integer(),
        "ThrottlingRateLimit" => float()
      }
      
  """
  @type route_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_route_responses_response() :: %{
        "Items" => list(route_response()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_route_responses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mutual_tls_authentication() :: %{
        optional("TruststoreUri") => String.t(),
        optional("TruststoreVersion") => String.t(),
        optional("TruststoreWarnings") => list(String.t()())
      }
      
  """
  @type mutual_tls_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_route_response_request() :: %{
        optional("ModelSelectionExpression") => String.t(),
        optional("ResponseModels") => map(),
        optional("ResponseParameters") => map(),
        required("RouteResponseKey") => String.t()
      }
      
  """
  @type create_route_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_api_mapping_response() :: %{
        "ApiId" => String.t(),
        "ApiMappingId" => String.t(),
        "ApiMappingKey" => String.t(),
        "Stage" => String.t()
      }
      
  """
  @type update_api_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_route_response_response() :: %{
        "ModelSelectionExpression" => String.t(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t(),
        "RouteResponseKey" => String.t()
      }
      
  """
  @type get_route_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_request() :: %{
        optional("Description") => String.t(),
        optional("StageName") => String.t()
      }
      
  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }
      
  """
  @type create_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_request() :: %{
        optional("ContentType") => String.t(),
        optional("Description") => String.t(),
        required("Name") => String.t(),
        required("Schema") => String.t()
      }
      
  """
  @type create_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_route_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t()()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t(),
        "ModelSelectionExpression" => String.t(),
        "OperationName" => String.t(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t(),
        "RouteKey" => String.t(),
        "RouteResponseSelectionExpression" => String.t(),
        "Target" => String.t()
      }
      
  """
  @type update_route_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_request() :: %{
        optional("ContentType") => String.t(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("Schema") => String.t()
      }
      
  """
  @type update_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reimport_api_request() :: %{
        optional("Basepath") => String.t(),
        optional("FailOnWarnings") => boolean(),
        required("Body") => String.t()
      }
      
  """
  @type reimport_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_route_response_request() :: %{}
      
  """
  @type get_route_response_request() :: %{}

  @typedoc """

  ## Example:
      
      create_domain_name_request() :: %{
        optional("DomainNameConfigurations") => list(domain_name_configuration()()),
        optional("MutualTlsAuthentication") => mutual_tls_authentication_input(),
        optional("Tags") => map(),
        required("DomainName") => String.t()
      }
      
  """
  @type create_domain_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stage_response() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t(),
        "Description" => String.t(),
        "LastDeploymentStatusMessage" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t(),
        "StageVariables" => map(),
        "Tags" => map()
      }
      
  """
  @type update_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_link() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "Tags" => map(),
        "VpcLinkId" => String.t(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t(),
        "VpcLinkVersion" => list(any())
      }
      
  """
  @type vpc_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_response() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type create_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

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
        "LimitType" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_authorizer_request() :: %{
        optional("AuthorizerCredentialsArn") => String.t(),
        optional("AuthorizerPayloadFormatVersion") => String.t(),
        optional("AuthorizerResultTtlInSeconds") => integer(),
        optional("AuthorizerUri") => String.t(),
        optional("EnableSimpleResponses") => boolean(),
        optional("IdentityValidationExpression") => String.t(),
        optional("JwtConfiguration") => j_w_t_configuration(),
        required("AuthorizerType") => list(any()),
        required("IdentitySource") => list(String.t()()),
        required("Name") => String.t()
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
      
      get_integration_responses_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_integration_responses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_route_response_response() :: %{
        "ModelSelectionExpression" => String.t(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t(),
        "RouteResponseKey" => String.t()
      }
      
  """
  @type update_route_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_api_mapping_request() :: %{
        optional("ApiMappingKey") => String.t(),
        required("ApiId") => String.t(),
        required("Stage") => String.t()
      }
      
  """
  @type create_api_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_authorizer_response() :: %{
        "AuthorizerCredentialsArn" => String.t(),
        "AuthorizerId" => String.t(),
        "AuthorizerPayloadFormatVersion" => String.t(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t()()),
        "IdentityValidationExpression" => String.t(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t()
      }
      
  """
  @type create_authorizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_route_request_parameter_request() :: %{}
      
  """
  @type delete_route_request_parameter_request() :: %{}

  @typedoc """

  ## Example:
      
      create_integration_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t(),
        "Description" => String.t(),
        "IntegrationId" => String.t(),
        "IntegrationMethod" => String.t(),
        "IntegrationResponseSelectionExpression" => String.t(),
        "IntegrationSubtype" => String.t(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }
      
  """
  @type create_integration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stage_request() :: %{}
      
  """
  @type delete_stage_request() :: %{}

  @typedoc """

  ## Example:
      
      get_authorizers_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_authorizers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_integration_request() :: %{}
      
  """
  @type delete_integration_request() :: %{}

  @typedoc """

  ## Example:
      
      get_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }
      
  """
  @type get_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cors_configuration_request() :: %{}
      
  """
  @type delete_cors_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      update_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }
      
  """
  @type update_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployment_request() :: %{}
      
  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:
      
      j_w_t_configuration() :: %{
        "Audience" => list(String.t()()),
        "Issuer" => String.t()
      }
      
  """
  @type j_w_t_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_link_request() :: %{
        optional("SecurityGroupIds") => list(String.t()()),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type create_vpc_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_api_request() :: %{
        optional("Basepath") => String.t(),
        optional("FailOnWarnings") => boolean(),
        required("Body") => String.t()
      }
      
  """
  @type import_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_link_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "Tags" => map(),
        "VpcLinkId" => String.t(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t(),
        "VpcLinkVersion" => list(any())
      }
      
  """
  @type create_vpc_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_model_template_response() :: %{
        "Value" => String.t()
      }
      
  """
  @type get_model_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_integration_responses_response() :: %{
        "Items" => list(integration_response()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_integration_responses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      route() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t()()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t(),
        "ModelSelectionExpression" => String.t(),
        "OperationName" => String.t(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t(),
        "RouteKey" => String.t(),
        "RouteResponseSelectionExpression" => String.t(),
        "Target" => String.t()
      }
      
  """
  @type route() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      api_mapping() :: %{
        "ApiId" => String.t(),
        "ApiMappingId" => String.t(),
        "ApiMappingKey" => String.t(),
        "Stage" => String.t()
      }
      
  """
  @type api_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tags_response() :: %{
        "Tags" => map()
      }
      
  """
  @type get_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_api_mapping_request() :: %{}
      
  """
  @type get_api_mapping_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_route_response_request() :: %{}
      
  """
  @type delete_route_response_request() :: %{}

  @typedoc """

  ## Example:
      
      update_domain_name_response() :: %{
        "ApiMappingSelectionExpression" => String.t(),
        "DomainName" => String.t(),
        "DomainNameConfigurations" => list(domain_name_configuration()()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "Tags" => map()
      }
      
  """
  @type update_domain_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_names_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_domain_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_access_log_settings_request() :: %{}
      
  """
  @type delete_access_log_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      get_integrations_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_integrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_integration_request() :: %{}
      
  """
  @type get_integration_request() :: %{}

  @typedoc """

  ## Example:
      
      get_routes_response() :: %{
        "Items" => list(route()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_routes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_integration_response_request() :: %{
        optional("ContentHandlingStrategy") => list(any()),
        optional("IntegrationResponseKey") => String.t(),
        optional("ResponseParameters") => map(),
        optional("ResponseTemplates") => map(),
        optional("TemplateSelectionExpression") => String.t()
      }
      
  """
  @type update_integration_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_route_response_request() :: %{
        optional("ModelSelectionExpression") => String.t(),
        optional("ResponseModels") => map(),
        optional("ResponseParameters") => map(),
        optional("RouteResponseKey") => String.t()
      }
      
  """
  @type update_route_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_integration_request() :: %{
        optional("ConnectionId") => String.t(),
        optional("ConnectionType") => list(any()),
        optional("ContentHandlingStrategy") => list(any()),
        optional("CredentialsArn") => String.t(),
        optional("Description") => String.t(),
        optional("IntegrationMethod") => String.t(),
        optional("IntegrationSubtype") => String.t(),
        optional("IntegrationType") => list(any()),
        optional("IntegrationUri") => String.t(),
        optional("PassthroughBehavior") => list(any()),
        optional("PayloadFormatVersion") => String.t(),
        optional("RequestParameters") => map(),
        optional("RequestTemplates") => map(),
        optional("ResponseParameters") => map(),
        optional("TemplateSelectionExpression") => String.t(),
        optional("TimeoutInMillis") => integer(),
        optional("TlsConfig") => tls_config_input()
      }
      
  """
  @type update_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_route_settings_request() :: %{}
      
  """
  @type delete_route_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      update_model_response() :: %{
        "ContentType" => String.t(),
        "Description" => String.t(),
        "ModelId" => String.t(),
        "Name" => String.t(),
        "Schema" => String.t()
      }
      
  """
  @type update_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_response() :: %{
        "ContentType" => String.t(),
        "Description" => String.t(),
        "ModelId" => String.t(),
        "Name" => String.t(),
        "Schema" => String.t()
      }
      
  """
  @type create_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reimport_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }
      
  """
  @type reimport_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_route_request() :: %{
        optional("ApiKeyRequired") => boolean(),
        optional("AuthorizationScopes") => list(String.t()()),
        optional("AuthorizationType") => list(any()),
        optional("AuthorizerId") => String.t(),
        optional("ModelSelectionExpression") => String.t(),
        optional("OperationName") => String.t(),
        optional("RequestModels") => map(),
        optional("RequestParameters") => map(),
        optional("RouteKey") => String.t(),
        optional("RouteResponseSelectionExpression") => String.t(),
        optional("Target") => String.t()
      }
      
  """
  @type update_route_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_name_request() :: %{
        optional("DomainNameConfigurations") => list(domain_name_configuration()()),
        optional("MutualTlsAuthentication") => mutual_tls_authentication_input()
      }
      
  """
  @type update_domain_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_route_responses_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_route_responses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_name() :: %{
        "ApiMappingSelectionExpression" => String.t(),
        "DomainName" => String.t(),
        "DomainNameConfigurations" => list(domain_name_configuration()()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "Tags" => map()
      }
      
  """
  @type domain_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stage_request() :: %{
        optional("AccessLogSettings") => access_log_settings(),
        optional("AutoDeploy") => boolean(),
        optional("ClientCertificateId") => String.t(),
        optional("DefaultRouteSettings") => route_settings(),
        optional("DeploymentId") => String.t(),
        optional("Description") => String.t(),
        optional("RouteSettings") => map(),
        optional("StageVariables") => map(),
        optional("Tags") => map(),
        required("StageName") => String.t()
      }
      
  """
  @type create_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_deployment_request() :: %{}
      
  """
  @type delete_deployment_request() :: %{}

  @typedoc """

  ## Example:
      
      get_domain_names_response() :: %{
        "Items" => list(domain_name()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_domain_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_integration_request() :: %{
        optional("ConnectionId") => String.t(),
        optional("ConnectionType") => list(any()),
        optional("ContentHandlingStrategy") => list(any()),
        optional("CredentialsArn") => String.t(),
        optional("Description") => String.t(),
        optional("IntegrationMethod") => String.t(),
        optional("IntegrationSubtype") => String.t(),
        optional("IntegrationUri") => String.t(),
        optional("PassthroughBehavior") => list(any()),
        optional("PayloadFormatVersion") => String.t(),
        optional("RequestParameters") => map(),
        optional("RequestTemplates") => map(),
        optional("ResponseParameters") => map(),
        optional("TemplateSelectionExpression") => String.t(),
        optional("TimeoutInMillis") => integer(),
        optional("TlsConfig") => tls_config_input(),
        required("IntegrationType") => list(any())
      }
      
  """
  @type create_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_api_mapping_response() :: %{
        "ApiId" => String.t(),
        "ApiMappingId" => String.t(),
        "ApiMappingKey" => String.t(),
        "Stage" => String.t()
      }
      
  """
  @type get_api_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mutual_tls_authentication_input() :: %{
        optional("TruststoreUri") => String.t(),
        optional("TruststoreVersion") => String.t()
      }
      
  """
  @type mutual_tls_authentication_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_name_configuration() :: %{
        "ApiGatewayDomainName" => String.t(),
        "CertificateArn" => String.t(),
        "CertificateName" => String.t(),
        "CertificateUploadDate" => non_neg_integer(),
        "DomainNameStatus" => list(any()),
        "DomainNameStatusMessage" => String.t(),
        "EndpointType" => list(any()),
        "HostedZoneId" => String.t(),
        "OwnershipVerificationCertificateArn" => String.t(),
        "SecurityPolicy" => list(any())
      }
      
  """
  @type domain_name_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_api_response() :: %{
        "body" => binary()
      }
      
  """
  @type export_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_api_mappings_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_api_mappings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_request() :: %{}
      
  """
  @type delete_model_request() :: %{}

  @typedoc """

  ## Example:
      
      tls_config() :: %{
        "ServerNameToVerify" => String.t()
      }
      
  """
  @type tls_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_integrations_response() :: %{
        "Items" => list(integration()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_integrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_log_settings() :: %{
        "DestinationArn" => String.t(),
        "Format" => String.t()
      }
      
  """
  @type access_log_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_models_response() :: %{
        "Items" => list(model()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_route_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t()()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t(),
        "ModelSelectionExpression" => String.t(),
        "OperationName" => String.t(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t(),
        "RouteKey" => String.t(),
        "RouteResponseSelectionExpression" => String.t(),
        "Target" => String.t()
      }
      
  """
  @type get_route_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_integration_response_request() :: %{}
      
  """
  @type get_integration_response_request() :: %{}

  @typedoc """

  ## Example:
      
      get_stages_response() :: %{
        "Items" => list(stage()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_stages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_models_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_route_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t()()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t(),
        "ModelSelectionExpression" => String.t(),
        "OperationName" => String.t(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t(),
        "RouteKey" => String.t(),
        "RouteResponseSelectionExpression" => String.t(),
        "Target" => String.t()
      }
      
  """
  @type create_route_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_routes_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_routes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpc_link_request() :: %{
        optional("Name") => String.t()
      }
      
  """
  @type update_vpc_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_domain_name_request() :: %{}
      
  """
  @type get_domain_name_request() :: %{}

  @typedoc """

  ## Example:
      
      get_model_request() :: %{}
      
  """
  @type get_model_request() :: %{}

  @typedoc """

  ## Example:
      
      update_api_request() :: %{
        optional("ApiKeySelectionExpression") => String.t(),
        optional("CorsConfiguration") => cors(),
        optional("CredentialsArn") => String.t(),
        optional("Description") => String.t(),
        optional("DisableExecuteApiEndpoint") => boolean(),
        optional("DisableSchemaValidation") => boolean(),
        optional("Name") => String.t(),
        optional("RouteKey") => String.t(),
        optional("RouteSelectionExpression") => String.t(),
        optional("Target") => String.t(),
        optional("Version") => String.t()
      }
      
  """
  @type update_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_integration_response_request() :: %{
        optional("ContentHandlingStrategy") => list(any()),
        optional("ResponseParameters") => map(),
        optional("ResponseTemplates") => map(),
        optional("TemplateSelectionExpression") => String.t(),
        required("IntegrationResponseKey") => String.t()
      }
      
  """
  @type create_integration_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_deployment_response() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type update_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_route_request() :: %{}
      
  """
  @type delete_route_request() :: %{}

  @typedoc """

  ## Example:
      
      get_deployment_response() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type get_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_authorizer_response() :: %{
        "AuthorizerCredentialsArn" => String.t(),
        "AuthorizerId" => String.t(),
        "AuthorizerPayloadFormatVersion" => String.t(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t()()),
        "IdentityValidationExpression" => String.t(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t()
      }
      
  """
  @type update_authorizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_api_request() :: %{
        optional("ApiKeySelectionExpression") => String.t(),
        optional("CorsConfiguration") => cors(),
        optional("CredentialsArn") => String.t(),
        optional("Description") => String.t(),
        optional("DisableExecuteApiEndpoint") => boolean(),
        optional("DisableSchemaValidation") => boolean(),
        optional("RouteKey") => String.t(),
        optional("RouteSelectionExpression") => String.t(),
        optional("Tags") => map(),
        optional("Target") => String.t(),
        optional("Version") => String.t(),
        required("Name") => String.t(),
        required("ProtocolType") => list(any())
      }
      
  """
  @type create_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpc_link_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "Tags" => map(),
        "VpcLinkId" => String.t(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t(),
        "VpcLinkVersion" => list(any())
      }
      
  """
  @type get_vpc_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cors() :: %{
        "AllowCredentials" => boolean(),
        "AllowHeaders" => list(String.t()()),
        "AllowMethods" => list(String.t()()),
        "AllowOrigins" => list(String.t()()),
        "ExposeHeaders" => list(String.t()()),
        "MaxAge" => integer()
      }
      
  """
  @type cors() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      api() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }
      
  """
  @type api() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_route_response_response() :: %{
        "ModelSelectionExpression" => String.t(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t(),
        "RouteResponseKey" => String.t()
      }
      
  """
  @type create_route_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_model_response() :: %{
        "ContentType" => String.t(),
        "Description" => String.t(),
        "ModelId" => String.t(),
        "Name" => String.t(),
        "Schema" => String.t()
      }
      
  """
  @type get_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_api_mapping_response() :: %{
        "ApiId" => String.t(),
        "ApiMappingId" => String.t(),
        "ApiMappingKey" => String.t(),
        "Stage" => String.t()
      }
      
  """
  @type create_api_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_name_request() :: %{}
      
  """
  @type delete_domain_name_request() :: %{}

  @typedoc """

  ## Example:
      
      update_vpc_link_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "Tags" => map(),
        "VpcLinkId" => String.t(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t(),
        "VpcLinkVersion" => list(any())
      }
      
  """
  @type update_vpc_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_name_response() :: %{
        "ApiMappingSelectionExpression" => String.t(),
        "DomainName" => String.t(),
        "DomainNameConfigurations" => list(domain_name_configuration()()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "Tags" => map()
      }
      
  """
  @type create_domain_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpc_link_request() :: %{}
      
  """
  @type get_vpc_link_request() :: %{}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployments_response() :: %{
        "Items" => list(deployment()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }
      
  """
  @type import_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_authorizers_cache_request() :: %{}
      
  """
  @type reset_authorizers_cache_request() :: %{}

  @typedoc """

  ## Example:
      
      get_api_mappings_response() :: %{
        "Items" => list(api_mapping()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_api_mappings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_route_request() :: %{
        optional("ApiKeyRequired") => boolean(),
        optional("AuthorizationScopes") => list(String.t()()),
        optional("AuthorizationType") => list(any()),
        optional("AuthorizerId") => String.t(),
        optional("ModelSelectionExpression") => String.t(),
        optional("OperationName") => String.t(),
        optional("RequestModels") => map(),
        optional("RequestParameters") => map(),
        optional("RouteResponseSelectionExpression") => String.t(),
        optional("Target") => String.t(),
        required("RouteKey") => String.t()
      }
      
  """
  @type create_route_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpc_links_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_vpc_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_apis_response() :: %{
        "Items" => list(api()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_apis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t(),
        "IntegrationResponseKey" => String.t(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t()
      }
      
  """
  @type integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model() :: %{
        "ContentType" => String.t(),
        "Description" => String.t(),
        "ModelId" => String.t(),
        "Name" => String.t(),
        "Schema" => String.t()
      }
      
  """
  @type model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_apis_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_apis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_deployment_request() :: %{
        optional("Description") => String.t()
      }
      
  """
  @type update_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_integration_response_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t(),
        "IntegrationResponseKey" => String.t(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t()
      }
      
  """
  @type get_integration_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_api_request() :: %{}
      
  """
  @type get_api_request() :: %{}

  @typedoc """

  ## Example:
      
      get_domain_name_response() :: %{
        "ApiMappingSelectionExpression" => String.t(),
        "DomainName" => String.t(),
        "DomainNameConfigurations" => list(domain_name_configuration()()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "Tags" => map()
      }
      
  """
  @type get_domain_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_integration_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t(),
        "Description" => String.t(),
        "IntegrationId" => String.t(),
        "IntegrationMethod" => String.t(),
        "IntegrationResponseSelectionExpression" => String.t(),
        "IntegrationSubtype" => String.t(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }
      
  """
  @type update_integration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_link_request() :: %{}
      
  """
  @type delete_vpc_link_request() :: %{}

  @typedoc """

  ## Example:
      
      update_authorizer_request() :: %{
        optional("AuthorizerCredentialsArn") => String.t(),
        optional("AuthorizerPayloadFormatVersion") => String.t(),
        optional("AuthorizerResultTtlInSeconds") => integer(),
        optional("AuthorizerType") => list(any()),
        optional("AuthorizerUri") => String.t(),
        optional("EnableSimpleResponses") => boolean(),
        optional("IdentitySource") => list(String.t()()),
        optional("IdentityValidationExpression") => String.t(),
        optional("JwtConfiguration") => j_w_t_configuration(),
        optional("Name") => String.t()
      }
      
  """
  @type update_authorizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_api_request() :: %{}
      
  """
  @type delete_api_request() :: %{}

  @typedoc """

  ## Example:
      
      get_route_request() :: %{}
      
  """
  @type get_route_request() :: %{}

  @typedoc """

  ## Example:
      
      route_response() :: %{
        "ModelSelectionExpression" => String.t(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t(),
        "RouteResponseKey" => String.t()
      }
      
  """
  @type route_response() :: %{String.t() => any()}

  @type create_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_api_mapping_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_deployment_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_domain_name_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_integration_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_integration_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_model_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_route_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_route_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_stage_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_vpc_link_errors() :: bad_request_exception() | too_many_requests_exception()

  @type delete_access_log_settings_errors() ::
          not_found_exception() | too_many_requests_exception()

  @type delete_api_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_api_mapping_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type delete_authorizer_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_cors_configuration_errors() ::
          not_found_exception() | too_many_requests_exception()

  @type delete_deployment_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_domain_name_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_integration_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_integration_response_errors() ::
          not_found_exception() | too_many_requests_exception()

  @type delete_model_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_route_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_route_request_parameter_errors() ::
          not_found_exception() | too_many_requests_exception()

  @type delete_route_response_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_route_settings_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_stage_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_vpc_link_errors() :: not_found_exception() | too_many_requests_exception()

  @type export_api_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_api_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_api_mapping_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_api_mappings_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_apis_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_authorizer_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_authorizers_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_deployment_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_deployments_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_domain_name_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_domain_names_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_integration_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_integration_response_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_integration_responses_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_integrations_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_model_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_model_template_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_models_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_route_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_route_response_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_route_responses_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_routes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_stage_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_stages_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_tags_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type get_vpc_link_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_vpc_links_errors() :: bad_request_exception() | too_many_requests_exception()

  @type import_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type reimport_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type reset_authorizers_cache_errors() :: not_found_exception() | too_many_requests_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_api_mapping_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_deployment_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_domain_name_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_integration_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_integration_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_model_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_route_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_route_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_stage_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_vpc_link_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2018-11-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "apigateway",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ApiGatewayV2",
      signature_version: "v4",
      signing_name: "apigateway",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Api resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:name` (`t:string` required) The name of the API.
    * `:protocol_type` (`t:enum["HTTP|WEBSOCKET"]` required) The API protocol.
    * `:api_key_selection_expression` (`t:string`) An API key selection expression.
    Supported only for WebSocket APIs. See API Key Selection Expressions.
    * `:cors_configuration` (`t:structure`) A CORS configuration. Supported only for
    HTTP APIs. See Configuring CORS for more information.
    * `:credentials_arn` (`t:string`) This property is part of quick create. It
    specifies the credentials required for the integration, if any. For a Lambda
    integration, three options are available. To specify an IAM Role for API
    Gateway to assume, use the role's Amazon Resource Name (ARN). To require
    that the caller's identity be passed through from the request, specify
    arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS
    services, specify null. Currently, this property is not used for HTTP
    integrations. Supported only for HTTP APIs.
    * `:description` (`t:string`) The description of the API.
    * `:disable_execute_api_endpoint` (`t:boolean`) Specifies whether clients can
    invoke your API by using the default execute-api endpoint. By default,
    clients can invoke your API with the default
    https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require
    that clients use a custom domain name to invoke your API, disable the
    default endpoint.
    * `:disable_schema_validation` (`t:boolean`) Avoid validating models when
    creating a deployment. Supported only for WebSocket APIs.
    * `:route_key` (`t:string`) This property is part of quick create. If you don't
    specify a routeKey, a default route of $default is created. The $default
    route acts as a catch-all for any request made to your API, for a particular
    stage. The $default route key can't be modified. You can add routes after
    creating the API, and you can update the route keys of additional routes.
    Supported only for HTTP APIs.
    * `:route_selection_expression` (`t:string`) The route selection expression for
    the API. For HTTP APIs, the routeSelectionExpression must be
    ${request.method} ${request.path}. If not provided, this will be the default
    for HTTP APIs. This property is required for WebSocket APIs.
    * `:tags` (`t:map`) The collection of tags. Each tag element is associated with
    a given resource.
    * `:target` (`t:string`) This property is part of quick create. Quick create
    produces an API with an integration, a default catch-all route, and a
    default stage which is configured to automatically deploy changes. For HTTP
    integrations, specify a fully qualified URL. For Lambda integrations,
    specify a function ARN. The type of the integration will be HTTP_PROXY or
    AWS_PROXY, respectively. Supported only for HTTP APIs.
    * `:version` (`t:string`) A version identifier for the API.
  """
  @spec create_api(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_api_errors()}
  def create_api(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/v2/apis"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates an API mapping.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateApiMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string` required) The domain name.
  * `:input` (`t:map`):
    * `:api_id` (`t:string` required) The API identifier.
    * `:stage` (`t:string` required) The API stage.
    * `:api_mapping_key` (`t:string`)
  """
  @spec create_api_mapping(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_api_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_api_mapping_errors()}
  def create_api_mapping(%Client{} = client, domain_name, input, options \\ [])
      when is_map(input) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates an Authorizer for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateAuthorizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:input` (`t:map`):
    * `:authorizer_type` (`t:enum["JWT|REQUEST"]` required) The authorizer type.
    Specify REQUEST for a Lambda function using incoming request parameters.
    Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).
    * `:identity_source` (`t:list[com.amazonaws.apigatewayv2#__string]` required)
    The identity source for which authorization is requested.
    * `:name` (`t:string` required) The name of the authorizer.
    * `:authorizer_credentials_arn` (`t:string`) Specifies the required credentials
    as an IAM role for API Gateway to invoke the authorizer. To specify an IAM
    role for API Gateway to assume, use the role's Amazon Resource Name (ARN).
    To use resource-based permissions on the Lambda function, don't specify this
    parameter. Supported only for REQUEST authorizers.
    * `:authorizer_payload_format_version` (`t:string`) Specifies the format of the
    payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda
    authorizers. Supported values are 1.0 and 2.0. To learn more, see Working
    with AWS Lambda authorizers for HTTP APIs.
    * `:authorizer_result_ttl_in_seconds` (`t:integer`) The time to live (TTL) for
    cached authorizer results, in seconds. If it equals 0, authorization caching
    is disabled. If it is greater than 0, API Gateway caches authorizer
    responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API
    Lambda authorizers.
    * `:authorizer_uri` (`t:string`) The authorizer's Uniform Resource Identifier
    (URI). For REQUEST authorizers, this must be a well-formed Lambda function
    URI, for example,
    arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations.
    In general, the URI has this form:
    arn:aws:apigateway:{region}:lambda:path/{service_api} , where {region} is
    the same as the region hosting the Lambda function, path indicates that the
    remaining substring in the URI should be treated as the path to the
    resource, including the initial /. For Lambda functions, this is usually of
    the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for
    REQUEST authorizers.
    * `:enable_simple_responses` (`t:boolean`) Specifies whether a Lambda authorizer
    returns a response in a simple format. By default, a Lambda authorizer must
    return an IAM policy. If enabled, the Lambda authorizer can return a boolean
    value instead of an IAM policy. Supported only for HTTP APIs. To learn more,
    see Working with AWS Lambda authorizers for HTTP APIs
    * `:identity_validation_expression` (`t:string`) This parameter is not used.
    * `:jwt_configuration` (`t:structure`) Represents the configuration of a JWT
    authorizer. Required for the JWT authorizer type. Supported only for HTTP
    APIs.
  """
  @spec create_authorizer(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_authorizer_errors()}
  def create_authorizer(%Client{} = client, api_id, input, options \\ []) when is_map(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a Deployment for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:input` (`t:map | nil`):
    * `:description` (`t:string`) The description for the deployment resource.
    * `:stage_name` (`t:string`) The name of the Stage resource for the Deployment
    resource to create.
  """
  @spec create_deployment(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, create_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, api_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a domain name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateDomainName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:domain_name` (`t:string` required) The domain name.
    * `:domain_name_configurations`
    (`t:list[com.amazonaws.apigatewayv2#DomainNameConfiguration]`) The domain
    name configurations.
    * `:mutual_tls_authentication` (`t:structure`) The mutual TLS authentication
    configuration for a custom domain name.
    * `:tags` (`t:map`) The collection of tags associated with a domain name.
  """
  @spec create_domain_name(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_name_errors()}
  def create_domain_name(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/v2/domainnames"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates an Integration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:input` (`t:map`):
    * `:integration_type` (`t:enum["AWS|AWS_PROXY|HTTP|HTTP_PROXY|MOCK"]` required)
    The integration type of an integration. One of the following:
    * `:connection_id` (`t:string`) The ID of the VPC link for a private
    integration. Supported only for HTTP APIs.
    * `:connection_type` (`t:enum["INTERNET|VPC_LINK"]`) The type of the network
    connection to the integration endpoint. Specify INTERNET for connections
    through the public routable internet or VPC_LINK for private connections
    between API Gateway and resources in a VPC. The default value is INTERNET.
    * `:content_handling_strategy` (`t:enum["CONVERT_TO_BINARY|CONVERT_TO_TEXT"]`)
    Supported only for WebSocket APIs. Specifies how to handle response payload
    content type conversions. Supported values are CONVERT_TO_BINARY and
    CONVERT_TO_TEXT, with the following behaviors:
    * `:credentials_arn` (`t:string`) Specifies the credentials required for the
    integration, if any. For AWS integrations, three options are available. To
    specify an IAM Role for API Gateway to assume, use the role's Amazon
    Resource Name (ARN). To require that the caller's identity be passed through
    from the request, specify the string arn:aws:iam::*:user/*. To use
    resource-based permissions on supported AWS services, specify null.
    * `:description` (`t:string`) The description of the integration.
    * `:integration_method` (`t:string`) Specifies the integration's HTTP method
    type.
    * `:integration_subtype` (`t:string`) Supported only for HTTP API AWS_PROXY
    integrations. Specifies the AWS service action to invoke. To learn more, see
    Integration subtype reference.
    * `:integration_uri` (`t:string`) For a Lambda integration, specify the URI of a
    Lambda function.
    * `:passthrough_behavior` (`t:enum["NEVER|WHEN_NO_MATCH|WHEN_NO_TEMPLATES"]`)
    Specifies the pass-through behavior for incoming requests based on the
    Content-Type header in the request, and the available mapping templates
    specified as the requestTemplates property on the Integration resource.
    There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER.
    Supported only for WebSocket APIs.
    * `:payload_format_version` (`t:string`) Specifies the format of the payload
    sent to an integration. Required for HTTP APIs.
    * `:request_parameters` (`t:map`) For WebSocket APIs, a key-value map specifying
    request parameters that are passed from the method request to the backend.
    The key is an integration request parameter name and the associated value is
    a method request parameter value or static value that must be enclosed
    within single quotes and pre-encoded as required by the backend. The method
    request parameter value must match the pattern of
    method.request.{location}.{name} , where {location} is querystring, path, or
    header; and {name} must be a valid and unique method request parameter name.
    * `:request_templates` (`t:map`) Represents a map of Velocity templates that are
    applied on the request payload based on the value of the Content-Type header
    sent by the client. The content type value is the key in this map, and the
    template (as a String) is the value. Supported only for WebSocket APIs.
    * `:response_parameters` (`t:map`) Supported only for HTTP APIs. You use
    response parameters to transform the HTTP response from a backend
    integration before returning the response to clients. Specify a key-value
    map from a selection key to response parameters. The selection key must be a
    valid HTTP status code within the range of 200-599. Response parameters are
    a key-value map. The key must match pattern <action>:<header>.<location> or
    overwrite.statuscode. The action can be append, overwrite or remove. The
    value can be a static value, or map to response data, stage variables, or
    context variables that are evaluated at runtime. To learn more, see
    Transforming API requests and responses.
    * `:template_selection_expression` (`t:string`) The template selection
    expression for the integration.
    * `:timeout_in_millis` (`t:integer`) Custom timeout between 50 and 29,000
    milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for
    HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30
    seconds for HTTP APIs.
    * `:tls_config` (`t:structure`) The TLS configuration for a private integration.
    If you specify a TLS configuration, private integration traffic uses the
    HTTPS protocol. Supported only for HTTP APIs.
  """
  @spec create_integration(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_integration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_integration_errors()}
  def create_integration(%Client{} = client, api_id, input, options \\ []) when is_map(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates an IntegrationResponses.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateIntegrationResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:integration_id` (`t:string` required) The integration ID.
  * `:input` (`t:map`):
    * `:integration_response_key` (`t:string` required) The integration response
    key.
    * `:content_handling_strategy` (`t:enum["CONVERT_TO_BINARY|CONVERT_TO_TEXT"]`)
    Specifies how to handle response payload content type conversions. Supported
    values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following
    behaviors:
    * `:response_parameters` (`t:map`) A key-value map specifying response
    parameters that are passed to the method response from the backend. The key
    is a method response header parameter name and the mapped value is an
    integration response header value, a static value enclosed within a pair of
    single quotes, or a JSON expression from the integration response body. The
    mapping key must match the pattern of method.response.header.{name}, where
    {name} is a valid and unique header name. The mapped non-static value must
    match the pattern of integration.response.header.{name} or
    integration.response.body.{JSON-expression}, where {name} is a valid and
    unique response header name and {JSON-expression} is a valid JSON expression
    without the $ prefix.
    * `:response_templates` (`t:map`) The collection of response templates for the
    integration response as a string-to-string map of key-value pairs. Response
    templates are represented as a key/value map, with a content-type as the key
    and a template as the value.
    * `:template_selection_expression` (`t:string`) The template selection
    expression for the integration response. Supported only for WebSocket APIs.
  """
  @spec create_integration_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, create_integration_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_integration_response_errors()}
  def create_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a Model for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:input` (`t:map`):
    * `:name` (`t:string` required) The name of the model. Must be alphanumeric.
    * `:schema` (`t:string` required) The schema for the model. For application/json
    models, this should be JSON schema draft 4 model.
    * `:content_type` (`t:string`) The content-type for the model, for example,
    "application/json".
    * `:description` (`t:string`) The description of the model.
  """
  @spec create_model(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_errors()}
  def create_model(%Client{} = client, api_id, input, options \\ []) when is_map(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a Route for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateRoute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:input` (`t:map`):
    * `:route_key` (`t:string` required) The route key for the route.
    * `:api_key_required` (`t:boolean`) Specifies whether an API key is required for
    the route. Supported only for WebSocket APIs.
    * `:authorization_scopes`
    (`t:list[com.amazonaws.apigatewayv2#StringWithLengthBetween1And64]`) The
    authorization scopes supported by this route.
    * `:authorization_type` (`t:enum["AWS_IAM|CUSTOM|JWT|NONE"]`) The authorization
    type for the route. For WebSocket APIs, valid values are NONE for open
    access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda
    authorizer For HTTP APIs, valid values are NONE for open access, JWT for
    using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for
    using a Lambda authorizer.
    * `:authorizer_id` (`t:string`) The identifier of the Authorizer resource to be
    associated with this route. The authorizer identifier is generated by API
    Gateway when you created the authorizer.
    * `:model_selection_expression` (`t:string`) The model selection expression for
    the route. Supported only for WebSocket APIs.
    * `:operation_name` (`t:string`) The operation name for the route.
    * `:request_models` (`t:map`) The request models for the route. Supported only
    for WebSocket APIs.
    * `:request_parameters` (`t:map`) The request parameters for the route.
    Supported only for WebSocket APIs.
    * `:route_response_selection_expression` (`t:string`) The route response
    selection expression for the route. Supported only for WebSocket APIs.
    * `:target` (`t:string`) The target for the route.
  """
  @spec create_route(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_route_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_route_errors()}
  def create_route(%Client{} = client, api_id, input, options \\ []) when is_map(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a RouteResponse for a Route.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateRouteResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:route_id` (`t:string` required) The route ID.
  * `:input` (`t:map`):
    * `:route_response_key` (`t:string` required) The route response key.
    * `:model_selection_expression` (`t:string`) The model selection expression for
    the route response. Supported only for WebSocket APIs.
    * `:response_models` (`t:map`) The response models for the route response.
    * `:response_parameters` (`t:map`) The route response parameters.
  """
  @spec create_route_response(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_route_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_route_response_errors()}
  def create_route_response(%Client{} = client, api_id, route_id, input, options \\ [])
      when is_map(input) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a Stage for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:input` (`t:map`):
    * `:stage_name` (`t:string` required) The name of the stage.
    * `:access_log_settings` (`t:structure`) Settings for logging access in this
    stage.
    * `:auto_deploy` (`t:boolean`) Specifies whether updates to an API automatically
    trigger a new deployment. The default value is false.
    * `:client_certificate_id` (`t:string`) The identifier of a client certificate
    for a Stage. Supported only for WebSocket APIs.
    * `:default_route_settings` (`t:structure`) The default route settings for the
    stage.
    * `:deployment_id` (`t:string`) The deployment identifier of the API stage.
    * `:description` (`t:string`) The description for the API stage.
    * `:route_settings` (`t:map`) Route settings for the stage, by routeKey.
    * `:stage_variables` (`t:map`) A map that defines the stage variables for a
    Stage. Variable names can have alphanumeric and underscore characters, and
    the values must match [A-Za-z0-9-._~:/?#&=,]+.
    * `:tags` (`t:map`) The collection of tags. Each tag element is associated with
    a given resource.
  """
  @spec create_stage(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stage_errors()}
  def create_stage(%Client{} = client, api_id, input, options \\ []) when is_map(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a VPC link.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20CreateVpcLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:name` (`t:string` required) The name of the VPC link.
    * `:subnet_ids` (`t:list[com.amazonaws.apigatewayv2#__string]` required) A list
    of subnet IDs to include in the VPC link.
    * `:security_group_ids` (`t:list[com.amazonaws.apigatewayv2#__string]`) A list
    of security group IDs for the VPC link.
    * `:tags` (`t:map`) A list of tags.
  """
  @spec create_vpc_link(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_link_errors()}
  def create_vpc_link(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/v2/vpclinks"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deletes the AccessLogSettings for a Stage. To disable access logging for a
  Stage, delete its AccessLogSettings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteAccessLogSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:stage_name` (`t:string` required) The stage name. Stage names can only
    contain alphanumeric characters, hyphens, and underscores. Maximum length is
    128 characters.
  """
  @spec delete_access_log_settings(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_log_settings_errors()}
  def delete_access_log_settings(%Client{} = client, api_id, stage_name, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/accesslogsettings"

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
  Deletes an Api resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  """
  @spec delete_api(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_api_errors()}
  def delete_api(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"

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
  Deletes an API mapping.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteApiMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_mapping_id` (`t:string` required) The API mapping identifier.
  * `:domain_name` (`t:string` required) The domain name.
  """
  @spec delete_api_mapping(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_api_mapping_errors()}
  def delete_api_mapping(%Client{} = client, api_mapping_id, domain_name, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

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
  Deletes an Authorizer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteAuthorizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:authorizer_id` (`t:string` required) The authorizer identifier.
  """
  @spec delete_authorizer(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_authorizer_errors()}
  def delete_authorizer(%Client{} = client, api_id, authorizer_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Deletes a CORS configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteCorsConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  """
  @spec delete_cors_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cors_configuration_errors()}
  def delete_cors_configuration(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/cors"

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
  Deletes a Deployment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:deployment_id` (`t:string` required) The deployment ID.
  """
  @spec delete_deployment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_deployment_errors()}
  def delete_deployment(%Client{} = client, api_id, deployment_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Deletes a domain name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteDomainName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string` required) The domain name.
  """
  @spec delete_domain_name(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_name_errors()}
  def delete_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"

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
  Deletes an Integration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:integration_id` (`t:string` required) The integration ID.
  """
  @spec delete_integration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, api_id, integration_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

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
  Deletes an IntegrationResponses.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteIntegrationResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:integration_id` (`t:string` required) The integration ID.
  * `:integration_response_id` (`t:string` required) The integration response ID.
  """
  @spec delete_integration_response(
          AWS.Client.t(),
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
        api_id,
        integration_id,
        integration_response_id,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses/#{AWS.Util.encode_uri(integration_response_id)}"

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
  Deletes a Model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:model_id` (`t:string` required) The model ID.
  """
  @spec delete_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_errors()}
  def delete_model(%Client{} = client, api_id, model_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"

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
  Deletes a Route.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteRoute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:route_id` (`t:string` required) The route ID.
  """
  @spec delete_route(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_route_errors()}
  def delete_route(%Client{} = client, api_id, route_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"

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
  Deletes a route request parameter. Supported only for WebSocket APIs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteRouteRequestParameter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:request_parameter_key` (`t:string` required) The route request parameter
    key.
  * `:route_id` (`t:string` required) The route ID.
  """
  @spec delete_route_request_parameter(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_route_request_parameter_errors()}
  def delete_route_request_parameter(
        %Client{} = client,
        api_id,
        request_parameter_key,
        route_id,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/requestparameters/#{AWS.Util.encode_uri(request_parameter_key)}"

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
  Deletes a RouteResponse.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteRouteResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:route_id` (`t:string` required) The route ID.
  * `:route_response_id` (`t:string` required) The route response ID.
  """
  @spec delete_route_response(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_route_response_errors()}
  def delete_route_response(
        %Client{} = client,
        api_id,
        route_id,
        route_response_id,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses/#{AWS.Util.encode_uri(route_response_id)}"

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
  Deletes the RouteSettings for a stage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteRouteSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:route_key` (`t:string` required) The route key.
  * `:stage_name` (`t:string` required) The stage name. Stage names can only
    contain alphanumeric characters, hyphens, and underscores. Maximum length is
    128 characters.
  """
  @spec delete_route_settings(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_route_settings_errors()}
  def delete_route_settings(%Client{} = client, api_id, route_key, stage_name, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/routesettings/#{AWS.Util.encode_uri(route_key)}"

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
  Deletes a Stage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:stage_name` (`t:string` required) The stage name. Stage names can only
    contain alphanumeric characters, hyphens, and underscores. Maximum length is
    128 characters.
  """
  @spec delete_stage(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stage_errors()}
  def delete_stage(%Client{} = client, api_id, stage_name, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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
  Deletes a VPC link.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20DeleteVpcLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vpc_link_id` (`t:string` required) The ID of the VPC link.
  """
  @spec delete_vpc_link(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_link_errors()}
  def delete_vpc_link(%Client{} = client, vpc_link_id, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"

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


  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20ExportApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:specification` (`t:string` required) The version of the API specification to
    use. OAS30, for OpenAPI 3.0, is the only supported value.
  * `:output_type` (`t:string` required) The output type of the exported
    definition file. Valid values are JSON and YAML.

  ## Keyword parameters:
  * `:export_version` (`t:string`) The version of the API Gateway export
    algorithm. API Gateway uses the latest version by default. Currently, the
    only supported version is 1.0.
  * `:include_extensions` (`t:boolean`) Specifies whether to include API Gateway
    extensions in the exported API definition. API Gateway extensions are
    included by default.
  * `:stage_name` (`t:string`) The name of the API stage to export. If you don't
    specify this property, a representation of the latest API configuration is
    exported.
  """
  @spec export_api(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, export_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_api_errors()}
  def export_api(%Client{} = client, api_id, specification, output_type, options \\ [])
      when is_binary(output_type) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/exports/#{AWS.Util.encode_uri(specification)}"

    # Validate optional parameters
    optional_params = [export_version: nil, include_extensions: nil, stage_name: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"outputType", output_type}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :stage_name) do
        [{"stageName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include_extensions) do
        [{"includeExtensions", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :export_version) do
        [{"exportVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:export_version, :include_extensions, :stage_name])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Api resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  """
  @spec get_api(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_api_errors()}
  def get_api(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"

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
  Gets an API mapping.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetApiMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_mapping_id` (`t:string` required) The API mapping identifier.
  * `:domain_name` (`t:string` required) The domain name.
  """
  @spec get_api_mapping(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_api_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_api_mapping_errors()}
  def get_api_mapping(%Client{} = client, api_mapping_id, domain_name, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

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
  Gets API mappings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetApiMappings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string` required) The domain name.

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_api_mappings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_api_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_api_mappings_errors()}
  def get_api_mappings(%Client{} = client, domain_name, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings"

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
  Gets a collection of Api resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetApis&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_apis(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_apis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_apis_errors()}
  def get_apis(%Client{} = client, options \\ []) do
    url_path = "/v2/apis"

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
  Gets an Authorizer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetAuthorizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:authorizer_id` (`t:string` required) The authorizer identifier.
  """
  @spec get_authorizer(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_authorizer_errors()}
  def get_authorizer(%Client{} = client, api_id, authorizer_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Gets the Authorizers for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetAuthorizers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_authorizers(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_authorizers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_authorizers_errors()}
  def get_authorizers(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers"

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
  Gets a Deployment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:deployment_id` (`t:string` required) The deployment ID.
  """
  @spec get_deployment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, api_id, deployment_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Gets the Deployments for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetDeployments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_deployments(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployments_errors()}
  def get_deployments(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments"

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
  Gets a domain name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetDomainName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string` required) The domain name.
  """
  @spec get_domain_name(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_name_errors()}
  def get_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"

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
  Gets the domain names for an AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetDomainNames&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_domain_names(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_domain_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_names_errors()}
  def get_domain_names(%Client{} = client, options \\ []) do
    url_path = "/v2/domainnames"

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
  Gets an Integration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:integration_id` (`t:string` required) The integration ID.
  """
  @spec get_integration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_integration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_integration_errors()}
  def get_integration(%Client{} = client, api_id, integration_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

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
  Gets an IntegrationResponses.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetIntegrationResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:integration_id` (`t:string` required) The integration ID.
  * `:integration_response_id` (`t:string` required) The integration response ID.
  """
  @spec get_integration_response(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_integration_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_integration_response_errors()}
  def get_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        integration_response_id,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses/#{AWS.Util.encode_uri(integration_response_id)}"

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
  Gets the IntegrationResponses for an Integration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetIntegrationResponses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:integration_id` (`t:string` required) The integration ID.

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_integration_responses(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_integration_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_integration_responses_errors()}
  def get_integration_responses(%Client{} = client, api_id, integration_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses"

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
  Gets the Integrations for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetIntegrations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_integrations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_integrations_errors()}
  def get_integrations(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations"

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
  Gets a Model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:model_id` (`t:string` required) The model ID.
  """
  @spec get_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_errors()}
  def get_model(%Client{} = client, api_id, model_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"

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
  Gets a model template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetModelTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:model_id` (`t:string` required) The model ID.
  """
  @spec get_model_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_model_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_template_errors()}
  def get_model_template(%Client{} = client, api_id, model_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}/template"

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
  Gets the Models for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetModels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_models(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_models_errors()}
  def get_models(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models"

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
  Gets a Route.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetRoute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:route_id` (`t:string` required) The route ID.
  """
  @spec get_route(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_route_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_route_errors()}
  def get_route(%Client{} = client, api_id, route_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"

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
  Gets a RouteResponse.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetRouteResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:route_id` (`t:string` required) The route ID.
  * `:route_response_id` (`t:string` required) The route response ID.
  """
  @spec get_route_response(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_route_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_route_response_errors()}
  def get_route_response(%Client{} = client, api_id, route_id, route_response_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses/#{AWS.Util.encode_uri(route_response_id)}"

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
  Gets the RouteResponses for a Route.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetRouteResponses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:route_id` (`t:string` required) The route ID.

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_route_responses(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_route_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_route_responses_errors()}
  def get_route_responses(%Client{} = client, api_id, route_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses"

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
  Gets the Routes for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetRoutes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_routes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_routes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_routes_errors()}
  def get_routes(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes"

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
  Gets a Stage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:stage_name` (`t:string` required) The stage name. Stage names can only
    contain alphanumeric characters, hyphens, and underscores. Maximum length is
    128 characters.
  """
  @spec get_stage(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stage_errors()}
  def get_stage(%Client{} = client, api_id, stage_name, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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
  Gets the Stages for an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetStages&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_stages(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_stages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stages_errors()}
  def get_stages(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages"

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
  Gets a collection of Tag resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The resource ARN for the tag.
  """
  @spec get_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tags_errors()}
  def get_tags(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Gets a VPC link.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetVpcLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vpc_link_id` (`t:string` required) The ID of the VPC link.
  """
  @spec get_vpc_link(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vpc_link_errors()}
  def get_vpc_link(%Client{} = client, vpc_link_id, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"

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
  Gets a collection of VPC links.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20GetVpcLinks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of elements to be returned for
    this resource.
  * `:next_token` (`t:string`) The next page of elements from this collection. Not
    valid for the last element of the collection.
  """
  @spec get_vpc_links(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_vpc_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vpc_links_errors()}
  def get_vpc_links(%Client{} = client, options \\ []) do
    url_path = "/v2/vpclinks"

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
  Imports an API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20ImportApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:binary` required)


  ## Keyword parameters:
  * `:basepath` (`t:string`) Specifies how to interpret the base path of the API
    during import. Valid values are ignore, prepend, and split. The default
    value is ignore. To learn more, see Set the OpenAPI basePath Property.
    Supported only for HTTP APIs.
  * `:fail_on_warnings` (`t:boolean`) Specifies whether to rollback the API
    creation when a warning is encountered. By default, API creation continues
    if a warning is encountered.
  """
  @spec import_api(AWS.Client.t(), input :: binary(), Keyword.t()) ::
          {:ok, import_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_api_errors()}
  def import_api(%Client{} = client, input, options \\ []) when is_binary(input) do
    url_path = "/v2/apis"

    # Validate optional parameters
    optional_params = [basepath: nil, fail_on_warnings: nil]

    options =
      Keyword.validate!(
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
        [{"failOnWarnings", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :basepath) do
        [{"basepath", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:basepath, :fail_on_warnings])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Puts an Api resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20ReimportApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:input` (`t:binary` required)


  ## Keyword parameters:
  * `:basepath` (`t:string`) Specifies how to interpret the base path of the API
    during import. Valid values are ignore, prepend, and split. The default
    value is ignore. To learn more, see Set the OpenAPI basePath Property.
    Supported only for HTTP APIs.
  * `:fail_on_warnings` (`t:boolean`) Specifies whether to rollback the API
    creation when a warning is encountered. By default, API creation continues
    if a warning is encountered.
  """
  @spec reimport_api(AWS.Client.t(), String.t(), input :: binary(), Keyword.t()) ::
          {:ok, reimport_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reimport_api_errors()}
  def reimport_api(%Client{} = client, api_id, input, options \\ []) when is_binary(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"

    # Validate optional parameters
    optional_params = [basepath: nil, fail_on_warnings: nil]

    options =
      Keyword.validate!(
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
        [{"failOnWarnings", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :basepath) do
        [{"basepath", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:basepath, :fail_on_warnings])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Resets all authorizer cache entries on a stage. Supported only for HTTP APIs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20ResetAuthorizersCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:stage_name` (`t:string` required) The stage name. Stage names can contain
    only alphanumeric characters, hyphens, and underscores, or be $default.
    Maximum length is 128 characters.
  """
  @spec reset_authorizers_cache(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_authorizers_cache_errors()}
  def reset_authorizers_cache(%Client{} = client, api_id, stage_name, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/authorizers"

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
  Creates a new Tag resource to represent a tag.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The resource ARN for the tag.
  * `:input` (`t:map | nil`):
    * `:tags` (`t:map`) The collection of tags. Each tag element is associated with
    a given resource.
  """
  @spec tag_resource(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deletes a Tag.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The resource ARN for the tag.
  * `:tag_keys` (`t:list[com.amazonaws.apigatewayv2#__string]` required) The Tag
    keys to delete
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Updates an Api resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateApi&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:input` (`t:map | nil`):
    * `:api_key_selection_expression` (`t:string`) An API key selection expression.
    Supported only for WebSocket APIs. See API Key Selection Expressions.
    * `:cors_configuration` (`t:structure`) A CORS configuration. Supported only for
    HTTP APIs.
    * `:credentials_arn` (`t:string`) This property is part of quick create. It
    specifies the credentials required for the integration, if any. For a Lambda
    integration, three options are available. To specify an IAM Role for API
    Gateway to assume, use the role's Amazon Resource Name (ARN). To require
    that the caller's identity be passed through from the request, specify
    arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS
    services, don't specify this parameter. Currently, this property is not used
    for HTTP integrations. If provided, this value replaces the credentials
    associated with the quick create integration. Supported only for HTTP APIs.
    * `:description` (`t:string`) The description of the API.
    * `:disable_execute_api_endpoint` (`t:boolean`) Specifies whether clients can
    invoke your API by using the default execute-api endpoint. By default,
    clients can invoke your API with the default
    https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require
    that clients use a custom domain name to invoke your API, disable the
    default endpoint.
    * `:disable_schema_validation` (`t:boolean`) Avoid validating models when
    creating a deployment. Supported only for WebSocket APIs.
    * `:name` (`t:string`) The name of the API.
    * `:route_key` (`t:string`) This property is part of quick create. If not
    specified, the route created using quick create is kept. Otherwise, this
    value replaces the route key of the quick create route. Additional routes
    may still be added after the API is updated. Supported only for HTTP APIs.
    * `:route_selection_expression` (`t:string`) The route selection expression for
    the API. For HTTP APIs, the routeSelectionExpression must be
    ${request.method} ${request.path}. If not provided, this will be the default
    for HTTP APIs. This property is required for WebSocket APIs.
    * `:target` (`t:string`) This property is part of quick create. For HTTP
    integrations, specify a fully qualified URL. For Lambda integrations,
    specify a function ARN. The type of the integration will be HTTP_PROXY or
    AWS_PROXY, respectively. The value provided updates the integration URI and
    integration type. You can update a quick-created target, but you can't
    remove it from an API. Supported only for HTTP APIs.
    * `:version` (`t:string`) A version identifier for the API.
  """
  @spec update_api(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_api_errors()}
  def update_api(%Client{} = client, api_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"

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
  The API mapping.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateApiMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_mapping_id` (`t:string` required) The API mapping identifier.
  * `:domain_name` (`t:string` required) The domain name.
  * `:input` (`t:map`):
    * `:api_id` (`t:string` required) The API identifier.
    * `:api_mapping_key` (`t:string`) The API mapping key.
    * `:stage` (`t:string`) The API stage.
  """
  @spec update_api_mapping(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_api_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_api_mapping_errors()}
  def update_api_mapping(%Client{} = client, api_mapping_id, domain_name, input, options \\ [])
      when is_map(input) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

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
  Updates an Authorizer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateAuthorizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:authorizer_id` (`t:string` required) The authorizer identifier.
  * `:input` (`t:map | nil`):
    * `:authorizer_credentials_arn` (`t:string`) Specifies the required credentials
    as an IAM role for API Gateway to invoke the authorizer. To specify an IAM
    role for API Gateway to assume, use the role's Amazon Resource Name (ARN).
    To use resource-based permissions on the Lambda function, don't specify this
    parameter.
    * `:authorizer_payload_format_version` (`t:string`) Specifies the format of the
    payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda
    authorizers. Supported values are 1.0 and 2.0. To learn more, see Working
    with AWS Lambda authorizers for HTTP APIs.
    * `:authorizer_result_ttl_in_seconds` (`t:integer`) The time to live (TTL) for
    cached authorizer results, in seconds. If it equals 0, authorization caching
    is disabled. If it is greater than 0, API Gateway caches authorizer
    responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API
    Lambda authorizers.
    * `:authorizer_type` (`t:enum["JWT|REQUEST"]`) The authorizer type. Specify
    REQUEST for a Lambda function using incoming request parameters. Specify JWT
    to use JSON Web Tokens (supported only for HTTP APIs).
    * `:authorizer_uri` (`t:string`) The authorizer's Uniform Resource Identifier
    (URI). For REQUEST authorizers, this must be a well-formed Lambda function
    URI, for example,
    arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations.
    In general, the URI has this form:
    arn:aws:apigateway:{region}:lambda:path/{service_api} , where {region} is
    the same as the region hosting the Lambda function, path indicates that the
    remaining substring in the URI should be treated as the path to the
    resource, including the initial /. For Lambda functions, this is usually of
    the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for
    REQUEST authorizers.
    * `:enable_simple_responses` (`t:boolean`) Specifies whether a Lambda authorizer
    returns a response in a simple format. By default, a Lambda authorizer must
    return an IAM policy. If enabled, the Lambda authorizer can return a boolean
    value instead of an IAM policy. Supported only for HTTP APIs. To learn more,
    see Working with AWS Lambda authorizers for HTTP APIs
    * `:identity_source` (`t:list[com.amazonaws.apigatewayv2#__string]`) The
    identity source for which authorization is requested.
    * `:identity_validation_expression` (`t:string`) This parameter is not used.
    * `:jwt_configuration` (`t:structure`) Represents the configuration of a JWT
    authorizer. Required for the JWT authorizer type. Supported only for HTTP
    APIs.
    * `:name` (`t:string`) The name of the authorizer.
  """
  @spec update_authorizer(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, update_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_authorizer_errors()}
  def update_authorizer(%Client{} = client, api_id, authorizer_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Updates a Deployment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:deployment_id` (`t:string` required) The deployment ID.
  * `:input` (`t:map | nil`):
    * `:description` (`t:string`) The description for the deployment resource.
  """
  @spec update_deployment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, update_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_deployment_errors()}
  def update_deployment(%Client{} = client, api_id, deployment_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Updates a domain name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateDomainName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string` required) The domain name.
  * `:input` (`t:map | nil`):
    * `:domain_name_configurations`
    (`t:list[com.amazonaws.apigatewayv2#DomainNameConfiguration]`) The domain
    name configurations.
    * `:mutual_tls_authentication` (`t:structure`) The mutual TLS authentication
    configuration for a custom domain name.
  """
  @spec update_domain_name(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_name_errors()}
  def update_domain_name(%Client{} = client, domain_name, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"

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
  Updates an Integration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:integration_id` (`t:string` required) The integration ID.
  * `:input` (`t:map | nil`):
    * `:connection_id` (`t:string`) The ID of the VPC link for a private
    integration. Supported only for HTTP APIs.
    * `:connection_type` (`t:enum["INTERNET|VPC_LINK"]`) The type of the network
    connection to the integration endpoint. Specify INTERNET for connections
    through the public routable internet or VPC_LINK for private connections
    between API Gateway and resources in a VPC. The default value is INTERNET.
    * `:content_handling_strategy` (`t:enum["CONVERT_TO_BINARY|CONVERT_TO_TEXT"]`)
    Supported only for WebSocket APIs. Specifies how to handle response payload
    content type conversions. Supported values are CONVERT_TO_BINARY and
    CONVERT_TO_TEXT, with the following behaviors:
    * `:credentials_arn` (`t:string`) Specifies the credentials required for the
    integration, if any. For AWS integrations, three options are available. To
    specify an IAM Role for API Gateway to assume, use the role's Amazon
    Resource Name (ARN). To require that the caller's identity be passed through
    from the request, specify the string arn:aws:iam::*:user/*. To use
    resource-based permissions on supported AWS services, specify null.
    * `:description` (`t:string`) The description of the integration
    * `:integration_method` (`t:string`) Specifies the integration's HTTP method
    type.
    * `:integration_subtype` (`t:string`) Supported only for HTTP API AWS_PROXY
    integrations. Specifies the AWS service action to invoke. To learn more, see
    Integration subtype reference.
    * `:integration_type` (`t:enum["AWS|AWS_PROXY|HTTP|HTTP_PROXY|MOCK"]`) The
    integration type of an integration. One of the following:
    * `:integration_uri` (`t:string`) For a Lambda integration, specify the URI of a
    Lambda function.
    * `:passthrough_behavior` (`t:enum["NEVER|WHEN_NO_MATCH|WHEN_NO_TEMPLATES"]`)
    Specifies the pass-through behavior for incoming requests based on the
    Content-Type header in the request, and the available mapping templates
    specified as the requestTemplates property on the Integration resource.
    There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER.
    Supported only for WebSocket APIs.
    * `:payload_format_version` (`t:string`) Specifies the format of the payload
    sent to an integration. Required for HTTP APIs.
    * `:request_parameters` (`t:map`) For WebSocket APIs, a key-value map specifying
    request parameters that are passed from the method request to the backend.
    The key is an integration request parameter name and the associated value is
    a method request parameter value or static value that must be enclosed
    within single quotes and pre-encoded as required by the backend. The method
    request parameter value must match the pattern of
    method.request.{location}.{name} , where {location} is querystring, path, or
    header; and {name} must be a valid and unique method request parameter name.
    * `:request_templates` (`t:map`) Represents a map of Velocity templates that are
    applied on the request payload based on the value of the Content-Type header
    sent by the client. The content type value is the key in this map, and the
    template (as a String) is the value. Supported only for WebSocket APIs.
    * `:response_parameters` (`t:map`) Supported only for HTTP APIs. You use
    response parameters to transform the HTTP response from a backend
    integration before returning the response to clients. Specify a key-value
    map from a selection key to response parameters. The selection key must be a
    valid HTTP status code within the range of 200-599. Response parameters are
    a key-value map. The key must match pattern <action>:<header>.<location> or
    overwrite.statuscode. The action can be append, overwrite or remove. The
    value can be a static value, or map to response data, stage variables, or
    context variables that are evaluated at runtime. To learn more, see
    Transforming API requests and responses.
    * `:template_selection_expression` (`t:string`) The template selection
    expression for the integration.
    * `:timeout_in_millis` (`t:integer`) Custom timeout between 50 and 29,000
    milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for
    HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30
    seconds for HTTP APIs.
    * `:tls_config` (`t:structure`) The TLS configuration for a private integration.
    If you specify a TLS configuration, private integration traffic uses the
    HTTPS protocol. Supported only for HTTP APIs.
  """
  @spec update_integration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, update_integration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_integration_errors()}
  def update_integration(%Client{} = client, api_id, integration_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

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
  Updates an IntegrationResponses.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateIntegrationResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:integration_id` (`t:string` required) The integration ID.
  * `:integration_response_id` (`t:string` required) The integration response ID.
  * `:input` (`t:map | nil`):
    * `:content_handling_strategy` (`t:enum["CONVERT_TO_BINARY|CONVERT_TO_TEXT"]`)
    Supported only for WebSocket APIs. Specifies how to handle response payload
    content type conversions. Supported values are CONVERT_TO_BINARY and
    CONVERT_TO_TEXT, with the following behaviors:
    * `:integration_response_key` (`t:string`) The integration response key.
    * `:response_parameters` (`t:map`) A key-value map specifying response
    parameters that are passed to the method response from the backend. The key
    is a method response header parameter name and the mapped value is an
    integration response header value, a static value enclosed within a pair of
    single quotes, or a JSON expression from the integration response body. The
    mapping key must match the pattern of method.response.header.{name} , where
    name is a valid and unique header name. The mapped non-static value must
    match the pattern of integration.response.header.{name} or
    integration.response.body.{JSON-expression} , where {name} is a valid and
    unique response header name and {JSON-expression} is a valid JSON expression
    without the $ prefix.
    * `:response_templates` (`t:map`) The collection of response templates for the
    integration response as a string-to-string map of key-value pairs. Response
    templates are represented as a key/value map, with a content-type as the key
    and a template as the value.
    * `:template_selection_expression` (`t:string`) The template selection
    expression for the integration response. Supported only for WebSocket APIs.
  """
  @spec update_integration_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, update_integration_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_integration_response_errors()}
  def update_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        integration_response_id,
        input,
        options \\ []
      )
      when is_map(input) or is_nil(input) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses/#{AWS.Util.encode_uri(integration_response_id)}"

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
  Updates a Model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:model_id` (`t:string` required) The model ID.
  * `:input` (`t:map | nil`):
    * `:content_type` (`t:string`) The content-type for the model, for example,
    "application/json".
    * `:description` (`t:string`) The description of the model.
    * `:name` (`t:string`) The name of the model.
    * `:schema` (`t:string`) The schema for the model. For application/json models,
    this should be JSON schema draft 4 model.
  """
  @spec update_model(AWS.Client.t(), String.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_model_errors()}
  def update_model(%Client{} = client, api_id, model_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"

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
  Updates a Route.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateRoute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:route_id` (`t:string` required) The route ID.
  * `:input` (`t:map | nil`):
    * `:api_key_required` (`t:boolean`) Specifies whether an API key is required for
    the route. Supported only for WebSocket APIs.
    * `:authorization_scopes`
    (`t:list[com.amazonaws.apigatewayv2#StringWithLengthBetween1And64]`) The
    authorization scopes supported by this route.
    * `:authorization_type` (`t:enum["AWS_IAM|CUSTOM|JWT|NONE"]`) The authorization
    type for the route. For WebSocket APIs, valid values are NONE for open
    access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda
    authorizer For HTTP APIs, valid values are NONE for open access, JWT for
    using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for
    using a Lambda authorizer.
    * `:authorizer_id` (`t:string`) The identifier of the Authorizer resource to be
    associated with this route. The authorizer identifier is generated by API
    Gateway when you created the authorizer.
    * `:model_selection_expression` (`t:string`) The model selection expression for
    the route. Supported only for WebSocket APIs.
    * `:operation_name` (`t:string`) The operation name for the route.
    * `:request_models` (`t:map`) The request models for the route. Supported only
    for WebSocket APIs.
    * `:request_parameters` (`t:map`) The request parameters for the route.
    Supported only for WebSocket APIs.
    * `:route_key` (`t:string`) The route key for the route.
    * `:route_response_selection_expression` (`t:string`) The route response
    selection expression for the route. Supported only for WebSocket APIs.
    * `:target` (`t:string`) The target for the route.
  """
  @spec update_route(AWS.Client.t(), String.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_route_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_route_errors()}
  def update_route(%Client{} = client, api_id, route_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"

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
  Updates a RouteResponse.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateRouteResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:route_id` (`t:string` required) The route ID.
  * `:route_response_id` (`t:string` required) The route response ID.
  * `:input` (`t:map | nil`):
    * `:model_selection_expression` (`t:string`) The model selection expression for
    the route response. Supported only for WebSocket APIs.
    * `:response_models` (`t:map`) The response models for the route response.
    * `:response_parameters` (`t:map`) The route response parameters.
    * `:route_response_key` (`t:string`) The route response key.
  """
  @spec update_route_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, update_route_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_route_response_errors()}
  def update_route_response(
        %Client{} = client,
        api_id,
        route_id,
        route_response_id,
        input,
        options \\ []
      )
      when is_map(input) or is_nil(input) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses/#{AWS.Util.encode_uri(route_response_id)}"

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
  Updates a Stage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:api_id` (`t:string` required) The API identifier.
  * `:stage_name` (`t:string` required) The stage name. Stage names can contain
    only alphanumeric characters, hyphens, and underscores, or be $default.
    Maximum length is 128 characters.
  * `:input` (`t:map | nil`):
    * `:access_log_settings` (`t:structure`) Settings for logging access in this
    stage.
    * `:auto_deploy` (`t:boolean`) Specifies whether updates to an API automatically
    trigger a new deployment. The default value is false.
    * `:client_certificate_id` (`t:string`) The identifier of a client certificate
    for a Stage.
    * `:default_route_settings` (`t:structure`) The default route settings for the
    stage.
    * `:deployment_id` (`t:string`) The deployment identifier for the API stage.
    Can't be updated if autoDeploy is enabled.
    * `:description` (`t:string`) The description for the API stage.
    * `:route_settings` (`t:map`) Route settings for the stage.
    * `:stage_variables` (`t:map`) A map that defines the stage variables for a
    Stage. Variable names can have alphanumeric and underscore characters, and
    the values must match [A-Za-z0-9-._~:/?#&=,]+.
  """
  @spec update_stage(AWS.Client.t(), String.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_stage_errors()}
  def update_stage(%Client{} = client, api_id, stage_name, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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
  Updates a VPC link.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apigatewayv2%20UpdateVpcLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:vpc_link_id` (`t:string` required) The ID of the VPC link.
  * `:input` (`t:map | nil`):
    * `:name` (`t:string`) The name of the VPC link.
  """
  @spec update_vpc_link(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpc_link_errors()}
  def update_vpc_link(%Client{} = client, vpc_link_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"

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
