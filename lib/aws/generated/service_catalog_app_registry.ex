# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceCatalogAppRegistry do
  @moduledoc """
  Amazon Web Services Service Catalog AppRegistry enables organizations to
  understand the application context of their Amazon Web Services resources.
  AppRegistry provides a repository of your applications, their resources, and
  the application metadata that you use within your enterprise.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_attribute_group_request() :: %{}
      
  """
  @type delete_attribute_group_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resources_list_item() :: %{
        "errorMessage" => String.t(),
        "resourceArn" => String.t(),
        "resourceType" => String.t(),
        "status" => String.t()
      }
      
  """
  @type resources_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_attribute_group_response() :: %{
        "attributeGroup" => attribute_group()
      }
      
  """
  @type create_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_associated_resources_response() :: %{
        "nextToken" => String.t(),
        "resources" => list(resource_info()())
      }
      
  """
  @type list_associated_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_tag_result() :: %{
        "applicationTagStatus" => list(any()),
        "errorMessage" => String.t(),
        "nextToken" => String.t(),
        "resources" => list(resources_list_item()())
      }
      
  """
  @type application_tag_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attribute_groups_for_application_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_attribute_groups_for_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associated_attribute_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_associated_attribute_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_query_configuration() :: %{
        "tagKey" => String.t()
      }
      
  """
  @type tag_query_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associated_attribute_groups_response() :: %{
        "attributeGroups" => list(String.t()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_associated_attribute_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_attribute_group_request() :: %{
        optional("attributes") => String.t(),
        optional("description") => String.t(),
        optional("name") => String.t()
      }
      
  """
  @type update_attribute_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attribute_groups_response() :: %{
        "attributeGroups" => list(attribute_group_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_attribute_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_resource_response() :: %{
        "applicationArn" => String.t(),
        "options" => list(list(any())()),
        "resourceArn" => String.t()
      }
      
  """
  @type associate_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_configuration_response() :: %{
        "configuration" => app_registry_configuration()
      }
      
  """
  @type get_configuration_response() :: %{String.t() => any()}

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
      
      list_associated_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_associated_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_attribute_group_response() :: %{
        "arn" => String.t(),
        "attributes" => String.t(),
        "createdBy" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type get_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application() :: %{
        "applicationTag" => map(),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_attribute_group_request() :: %{}
      
  """
  @type get_attribute_group_request() :: %{}

  @typedoc """

  ## Example:
      
      resource_integrations() :: %{
        "resourceGroup" => resource_group()
      }
      
  """
  @type resource_integrations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_group_summary() :: %{
        "arn" => String.t(),
        "createdBy" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type attribute_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_resource_response() :: %{
        "applicationArn" => String.t(),
        "resourceArn" => String.t()
      }
      
  """
  @type disassociate_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_response() :: %{
        "application" => application()
      }
      
  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_resource_request() :: %{
        optional("options") => list(list(any())())
      }
      
  """
  @type associate_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sync_resource_request() :: %{}
      
  """
  @type sync_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      associate_attribute_group_request() :: %{}
      
  """
  @type associate_attribute_group_request() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_resource_request() :: %{}
      
  """
  @type disassociate_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      resource_group() :: %{
        "arn" => String.t(),
        "errorMessage" => String.t(),
        "state" => list(any())
      }
      
  """
  @type resource_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_response() :: %{
        "application" => application_summary()
      }
      
  """
  @type delete_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sync_resource_response() :: %{
        "actionTaken" => list(any()),
        "applicationArn" => String.t(),
        "resourceArn" => String.t()
      }
      
  """
  @type sync_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t()
      }
      
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_response() :: %{
        "application" => application()
      }
      
  """
  @type update_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_application_response() :: %{
        "applicationTag" => map(),
        "arn" => String.t(),
        "associatedResourceCount" => integer(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "integrations" => integrations(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_group() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type attribute_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_registry_configuration() :: %{
        "tagQueryConfiguration" => tag_query_configuration()
      }
      
  """
  @type app_registry_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integrations() :: %{
        "applicationTagResourceGroup" => resource_group(),
        "resourceGroup" => resource_group()
      }
      
  """
  @type integrations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_attribute_groups_for_application_response() :: %{
        "attributeGroupsDetails" => list(attribute_group_details()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_attribute_groups_for_application_response() :: %{String.t() => any()}

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
      
      list_attribute_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_attribute_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t(),
        "serviceCode" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_associated_resource_response() :: %{
        "applicationTagResult" => application_tag_result(),
        "options" => list(list(any())()),
        "resource" => resource()
      }
      
  """
  @type get_associated_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_attribute_group_response() :: %{
        "applicationArn" => String.t(),
        "attributeGroupArn" => String.t()
      }
      
  """
  @type disassociate_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_info() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "options" => list(list(any())()),
        "resourceDetails" => resource_details(),
        "resourceType" => list(any())
      }
      
  """
  @type resource_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_attribute_group_response() :: %{
        "applicationArn" => String.t(),
        "attributeGroupArn" => String.t()
      }
      
  """
  @type associate_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_response() :: %{
        "applications" => list(application_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_request() :: %{
        required("configuration") => app_registry_configuration()
      }
      
  """
  @type put_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_attribute_group_response() :: %{
        "attributeGroup" => attribute_group()
      }
      
  """
  @type update_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_details() :: %{
        "tagValue" => String.t()
      }
      
  """
  @type resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_attribute_group_response() :: %{
        "attributeGroup" => attribute_group_summary()
      }
      
  """
  @type delete_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_attribute_group_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("attributes") => String.t(),
        required("clientToken") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_attribute_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_application_request() :: %{}
      
  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:
      
      attribute_group_details() :: %{
        "arn" => String.t(),
        "createdBy" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type attribute_group_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_associated_resource_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceTagStatus") => list(list(any())())
      }
      
  """
  @type get_associated_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_request() :: %{}
      
  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "arn" => String.t(),
        "associationTime" => non_neg_integer(),
        "integrations" => resource_integrations(),
        "name" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_attribute_group_request() :: %{}
      
  """
  @type disassociate_attribute_group_request() :: %{}

  @type associate_attribute_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_application_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_attribute_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_attribute_group_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type disassociate_attribute_group_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type disassociate_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_associated_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_attribute_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_configuration_errors() :: internal_server_exception()

  @type list_applications_errors() :: validation_exception() | internal_server_exception()

  @type list_associated_attribute_groups_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_associated_resources_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_attribute_groups_errors() :: validation_exception() | internal_server_exception()

  @type list_attribute_groups_for_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_configuration_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type sync_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_application_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_attribute_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-06-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicecatalog-appregistry",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Service Catalog AppRegistry",
      signature_version: "v4",
      signing_name: "servicecatalog",
      target_prefix: nil
    }
  end

  @doc """
  Associates an attribute group with an application to augment the application's
  metadata with the group's attributes. This feature enables applications to be
  described with user-defined details that are machine-readable, such as
  third-party integrations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20AssociateAttributeGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name, ID, or ARN of the application.
  * `:attribute_group` (`t:string`) The name, ID, or ARN of the attribute group
  that holds the attributes to describe the application.

  ## Optional parameters:
  """

  @spec associate_attribute_group(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, associate_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_attribute_group_errors()}

  def associate_attribute_group(%Client{} = client, application, attribute_group, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates a resource with an application. The resource can be specified by its
  ARN or name. The application can be specified by ARN, ID, or name. **Minimum
  permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20AssociateResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name, ID, or ARN of the application.
  * `:resource` (`t:string`) The name or ID of the resource of which the
  application will be associated.
  * `:resource_type` (`t:enum["CFN_STACK|RESOURCE_TAG_VALUE"]`) The type of
  resource of which the application will be associated.

  ## Optional parameters:
  """

  @spec associate_resource(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, associate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_resource_errors()}

  def associate_resource(%Client{} = client, application, resource, resource_type, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/resources/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new application that is the top-level node in a hierarchy of related
  cloud resource abstractions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20CreateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}

  def create_application(%Client{} = client, options \\ []) do
    url_path = "/applications"

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
  Creates a new attribute group as a container for user-defined attributes. This
  feature enables users to have full control over their cloud application's
  metadata in a rich machine-readable format to facilitate integration with
  automated workflows and third-party tools.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20CreateAttributeGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_attribute_group(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_attribute_group_errors()}

  def create_attribute_group(%Client{} = client, options \\ []) do
    url_path = "/attribute-groups"

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
  Deletes an application that is specified either by its application ID, name, or
  ARN. All associated attribute groups and resources must be disassociated from
  it before deleting an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20DeleteApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name, ID, or ARN of the application.

  ## Optional parameters:
  """

  @spec delete_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}

  def delete_application(%Client{} = client, application, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}"

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
  Deletes an attribute group, specified either by its attribute group ID, name, or
  ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20DeleteAttributeGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:attribute_group` (`t:string`) The name, ID, or ARN of the attribute group
  that holds the attributes to describe the application.

  ## Optional parameters:
  """

  @spec delete_attribute_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_attribute_group_errors()}

  def delete_attribute_group(%Client{} = client, attribute_group, options \\ []) do
    url_path = "/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"

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
  Disassociates an attribute group from an application to remove the extra
  attributes contained in the attribute group from the application's metadata.
  This operation reverts `AssociateAttributeGroup`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20DisassociateAttributeGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name, ID, or ARN of the application.
  * `:attribute_group` (`t:string`) The name, ID, or ARN of the attribute group
  that holds the attributes to describe the application.

  ## Optional parameters:
  """

  @spec disassociate_attribute_group(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_attribute_group_errors()}

  def disassociate_attribute_group(
        %Client{} = client,
        application,
        attribute_group,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"

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
  Disassociates a resource from application. Both the resource and the application
  can be specified either by ID or name. **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20DisassociateResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name or ID of the application.
  * `:resource` (`t:string`) The name or ID of the resource.
  * `:resource_type` (`t:enum["CFN_STACK|RESOURCE_TAG_VALUE"]`) The type of the
  resource that is being disassociated.

  ## Optional parameters:
  """

  @spec disassociate_resource(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_resource_errors()}

  def disassociate_resource(
        %Client{} = client,
        application,
        resource,
        resource_type,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/resources/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"

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
  Retrieves metadata information about one of your applications. The application
  can be specified by its ARN, ID, or name (which is unique within one account
  in one region at a given point in time). Specify by ARN or ID in automated
  workflows if you want to make sure that the exact same application is returned
  or a `ResourceNotFoundException` is thrown, avoiding the ABA addressing
  problem.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20GetApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name, ID, or ARN of the application.

  ## Optional parameters:
  """

  @spec get_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_errors()}

  def get_application(%Client{} = client, application, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}"

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
  Gets the resource associated with the application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20GetAssociatedResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name, ID, or ARN of the application.
  * `:resource` (`t:string`) The name or ID of the resource associated with the
  application.
  * `:resource_type` (`t:enum["CFN_STACK|RESOURCE_TAG_VALUE"]`) The type of
  resource associated with the application.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return. If the
  parameter is omitted, it defaults to 25. The value is optional.
  * `:next_token` (`t:string`) A unique pagination token for each page of results.
  Make the call again with the returned token to retrieve the next page of
  results.
  * `:resource_tag_status`
  (`t:list[com.amazonaws.servicecatalogappregistry#ResourceItemStatus]`)
  States whether an application tag is applied, not applied, in the process of
  being applied, or skipped.
  """

  @spec get_associated_resource(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_associated_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_associated_resource_errors()}

  def get_associated_resource(
        %Client{} = client,
        application,
        resource,
        resource_type,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/resources/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, resource_tag_status: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :resource_tag_status) do
        [{"resourceTagStatus", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :resource_tag_status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves an attribute group by its ARN, ID, or name. The attribute group can be
  specified by its ARN, ID, or name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20GetAttributeGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:attribute_group` (`t:string`) The name, ID, or ARN of the attribute group
  that holds the attributes to describe the application.

  ## Optional parameters:
  """

  @spec get_attribute_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_attribute_group_errors()}

  def get_attribute_group(%Client{} = client, attribute_group, options \\ []) do
    url_path = "/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"

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
  Retrieves a `TagKey` configuration from an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20GetConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configuration_errors()}

  def get_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration"

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
  Retrieves a list of all of your applications. Results are paginated.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20ListApplications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The upper bound of the number of results to
  return (cannot exceed 25). If this parameter is omitted, it defaults to 25.
  This value is optional.
  * `:next_token` (`t:string`) The token to use to get the next page of results
  after a previous API call.
  """

  @spec list_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}

  def list_applications(%Client{} = client, options \\ []) do
    url_path = "/applications"

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
  Lists all attribute groups that are associated with specified application.
  Results are paginated.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20ListAssociatedAttributeGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name or ID of the application.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The upper bound of the number of results to
  return (cannot exceed 25). If this parameter is omitted, it defaults to 25.
  This value is optional.
  * `:next_token` (`t:string`) The token to use to get the next page of results
  after a previous API call.
  """

  @spec list_associated_attribute_groups(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_associated_attribute_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_associated_attribute_groups_errors()}

  def list_associated_attribute_groups(%Client{} = client, application, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}/attribute-groups"

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
  Lists all of the resources that are associated with the specified application.
  Results are paginated.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20ListAssociatedResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name, ID, or ARN of the application.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The upper bound of the number of results to
  return (cannot exceed 25). If this parameter is omitted, it defaults to 25.
  This value is optional.
  * `:next_token` (`t:string`) The token to use to get the next page of results
  after a previous API call.
  """

  @spec list_associated_resources(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_associated_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_associated_resources_errors()}

  def list_associated_resources(%Client{} = client, application, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}/resources"

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
  Lists all attribute groups which you have access to. Results are paginated.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20ListAttributeGroups&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The upper bound of the number of results to
  return (cannot exceed 25). If this parameter is omitted, it defaults to 25.
  This value is optional.
  * `:next_token` (`t:string`) The token to use to get the next page of results
  after a previous API call.
  """

  @spec list_attribute_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_attribute_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attribute_groups_errors()}

  def list_attribute_groups(%Client{} = client, options \\ []) do
    url_path = "/attribute-groups"

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
  Lists the details of all attribute groups associated with a specific
  application. The results display in pages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20ListAttributeGroupsForApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name or ID of the application.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The upper bound of the number of results to
  return. The value cannot exceed 25. If you omit this parameter, it defaults
  to 25. This value is optional.
  * `:next_token` (`t:string`) This token retrieves the next page of results after
  a previous API call.
  """

  @spec list_attribute_groups_for_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_attribute_groups_for_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attribute_groups_for_application_errors()}

  def list_attribute_groups_for_application(%Client{} = client, application, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}/attribute-group-details"

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
  Lists all of the tags on the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon resource name (ARN) that specifies the
  resource.

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
  Associates a `TagKey` configuration to an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20PutConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec put_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_errors()}

  def put_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Syncs the resource with current AppRegistry records.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20SyncResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource` (`t:string`) An entity you can work with and specify with a name
  or ID. Examples include an Amazon EC2 instance, an Amazon Web Services
  CloudFormation stack, or an Amazon S3 bucket.
  * `:resource_type` (`t:enum["CFN_STACK|RESOURCE_TAG_VALUE"]`) The type of
  resource of which the application will be associated.

  ## Optional parameters:
  """

  @spec sync_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, sync_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, sync_resource_errors()}

  def sync_resource(%Client{} = client, resource, resource_type, options \\ []) do
    url_path = "/sync/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"

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
  Assigns one or more tags (key-value pairs) to the specified resource. Each tag
  consists of a key and an optional value. If a tag with the same key is already
  associated with the resource, this action updates its value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon resource name (ARN) that specifies the
  resource.

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
  Removes tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon resource name (ARN) that specifies the
  resource.
  * `:tag_keys` (`t:list[com.amazonaws.servicecatalogappregistry#TagKey]`) A list
  of the tag keys to remove from the specified resource.

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
  Updates an existing application with new attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20UpdateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application` (`t:string`) The name, ID, or ARN of the application that will
  be updated.

  ## Optional parameters:
  """

  @spec update_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}

  def update_application(%Client{} = client, application, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}"

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
  Updates an existing attribute group with new details.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalogappregistry%20UpdateAttributeGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:attribute_group` (`t:string`) The name, ID, or ARN of the attribute group
  that holds the attributes to describe the application.

  ## Optional parameters:
  """

  @spec update_attribute_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_attribute_group_errors()}

  def update_attribute_group(%Client{} = client, attribute_group, options \\ []) do
    url_path = "/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"

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
