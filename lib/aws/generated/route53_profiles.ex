# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53Profiles do
  @moduledoc """
  With Amazon Route 53 Profiles you can share Route 53 configurations with VPCs
  and AWS accounts
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      profile() :: %{
        "Arn" => String.t(),
        "ClientToken" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Id" => String.t(),
        "ModificationTime" => non_neg_integer(),
        "Name" => String.t(),
        "OwnerId" => String.t(),
        "ShareStatus" => list(any()),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }

  """
  @type profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_request() :: %{}

  """
  @type delete_profile_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_response() :: %{
        "Profile" => profile()
      }

  """
  @type delete_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_profile_request() :: %{
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("ProfileId") => String.t(),
        required("ResourceId") => String.t()
      }

  """
  @type associate_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_resource_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceType") => String.t()
      }

  """
  @type list_profile_resource_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_resource_to_profile_request() :: %{
        optional("ResourceProperties") => String.t(),
        required("Name") => String.t(),
        required("ProfileId") => String.t(),
        required("ResourceArn") => String.t()
      }

  """
  @type associate_resource_to_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_resource_from_profile_request() :: %{}

  """
  @type disassociate_resource_from_profile_request() :: %{}

  @typedoc """

  ## Example:

      update_profile_resource_association_response() :: %{
        "ProfileResourceAssociation" => profile_resource_association()
      }

  """
  @type update_profile_resource_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_service_error_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_service_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_profile_resource_association_request() :: %{
        optional("Name") => String.t(),
        optional("ResourceProperties") => String.t()
      }

  """
  @type update_profile_resource_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_association_request() :: %{}

  """
  @type get_profile_association_request() :: %{}

  @typedoc """

  ## Example:

      list_profile_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProfileId") => String.t(),
        optional("ResourceId") => String.t()
      }

  """
  @type list_profile_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_resource_to_profile_response() :: %{
        "ProfileResourceAssociation" => profile_resource_association()
      }

  """
  @type associate_resource_to_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_resource_association_response() :: %{
        "ProfileResourceAssociation" => profile_resource_association()
      }

  """
  @type get_profile_resource_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_request() :: %{
        optional("Tags") => list(tag()()),
        required("ClientToken") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_profile_response() :: %{
        "ProfileAssociation" => profile_association()
      }

  """
  @type disassociate_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_resource_from_profile_response() :: %{
        "ProfileResourceAssociation" => profile_resource_association()
      }

  """
  @type disassociate_resource_from_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_profile_response() :: %{
        "ProfileAssociation" => profile_association()
      }

  """
  @type associate_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_response() :: %{
        "Profile" => profile()
      }

  """
  @type get_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_response() :: %{
        "Profile" => profile()
      }

  """
  @type create_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_associations_response() :: %{
        "NextToken" => String.t(),
        "ProfileAssociations" => list(profile_association()())
      }

  """
  @type list_profile_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_profile_request() :: %{}

  """
  @type disassociate_profile_request() :: %{}

  @typedoc """

  ## Example:

      list_profile_resource_associations_response() :: %{
        "NextToken" => String.t(),
        "ProfileResourceAssociations" => list(profile_resource_association()())
      }

  """
  @type list_profile_resource_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_resource_association() :: %{
        "CreationTime" => non_neg_integer(),
        "Id" => String.t(),
        "ModificationTime" => non_neg_integer(),
        "Name" => String.t(),
        "OwnerId" => String.t(),
        "ProfileId" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceProperties" => String.t(),
        "ResourceType" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }

  """
  @type profile_resource_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_exists_exception() :: %{
        "Message" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "FieldName" => String.t(),
        "Message" => String.t()
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_profile_resource_association_request() :: %{}

  """
  @type get_profile_resource_association_request() :: %{}

  @typedoc """

  ## Example:

      profile_association() :: %{
        "CreationTime" => non_neg_integer(),
        "Id" => String.t(),
        "ModificationTime" => non_neg_integer(),
        "Name" => String.t(),
        "OwnerId" => String.t(),
        "ProfileId" => String.t(),
        "ResourceId" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }

  """
  @type profile_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_request() :: %{}

  """
  @type get_profile_request() :: %{}

  @typedoc """

  ## Example:

      list_profiles_response() :: %{
        "NextToken" => String.t(),
        "ProfileSummaries" => list(profile_summary()())
      }

  """
  @type list_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
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

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "ShareStatus" => list(any())
      }

  """
  @type profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_association_response() :: %{
        "ProfileAssociation" => profile_association()
      }

  """
  @type get_profile_association_response() :: %{String.t() => any()}

  @type associate_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_resource_to_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type create_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()

  @type delete_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disassociate_resource_from_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type get_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_profile_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_profile_resource_association_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_profile_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()

  @type list_profile_resource_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_profile_resource_association_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53profiles",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Route53Profiles",
      signature_version: "v4",
      signing_name: "route53profiles",
      target_prefix: nil
    }
  end

  @doc """
  Associates a Route 53 Profiles profile with a VPC. A VPC can have only one
  Profile associated with it, but a Profile can be associated with 1000 of VPCs
  (and you can request a higher quota). For more information, see
  [https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20AssociateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec associate_profile(AWS.Client.t(), associate_profile_request(), Keyword.t()) ::
          {:ok, associate_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_profile_errors()}
  def associate_profile(%Client{} = client, input, options \\ []) do
    url_path = "/profileassociation"
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
  Associates a DNS reource configuration to a Route 53 Profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20AssociateResourceToProfile&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec associate_resource_to_profile(
          AWS.Client.t(),
          associate_resource_to_profile_request(),
          Keyword.t()
        ) ::
          {:ok, associate_resource_to_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_resource_to_profile_errors()}
  def associate_resource_to_profile(%Client{} = client, input, options \\ []) do
    url_path = "/profileresourceassociation"
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
  Creates an empty Route 53 Profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20CreateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_profile(AWS.Client.t(), create_profile_request(), Keyword.t()) ::
          {:ok, create_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_profile_errors()}
  def create_profile(%Client{} = client, input, options \\ []) do
    url_path = "/profile"
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
  Deletes the specified Route 53 Profile. Before you can delete a profile, you
  must first disassociate it from all VPCs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20DeleteProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string`) The ID of the Profile that you want to delete.

  ## Optional parameters:
  """
  @spec delete_profile(AWS.Client.t(), String.t(), delete_profile_request(), Keyword.t()) ::
          {:ok, delete_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_errors()}
  def delete_profile(%Client{} = client, profile_id, input, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"
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
      200
    )
  end

  @doc """
  Dissociates a specified Route 53 Profile from the specified VPC.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20DisassociateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string`) ID of the Profile.
  * `:resource_id` (`t:string`) The ID of the VPC.

  ## Optional parameters:
  """
  @spec disassociate_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          disassociate_profile_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_profile_errors()}
  def disassociate_profile(%Client{} = client, profile_id, resource_id, input, options \\ []) do
    url_path =
      "/profileassociation/Profileid/#{AWS.Util.encode_uri(profile_id)}/resourceid/#{AWS.Util.encode_uri(resource_id)}"

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
      200
    )
  end

  @doc """
  Dissoaciated a specified resource, from the Route 53 Profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20DisassociateResourceFromProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string`) The ID of the Profile.
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
  """
  @spec disassociate_resource_from_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          disassociate_resource_from_profile_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_resource_from_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_resource_from_profile_errors()}
  def disassociate_resource_from_profile(
        %Client{} = client,
        profile_id,
        resource_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/profileresourceassociation/profileid/#{AWS.Util.encode_uri(profile_id)}/resourcearn/#{AWS.Util.encode_uri(resource_arn)}"

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
      200
    )
  end

  @doc """
  Returns information about a specified Route 53 Profile, such as whether whether
  the Profile is shared, and the current status of the Profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20GetProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string`) ID of the Profile.

  ## Optional parameters:
  """
  @spec get_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_errors()}
  def get_profile(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Retrieves a Route 53 Profile association for a VPC. A VPC can have only one
  Profile association, but a Profile can be associated with up to 5000 VPCs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20GetProfileAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_association_id` (`t:string`) The identifier of the association you
    want to get information about.

  ## Optional parameters:
  """
  @spec get_profile_association(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_profile_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_association_errors()}
  def get_profile_association(%Client{} = client, profile_association_id, options \\ []) do
    url_path = "/profileassociation/#{AWS.Util.encode_uri(profile_association_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Returns information about a specified Route 53 Profile resource association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20GetProfileResourceAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_resource_association_id` (`t:string`) The ID of the profile resource
    association that you want to get information about.

  ## Optional parameters:
  """
  @spec get_profile_resource_association(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_profile_resource_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_resource_association_errors()}
  def get_profile_resource_association(
        %Client{} = client,
        profile_resource_association_id,
        options \\ []
      ) do
    url_path =
      "/profileresourceassociation/#{AWS.Util.encode_uri(profile_resource_association_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Lists all the VPCs that the specified Route 53 Profile is associated with.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20ListProfileAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects that you want to
    return for this request. If more objects are available, in the response, a
    NextToken value, which you can use in a subsequent call to get the next
    batch of objects, is provided.
  * `:next_token` (`t:string`) For the first call to this list request, omit this
    value.
  * `:profile_id` (`t:string`) ID of the Profile.
  * `:resource_id` (`t:string`) ID of the VPC.
  """
  @spec list_profile_associations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_profile_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_associations_errors()}
  def list_profile_associations(%Client{} = client, options \\ []) do
    url_path = "/profileassociations"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, profile_id: nil, resource_id: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :resource_id) do
        [{"resourceId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :profile_id) do
        [{"profileId", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :profile_id, :resource_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the resource associations for the specified Route 53 Profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20ListProfileResourceAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string`) The ID of the Profile.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects that you want to
    return for this request. If more objects are available, in the response, a
    NextToken value, which you can use in a subsequent call to get the next
    batch of objects, is provided.
  * `:next_token` (`t:string`) For the first call to this list request, omit this
    value.
  * `:resource_type` (`t:string`) ID of a resource if you want information on only
    one type.
  """
  @spec list_profile_resource_associations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_profile_resource_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_resource_associations_errors()}
  def list_profile_resource_associations(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profileresourceassociations/profileid/#{AWS.Util.encode_uri(profile_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, resource_type: nil]

    options =
      Keyword.validate!(
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
      |> Keyword.drop([:max_results, :next_token, :resource_type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the Route 53 Profiles associated with your Amazon Web Services
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20ListProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects that you want to
    return for this request. If more objects are available, in the response, a
    NextToken value, which you can use in a subsequent call to get the next
    batch of objects, is provided.
  * `:next_token` (`t:string`) For the first call to this list request, omit this
    value.
  """
  @spec list_profiles(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profiles_errors()}
  def list_profiles(%Client{} = client, options \\ []) do
    url_path = "/profiles"

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
  Lists the tags that you associated with the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for the resource
    that you want to list the tags for.

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
  Adds one or more tags to a specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for the resource
    that you want to add tags to.

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
      204
    )
  end

  @doc """
  Removes one or more tags from a specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for the resource
    that you want to remove tags from.
  * `:tag_keys` (`t:list[com.amazonaws.route53profiles#TagKey]`) The tags that you
    want to remove to the specified resource.

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
  Updates the specified Route 53 Profile resourse association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53profiles%20UpdateProfileResourceAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_resource_association_id` (`t:string`) ID of the resource
    association.

  ## Optional parameters:
  """
  @spec update_profile_resource_association(
          AWS.Client.t(),
          String.t(),
          update_profile_resource_association_request(),
          Keyword.t()
        ) ::
          {:ok, update_profile_resource_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_profile_resource_association_errors()}
  def update_profile_resource_association(
        %Client{} = client,
        profile_resource_association_id,
        input,
        options \\ []
      ) do
    url_path =
      "/profileresourceassociation/#{AWS.Util.encode_uri(profile_resource_association_id)}"

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
