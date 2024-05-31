# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Amp do
  @moduledoc """
  Amazon Managed Service for Prometheus is a serverless, Prometheus-compatible
  monitoring service for
  container metrics that makes it easier to securely monitor container
  environments at
  scale.

  With Amazon Managed Service for Prometheus, you can use the same open-source
  Prometheus data
  model and query language that you use today to monitor the performance of your
  containerized workloads, and also enjoy improved scalability, availability, and
  security
  without having to manage the underlying infrastructure.

  For more information about Amazon Managed Service for Prometheus, see the
  [Amazon Managed Service for Prometheus](https://docs.aws.amazon.com/prometheus/latest/userguide/what-is-Amazon-Managed-Service-Prometheus.html)
  User Guide.

  Amazon Managed Service for Prometheus includes two APIs.

    *
  Use the Amazon Web Services API described in this guide to manage Amazon Managed
  Service for Prometheus resources, such as workspaces, rule groups, and alert
  managers.

    *
  Use the [Prometheus-compatible API](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-APIReference.html#AMP-APIReference-Prometheus-Compatible-Apis)
  to work within your Prometheus
  workspace.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_alert_manager_definition_request() :: %{
        "clientToken" => String.t(),
        "data" => binary()
      }

  """
  @type put_alert_manager_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rule_groups_namespaces_response() :: %{
        "nextToken" => String.t(),
        "ruleGroupsNamespaces" => list(rule_groups_namespace_summary()())
      }

  """
  @type list_rule_groups_namespaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_scrapers_request() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_scrapers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_groups_namespace_status() :: %{
        "statusCode" => String.t(),
        "statusReason" => [String.t()]
      }

  """
  @type rule_groups_namespace_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_groups_namespace_description() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "data" => binary(),
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "status" => rule_groups_namespace_status(),
        "tags" => map()
      }

  """
  @type rule_groups_namespace_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workspace_status() :: %{
        "statusCode" => String.t()
      }

  """
  @type workspace_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scraper_status() :: %{
        "statusCode" => String.t()
      }

  """
  @type scraper_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workspace_summary() :: %{
        "alias" => String.t(),
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "kmsKeyArn" => String.t(),
        "status" => workspace_status(),
        "tags" => map(),
        "workspaceId" => String.t()
      }

  """
  @type workspace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_scraper_response() :: %{
        "arn" => String.t(),
        "scraperId" => String.t(),
        "status" => scraper_status(),
        "tags" => map()
      }

  """
  @type create_scraper_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_configuration_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "logGroupArn" => String.t(),
        "modifiedAt" => [non_neg_integer()],
        "status" => logging_configuration_status(),
        "workspace" => String.t()
      }

  """
  @type logging_configuration_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_logging_configuration_request() :: %{
        "clientToken" => String.t(),
        "logGroupArn" => String.t()
      }

  """
  @type update_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_groups_namespace_response() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "status" => rule_groups_namespace_status(),
        "tags" => map()
      }

  """
  @type create_rule_groups_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_alert_manager_definition_request() :: %{
        "clientToken" => String.t()
      }

  """
  @type delete_alert_manager_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_logging_configuration_request() :: %{
        "clientToken" => String.t(),
        "logGroupArn" => String.t()
      }

  """
  @type create_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_rule_groups_namespace_response() :: %{
        "ruleGroupsNamespace" => rule_groups_namespace_description()
      }

  """
  @type describe_rule_groups_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_rule_groups_namespace_response() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "status" => rule_groups_namespace_status(),
        "tags" => map()
      }

  """
  @type put_rule_groups_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workspace_alias_request() :: %{
        "alias" => String.t(),
        "clientToken" => String.t()
      }

  """
  @type update_workspace_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_workspace_response() :: %{
        "workspace" => workspace_description()
      }

  """
  @type describe_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_default_scraper_configuration_request() :: %{}

  """
  @type get_default_scraper_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_rule_groups_namespace_request() :: %{
        "clientToken" => String.t()
      }

  """
  @type delete_rule_groups_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_rule_groups_namespace_request() :: %{}

  """
  @type describe_rule_groups_namespace_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_logging_configuration_response() :: %{
        "status" => logging_configuration_status()
      }

  """
  @type create_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_logging_configuration_request() :: %{}

  """
  @type describe_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      logging_configuration_status() :: %{
        "statusCode" => String.t(),
        "statusReason" => [String.t()]
      }

  """
  @type logging_configuration_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_scraper_response() :: %{
        "scraper" => scraper_description()
      }

  """
  @type describe_scraper_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_scraper_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_scraper_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eks_configuration() :: %{
        "clusterArn" => String.t(),
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()())
      }

  """
  @type eks_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_workspace_request() :: %{}

  """
  @type describe_workspace_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workspace_request() :: %{
        "clientToken" => String.t()
      }

  """
  @type delete_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_groups_namespace_summary() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "status" => rule_groups_namespace_status(),
        "tags" => map()
      }

  """
  @type rule_groups_namespace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_groups_namespace_request() :: %{
        "clientToken" => String.t(),
        "data" => binary(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type create_rule_groups_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_alert_manager_definition_request() :: %{
        "clientToken" => String.t(),
        "data" => binary()
      }

  """
  @type create_alert_manager_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workspace_description() :: %{
        "alias" => String.t(),
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "kmsKeyArn" => String.t(),
        "prometheusEndpoint" => String.t(),
        "status" => workspace_status(),
        "tags" => map(),
        "workspaceId" => String.t()
      }

  """
  @type workspace_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_response() :: %{
        "arn" => String.t(),
        "kmsKeyArn" => String.t(),
        "status" => workspace_status(),
        "tags" => map(),
        "workspaceId" => String.t()
      }

  """
  @type create_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workspaces_response() :: %{
        "nextToken" => String.t(),
        "workspaces" => list(workspace_summary()())
      }

  """
  @type list_workspaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_default_scraper_configuration_response() :: %{
        "configuration" => [binary()]
      }

  """
  @type get_default_scraper_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scraper_description() :: %{
        "alias" => String.t(),
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "destination" => list(),
        "lastModifiedAt" => [non_neg_integer()],
        "roleArn" => String.t(),
        "scrapeConfiguration" => list(),
        "scraperId" => String.t(),
        "source" => list(),
        "status" => scraper_status(),
        "statusReason" => String.t(),
        "tags" => map()
      }

  """
  @type scraper_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      put_alert_manager_definition_response() :: %{
        "status" => alert_manager_definition_status()
      }

  """
  @type put_alert_manager_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alert_manager_definition_description() :: %{
        "createdAt" => [non_neg_integer()],
        "data" => binary(),
        "modifiedAt" => [non_neg_integer()],
        "status" => alert_manager_definition_status()
      }

  """
  @type alert_manager_definition_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_scraper_response() :: %{
        "scraperId" => String.t(),
        "status" => scraper_status()
      }

  """
  @type delete_scraper_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
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

      list_workspaces_request() :: %{
        "alias" => String.t(),
        "maxResults" => [integer()],
        "nextToken" => String.t()
      }

  """
  @type list_workspaces_request() :: %{String.t() => any()}

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

      describe_logging_configuration_response() :: %{
        "loggingConfiguration" => logging_configuration_metadata()
      }

  """
  @type describe_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      amp_configuration() :: %{
        "workspaceArn" => String.t()
      }

  """
  @type amp_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_scraper_request() :: %{
        optional("alias") => String.t(),
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("destination") => list(),
        required("scrapeConfiguration") => list(),
        required("source") => list()
      }

  """
  @type create_scraper_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_alert_manager_definition_response() :: %{
        "status" => alert_manager_definition_status()
      }

  """
  @type create_alert_manager_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_alert_manager_definition_request() :: %{}

  """
  @type describe_alert_manager_definition_request() :: %{}

  @typedoc """

  ## Example:

      describe_alert_manager_definition_response() :: %{
        "alertManagerDefinition" => alert_manager_definition_description()
      }

  """
  @type describe_alert_manager_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_scraper_request() :: %{}

  """
  @type describe_scraper_request() :: %{}

  @typedoc """

  ## Example:

      delete_logging_configuration_request() :: %{
        "clientToken" => String.t()
      }

  """
  @type delete_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_rule_groups_namespace_request() :: %{
        "clientToken" => String.t(),
        "data" => binary()
      }

  """
  @type put_rule_groups_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_scrapers_response() :: %{
        "nextToken" => String.t(),
        "scrapers" => list(scraper_summary()())
      }

  """
  @type list_scrapers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_logging_configuration_response() :: %{
        "status" => logging_configuration_status()
      }

  """
  @type update_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rule_groups_namespaces_request() :: %{
        "maxResults" => [integer()],
        "name" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_rule_groups_namespaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alert_manager_definition_status() :: %{
        "statusCode" => String.t(),
        "statusReason" => [String.t()]
      }

  """
  @type alert_manager_definition_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_request() :: %{
        "alias" => String.t(),
        "clientToken" => String.t(),
        "kmsKeyArn" => String.t(),
        "tags" => map()
      }

  """
  @type create_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scraper_summary() :: %{
        "alias" => String.t(),
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "destination" => list(),
        "lastModifiedAt" => [non_neg_integer()],
        "roleArn" => String.t(),
        "scraperId" => String.t(),
        "source" => list(),
        "status" => scraper_status(),
        "statusReason" => String.t(),
        "tags" => map()
      }

  """
  @type scraper_summary() :: %{String.t() => any()}

  @type create_alert_manager_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_rule_groups_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_scraper_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_alert_manager_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_rule_groups_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_scraper_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_alert_manager_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_rule_groups_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_scraper_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_default_scraper_configuration_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type list_rule_groups_namespaces_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_scrapers_errors() ::
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

  @type list_workspaces_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type put_alert_manager_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_rule_groups_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workspace_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "aps",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "amp",
      signature_version: "v4",
      signing_name: "aps",
      target_prefix: nil
    }
  end

  @doc """
  The `CreateAlertManagerDefinition` operation creates the alert manager
  definition in a workspace.

  If a workspace already has an alert manager definition, don't
  use this operation to update it. Instead, use
  `PutAlertManagerDefinition`.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to add the alert manager definition to.

  ## Optional parameters:
  """
  @spec create_alert_manager_definition(
          AWS.Client.t(),
          String.t(),
          create_alert_manager_definition_request(),
          Keyword.t()
        ) ::
          {:ok, create_alert_manager_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_alert_manager_definition_errors()}
  def create_alert_manager_definition(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
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
  The `CreateLoggingConfiguration` operation creates a logging configuration
  for the workspace.

  Use this operation to set the CloudWatch log group to which
  the logs will be published to.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to create the logging configuration for.

  ## Optional parameters:
  """
  @spec create_logging_configuration(
          AWS.Client.t(),
          String.t(),
          create_logging_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, create_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_logging_configuration_errors()}
  def create_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
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
  The `CreateRuleGroupsNamespace` operation creates a rule groups namespace
  within a workspace.

  A rule groups namespace is associated with exactly one rules file. A
  workspace can have multiple rule groups namespaces.

  Use this operation only to create new rule groups namespaces. To update an
  existing
  rule groups namespace, use `PutRuleGroupsNamespace`.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to add the rule groups namespace.

  ## Optional parameters:
  """
  @spec create_rule_groups_namespace(
          AWS.Client.t(),
          String.t(),
          create_rule_groups_namespace_request(),
          Keyword.t()
        ) ::
          {:ok, create_rule_groups_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rule_groups_namespace_errors()}
  def create_rule_groups_namespace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces"
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
  The `CreateScraper` operation creates a scraper to collect metrics.

  A
  scraper pulls metrics from Prometheus-compatible sources within an Amazon EKS
  cluster, and sends them to your Amazon Managed Service for Prometheus workspace.
  You can configure the
  scraper to control what metrics are collected, and what transformations are
  applied
  prior to sending them to your workspace.

  If needed, an IAM role will be created for you that gives Amazon Managed Service
  for Prometheus access to the metrics in your cluster. For more information, see
  [Using roles for scraping metrics from EKS](https://docs.aws.amazon.com/prometheus/latest/userguide/using-service-linked-roles.html#using-service-linked-roles-prom-scraper)
  in the *Amazon Managed Service for Prometheus User
  Guide*.

  You cannot update a scraper. If you want to change the configuration of the
  scraper,
  create a new scraper and delete the old one.

  The `scrapeConfiguration` parameter contains the base64-encoded version of
  the YAML configuration file.

  For more information about collectors, including what metrics are collected, and
  how to configure the scraper, see [Amazon Web Services managed collectors](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector.html)
  in the *Amazon Managed Service for Prometheus User
  Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_scraper(AWS.Client.t(), create_scraper_request(), Keyword.t()) ::
          {:ok, create_scraper_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_scraper_errors()}
  def create_scraper(%Client{} = client, input, options \\ []) do
    url_path = "/scrapers"
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
  Creates a Prometheus workspace.

  A workspace is a logical space dedicated to the
  storage and querying of Prometheus metrics. You can have one or more workspaces
  in each
  Region in your account.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_workspace(AWS.Client.t(), create_workspace_request(), Keyword.t()) ::
          {:ok, create_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_errors()}
  def create_workspace(%Client{} = client, input, options \\ []) do
    url_path = "/workspaces"
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
  Deletes the alert manager definition from a workspace.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to delete the alert manager definition from.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique identifier that you can provide to ensure the idempotency of the request.
            Case-sensitive.
  """
  @spec delete_alert_manager_definition(
          AWS.Client.t(),
          String.t(),
          delete_alert_manager_definition_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_alert_manager_definition_errors()}
  def delete_alert_manager_definition(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  Deletes the logging configuration for a workspace.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace containing the logging configuration to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique identifier that you can provide to ensure the idempotency of the request.
            Case-sensitive.
  """
  @spec delete_logging_configuration(
          AWS.Client.t(),
          String.t(),
          delete_logging_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_logging_configuration_errors()}
  def delete_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  Deletes one rule groups namespace and its associated rule groups definition.

  ## Required positional parameters:
  * `:name` (`t:string`) The name of the rule groups namespace to delete.
  * `:workspace_id` (`t:string`) The ID of the workspace containing the rule groups namespace and definition to
            delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique identifier that you can provide to ensure the idempotency of the request.
            Case-sensitive.
  """
  @spec delete_rule_groups_namespace(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_rule_groups_namespace_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rule_groups_namespace_errors()}
  def delete_rule_groups_namespace(%Client{} = client, name, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces/#{AWS.Util.encode_uri(name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  The `DeleteScraper` operation deletes one scraper, and stops any metrics
  collection that the scraper performs.

  ## Required positional parameters:
  * `:scraper_id` (`t:string`) The ID of the scraper to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) (Optional) A unique, case-sensitive identifier that you can provide to ensure the 
            idempotency of the request.
  """
  @spec delete_scraper(AWS.Client.t(), String.t(), delete_scraper_request(), Keyword.t()) ::
          {:ok, delete_scraper_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_scraper_errors()}
  def delete_scraper(%Client{} = client, scraper_id, input, options \\ []) do
    url_path = "/scrapers/#{AWS.Util.encode_uri(scraper_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  Deletes an existing workspace.

  When you delete a workspace, the data that has been ingested into it is not
  immediately deleted. It will be permanently deleted within one month.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique identifier that you can provide to ensure the idempotency of the request.
            Case-sensitive.
  """
  @spec delete_workspace(AWS.Client.t(), String.t(), delete_workspace_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_errors()}
  def delete_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  Retrieves the full information about the alert manager definition for a
  workspace.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to retrieve the alert manager definition from.

  ## Optional parameters:
  """
  @spec describe_alert_manager_definition(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_alert_manager_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_alert_manager_definition_errors()}
  def describe_alert_manager_definition(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns complete information about the current logging configuration of the
  workspace.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to describe the logging configuration for.

  ## Optional parameters:
  """
  @spec describe_logging_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_logging_configuration_errors()}
  def describe_logging_configuration(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns complete information about one rule groups namespace.

  To retrieve a list of
  rule groups namespaces, use `ListRuleGroupsNamespaces`.

  ## Required positional parameters:
  * `:name` (`t:string`) The name of the rule groups namespace that you want information for.
  * `:workspace_id` (`t:string`) The ID of the workspace containing the rule groups namespace.

  ## Optional parameters:
  """
  @spec describe_rule_groups_namespace(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_rule_groups_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_rule_groups_namespace_errors()}
  def describe_rule_groups_namespace(%Client{} = client, name, workspace_id, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces/#{AWS.Util.encode_uri(name)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `DescribeScraper` operation displays information about an existing
  scraper.

  ## Required positional parameters:
  * `:scraper_id` (`t:string`) The ID of the scraper to describe.

  ## Optional parameters:
  """
  @spec describe_scraper(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_scraper_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scraper_errors()}
  def describe_scraper(%Client{} = client, scraper_id, options \\ []) do
    url_path = "/scrapers/#{AWS.Util.encode_uri(scraper_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an existing workspace.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to describe.

  ## Optional parameters:
  """
  @spec describe_workspace(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_errors()}
  def describe_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `GetDefaultScraperConfiguration` operation returns the default
  scraper configuration used when Amazon EKS creates a scraper for you.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec get_default_scraper_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_default_scraper_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_default_scraper_configuration_errors()}
  def get_default_scraper_configuration(%Client{} = client, options \\ []) do
    url_path = "/scraperconfiguration"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of rule groups namespaces in a workspace.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace containing the rule groups namespaces.

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of results to return. The default is 100.
  * `:name` (`t:string`) Use this parameter to filter the rule groups namespaces that are returned. Only the
            namespaces with names that begin with the value that you specify are returned.
  * `:next_token` (`t:string`) The token for the next set of items to return. You receive this token from a previous
            call, and use it to get the next page of results. The other parameters must be the same
            as the initial call.
  """
  @spec list_rule_groups_namespaces(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_rule_groups_namespaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rule_groups_namespaces_errors()}
  def list_rule_groups_namespaces(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, name: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {name, options} = Keyword.pop(options, :name, nil)

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `ListScrapers` operation lists all of the scrapers in
  your account.

  This includes scrapers being created or deleted. You can optionally
  filter the returned list.

  ## Required positional parameters:

  ## Optional parameters:
  * `:filters` (`t:map`) (Optional) A list of key-value pairs to filter the list of scrapers returned.
            Keys include <code>status</code>, <code>sourceArn</code>, 
            <code>destinationArn</code>, and <code>alias</code>.
  * `:max_results` (`t:`) Optional) The maximum number of
            scrapers to return in one <code>ListScrapers</code> operation. The range is
            1-1000.
  * `:next_token` (`t:string`) (Optional) The token for the next set of
            items to return. (You received this token from a previous call.)
  """
  @spec list_scrapers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_scrapers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_scrapers_errors()}
  def list_scrapers(%Client{} = client, options \\ []) do
    url_path = "/scrapers"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [filters: nil, max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {filters, options} = Keyword.pop(options, :filters, nil)

    query_params =
      if !is_nil(filters) do
        [{"filters", filters} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `ListTagsForResource` operation returns the tags that are associated
  with an Amazon Managed Service for Prometheus resource.

  Currently, the only resources that can be
  tagged are workspaces and rule groups namespaces.

  ## Required positional parameters:
  * `:resource_arn` (`t:`) The ARN of the resource to list tages for. Must be a workspace or rule groups
            namespace resource.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the Amazon Managed Service for Prometheus workspaces in your
  account.

  This includes
  workspaces being created or deleted.

  ## Required positional parameters:

  ## Optional parameters:
  * `:alias` (`t:string`) If this is included, it filters the results to only the workspaces with names that
            start with the value that you specify here.
  * `:max_results` (`t:`) The maximum number of workspaces to return per request. The default is 100.
  * `:next_token` (`t:string`) The token for the next set of items to return. You receive this token from a previous
            call, and use it to get the next page of results. The other parameters must be the same
            as the initial call.
  """
  @spec list_workspaces(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_workspaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workspaces_errors()}
  def list_workspaces(%Client{} = client, options \\ []) do
    url_path = "/workspaces"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [alias: nil, max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {alias, options} = Keyword.pop(options, :alias, nil)

    query_params =
      if !is_nil(alias) do
        [{"alias", alias} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Updates an existing alert manager definition in a workspace.

  If the workspace does not
  already have an alert manager definition, don't use this operation to create it.
  Instead, use `CreateAlertManagerDefinition`.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to update the alert manager definition in.

  ## Optional parameters:
  """
  @spec put_alert_manager_definition(
          AWS.Client.t(),
          String.t(),
          put_alert_manager_definition_request(),
          Keyword.t()
        ) ::
          {:ok, put_alert_manager_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_alert_manager_definition_errors()}
  def put_alert_manager_definition(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an existing rule groups namespace within a workspace.

  A rule groups namespace
  is associated with exactly one rules file. A workspace can have multiple rule
  groups
  namespaces.

  Use this operation only to update existing rule groups namespaces. To create a
  new
  rule groups namespace, use `CreateRuleGroupsNamespace`.

  You can't use this operation to add tags to an existing rule groups namespace.
  Instead, use `TagResource`.

  ## Required positional parameters:
  * `:name` (`t:string`) The name of the rule groups namespace that you are updating.
  * `:workspace_id` (`t:string`) The ID of the workspace where you are updating the rule groups namespace.

  ## Optional parameters:
  """
  @spec put_rule_groups_namespace(
          AWS.Client.t(),
          String.t(),
          String.t(),
          put_rule_groups_namespace_request(),
          Keyword.t()
        ) ::
          {:ok, put_rule_groups_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_rule_groups_namespace_errors()}
  def put_rule_groups_namespace(%Client{} = client, name, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  The `TagResource` operation associates tags with an Amazon Managed Service for
  Prometheus
  resource.

  The only resources that can be tagged are workspaces and rule groups
  namespaces.

  If you specify a new tag key for the resource, this tag is appended to the list
  of
  tags associated with the resource. If you specify a tag key that is already
  associated
  with the resource, the new tag value that you specify replaces the previous
  value for
  that tag.

  ## Required positional parameters:
  * `:resource_arn` (`t:`) The ARN of the workspace or rule groups namespace to apply tags to.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
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
  Removes the specified tags from an Amazon Managed Service for Prometheus
  resource.

  The only resources
  that can be tagged are workspaces and rule groups namespaces.

  ## Required positional parameters:
  * `:resource_arn` (`t:`) The ARN of the workspace or rule groups namespace.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.amp#TagKey]`) The keys of the tags to remove.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
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
  Updates the log group ARN or the workspace ID of the current logging
  configuration.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to update the logging configuration for.

  ## Optional parameters:
  """
  @spec update_logging_configuration(
          AWS.Client.t(),
          String.t(),
          update_logging_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, update_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_logging_configuration_errors()}
  def update_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the alias of an existing workspace.

  ## Required positional parameters:
  * `:workspace_id` (`t:string`) The ID of the workspace to update.

  ## Optional parameters:
  """
  @spec update_workspace_alias(
          AWS.Client.t(),
          String.t(),
          update_workspace_alias_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspace_alias_errors()}
  def update_workspace_alias(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alias"
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
      204
    )
  end
end
