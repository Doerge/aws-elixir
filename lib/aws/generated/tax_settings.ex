# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TaxSettings do
  @moduledoc """
  You can use the tax setting API to programmatically set, modify, and delete the
  tax registration number (TRN), associated business legal name, and address
  (Collectively referred to as "TRN information"). You can also programmatically
  view TRN information and tax addresses ("Tax profiles"). You can use this API
  to automate your TRN information settings instead of manually using the
  console.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_tax_registration_document_request() :: %{
        required("destinationS3Location") => destination_s3_location(),
        required("taxDocumentMetadata") => tax_document_metadata()
      }

  """
  @type get_tax_registration_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      south_korea_additional_info() :: %{
        "businessRepresentativeName" => String.t(),
        "itemOfBusiness" => String.t(),
        "lineOfBusiness" => String.t()
      }

  """
  @type south_korea_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_s3_location() :: %{
        "bucket" => String.t(),
        "key" => String.t()
      }

  """
  @type source_s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_tax_registration_response() :: %{
        "errors" => list(batch_delete_tax_registration_error()())
      }

  """
  @type batch_delete_tax_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      additional_info_response() :: %{
        "brazilAdditionalInfo" => brazil_additional_info(),
        "canadaAdditionalInfo" => canada_additional_info(),
        "estoniaAdditionalInfo" => estonia_additional_info(),
        "georgiaAdditionalInfo" => georgia_additional_info(),
        "indiaAdditionalInfo" => india_additional_info(),
        "israelAdditionalInfo" => israel_additional_info(),
        "italyAdditionalInfo" => italy_additional_info(),
        "kenyaAdditionalInfo" => kenya_additional_info(),
        "malaysiaAdditionalInfo" => malaysia_additional_info(),
        "polandAdditionalInfo" => poland_additional_info(),
        "romaniaAdditionalInfo" => romania_additional_info(),
        "saudiArabiaAdditionalInfo" => saudi_arabia_additional_info(),
        "southKoreaAdditionalInfo" => south_korea_additional_info(),
        "spainAdditionalInfo" => spain_additional_info(),
        "turkeyAdditionalInfo" => turkey_additional_info(),
        "ukraineAdditionalInfo" => ukraine_additional_info()
      }

  """
  @type additional_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ukraine_additional_info() :: %{
        "ukraineTrnType" => list(any())
      }

  """
  @type ukraine_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      italy_additional_info() :: %{
        "cigNumber" => String.t(),
        "cupNumber" => String.t(),
        "sdiAccountId" => String.t(),
        "taxCode" => String.t()
      }

  """
  @type italy_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_inheritance_details() :: %{
        "inheritanceObtainedReason" => String.t(),
        "parentEntityId" => String.t()
      }

  """
  @type tax_inheritance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      malaysia_additional_info() :: %{
        "serviceTaxCodes" => list(list(any())())
      }

  """
  @type malaysia_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kenya_additional_info() :: %{
        "personType" => list(any())
      }

  """
  @type kenya_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tax_registration_response() :: %{
        "taxRegistration" => tax_registration()
      }

  """
  @type get_tax_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      india_additional_info() :: %{
        "pan" => String.t()
      }

  """
  @type india_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      poland_additional_info() :: %{
        "individualRegistrationNumber" => String.t(),
        "isGroupVatEnabled" => boolean()
      }

  """
  @type poland_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_tax_registration_request() :: %{
        required("accountIds") => list(String.t()()),
        required("taxRegistrationEntry") => tax_registration_entry()
      }

  """
  @type batch_put_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tax_registration_request() :: %{
        optional("accountId") => String.t()
      }

  """
  @type get_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      romania_additional_info() :: %{
        "taxRegistrationNumberType" => list(any())
      }

  """
  @type romania_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      brazil_additional_info() :: %{
        "ccmCode" => String.t(),
        "legalNatureCode" => String.t()
      }

  """
  @type brazil_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      additional_info_request() :: %{
        "canadaAdditionalInfo" => canada_additional_info(),
        "estoniaAdditionalInfo" => estonia_additional_info(),
        "georgiaAdditionalInfo" => georgia_additional_info(),
        "israelAdditionalInfo" => israel_additional_info(),
        "italyAdditionalInfo" => italy_additional_info(),
        "kenyaAdditionalInfo" => kenya_additional_info(),
        "malaysiaAdditionalInfo" => malaysia_additional_info(),
        "polandAdditionalInfo" => poland_additional_info(),
        "romaniaAdditionalInfo" => romania_additional_info(),
        "saudiArabiaAdditionalInfo" => saudi_arabia_additional_info(),
        "southKoreaAdditionalInfo" => south_korea_additional_info(),
        "spainAdditionalInfo" => spain_additional_info(),
        "turkeyAdditionalInfo" => turkey_additional_info(),
        "ukraineAdditionalInfo" => ukraine_additional_info()
      }

  """
  @type additional_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_tax_registration_response() :: %{}

  """
  @type delete_tax_registration_response() :: %{}

  @typedoc """

  ## Example:

      batch_put_tax_registration_response() :: %{
        "errors" => list(batch_put_tax_registration_error()()),
        "status" => list(any())
      }

  """
  @type batch_put_tax_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_document_metadata() :: %{
        "taxDocumentAccessToken" => String.t(),
        "taxDocumentName" => String.t()
      }

  """
  @type tax_document_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "errorCode" => String.t(),
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "errorCode" => String.t(),
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      estonia_additional_info() :: %{
        "registryCommercialCode" => String.t()
      }

  """
  @type estonia_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tax_registrations_response() :: %{
        "accountDetails" => list(account_details()()),
        "nextToken" => String.t()
      }

  """
  @type list_tax_registrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tax_registrations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_tax_registrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spain_additional_info() :: %{
        "registrationType" => list(any())
      }

  """
  @type spain_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      georgia_additional_info() :: %{
        "personType" => list(any())
      }

  """
  @type georgia_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_details() :: %{
        "accountId" => String.t(),
        "accountMetaData" => account_meta_data(),
        "taxInheritanceDetails" => tax_inheritance_details(),
        "taxRegistration" => tax_registration_with_jurisdiction()
      }

  """
  @type account_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_registration_document() :: %{
        "s3Location" => source_s3_location()
      }

  """
  @type tax_registration_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_s3_location() :: %{
        "bucket" => String.t(),
        "prefix" => String.t()
      }

  """
  @type destination_s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_tax_registration_error() :: %{
        "accountId" => String.t(),
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type batch_delete_tax_registration_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saudi_arabia_additional_info() :: %{
        "taxRegistrationNumberType" => list(any())
      }

  """
  @type saudi_arabia_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canada_additional_info() :: %{
        "canadaQuebecSalesTaxNumber" => String.t(),
        "canadaRetailSalesTaxNumber" => String.t(),
        "isResellerAccount" => boolean(),
        "provincialSalesTaxId" => String.t()
      }

  """
  @type canada_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_tax_registration_request() :: %{
        optional("accountId") => String.t(),
        required("taxRegistrationEntry") => tax_registration_entry()
      }

  """
  @type put_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      verification_details() :: %{
        "dateOfBirth" => String.t(),
        "taxRegistrationDocuments" => list(tax_registration_document()())
      }

  """
  @type verification_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_tax_registration_request() :: %{
        optional("accountId") => String.t()
      }

  """
  @type delete_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "errorCode" => String.t(),
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_registration() :: %{
        "additionalTaxInformation" => additional_info_response(),
        "certifiedEmailId" => String.t(),
        "legalAddress" => address(),
        "legalName" => String.t(),
        "registrationId" => String.t(),
        "registrationType" => list(any()),
        "sector" => list(any()),
        "status" => list(any()),
        "taxDocumentMetadatas" => list(tax_document_metadata()())
      }

  """
  @type tax_registration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      turkey_additional_info() :: %{
        "industries" => list(any()),
        "kepEmailId" => String.t(),
        "secondaryTaxId" => String.t(),
        "taxOffice" => String.t()
      }

  """
  @type turkey_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_registration_entry() :: %{
        "additionalTaxInformation" => additional_info_request(),
        "certifiedEmailId" => String.t(),
        "legalAddress" => address(),
        "legalName" => String.t(),
        "registrationId" => String.t(),
        "registrationType" => list(any()),
        "sector" => list(any()),
        "verificationDetails" => verification_details()
      }

  """
  @type tax_registration_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_registration_with_jurisdiction() :: %{
        "additionalTaxInformation" => additional_info_response(),
        "certifiedEmailId" => String.t(),
        "jurisdiction" => jurisdiction(),
        "legalName" => String.t(),
        "registrationId" => String.t(),
        "registrationType" => list(any()),
        "sector" => list(any()),
        "status" => list(any()),
        "taxDocumentMetadatas" => list(tax_document_metadata()())
      }

  """
  @type tax_registration_with_jurisdiction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "errorCode" => list(any()),
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_tax_registration_error() :: %{
        "accountId" => String.t(),
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type batch_put_tax_registration_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "addressLine1" => String.t(),
        "addressLine2" => String.t(),
        "addressLine3" => String.t(),
        "city" => String.t(),
        "countryCode" => String.t(),
        "districtOrCounty" => String.t(),
        "postalCode" => String.t(),
        "stateOrRegion" => String.t()
      }

  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      israel_additional_info() :: %{
        "customerType" => list(any()),
        "dealerType" => list(any())
      }

  """
  @type israel_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      jurisdiction() :: %{
        "countryCode" => String.t(),
        "stateOrRegion" => String.t()
      }

  """
  @type jurisdiction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_meta_data() :: %{
        "accountName" => String.t(),
        "address" => address(),
        "addressRoleMap" => map(),
        "addressType" => list(any()),
        "seller" => String.t()
      }

  """
  @type account_meta_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_tax_registration_request() :: %{
        required("accountIds") => list(String.t()())
      }

  """
  @type batch_delete_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_tax_registration_response() :: %{
        "status" => list(any())
      }

  """
  @type put_tax_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tax_registration_document_response() :: %{
        "destinationFilePath" => String.t()
      }

  """
  @type get_tax_registration_document_response() :: %{String.t() => any()}

  @type batch_delete_tax_registration_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type batch_put_tax_registration_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type delete_tax_registration_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_tax_registration_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_tax_registration_document_errors() ::
          validation_exception() | internal_server_exception()

  @type list_tax_registrations_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_tax_registration_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "tax",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "TaxSettings",
      signature_version: "v4",
      signing_name: "tax",
      target_prefix: nil
    }
  end

  @doc """
  Deletes tax registration for multiple accounts in batch. This can be used to
  delete tax registrations for up to five accounts in one batch.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=taxsettings%20BatchDeleteTaxRegistration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_delete_tax_registration(
          AWS.Client.t(),
          batch_delete_tax_registration_request(),
          Keyword.t()
        ) ::
          {:ok, batch_delete_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_tax_registration_errors()}
  def batch_delete_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/BatchDeleteTaxRegistration"
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
  Adds or updates tax registration for multiple accounts in batch. This can be
  used to add or update tax registrations for up to five accounts in one batch.
  You can't set a TRN if there's a pending TRN. You'll need to delete the
  pending TRN first. To call this API operation for specific countries, see the
  following country-specific requirements.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=taxsettings%20BatchPutTaxRegistration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_put_tax_registration(
          AWS.Client.t(),
          batch_put_tax_registration_request(),
          Keyword.t()
        ) ::
          {:ok, batch_put_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_tax_registration_errors()}
  def batch_put_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/BatchPutTaxRegistration"
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
  Deletes tax registration for a single account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=taxsettings%20DeleteTaxRegistration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_tax_registration(AWS.Client.t(), delete_tax_registration_request(), Keyword.t()) ::
          {:ok, delete_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tax_registration_errors()}
  def delete_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteTaxRegistration"
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
  Retrieves tax registration for a single account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=taxsettings%20GetTaxRegistration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_tax_registration(AWS.Client.t(), get_tax_registration_request(), Keyword.t()) ::
          {:ok, get_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tax_registration_errors()}
  def get_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/GetTaxRegistration"
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
  Downloads your tax documents to the Amazon S3 bucket that you specify in your
  request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=taxsettings%20GetTaxRegistrationDocument&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_tax_registration_document(
          AWS.Client.t(),
          get_tax_registration_document_request(),
          Keyword.t()
        ) ::
          {:ok, get_tax_registration_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tax_registration_document_errors()}
  def get_tax_registration_document(%Client{} = client, input, options \\ []) do
    url_path = "/GetTaxRegistrationDocument"
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
  Retrieves the tax registration of accounts listed in a consolidated billing
  family. This can be used to retrieve up to 100 accounts' tax registrations in
  one call (default 50).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=taxsettings%20ListTaxRegistrations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_tax_registrations(AWS.Client.t(), list_tax_registrations_request(), Keyword.t()) ::
          {:ok, list_tax_registrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tax_registrations_errors()}
  def list_tax_registrations(%Client{} = client, input, options \\ []) do
    url_path = "/ListTaxRegistrations"
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
  Adds or updates tax registration for a single account. You can't set a TRN if
  there's a pending TRN. You'll need to delete the pending TRN first. To call
  this API operation for specific countries, see the following country-specific
  requirements.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=taxsettings%20PutTaxRegistration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_tax_registration(AWS.Client.t(), put_tax_registration_request(), Keyword.t()) ::
          {:ok, put_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_tax_registration_errors()}
  def put_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/PutTaxRegistration"
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
