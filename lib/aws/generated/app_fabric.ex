# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppFabric do
  @moduledoc """
  Amazon Web Services AppFabric quickly connects software as a service (SaaS)
  applications across your organization. This allows IT and security teams to
  easily manage and secure applications using a standard schema, and employees
  can complete everyday tasks faster using generative artificial intelligence
  (AI). You can use these APIs to complete AppFabric tasks, such as setting up
  audit log ingestions or viewing user access. For more information about
  AppFabric, including the required permissions to use the service, see the
  [Amazon Web Services AppFabric Administration
  Guide](https://docs.aws.amazon.com/appfabric/latest/adminguide/). For more
  information about using the Command Line Interface (CLI) to manage your
  AppFabric resources, see the [AppFabric section of the CLI
  Reference](https://docs.aws.amazon.com/cli/latest/reference/appfabric/index.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      delete_ingestion_response() :: %{}

  """
  @type delete_ingestion_response() :: %{}

  @typedoc """

  ## Example:

      stop_ingestion_response() :: %{}

  """
  @type stop_ingestion_response() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_bundle() :: %{
        "arn" => String.t(),
        "customerManagedKeyArn" => String.t()
      }

  """
  @type app_bundle() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ingestions_response() :: %{
        "ingestions" => list(ingestion_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_ingestions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_ingestions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_ingestions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_access_task_item() :: %{
        "app" => String.t(),
        "error" => task_error(),
        "taskId" => String.t(),
        "tenantId" => String.t()
      }

  """
  @type user_access_task_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ingestion_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("app") => String.t(),
        required("ingestionType") => list(any()),
        required("tenantId") => String.t()
      }

  """
  @type create_ingestion_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_ingestion_request() :: %{}

  """
  @type stop_ingestion_request() :: %{}

  @typedoc """

  ## Example:

      ingestion_destination_summary() :: %{
        "arn" => String.t()
      }

  """
  @type ingestion_destination_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_bundle_summary() :: %{
        "arn" => String.t()
      }

  """
  @type app_bundle_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_ingestion_request() :: %{}

  """
  @type start_ingestion_request() :: %{}

  @typedoc """

  ## Example:

      create_ingestion_destination_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("destinationConfiguration") => list(),
        required("processingConfiguration") => list()
      }

  """
  @type create_ingestion_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_ingestion_response() :: %{}

  """
  @type start_ingestion_response() :: %{}

  @typedoc """

  ## Example:

      create_ingestion_response() :: %{
        "ingestion" => ingestion()
      }

  """
  @type create_ingestion_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ingestion_response() :: %{
        "ingestion" => ingestion()
      }

  """
  @type get_ingestion_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ingestion_destinations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_ingestion_destinations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_authorization_response() :: %{
        "appAuthorization" => app_authorization()
      }

  """
  @type get_app_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      firehose_stream() :: %{
        "streamName" => String.t()
      }

  """
  @type firehose_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_bundle_request() :: %{
        optional("clientToken") => String.t(),
        optional("customerManagedKeyIdentifier") => String.t(),
        optional("tags") => list(tag()())
      }

  """
  @type create_app_bundle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_authorization_summary() :: %{
        "app" => String.t(),
        "appAuthorizationArn" => String.t(),
        "appBundleArn" => String.t(),
        "status" => list(any()),
        "tenant" => tenant(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type app_authorization_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_bundle_request() :: %{}

  """
  @type delete_app_bundle_request() :: %{}

  @typedoc """

  ## Example:

      connect_app_authorization_request() :: %{
        optional("authRequest") => auth_request()
      }

  """
  @type connect_app_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tenant() :: %{
        "tenantDisplayName" => String.t(),
        "tenantIdentifier" => String.t()
      }

  """
  @type tenant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_access_result_item() :: %{
        "app" => String.t(),
        "email" => String.t(),
        "resultStatus" => list(any()),
        "taskError" => task_error(),
        "taskId" => String.t(),
        "tenantDisplayName" => String.t(),
        "tenantId" => String.t(),
        "userFirstName" => String.t(),
        "userFullName" => String.t(),
        "userId" => String.t(),
        "userLastName" => String.t(),
        "userStatus" => [String.t()]
      }

  """
  @type user_access_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ingestion_destination_request() :: %{}

  """
  @type delete_ingestion_destination_request() :: %{}

  @typedoc """

  ## Example:

      delete_app_bundle_response() :: %{}

  """
  @type delete_app_bundle_response() :: %{}

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

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ingestion_destination() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "destinationConfiguration" => list(),
        "ingestionArn" => String.t(),
        "processingConfiguration" => list(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type ingestion_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_bundles_response() :: %{
        "appBundleSummaryList" => list(app_bundle_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_app_bundles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ingestion() :: %{
        "app" => String.t(),
        "appBundleArn" => String.t(),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "ingestionType" => list(any()),
        "state" => list(any()),
        "tenantId" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type ingestion() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_bucket() :: %{
        "bucketName" => String.t(),
        "prefix" => String.t()
      }

  """
  @type s3_bucket() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_user_access_tasks_request() :: %{
        required("appBundleIdentifier") => String.t(),
        required("email") => String.t()
      }

  """
  @type start_user_access_tasks_request() :: %{String.t() => any()}

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

      batch_get_user_access_tasks_request() :: %{
        required("appBundleIdentifier") => String.t(),
        required("taskIdList") => list(String.t()())
      }

  """
  @type batch_get_user_access_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_authorization_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("app") => String.t(),
        required("authType") => list(any()),
        required("credential") => list(),
        required("tenant") => tenant()
      }

  """
  @type create_app_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ingestion_summary() :: %{
        "app" => String.t(),
        "arn" => String.t(),
        "state" => list(any()),
        "tenantId" => String.t()
      }

  """
  @type ingestion_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ingestion_destinations_response() :: %{
        "ingestionDestinations" => list(ingestion_destination_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_ingestion_destinations_response() :: %{String.t() => any()}

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

      update_app_authorization_request() :: %{
        optional("credential") => list(),
        optional("tenant") => tenant()
      }

  """
  @type update_app_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ingestion_destination_response() :: %{}

  """
  @type delete_ingestion_destination_response() :: %{}

  @typedoc """

  ## Example:

      delete_app_authorization_request() :: %{}

  """
  @type delete_app_authorization_request() :: %{}

  @typedoc """

  ## Example:

      audit_log_destination_configuration() :: %{
        "destination" => list()
      }

  """
  @type audit_log_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_bundle_request() :: %{}

  """
  @type get_app_bundle_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_bundles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_app_bundles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_user_access_tasks_response() :: %{
        "userAccessResultsList" => list(user_access_result_item()())
      }

  """
  @type batch_get_user_access_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ingestion_destination_response() :: %{
        "ingestionDestination" => ingestion_destination()
      }

  """
  @type get_ingestion_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_authorization_request() :: %{}

  """
  @type get_app_authorization_request() :: %{}

  @typedoc """

  ## Example:

      auth_request() :: %{
        "code" => String.t(),
        "redirectUri" => String.t()
      }

  """
  @type auth_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ingestion_destination_response() :: %{
        "ingestionDestination" => ingestion_destination()
      }

  """
  @type create_ingestion_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audit_log_processing_configuration() :: %{
        "format" => list(any()),
        "schema" => list(any())
      }

  """
  @type audit_log_processing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ingestion_request() :: %{}

  """
  @type get_ingestion_request() :: %{}

  @typedoc """

  ## Example:

      update_app_authorization_response() :: %{
        "appAuthorization" => app_authorization()
      }

  """
  @type update_app_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_authorizations_response() :: %{
        "appAuthorizationSummaryList" => list(app_authorization_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_app_authorizations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_user_access_tasks_response() :: %{
        "userAccessTasksList" => list(user_access_task_item()())
      }

  """
  @type start_user_access_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_app_bundle_response() :: %{
        "appBundle" => app_bundle()
      }

  """
  @type create_app_bundle_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ingestion_request() :: %{}

  """
  @type delete_ingestion_request() :: %{}

  @typedoc """

  ## Example:

      get_app_bundle_response() :: %{
        "appBundle" => app_bundle()
      }

  """
  @type get_app_bundle_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_authorizations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_app_authorizations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_app_authorization_response() :: %{
        "appAuthorizationSummary" => app_authorization_summary()
      }

  """
  @type connect_app_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => integer(),
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_authorization() :: %{
        "app" => String.t(),
        "appAuthorizationArn" => String.t(),
        "appBundleArn" => String.t(),
        "authType" => list(any()),
        "authUrl" => [String.t()],
        "createdAt" => non_neg_integer(),
        "persona" => list(any()),
        "status" => list(any()),
        "tenant" => tenant(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type app_authorization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_error() :: %{
        "errorCode" => [String.t()],
        "errorMessage" => [String.t()]
      }

  """
  @type task_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ingestion_destination_request() :: %{
        required("destinationConfiguration") => list()
      }

  """
  @type update_ingestion_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      oauth2_credential() :: %{
        "clientId" => String.t(),
        "clientSecret" => String.t()
      }

  """
  @type oauth2_credential() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_key_credential() :: %{
        "apiKey" => String.t()
      }

  """
  @type api_key_credential() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ingestion_destination_request() :: %{}

  """
  @type get_ingestion_destination_request() :: %{}

  @typedoc """

  ## Example:

      create_app_authorization_response() :: %{
        "appAuthorization" => app_authorization()
      }

  """
  @type create_app_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_authorization_response() :: %{}

  """
  @type delete_app_authorization_response() :: %{}

  @typedoc """

  ## Example:

      update_ingestion_destination_response() :: %{
        "ingestionDestination" => ingestion_destination()
      }

  """
  @type update_ingestion_destination_response() :: %{String.t() => any()}

  @type batch_get_user_access_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type connect_app_authorization_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_app_authorization_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_app_bundle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_ingestion_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_ingestion_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_app_authorization_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_app_bundle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_ingestion_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_ingestion_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_app_authorization_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_app_bundle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_ingestion_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_ingestion_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_authorizations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_bundles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_ingestion_destinations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_ingestions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_ingestion_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_user_access_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type stop_ingestion_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
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

  @type update_app_authorization_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_ingestion_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-05-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appfabric",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AppFabric",
      signature_version: "v4",
      signing_name: "appfabric",
      target_prefix: nil
    }
  end

  @doc """
  Gets user access details in a batch request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20BatchGetUserAccessTasks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_get_user_access_tasks(
          AWS.Client.t(),
          batch_get_user_access_tasks_request(),
          Keyword.t()
        ) ::
          {:ok, batch_get_user_access_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_user_access_tasks_errors()}
  def batch_get_user_access_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/useraccess/batchget"
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
  Establishes a connection between Amazon Web Services AppFabric and an
  application, which allows AppFabric to call the APIs of the application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20ConnectAppAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_authorization_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app authorization to use for the
    request.
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle that contains the app
    authorization to use for the request.

  ## Optional parameters:
  """
  @spec connect_app_authorization(
          AWS.Client.t(),
          String.t(),
          String.t(),
          connect_app_authorization_request(),
          Keyword.t()
        ) ::
          {:ok, connect_app_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, connect_app_authorization_errors()}
  def connect_app_authorization(
        %Client{} = client,
        app_authorization_identifier,
        app_bundle_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations/#{AWS.Util.encode_uri(app_authorization_identifier)}/connect"

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
  Creates an app authorization within an app bundle, which allows AppFabric to
  connect to an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20CreateAppAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.

  ## Optional parameters:
  """
  @spec create_app_authorization(
          AWS.Client.t(),
          String.t(),
          create_app_authorization_request(),
          Keyword.t()
        ) ::
          {:ok, create_app_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_authorization_errors()}
  def create_app_authorization(%Client{} = client, app_bundle_identifier, input, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations"
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
  Creates an app bundle to collect data from an application using AppFabric.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20CreateAppBundle&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_app_bundle(AWS.Client.t(), create_app_bundle_request(), Keyword.t()) ::
          {:ok, create_app_bundle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_bundle_errors()}
  def create_app_bundle(%Client{} = client, input, options \\ []) do
    url_path = "/appbundles"
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
  Creates a data ingestion for an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20CreateIngestion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.

  ## Optional parameters:
  """
  @spec create_ingestion(AWS.Client.t(), String.t(), create_ingestion_request(), Keyword.t()) ::
          {:ok, create_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ingestion_errors()}
  def create_ingestion(%Client{} = client, app_bundle_identifier, input, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions"
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
  Creates an ingestion destination, which specifies how an application's ingested
  data is processed by Amazon Web Services AppFabric and where it's delivered.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20CreateIngestionDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.
  * `:ingestion_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the ingestion to use for the request.

  ## Optional parameters:
  """
  @spec create_ingestion_destination(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_ingestion_destination_request(),
          Keyword.t()
        ) ::
          {:ok, create_ingestion_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ingestion_destination_errors()}
  def create_ingestion_destination(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations"

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
  Deletes an app authorization. You must delete the associated ingestion before
  you can delete an app authorization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20DeleteAppAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_authorization_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app authorization to use for the
    request.
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.

  ## Optional parameters:
  """
  @spec delete_app_authorization(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_app_authorization_request(),
          Keyword.t()
        ) ::
          {:ok, delete_app_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_authorization_errors()}
  def delete_app_authorization(
        %Client{} = client,
        app_authorization_identifier,
        app_bundle_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations/#{AWS.Util.encode_uri(app_authorization_identifier)}"

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
  Deletes an app bundle. You must delete all associated app authorizations before
  you can delete an app bundle.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20DeleteAppBundle&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The ID or Amazon Resource Name (ARN) of
    the app bundle that needs to be deleted.

  ## Optional parameters:
  """
  @spec delete_app_bundle(AWS.Client.t(), String.t(), delete_app_bundle_request(), Keyword.t()) ::
          {:ok, delete_app_bundle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_bundle_errors()}
  def delete_app_bundle(%Client{} = client, app_bundle_identifier, input, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}"
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
  Deletes an ingestion. You must stop (disable) the ingestion and you must delete
  all associated ingestion destinations before you can delete an app ingestion.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20DeleteIngestion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.
  * `:ingestion_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the ingestion to use for the request.

  ## Optional parameters:
  """
  @spec delete_ingestion(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_ingestion_request(),
          Keyword.t()
        ) ::
          {:ok, delete_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ingestion_errors()}
  def delete_ingestion(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}"

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
  Deletes an ingestion destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20DeleteIngestionDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.
  * `:ingestion_destination_identifier` (`t:string`) The Amazon Resource Name
    (ARN) or Universal Unique Identifier (UUID) of the ingestion destination to
    use for the request.
  * `:ingestion_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the ingestion to use for the request.

  ## Optional parameters:
  """
  @spec delete_ingestion_destination(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_ingestion_destination_request(),
          Keyword.t()
        ) ::
          {:ok, delete_ingestion_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ingestion_destination_errors()}
  def delete_ingestion_destination(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_destination_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations/#{AWS.Util.encode_uri(ingestion_destination_identifier)}"

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
  Returns information about an app authorization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20GetAppAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_authorization_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app authorization to use for the
    request.
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.

  ## Optional parameters:
  """
  @spec get_app_authorization(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_app_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_app_authorization_errors()}
  def get_app_authorization(
        %Client{} = client,
        app_authorization_identifier,
        app_bundle_identifier,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations/#{AWS.Util.encode_uri(app_authorization_identifier)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns information about an app bundle.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20GetAppBundle&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.

  ## Optional parameters:
  """
  @spec get_app_bundle(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_app_bundle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_app_bundle_errors()}
  def get_app_bundle(%Client{} = client, app_bundle_identifier, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns information about an ingestion.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20GetIngestion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.
  * `:ingestion_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the ingestion to use for the request.

  ## Optional parameters:
  """
  @spec get_ingestion(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ingestion_errors()}
  def get_ingestion(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns information about an ingestion destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20GetIngestionDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.
  * `:ingestion_destination_identifier` (`t:string`) The Amazon Resource Name
    (ARN) or Universal Unique Identifier (UUID) of the ingestion destination to
    use for the request.
  * `:ingestion_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the ingestion to use for the request.

  ## Optional parameters:
  """
  @spec get_ingestion_destination(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_ingestion_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ingestion_destination_errors()}
  def get_ingestion_destination(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_destination_identifier,
        ingestion_identifier,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations/#{AWS.Util.encode_uri(ingestion_destination_identifier)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of all app authorizations configured for an app bundle.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20ListAppAuthorizations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned
    per call. You can use nextToken to obtain further pages of results.
  * `:next_token` (`t:string`) If nextToken is returned, there are more results
    available. The value of nextToken is a unique pagination token for each
    page. Make the call again using the returned token to retrieve the next
    page. Keep all other arguments unchanged. Each pagination token expires
    after 24 hours. Using an expired pagination token will return an HTTP 400
    InvalidToken error.
  """
  @spec list_app_authorizations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_app_authorizations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_authorizations_errors()}
  def list_app_authorizations(%Client{} = client, app_bundle_identifier, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations"

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
  Returns a list of app bundles.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20ListAppBundles&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned
    per call. You can use nextToken to obtain further pages of results.
  * `:next_token` (`t:string`) If nextToken is returned, there are more results
    available. The value of nextToken is a unique pagination token for each
    page. Make the call again using the returned token to retrieve the next
    page. Keep all other arguments unchanged. Each pagination token expires
    after 24 hours. Using an expired pagination token will return an HTTP 400
    InvalidToken error.
  """
  @spec list_app_bundles(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_app_bundles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_bundles_errors()}
  def list_app_bundles(%Client{} = client, options \\ []) do
    url_path = "/appbundles"

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
  Returns a list of all ingestion destinations configured for an ingestion.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20ListIngestionDestinations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.
  * `:ingestion_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the ingestion to use for the request.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned
    per call. You can use nextToken to obtain further pages of results.
  * `:next_token` (`t:`) If nextToken is returned, there are more results
    available. The value of nextToken is a unique pagination token for each
    page. Make the call again using the returned token to retrieve the next
    page. Keep all other arguments unchanged. Each pagination token expires
    after 24 hours. Using an expired pagination token will return an HTTP 400
    InvalidToken error.
  """
  @spec list_ingestion_destinations(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_ingestion_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ingestion_destinations_errors()}
  def list_ingestion_destinations(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations"

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
  Returns a list of all ingestions configured for an app bundle.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20ListIngestions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned
    per call. You can use nextToken to obtain further pages of results.
  * `:next_token` (`t:`) If nextToken is returned, there are more results
    available. The value of nextToken is a unique pagination token for each
    page. Make the call again using the returned token to retrieve the next
    page. Keep all other arguments unchanged. Each pagination token expires
    after 24 hours. Using an expired pagination token will return an HTTP 400
    InvalidToken error.
  """
  @spec list_ingestions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_ingestions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ingestions_errors()}
  def list_ingestions(%Client{} = client, app_bundle_identifier, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions"

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
  Returns a list of tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
    for which you want to retrieve tags.

  ## Optional parameters:
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
  Starts (enables) an ingestion, which collects data from an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20StartIngestion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.
  * `:ingestion_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the ingestion to use for the request.

  ## Optional parameters:
  """
  @spec start_ingestion(
          AWS.Client.t(),
          String.t(),
          String.t(),
          start_ingestion_request(),
          Keyword.t()
        ) ::
          {:ok, start_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_ingestion_errors()}
  def start_ingestion(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/start"

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
  Starts the tasks to search user access status for a specific email address.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20StartUserAccessTasks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec start_user_access_tasks(AWS.Client.t(), start_user_access_tasks_request(), Keyword.t()) ::
          {:ok, start_user_access_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_user_access_tasks_errors()}
  def start_user_access_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/useraccess/start"
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
  Stops (disables) an ingestion.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20StopIngestion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.
  * `:ingestion_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the ingestion to use for the request.

  ## Optional parameters:
  """
  @spec stop_ingestion(
          AWS.Client.t(),
          String.t(),
          String.t(),
          stop_ingestion_request(),
          Keyword.t()
        ) ::
          {:ok, stop_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_ingestion_errors()}
  def stop_ingestion(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/stop"

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
  Assigns one or more tags (key-value pairs) to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
    that you want to tag.

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
  Removes a tag or tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
    that you want to untag.
  * `:tag_keys` (`t:list[com.amazonaws.appfabric#TagKey]`) The keys of the
    key-value pairs for the tag or tags you want to remove from the specified
    resource.

  ## Optional parameters:
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
  Updates an app authorization within an app bundle, which allows AppFabric to
  connect to an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20UpdateAppAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_authorization_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app authorization to use for the
    request.
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.

  ## Optional parameters:
  """
  @spec update_app_authorization(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_app_authorization_request(),
          Keyword.t()
        ) ::
          {:ok, update_app_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_authorization_errors()}
  def update_app_authorization(
        %Client{} = client,
        app_authorization_identifier,
        app_bundle_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations/#{AWS.Util.encode_uri(app_authorization_identifier)}"

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
  Updates an ingestion destination, which specifies how an application's ingested
  data is processed by Amazon Web Services AppFabric and where it's delivered.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appfabric%20UpdateIngestionDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_bundle_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the app bundle to use for the request.
  * `:ingestion_destination_identifier` (`t:string`) The Amazon Resource Name
    (ARN) or Universal Unique Identifier (UUID) of the ingestion destination to
    use for the request.
  * `:ingestion_identifier` (`t:string`) The Amazon Resource Name (ARN) or
    Universal Unique Identifier (UUID) of the ingestion to use for the request.

  ## Optional parameters:
  """
  @spec update_ingestion_destination(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_ingestion_destination_request(),
          Keyword.t()
        ) ::
          {:ok, update_ingestion_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ingestion_destination_errors()}
  def update_ingestion_destination(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_destination_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations/#{AWS.Util.encode_uri(ingestion_destination_identifier)}"

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
end
