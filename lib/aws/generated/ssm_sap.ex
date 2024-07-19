# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SsmSap do
  @moduledoc """
  This API reference provides descriptions, syntax, and other details about each
  of the actions and data types for AWS Systems Manager for SAP. The topic for
  each action shows the API request parameters and responses.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_component_output() :: %{
        optional("Component") => component(),
        optional("Tags") => map()
      }
      
  """
  @type get_component_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation() :: %{
        "EndTime" => [non_neg_integer()],
        "Id" => String.t(),
        "LastUpdatedTime" => [non_neg_integer()],
        "Properties" => map(),
        "ResourceArn" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "StartTime" => [non_neg_integer()],
        "Status" => list(any()),
        "StatusMessage" => [String.t()],
        "Type" => String.t()
      }
      
  """
  @type operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_permission_output() :: %{
        optional("Policy") => [String.t()]
      }
      
  """
  @type put_resource_permission_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_application_output() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type start_application_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database() :: %{
        "ApplicationId" => String.t(),
        "Arn" => String.t(),
        "ComponentId" => String.t(),
        "Credentials" => list(application_credential()()),
        "DatabaseId" => String.t(),
        "DatabaseName" => [String.t()],
        "DatabaseType" => list(any()),
        "LastUpdated" => [non_neg_integer()],
        "PrimaryHost" => [String.t()],
        "SQLPort" => [integer()],
        "Status" => list(any())
      }
      
  """
  @type database() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_application_output() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type stop_application_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      register_application_output() :: %{
        optional("Application") => application(),
        optional("OperationId") => String.t()
      }
      
  """
  @type register_application_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operations_output() :: %{
        optional("NextToken") => String.t(),
        optional("Operations") => list(operation()())
      }
      
  """
  @type list_operations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_connection() :: %{
        "ConnectionIp" => [String.t()],
        "DatabaseArn" => String.t(),
        "DatabaseConnectionMethod" => list(any())
      }
      
  """
  @type database_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_address_member() :: %{
        "AllocationType" => list(any()),
        "IpAddress" => [String.t()],
        "Primary" => [boolean()]
      }
      
  """
  @type ip_address_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backint_config() :: %{
        "BackintMode" => list(any()),
        "EnsureNoBackupInProcess" => [boolean()]
      }
      
  """
  @type backint_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_permission_output() :: %{
        optional("Policy") => [String.t()]
      }
      
  """
  @type delete_resource_permission_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operation_events_output() :: %{
        "NextToken" => String.t(),
        "OperationEvents" => list(operation_event()())
      }
      
  """
  @type list_operation_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_summary() :: %{
        "ApplicationId" => String.t(),
        "Arn" => String.t(),
        "ComponentId" => String.t(),
        "ComponentType" => list(any()),
        "Tags" => map()
      }
      
  """
  @type component_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_components_output() :: %{
        optional("Components") => list(component_summary()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_components_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resilience() :: %{
        "ClusterStatus" => list(any()),
        "EnqueueReplication" => [boolean()],
        "HsrOperationMode" => list(any()),
        "HsrReplicationMode" => list(any()),
        "HsrTier" => [String.t()]
      }
      
  """
  @type resilience() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_application_input() :: %{
        optional("IncludeEc2InstanceShutdown") => [boolean()],
        optional("StopConnectedEntity") => list(any()),
        required("ApplicationId") => String.t()
      }
      
  """
  @type stop_application_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_databases_input() :: %{
        optional("ApplicationId") => String.t(),
        optional("ComponentId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_databases_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operation_events_input() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OperationId") => String.t()
      }
      
  """
  @type list_operation_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_output() :: %{
        optional("Applications") => list(application_summary()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_applications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_application_input() :: %{
        required("ApplicationId") => String.t()
      }
      
  """
  @type deregister_application_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_operation_output() :: %{
        optional("Operation") => operation()
      }
      
  """
  @type get_operation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_credential() :: %{
        "CredentialType" => list(any()),
        "DatabaseName" => String.t(),
        "SecretId" => String.t()
      }
      
  """
  @type application_credential() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_application_refresh_input() :: %{
        required("ApplicationId") => String.t()
      }
      
  """
  @type start_application_refresh_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_input() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_applications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_database_output() :: %{
        optional("Database") => database(),
        optional("Tags") => map()
      }
      
  """
  @type get_database_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_operation_input() :: %{
        required("OperationId") => String.t()
      }
      
  """
  @type get_operation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_settings_output() :: %{
        optional("Message") => [String.t()],
        optional("OperationIds") => list(String.t()())
      }
      
  """
  @type update_application_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_databases_output() :: %{
        optional("Databases") => list(database_summary()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_databases_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component() :: %{
        "ApplicationId" => String.t(),
        "Arn" => String.t(),
        "AssociatedHost" => associated_host(),
        "ChildComponents" => list(String.t()()),
        "ComponentId" => String.t(),
        "ComponentType" => list(any()),
        "DatabaseConnection" => database_connection(),
        "Databases" => list(String.t()()),
        "HdbVersion" => [String.t()],
        "Hosts" => list(host()()),
        "LastUpdated" => [non_neg_integer()],
        "ParentComponent" => String.t(),
        "PrimaryHost" => [String.t()],
        "Resilience" => resilience(),
        "SapFeature" => [String.t()],
        "SapHostname" => [String.t()],
        "SapKernelVersion" => [String.t()],
        "Sid" => String.t(),
        "Status" => list(any()),
        "SystemNumber" => String.t()
      }
      
  """
  @type component() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_components_input() :: %{
        optional("ApplicationId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_components_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application() :: %{
        "AppRegistryArn" => String.t(),
        "Arn" => String.t(),
        "Components" => list(String.t()()),
        "DiscoveryStatus" => list(any()),
        "Id" => String.t(),
        "LastUpdated" => [non_neg_integer()],
        "Status" => list(any()),
        "StatusMessage" => [String.t()],
        "Type" => list(any())
      }
      
  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_permission_input() :: %{
        optional("ActionType") => list(any()),
        optional("SourceResourceArn") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_permission_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_application_output() :: %{}
      
  """
  @type deregister_application_output() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_database_input() :: %{
        optional("ApplicationId") => String.t(),
        optional("ComponentId") => String.t(),
        optional("DatabaseArn") => String.t(),
        optional("DatabaseId") => String.t()
      }
      
  """
  @type get_database_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_event() :: %{
        "Description" => [String.t()],
        "Resource" => resource(),
        "Status" => list(any()),
        "StatusMessage" => [String.t()],
        "Timestamp" => [non_neg_integer()]
      }
      
  """
  @type operation_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => String.t(),
        "Operator" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      host() :: %{
        "EC2InstanceId" => [String.t()],
        "HostIp" => [String.t()],
        "HostName" => [String.t()],
        "HostRole" => list(any()),
        "InstanceId" => [String.t()],
        "OsVersion" => [String.t()]
      }
      
  """
  @type host() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_application_input() :: %{
        required("ApplicationId") => String.t()
      }
      
  """
  @type start_application_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_application_output() :: %{
        optional("Application") => application(),
        optional("Tags") => map()
      }
      
  """
  @type get_application_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_input() :: %{
        required("ApplicationId") => String.t(),
        required("ComponentId") => String.t()
      }
      
  """
  @type get_component_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associated_host() :: %{
        "Ec2InstanceId" => [String.t()],
        "Hostname" => [String.t()],
        "IpAddresses" => list(ip_address_member()()),
        "OsVersion" => [String.t()]
      }
      
  """
  @type associated_host() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_settings_input() :: %{
        optional("Backint") => backint_config(),
        optional("CredentialsToAddOrUpdate") => list(application_credential()()),
        optional("CredentialsToRemove") => list(application_credential()()),
        optional("DatabaseArn") => String.t(),
        required("ApplicationId") => String.t()
      }
      
  """
  @type update_application_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => [String.t()]
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
      
      list_operations_input() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ApplicationId") => String.t()
      }
      
  """
  @type list_operations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_summary() :: %{
        "ApplicationId" => String.t(),
        "Arn" => String.t(),
        "ComponentId" => String.t(),
        "DatabaseId" => String.t(),
        "DatabaseType" => list(any()),
        "Tags" => map()
      }
      
  """
  @type database_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_permission_input() :: %{
        optional("ActionType") => list(any()),
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_resource_permission_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_application_refresh_output() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type start_application_refresh_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_summary() :: %{
        "Arn" => String.t(),
        "DiscoveryStatus" => list(any()),
        "Id" => String.t(),
        "Tags" => map(),
        "Type" => list(any())
      }
      
  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_permission_input() :: %{
        required("ActionType") => list(any()),
        required("ResourceArn") => String.t(),
        required("SourceResourceArn") => String.t()
      }
      
  """
  @type put_resource_permission_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_permission_output() :: %{
        optional("Policy") => [String.t()]
      }
      
  """
  @type get_resource_permission_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_application_input() :: %{
        optional("AppRegistryArn") => String.t(),
        optional("ApplicationArn") => String.t(),
        optional("ApplicationId") => String.t()
      }
      
  """
  @type get_application_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_application_input() :: %{
        optional("Credentials") => list(application_credential()()),
        optional("DatabaseArn") => String.t(),
        optional("SapInstanceNumber") => String.t(),
        optional("Sid") => String.t(),
        optional("Tags") => map(),
        required("ApplicationId") => String.t(),
        required("ApplicationType") => list(any()),
        required("Instances") => list(String.t()())
      }
      
  """
  @type register_application_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "ResourceArn" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type delete_resource_permission_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type deregister_application_errors() ::
          validation_exception() | internal_server_exception() | unauthorized_exception()

  @type get_application_errors() :: validation_exception() | internal_server_exception()

  @type get_component_errors() ::
          validation_exception() | internal_server_exception() | unauthorized_exception()

  @type get_database_errors() :: validation_exception() | internal_server_exception()

  @type get_operation_errors() :: validation_exception() | internal_server_exception()

  @type get_resource_permission_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_applications_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_components_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_databases_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_operation_events_errors() :: validation_exception() | internal_server_exception()

  @type list_operations_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type put_resource_permission_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type register_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_application_refresh_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type stop_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_application_settings_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-sap",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Ssm Sap",
      signature_version: "v4",
      signing_name: "ssm-sap",
      target_prefix: nil
    }
  end

  @doc """
  Removes permissions associated with the target database.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20DeleteResourcePermission&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_resource_permission(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_resource_permission_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_permission_errors()}

  def delete_resource_permission(%Client{} = client, options \\ []) do
    url_path = "/delete-resource-permission"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Deregister an SAP application with AWS Systems Manager for SAP. This action does
  not aﬀect the existing setup of your SAP workloads on Amazon EC2.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20DeregisterApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec deregister_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, deregister_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_application_errors()}

  def deregister_application(%Client{} = client, options \\ []) do
    url_path = "/deregister-application"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Gets an application registered with AWS Systems Manager for SAP. It also returns
  the components of the application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20GetApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_errors()}

  def get_application(%Client{} = client, options \\ []) do
    url_path = "/get-application"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Gets the component of an application registered with AWS Systems Manager for
  SAP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20GetComponent&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_component(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_component_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_component_errors()}

  def get_component(%Client{} = client, options \\ []) do
    url_path = "/get-component"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Gets the SAP HANA database of an application registered with AWS Systems Manager
  for SAP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20GetDatabase&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_database(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_database_errors()}

  def get_database(%Client{} = client, options \\ []) do
    url_path = "/get-database"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Gets the details of an operation by specifying the operation ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20GetOperation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_operation(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_operation_errors()}

  def get_operation(%Client{} = client, options \\ []) do
    url_path = "/get-operation"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Gets permissions associated with the target database.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20GetResourcePermission&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_resource_permission(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_resource_permission_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_permission_errors()}

  def get_resource_permission(%Client{} = client, options \\ []) do
    url_path = "/get-resource-permission"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Lists all the applications registered with AWS Systems Manager for SAP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20ListApplications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_applications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}

  def list_applications(%Client{} = client, options \\ []) do
    url_path = "/list-applications"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Lists all the components registered with AWS Systems Manager for SAP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20ListComponents&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_components(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_components_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_components_errors()}

  def list_components(%Client{} = client, options \\ []) do
    url_path = "/list-components"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Lists the SAP HANA databases of an application registered with AWS Systems
  Manager for SAP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20ListDatabases&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_databases(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_databases_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_databases_errors()}

  def list_databases(%Client{} = client, options \\ []) do
    url_path = "/list-databases"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of operations events.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20ListOperationEvents&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_operation_events(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_operation_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_operation_events_errors()}

  def list_operation_events(%Client{} = client, options \\ []) do
    url_path = "/list-operation-events"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Lists the operations performed by AWS Systems Manager for SAP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20ListOperations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_operations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_operations_errors()}

  def list_operations(%Client{} = client, options \\ []) do
    url_path = "/list-operations"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Lists all tags on an SAP HANA application and/or database registered with AWS
  Systems Manager for SAP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

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
  Adds permissions to the target database.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20PutResourcePermission&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec put_resource_permission(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_resource_permission_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_permission_errors()}

  def put_resource_permission(%Client{} = client, options \\ []) do
    url_path = "/put-resource-permission"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Register an SAP application with AWS Systems Manager for SAP. You must meet the
  following requirements before registering. The SAP application you want to
  register with AWS Systems Manager for SAP is running on Amazon EC2.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20RegisterApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec register_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_application_errors()}

  def register_application(%Client{} = client, options \\ []) do
    url_path = "/register-application"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Request is an operation which starts an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20StartApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_application_errors()}

  def start_application(%Client{} = client, options \\ []) do
    url_path = "/start-application"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Refreshes a registered application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20StartApplicationRefresh&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_application_refresh(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_application_refresh_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_application_refresh_errors()}

  def start_application_refresh(%Client{} = client, options \\ []) do
    url_path = "/start-application-refresh"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Request is an operation to stop an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20StopApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec stop_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, stop_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_application_errors()}

  def stop_application(%Client{} = client, options \\ []) do
    url_path = "/stop-application"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates tag for a resource by specifying the ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
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
  Delete the tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.
  * `:tag_keys` (`t:list[com.amazonaws.ssmsap#TagKey]`) Adds/updates or removes
  credentials for applications registered with AWS Systems Manager for SAP.

  ## Optional parameters:
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
  Updates the settings of an application registered with AWS Systems Manager for
  SAP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmsap%20UpdateApplicationSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_application_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_application_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_settings_errors()}

  def update_application_settings(%Client{} = client, options \\ []) do
    url_path = "/update-application-settings"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
