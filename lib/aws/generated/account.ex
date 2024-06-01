# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Account do
  @moduledoc """
  Operations for Amazon Web Services Account Management
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alternate_contact() :: %{
        "AlternateContactType" => String.t(),
        "EmailAddress" => String.t(),
        "Name" => String.t(),
        "PhoneNumber" => String.t(),
        "Title" => String.t()
      }

  """
  @type alternate_contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_information() :: %{
        "AddressLine1" => String.t(),
        "AddressLine2" => String.t(),
        "AddressLine3" => String.t(),
        "City" => String.t(),
        "CompanyName" => String.t(),
        "CountryCode" => String.t(),
        "DistrictOrCounty" => String.t(),
        "FullName" => String.t(),
        "PhoneNumber" => String.t(),
        "PostalCode" => String.t(),
        "StateOrRegion" => String.t(),
        "WebsiteUrl" => String.t()
      }

  """
  @type contact_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_alternate_contact_request() :: %{
        optional("AccountId") => String.t(),
        required("AlternateContactType") => String.t()
      }

  """
  @type delete_alternate_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_region_request() :: %{
        optional("AccountId") => String.t(),
        required("RegionName") => String.t()
      }

  """
  @type disable_region_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_region_request() :: %{
        optional("AccountId") => String.t(),
        required("RegionName") => String.t()
      }

  """
  @type enable_region_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_alternate_contact_request() :: %{
        optional("AccountId") => String.t(),
        required("AlternateContactType") => String.t()
      }

  """
  @type get_alternate_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_alternate_contact_response() :: %{
        "AlternateContact" => alternate_contact()
      }

  """
  @type get_alternate_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_contact_information_request() :: %{
        optional("AccountId") => String.t()
      }

  """
  @type get_contact_information_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_contact_information_response() :: %{
        "ContactInformation" => contact_information()
      }

  """
  @type get_contact_information_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_region_opt_status_request() :: %{
        optional("AccountId") => String.t(),
        required("RegionName") => String.t()
      }

  """
  @type get_region_opt_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_region_opt_status_response() :: %{
        "RegionName" => String.t(),
        "RegionOptStatus" => String.t()
      }

  """
  @type get_region_opt_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_regions_request() :: %{
        optional("AccountId") => String.t(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()],
        optional("RegionOptStatusContains") => list(String.t()())
      }

  """
  @type list_regions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_regions_response() :: %{
        "NextToken" => [String.t()],
        "Regions" => list(region()())
      }

  """
  @type list_regions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_alternate_contact_request() :: %{
        optional("AccountId") => String.t(),
        required("AlternateContactType") => String.t(),
        required("EmailAddress") => String.t(),
        required("Name") => String.t(),
        required("PhoneNumber") => String.t(),
        required("Title") => String.t()
      }

  """
  @type put_alternate_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_contact_information_request() :: %{
        optional("AccountId") => String.t(),
        required("ContactInformation") => contact_information()
      }

  """
  @type put_contact_information_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      region() :: %{
        "RegionName" => String.t(),
        "RegionOptStatus" => String.t()
      }

  """
  @type region() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @type delete_alternate_contact_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type disable_region_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type enable_region_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_alternate_contact_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_contact_information_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_region_opt_status_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_regions_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_alternate_contact_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_contact_information_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2021-02-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "account",
      global?: true,
      hostname: "account.us-east-1.amazonaws.com",
      protocol: "rest-json",
      service_id: "Account",
      signature_version: "v4",
      signing_name: "account",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified alternate contact from an Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=account%20DeleteAlternateContact&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_alternate_contact(AWS.Client.t(), delete_alternate_contact_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_alternate_contact_errors()}
  def delete_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/deleteAlternateContact"
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
  Disables (opts-out) a particular Region for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=account%20DisableRegion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec disable_region(AWS.Client.t(), disable_region_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_region_errors()}
  def disable_region(%Client{} = client, input, options \\ []) do
    url_path = "/disableRegion"
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
  Enables (opts-in) a particular Region for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=account%20EnableRegion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec enable_region(AWS.Client.t(), enable_region_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_region_errors()}
  def enable_region(%Client{} = client, input, options \\ []) do
    url_path = "/enableRegion"
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
  Retrieves the specified alternate contact attached to an Amazon Web Services
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=account%20GetAlternateContact&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_alternate_contact(AWS.Client.t(), get_alternate_contact_request(), Keyword.t()) ::
          {:ok, get_alternate_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_alternate_contact_errors()}
  def get_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/getAlternateContact"
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
  Retrieves the primary contact information of an Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=account%20GetContactInformation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_contact_information(AWS.Client.t(), get_contact_information_request(), Keyword.t()) ::
          {:ok, get_contact_information_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_contact_information_errors()}
  def get_contact_information(%Client{} = client, input, options \\ []) do
    url_path = "/getContactInformation"
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
  Retrieves the opt-in status of a particular Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=account%20GetRegionOptStatus&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_region_opt_status(AWS.Client.t(), get_region_opt_status_request(), Keyword.t()) ::
          {:ok, get_region_opt_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_region_opt_status_errors()}
  def get_region_opt_status(%Client{} = client, input, options \\ []) do
    url_path = "/getRegionOptStatus"
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
  Lists all the Regions for a given account and their respective opt-in statuses.
  Optionally, this list can be filtered by the `region-opt-status-contains`
  parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=account%20ListRegions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_regions(AWS.Client.t(), list_regions_request(), Keyword.t()) ::
          {:ok, list_regions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_regions_errors()}
  def list_regions(%Client{} = client, input, options \\ []) do
    url_path = "/listRegions"
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
  Modifies the specified alternate contact attached to an Amazon Web Services
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=account%20PutAlternateContact&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_alternate_contact(AWS.Client.t(), put_alternate_contact_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_alternate_contact_errors()}
  def put_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/putAlternateContact"
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
  Updates the primary contact information of an Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=account%20PutContactInformation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_contact_information(AWS.Client.t(), put_contact_information_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_contact_information_errors()}
  def put_contact_information(%Client{} = client, input, options \\ []) do
    url_path = "/putContactInformation"
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
end
