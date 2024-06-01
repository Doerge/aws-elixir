# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Schemas do
  @moduledoc """
  Amazon EventBridge Schema Registry
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_schema_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Content") => String.t(),
        required("Type") => list(any())
      }

  """
  @type create_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_code_binding_source_request() :: %{
        optional("SchemaVersion") => String.t()
      }

  """
  @type get_code_binding_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_code_binding_request() :: %{
        optional("SchemaVersion") => String.t()
      }

  """
  @type describe_code_binding_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_schemas_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("Keywords") => String.t()
      }

  """
  @type search_schemas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_schema_request() :: %{
        optional("SchemaVersion") => String.t()
      }

  """
  @type describe_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_schema_request() :: %{}

  """
  @type delete_schema_request() :: %{}

  @typedoc """

  ## Example:

      delete_registry_request() :: %{}

  """
  @type delete_registry_request() :: %{}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schema_versions_response() :: %{
        "NextToken" => String.t(),
        "SchemaVersions" => list(schema_version_summary()())
      }

  """
  @type list_schema_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_registry_response() :: %{
        "Description" => String.t(),
        "RegistryArn" => String.t(),
        "RegistryName" => String.t(),
        "Tags" => map()
      }

  """
  @type create_registry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_discoverers_request() :: %{
        optional("DiscovererIdPrefix") => String.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("SourceArnPrefix") => String.t()
      }

  """
  @type list_discoverers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_discoverer_request() :: %{}

  """
  @type delete_discoverer_request() :: %{}

  @typedoc """

  ## Example:

      create_discoverer_response() :: %{
        "CrossAccount" => boolean(),
        "Description" => String.t(),
        "DiscovererArn" => String.t(),
        "DiscovererId" => String.t(),
        "SourceArn" => String.t(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type create_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_discovered_schema_request() :: %{
        required("Events") => list(String.t()()),
        required("Type") => list(any())
      }

  """
  @type get_discovered_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "Policy" => String.t(),
        "RevisionId" => String.t()
      }

  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_schema_response() :: %{
        "Content" => String.t(),
        "Description" => String.t(),
        "LastModified" => non_neg_integer(),
        "SchemaArn" => String.t(),
        "SchemaName" => String.t(),
        "SchemaVersion" => String.t(),
        "Tags" => map(),
        "Type" => String.t(),
        "VersionCreatedDate" => non_neg_integer()
      }

  """
  @type describe_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gone_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type gone_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_registry_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type update_registry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_schema_response() :: %{
        "Description" => String.t(),
        "LastModified" => non_neg_integer(),
        "SchemaArn" => String.t(),
        "SchemaName" => String.t(),
        "SchemaVersion" => String.t(),
        "Tags" => map(),
        "Type" => String.t(),
        "VersionCreatedDate" => non_neg_integer()
      }

  """
  @type update_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_discoverer_response() :: %{
        "CrossAccount" => boolean(),
        "Description" => String.t(),
        "DiscovererArn" => String.t(),
        "DiscovererId" => String.t(),
        "SourceArn" => String.t(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type update_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_schema_response() :: %{
        "Description" => String.t(),
        "LastModified" => non_neg_integer(),
        "SchemaArn" => String.t(),
        "SchemaName" => String.t(),
        "SchemaVersion" => String.t(),
        "Tags" => map(),
        "Type" => String.t(),
        "VersionCreatedDate" => non_neg_integer()
      }

  """
  @type create_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_discoverer_response() :: %{
        "CrossAccount" => boolean(),
        "Description" => String.t(),
        "DiscovererArn" => String.t(),
        "DiscovererId" => String.t(),
        "SourceArn" => String.t(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type describe_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_code_binding_request() :: %{
        optional("SchemaVersion") => String.t()
      }

  """
  @type put_code_binding_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schemas_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("SchemaNamePrefix") => String.t()
      }

  """
  @type list_schemas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_code_binding_response() :: %{
        "CreationDate" => non_neg_integer(),
        "LastModified" => non_neg_integer(),
        "SchemaVersion" => String.t(),
        "Status" => list(any())
      }

  """
  @type put_code_binding_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_schema_request() :: %{
        optional("SchemaVersion") => String.t(),
        required("Type") => String.t()
      }

  """
  @type export_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_discoverer_request() :: %{
        optional("CrossAccount") => boolean(),
        optional("Description") => String.t()
      }

  """
  @type update_discoverer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_discoverer_request() :: %{
        optional("CrossAccount") => boolean(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("SourceArn") => String.t()
      }

  """
  @type create_discoverer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_discoverers_response() :: %{
        "Discoverers" => list(discoverer_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_discoverers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_code_binding_source_response() :: %{
        "Body" => binary()
      }

  """
  @type get_code_binding_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_schema_version_request() :: %{}

  """
  @type delete_schema_version_request() :: %{}

  @typedoc """

  ## Example:

      schema_summary() :: %{
        "LastModified" => non_neg_integer(),
        "SchemaArn" => String.t(),
        "SchemaName" => String.t(),
        "Tags" => map(),
        "VersionCount" => float()
      }

  """
  @type schema_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_schema_summary() :: %{
        optional("RegistryName") => String.t(),
        optional("SchemaArn") => String.t(),
        optional("SchemaName") => String.t(),
        optional("SchemaVersions") => list(search_schema_version_summary()())
      }

  """
  @type search_schema_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_discoverer_response() :: %{
        "DiscovererId" => String.t(),
        "State" => list(any())
      }

  """
  @type stop_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{
        optional("RegistryName") => String.t()
      }

  """
  @type get_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_registry_response() :: %{
        "Description" => String.t(),
        "RegistryArn" => String.t(),
        "RegistryName" => String.t(),
        "Tags" => map()
      }

  """
  @type describe_registry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_discoverer_request() :: %{}

  """
  @type stop_discoverer_request() :: %{}

  @typedoc """

  ## Example:

      search_schema_version_summary() :: %{
        optional("CreatedDate") => non_neg_integer(),
        optional("SchemaVersion") => String.t(),
        optional("Type") => list(any())
      }

  """
  @type search_schema_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_registry_response() :: %{
        "Description" => String.t(),
        "RegistryArn" => String.t(),
        "RegistryName" => String.t(),
        "Tags" => map()
      }

  """
  @type update_registry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schema_versions_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_schema_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_discoverer_request() :: %{}

  """
  @type describe_discoverer_request() :: %{}

  @typedoc """

  ## Example:

      list_registries_response() :: %{
        "NextToken" => String.t(),
        "Registries" => list(registry_summary()())
      }

  """
  @type list_registries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        optional("RegistryName") => String.t(),
        optional("RevisionId") => String.t(),
        required("Policy") => String.t()
      }

  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_schemas_response() :: %{
        "NextToken" => String.t(),
        "Schemas" => list(search_schema_summary()())
      }

  """
  @type search_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_discovered_schema_response() :: %{
        "Content" => String.t()
      }

  """
  @type get_discovered_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_registries_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("RegistryNamePrefix") => String.t(),
        optional("Scope") => String.t()
      }

  """
  @type list_registries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_registry_request() :: %{}

  """
  @type describe_registry_request() :: %{}

  @typedoc """

  ## Example:

      export_schema_response() :: %{
        "Content" => String.t(),
        "SchemaArn" => String.t(),
        "SchemaName" => String.t(),
        "SchemaVersion" => String.t(),
        "Type" => String.t()
      }

  """
  @type export_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_registry_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map()
      }

  """
  @type create_registry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{
        "Policy" => String.t(),
        "RevisionId" => String.t()
      }

  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        optional("RegistryName") => String.t()
      }

  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_discoverer_response() :: %{
        "DiscovererId" => String.t(),
        "State" => list(any())
      }

  """
  @type start_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      discoverer_summary() :: %{
        optional("CrossAccount") => boolean(),
        optional("DiscovererArn") => String.t(),
        optional("DiscovererId") => String.t(),
        optional("SourceArn") => String.t(),
        optional("State") => list(any()),
        optional("Tags") => map()
      }

  """
  @type discoverer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schemas_response() :: %{
        "NextToken" => String.t(),
        "Schemas" => list(schema_summary()())
      }

  """
  @type list_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type precondition_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_version_summary() :: %{
        optional("SchemaArn") => String.t(),
        optional("SchemaName") => String.t(),
        optional("SchemaVersion") => String.t(),
        optional("Type") => list(any())
      }

  """
  @type schema_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_code_binding_response() :: %{
        "CreationDate" => non_neg_integer(),
        "LastModified" => non_neg_integer(),
        "SchemaVersion" => String.t(),
        "Status" => list(any())
      }

  """
  @type describe_code_binding_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registry_summary() :: %{
        optional("RegistryArn") => String.t(),
        optional("RegistryName") => String.t(),
        optional("Tags") => map()
      }

  """
  @type registry_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_discoverer_request() :: %{}

  """
  @type start_discoverer_request() :: %{}

  @typedoc """

  ## Example:

      update_schema_request() :: %{
        optional("ClientTokenId") => String.t(),
        optional("Content") => String.t(),
        optional("Description") => String.t(),
        optional("Type") => list(any())
      }

  """
  @type update_schema_request() :: %{String.t() => any()}

  @type create_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_registry_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()

  @type delete_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_registry_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_resource_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_schema_version_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_code_binding_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_registry_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type export_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type get_code_binding_source_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type get_discovered_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type get_resource_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_discoverers_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_registries_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_schema_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_schemas_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type put_code_binding_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | gone_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type put_resource_policy_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type search_schemas_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type start_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type stop_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type update_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_registry_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "schemas",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "schemas",
      signature_version: "v4",
      signing_name: "schemas",
      target_prefix: nil
    }
  end

  @doc """
  Creates a discoverer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20CreateDiscoverer&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_discoverer(AWS.Client.t(), create_discoverer_request(), Keyword.t()) ::
          {:ok, create_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_discoverer_errors()}
  def create_discoverer(%Client{} = client, input, options \\ []) do
    url_path = "/v1/discoverers"
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
  Creates a registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20CreateRegistry&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.

  ## Optional parameters:
  """
  @spec create_registry(AWS.Client.t(), String.t(), create_registry_request(), Keyword.t()) ::
          {:ok, create_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_registry_errors()}
  def create_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
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
  Creates a schema definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20CreateSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.
  * `:schema_name` (`t:string`) The name of the schema.

  ## Optional parameters:
  """
  @spec create_schema(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_schema_request(),
          Keyword.t()
        ) ::
          {:ok, create_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_schema_errors()}
  def create_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

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
  Deletes a discoverer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20DeleteDiscoverer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:discoverer_id` (`t:string`) The ID of the discoverer.

  ## Optional parameters:
  """
  @spec delete_discoverer(AWS.Client.t(), String.t(), delete_discoverer_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_discoverer_errors()}
  def delete_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}"
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
  Deletes a Registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20DeleteRegistry&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.

  ## Optional parameters:
  """
  @spec delete_registry(AWS.Client.t(), String.t(), delete_registry_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_registry_errors()}
  def delete_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
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
  Delete the resource-based policy attached to the specified registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20DeleteResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:registry_name` (`t:string`) The name of the registry.
  """
  @spec delete_resource_policy(AWS.Client.t(), delete_resource_policy_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/policy"
    headers = []

    {query_params, input} =
      [
        {"RegistryName", "registryName"}
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
      204
    )
  end

  @doc """
  Delete a schema definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20DeleteSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.
  * `:schema_name` (`t:string`) The name of the schema.

  ## Optional parameters:
  """
  @spec delete_schema(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_schema_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_schema_errors()}
  def delete_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

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
  Delete the schema version definition

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20DeleteSchemaVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.
  * `:schema_name` (`t:string`) The name of the schema.
  * `:schema_version` (`t:string`)

  ## Optional parameters:
  """
  @spec delete_schema_version(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_schema_version_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_schema_version_errors()}
  def delete_schema_version(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/version/#{AWS.Util.encode_uri(schema_version)}"

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
  Describe the code binding URI.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20DescribeCodeBinding&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:language` (`t:string`) The language of the code binding.
  * `:registry_name` (`t:string`) The name of the registry.
  * `:schema_name` (`t:string`) The name of the schema.

  ## Optional parameters:
  * `:schema_version` (`t:string`) Specifying this limits the results to only this
    schema version.
  """
  @spec describe_code_binding(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_code_binding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_code_binding_errors()}
  def describe_code_binding(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/language/#{AWS.Util.encode_uri(language)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [schema_version: nil
    # ])

    headers = []
    query_params = []

    {schema_version, options} = Keyword.pop(options, :schema_version, nil)

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the discoverer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20DescribeDiscoverer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:discoverer_id` (`t:string`) The ID of the discoverer.

  ## Optional parameters:
  """
  @spec describe_discoverer(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_discoverer_errors()}
  def describe_discoverer(%Client{} = client, discoverer_id, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}"

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
  Describes the registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20DescribeRegistry&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.

  ## Optional parameters:
  """
  @spec describe_registry(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_registry_errors()}
  def describe_registry(%Client{} = client, registry_name, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"

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
  Retrieve the schema definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20DescribeSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.
  * `:schema_name` (`t:string`) The name of the schema.

  ## Optional parameters:
  * `:schema_version` (`t:string`) Specifying this limits the results to only this
    schema version.
  """
  @spec describe_schema(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_schema_errors()}
  def describe_schema(%Client{} = client, registry_name, schema_name, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [schema_version: nil
    # ])

    headers = []
    query_params = []

    {schema_version, options} = Keyword.pop(options, :schema_version, nil)

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @spec export_schema(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, export_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_schema_errors()}
  def export_schema(%Client{} = client, registry_name, schema_name, type, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/export"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [schema_version: nil, type: nil
    # ])

    headers = []
    query_params = []

    {type, options} = Keyword.pop(options, :type, nil)

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    {schema_version, options} = Keyword.pop(options, :schema_version, nil)

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the code binding source URI.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20GetCodeBindingSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:language` (`t:string`) The language of the code binding.
  * `:registry_name` (`t:string`) The name of the registry.
  * `:schema_name` (`t:string`) The name of the schema.

  ## Optional parameters:
  * `:schema_version` (`t:string`) Specifying this limits the results to only this
    schema version.
  """
  @spec get_code_binding_source(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_code_binding_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_code_binding_source_errors()}
  def get_code_binding_source(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/language/#{AWS.Util.encode_uri(language)}/source"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [schema_version: nil
    # ])

    headers = []
    query_params = []

    {schema_version, options} = Keyword.pop(options, :schema_version, nil)

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the discovered schema that was generated based on sampled events.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20GetDiscoveredSchema&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_discovered_schema(AWS.Client.t(), get_discovered_schema_request(), Keyword.t()) ::
          {:ok, get_discovered_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_discovered_schema_errors()}
  def get_discovered_schema(%Client{} = client, input, options \\ []) do
    url_path = "/v1/discover"
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
  Retrieves the resource-based policy attached to a given registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20GetResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:registry_name` (`t:string`) The name of the registry.
  """
  @spec get_resource_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, options \\ []) do
    url_path = "/v1/policy"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [registry_name: nil
    # ])

    headers = []
    query_params = []

    {registry_name, options} = Keyword.pop(options, :registry_name, nil)

    query_params =
      if !is_nil(registry_name) do
        [{"registryName", registry_name} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the discoverers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20ListDiscoverers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:discoverer_id_prefix` (`t:string`) Specifying this limits the results to
    only those discoverer IDs that start with the specified prefix.
  * `:limit` (`t:integer`)
  * `:next_token` (`t:string`) The token that specifies the next page of results
    to return. To request the first page, leave NextToken empty. The token will
    expire in 24 hours, and cannot be shared with other accounts.
  * `:source_arn_prefix` (`t:string`) Specifying this limits the results to only
    those ARNs that start with the specified prefix.
  """
  @spec list_discoverers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_discoverers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_discoverers_errors()}
  def list_discoverers(%Client{} = client, options \\ []) do
    url_path = "/v1/discoverers"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [discoverer_id_prefix: nil, limit: nil, next_token: nil, source_arn_prefix: nil
    # ])

    headers = []
    query_params = []

    {source_arn_prefix, options} = Keyword.pop(options, :source_arn_prefix, nil)

    query_params =
      if !is_nil(source_arn_prefix) do
        [{"sourceArnPrefix", source_arn_prefix} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {limit, options} = Keyword.pop(options, :limit, nil)

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    {discoverer_id_prefix, options} = Keyword.pop(options, :discoverer_id_prefix, nil)

    query_params =
      if !is_nil(discoverer_id_prefix) do
        [{"discovererIdPrefix", discoverer_id_prefix} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the registries.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20ListRegistries&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:limit` (`t:integer`)
  * `:next_token` (`t:string`) The token that specifies the next page of results
    to return. To request the first page, leave NextToken empty. The token will
    expire in 24 hours, and cannot be shared with other accounts.
  * `:registry_name_prefix` (`t:string`) Specifying this limits the results to
    only those registry names that start with the specified prefix.
  * `:scope` (`t:string`) Can be set to Local or AWS to limit responses to your
    custom registries, or the ones provided by AWS.
  """
  @spec list_registries(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_registries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_registries_errors()}
  def list_registries(%Client{} = client, options \\ []) do
    url_path = "/v1/registries"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [limit: nil, next_token: nil, registry_name_prefix: nil, scope: nil
    # ])

    headers = []
    query_params = []

    {scope, options} = Keyword.pop(options, :scope, nil)

    query_params =
      if !is_nil(scope) do
        [{"scope", scope} | query_params]
      else
        query_params
      end

    {registry_name_prefix, options} = Keyword.pop(options, :registry_name_prefix, nil)

    query_params =
      if !is_nil(registry_name_prefix) do
        [{"registryNamePrefix", registry_name_prefix} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {limit, options} = Keyword.pop(options, :limit, nil)

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of the schema versions and related information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20ListSchemaVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.
  * `:schema_name` (`t:string`) The name of the schema.

  ## Optional parameters:
  * `:limit` (`t:integer`)
  * `:next_token` (`t:string`) The token that specifies the next page of results
    to return. To request the first page, leave NextToken empty. The token will
    expire in 24 hours, and cannot be shared with other accounts.
  """
  @spec list_schema_versions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_schema_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_schema_versions_errors()}
  def list_schema_versions(%Client{} = client, registry_name, schema_name, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/versions"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [limit: nil, next_token: nil
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

    {limit, options} = Keyword.pop(options, :limit, nil)

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the schemas.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20ListSchemas&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.

  ## Optional parameters:
  * `:limit` (`t:integer`)
  * `:next_token` (`t:string`) The token that specifies the next page of results
    to return. To request the first page, leave NextToken empty. The token will
    expire in 24 hours, and cannot be shared with other accounts.
  * `:schema_name_prefix` (`t:string`) Specifying this limits the results to only
    those schema names that start with the specified prefix.
  """
  @spec list_schemas(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_schemas_errors()}
  def list_schemas(%Client{} = client, registry_name, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [limit: nil, next_token: nil, schema_name_prefix: nil
    # ])

    headers = []
    query_params = []

    {schema_name_prefix, options} = Keyword.pop(options, :schema_name_prefix, nil)

    query_params =
      if !is_nil(schema_name_prefix) do
        [{"schemaNamePrefix", schema_name_prefix} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {limit, options} = Keyword.pop(options, :limit, nil)

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get tags for resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource.

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
  Put code binding URI

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20PutCodeBinding&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:language` (`t:string`) The language of the code binding.
  * `:registry_name` (`t:string`) The name of the registry.
  * `:schema_name` (`t:string`) The name of the schema.

  ## Optional parameters:
  * `:schema_version` (`t:string`) Specifying this limits the results to only this
    schema version.
  """
  @spec put_code_binding(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          put_code_binding_request(),
          Keyword.t()
        ) ::
          {:ok, put_code_binding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_code_binding_errors()}
  def put_code_binding(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/language/#{AWS.Util.encode_uri(language)}"

    headers = []

    {query_params, input} =
      [
        {"SchemaVersion", "schemaVersion"}
      ]
      |> Request.build_params(input)

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
  The name of the policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20PutResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:registry_name` (`t:string`) The name of the registry.
  """
  @spec put_resource_policy(AWS.Client.t(), put_resource_policy_request(), Keyword.t()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/policy"
    headers = []

    {query_params, input} =
      [
        {"RegistryName", "registryName"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Search the schemas

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20SearchSchemas&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.

  ## Optional parameters:
  * `:keywords` (`t:string`) Specifying this limits the results to only schemas
    that include the provided keywords.
  * `:limit` (`t:integer`)
  * `:next_token` (`t:string`) The token that specifies the next page of results
    to return. To request the first page, leave NextToken empty. The token will
    expire in 24 hours, and cannot be shared with other accounts.
  """
  @spec search_schemas(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, search_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_schemas_errors()}
  def search_schemas(%Client{} = client, registry_name, keywords, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/search"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [keywords: nil, limit: nil, next_token: nil
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

    {limit, options} = Keyword.pop(options, :limit, nil)

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    {keywords, options} = Keyword.pop(options, :keywords, nil)

    query_params =
      if !is_nil(keywords) do
        [{"keywords", keywords} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts the discoverer

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20StartDiscoverer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:discoverer_id` (`t:string`) The ID of the discoverer.

  ## Optional parameters:
  """
  @spec start_discoverer(AWS.Client.t(), String.t(), start_discoverer_request(), Keyword.t()) ::
          {:ok, start_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_discoverer_errors()}
  def start_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}/start"
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
  Stops the discoverer

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20StopDiscoverer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:discoverer_id` (`t:string`) The ID of the discoverer.

  ## Optional parameters:
  """
  @spec stop_discoverer(AWS.Client.t(), String.t(), stop_discoverer_request(), Keyword.t()) ::
          {:ok, stop_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_discoverer_errors()}
  def stop_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}/stop"
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
  Add tags to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
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
      204
    )
  end

  @doc """
  Removes tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.schemas#__string]`) Keys of key-value
    pairs.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      204
    )
  end

  @doc """
  Updates the discoverer

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20UpdateDiscoverer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:discoverer_id` (`t:string`) The ID of the discoverer.

  ## Optional parameters:
  """
  @spec update_discoverer(AWS.Client.t(), String.t(), update_discoverer_request(), Keyword.t()) ::
          {:ok, update_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_discoverer_errors()}
  def update_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20UpdateRegistry&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.

  ## Optional parameters:
  """
  @spec update_registry(AWS.Client.t(), String.t(), update_registry_request(), Keyword.t()) ::
          {:ok, update_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_registry_errors()}
  def update_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the schema definition

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=schemas%20UpdateSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:registry_name` (`t:string`) The name of the registry.
  * `:schema_name` (`t:string`) The name of the schema.

  ## Optional parameters:
  """
  @spec update_schema(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_schema_request(),
          Keyword.t()
        ) ::
          {:ok, update_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_schema_errors()}
  def update_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
