# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoSync do
  @moduledoc """
  Amazon Cognito Sync Amazon Cognito Sync provides an AWS service and client
  library that enable cross-device syncing of application-related user data.
  High-level client libraries are available for both iOS and Android. You can
  use these libraries to persist data locally so that it's available even if the
  device is offline. Developer credentials don't need to be stored on the mobile
  device to access the service. You can use Amazon Cognito to obtain a
  normalized user ID and credentials. User data is persisted in a dataset that
  can store up to 1 MB of key-value pairs, and you can have up to 20 datasets
  per user identity.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      register_device_response() :: %{
        "DeviceId" => String.t()
      }
      
  """
  @type register_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_records_response() :: %{
        "Count" => integer(),
        "DatasetDeletedAfterRequestedSyncCount" => boolean(),
        "DatasetExists" => boolean(),
        "DatasetSyncCount" => float(),
        "LastModifiedBy" => String.t(),
        "MergedDatasetNames" => list(String.t()()),
        "NextToken" => String.t(),
        "Records" => list(record()()),
        "SyncSessionToken" => String.t()
      }
      
  """
  @type list_records_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_identity_pool_usage_request() :: %{}
      
  """
  @type describe_identity_pool_usage_request() :: %{}

  @typedoc """

  ## Example:
      
      record() :: %{
        "DeviceLastModifiedDate" => non_neg_integer(),
        "Key" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "SyncCount" => float(),
        "Value" => String.t()
      }
      
  """
  @type record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_response() :: %{
        "Dataset" => dataset()
      }
      
  """
  @type delete_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_pool_usage_response() :: %{
        "Count" => integer(),
        "IdentityPoolUsages" => list(identity_pool_usage()()),
        "MaxResults" => integer(),
        "NextToken" => String.t()
      }
      
  """
  @type list_identity_pool_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bulk_publish_details_request() :: %{}
      
  """
  @type get_bulk_publish_details_request() :: %{}

  @typedoc """

  ## Example:
      
      push_sync() :: %{
        "ApplicationArns" => list(String.t()()),
        "RoleArn" => String.t()
      }
      
  """
  @type push_sync() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_identity_usage_response() :: %{
        "IdentityUsage" => identity_usage()
      }
      
  """
  @type describe_identity_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bulk_publish_response() :: %{
        "IdentityPoolId" => String.t()
      }
      
  """
  @type bulk_publish_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_pool_usage_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_identity_pool_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datasets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_pool_configuration_response() :: %{
        "CognitoStreams" => cognito_streams(),
        "IdentityPoolId" => String.t(),
        "PushSync" => push_sync()
      }
      
  """
  @type set_identity_pool_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_records_request() :: %{
        optional("ClientContext") => String.t(),
        optional("DeviceId") => String.t(),
        optional("RecordPatches") => list(record_patch()()),
        required("SyncSessionToken") => String.t()
      }
      
  """
  @type update_records_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cognito_events_request() :: %{}
      
  """
  @type get_cognito_events_request() :: %{}

  @typedoc """

  ## Example:
      
      cognito_streams() :: %{
        "RoleArn" => String.t(),
        "StreamName" => String.t(),
        "StreamingStatus" => list(any())
      }
      
  """
  @type cognito_streams() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset() :: %{
        "CreationDate" => non_neg_integer(),
        "DataStorage" => float(),
        "DatasetName" => String.t(),
        "IdentityId" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "NumRecords" => float()
      }
      
  """
  @type dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_lambda_function_output_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_lambda_function_output_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_streamed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type already_streamed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bulk_publish_request() :: %{}
      
  """
  @type bulk_publish_request() :: %{}

  @typedoc """

  ## Example:
      
      list_records_request() :: %{
        optional("LastSyncCount") => float(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SyncSessionToken") => String.t()
      }
      
  """
  @type list_records_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_pool_usage() :: %{
        "DataStorage" => float(),
        "IdentityPoolId" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "SyncSessionsCount" => float()
      }
      
  """
  @type identity_pool_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicate_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bulk_publish_details_response() :: %{
        "BulkPublishCompleteTime" => non_neg_integer(),
        "BulkPublishStartTime" => non_neg_integer(),
        "BulkPublishStatus" => list(any()),
        "FailureMessage" => String.t(),
        "IdentityPoolId" => String.t()
      }
      
  """
  @type get_bulk_publish_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsubscribe_from_dataset_request() :: %{}
      
  """
  @type unsubscribe_from_dataset_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_identity_usage_request() :: %{}
      
  """
  @type describe_identity_usage_request() :: %{}

  @typedoc """

  ## Example:
      
      lambda_throttled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type lambda_throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_authorized_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_cognito_events_request() :: %{
        required("Events") => map()
      }
      
  """
  @type set_cognito_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_pool_configuration_response() :: %{
        "CognitoStreams" => cognito_streams(),
        "IdentityPoolId" => String.t(),
        "PushSync" => push_sync()
      }
      
  """
  @type get_identity_pool_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_response() :: %{
        "Dataset" => dataset()
      }
      
  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_records_response() :: %{
        "Records" => list(record()())
      }
      
  """
  @type update_records_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_device_request() :: %{
        required("Platform") => list(any()),
        required("Token") => String.t()
      }
      
  """
  @type register_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_patch() :: %{
        "DeviceLastModifiedDate" => non_neg_integer(),
        "Key" => String.t(),
        "Op" => list(any()),
        "SyncCount" => float(),
        "Value" => String.t()
      }
      
  """
  @type record_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_pool_configuration_request() :: %{
        optional("CognitoStreams") => cognito_streams(),
        optional("PushSync") => push_sync()
      }
      
  """
  @type set_identity_pool_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cognito_events_response() :: %{
        "Events" => map()
      }
      
  """
  @type get_cognito_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_request() :: %{}
      
  """
  @type describe_dataset_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_dataset_request() :: %{}
      
  """
  @type delete_dataset_request() :: %{}

  @typedoc """

  ## Example:
      
      list_datasets_response() :: %{
        "Count" => integer(),
        "Datasets" => list(dataset()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_usage() :: %{
        "DataStorage" => float(),
        "DatasetCount" => integer(),
        "IdentityId" => String.t(),
        "IdentityPoolId" => String.t(),
        "LastModifiedDate" => non_neg_integer()
      }
      
  """
  @type identity_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribe_to_dataset_request() :: %{}
      
  """
  @type subscribe_to_dataset_request() :: %{}

  @typedoc """

  ## Example:
      
      unsubscribe_from_dataset_response() :: %{}
      
  """
  @type unsubscribe_from_dataset_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_pool_configuration_request() :: %{}
      
  """
  @type get_identity_pool_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribe_to_dataset_response() :: %{}
      
  """
  @type subscribe_to_dataset_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_identity_pool_usage_response() :: %{
        "IdentityPoolUsage" => identity_pool_usage()
      }
      
  """
  @type describe_identity_pool_usage_response() :: %{String.t() => any()}

  @type bulk_publish_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | duplicate_request_exception()
          | already_streamed_exception()
          | resource_not_found_exception()

  @type delete_dataset_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_dataset_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_identity_pool_usage_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_identity_usage_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_bulk_publish_details_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()

  @type get_cognito_events_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_identity_pool_configuration_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_datasets_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | too_many_requests_exception()

  @type list_identity_pool_usage_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | too_many_requests_exception()

  @type list_records_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | too_many_requests_exception()

  @type register_device_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_configuration_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type set_cognito_events_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type set_identity_pool_configuration_errors() ::
          internal_error_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type subscribe_to_dataset_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_configuration_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type unsubscribe_from_dataset_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_configuration_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_records_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | lambda_throttled_exception()
          | invalid_lambda_function_output_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2014-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cognito-sync",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Cognito Sync",
      signature_version: "v4",
      signing_name: "cognito-sync",
      target_prefix: nil
    }
  end

  @doc """
  Initiates a bulk publish of all existing datasets for an Identity Pool to the
  configured stream. Customers are limited to one successful bulk publish per 24
  hours. Bulk publish is an asynchronous request, customers can see the status
  of the request via the GetBulkPublishDetails operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20BulkPublish&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_pool_id` (`t:string`)

  ## Optional parameters:
  """

  @spec bulk_publish(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, bulk_publish_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bulk_publish_errors()}

  def bulk_publish(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/bulkpublish"

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
  Deletes the specific dataset. The dataset will be deleted permanently, and the
  action can't be undone. Datasets that this dataset was merged with will no
  longer report the merge. Any subsequent operation on this dataset will result
  in a ResourceNotFoundException.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20DeleteDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_name` (`t:string`)
  * `:identity_id` (`t:string`)
  * `:identity_pool_id` (`t:string`)

  ## Optional parameters:
  """

  @spec delete_dataset(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_errors()}

  def delete_dataset(
        %Client{} = client,
        dataset_name,
        identity_id,
        identity_pool_id,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}"

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
  Gets meta data about a dataset by identity and dataset name. With Amazon Cognito
  Sync, each identity has access only to its own data. Thus, the credentials
  used to make this API call need to have access to the identity data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20DescribeDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_name` (`t:string`)
  * `:identity_id` (`t:string`)
  * `:identity_pool_id` (`t:string`)

  ## Optional parameters:
  """

  @spec describe_dataset(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dataset_errors()}

  def describe_dataset(
        %Client{} = client,
        dataset_name,
        identity_id,
        identity_pool_id,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}"

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
  Gets usage details (for example, data storage) about a particular identity pool.
  This API can only be called with developer credentials. You cannot call this
  API with the temporary user credentials provided by Cognito Identity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20DescribeIdentityPoolUsage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_pool_id` (`t:string`)

  ## Optional parameters:
  """

  @spec describe_identity_pool_usage(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_identity_pool_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_identity_pool_usage_errors()}

  def describe_identity_pool_usage(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}"

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
  Gets usage information for an identity, including number of datasets and data
  usage. This API can be called with temporary user credentials provided by
  Cognito Identity or with developer credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20DescribeIdentityUsage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_id` (`t:string`)
  * `:identity_pool_id` (`t:string`)

  ## Optional parameters:
  """

  @spec describe_identity_usage(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_identity_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_identity_usage_errors()}

  def describe_identity_usage(%Client{} = client, identity_id, identity_pool_id, options \\ []) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}"

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
  Get the status of the last BulkPublish operation for an identity pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20GetBulkPublishDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_pool_id` (`t:string`)

  ## Optional parameters:
  """

  @spec get_bulk_publish_details(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bulk_publish_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bulk_publish_details_errors()}

  def get_bulk_publish_details(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/getBulkPublishDetails"

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
  Gets the events and the corresponding Lambda functions associated with an
  identity pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20GetCognitoEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_pool_id` (`t:string`) The Cognito Identity Pool ID for the request

  ## Optional parameters:
  """

  @spec get_cognito_events(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_cognito_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_cognito_events_errors()}

  def get_cognito_events(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/events"

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
  Gets the configuration settings of an identity pool. This API can only be called
  with developer credentials. You cannot call this API with the temporary user
  credentials provided by Cognito Identity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20GetIdentityPoolConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_pool_id` (`t:string`) A name-spaced GUID (for example,
  us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
  This is the ID of the pool for which to return a configuration.

  ## Optional parameters:
  """

  @spec get_identity_pool_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_identity_pool_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_identity_pool_configuration_errors()}

  def get_identity_pool_configuration(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/configuration"

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
  Lists datasets for an identity. With Amazon Cognito Sync, each identity has
  access only to its own data. Thus, the credentials used to make this API call
  need to have access to the identity data. ListDatasets can be called with
  temporary user credentials provided by Cognito Identity or with developer
  credentials. You should use the Cognito Identity credentials to make this API
  call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20ListDatasets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_id` (`t:string`)
  * `:identity_pool_id` (`t:string`)

  ## Optional parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """

  @spec list_datasets(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_datasets_errors()}

  def list_datasets(%Client{} = client, identity_id, identity_pool_id, options \\ []) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets"

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
  Gets a list of identity pools registered with Cognito. ListIdentityPoolUsage can
  only be called with developer credentials. You cannot make this API call with
  the temporary user credentials provided by Cognito Identity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20ListIdentityPoolUsage&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """

  @spec list_identity_pool_usage(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_identity_pool_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identity_pool_usage_errors()}

  def list_identity_pool_usage(%Client{} = client, options \\ []) do
    url_path = "/identitypools"

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
  Gets paginated records, optionally changed after a particular sync count for a
  dataset and identity. With Amazon Cognito Sync, each identity has access only
  to its own data. Thus, the credentials used to make this API call need to have
  access to the identity data. ListRecords can be called with temporary user
  credentials provided by Cognito Identity or with developer credentials. You
  should use Cognito Identity credentials to make this API call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20ListRecords&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_name` (`t:string`)
  * `:identity_id` (`t:string`)
  * `:identity_pool_id` (`t:string`)

  ## Optional parameters:
  * `:last_sync_count` (`t:long`)
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:sync_session_token` (`t:string`)
  """

  @spec list_records(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_records_errors()}

  def list_records(%Client{} = client, dataset_name, identity_id, identity_pool_id, options \\ []) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}/records"

    # Validate optional parameters
    optional_params = [
      last_sync_count: nil,
      max_results: nil,
      next_token: nil,
      sync_session_token: nil
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
      if opt_val = Keyword.get(options, :sync_session_token) do
        [{"syncSessionToken", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :last_sync_count) do
        [{"lastSyncCount", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:last_sync_count, :max_results, :next_token, :sync_session_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Registers a device to receive push sync notifications. This API can only be
  called with temporary credentials provided by Cognito Identity. You cannot
  call this API with developer credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20RegisterDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_id` (`t:string`) The unique ID for this identity.
  * `:identity_pool_id` (`t:string`) A name-spaced GUID (for example,
  us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
  Here, the ID of the pool that the identity belongs to.

  ## Optional parameters:
  """

  @spec register_device(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, register_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_device_errors()}

  def register_device(%Client{} = client, identity_id, identity_pool_id, options \\ []) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identity/#{AWS.Util.encode_uri(identity_id)}/device"

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
  Sets the AWS Lambda function for a given event type for an identity pool. This
  request only updates the key/value pair specified. Other key/values pairs are
  not updated. To remove a key value pair, pass a empty value for the particular
  key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20SetCognitoEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_pool_id` (`t:string`) The Cognito Identity Pool to use when
  configuring Cognito Events

  ## Optional parameters:
  """

  @spec set_cognito_events(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_cognito_events_errors()}

  def set_cognito_events(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/events"

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
  Sets the necessary configuration for push sync. This API can only be called with
  developer credentials. You cannot call this API with the temporary user
  credentials provided by Cognito Identity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20SetIdentityPoolConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_pool_id` (`t:string`) A name-spaced GUID (for example,
  us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
  This is the ID of the pool to modify.

  ## Optional parameters:
  """

  @spec set_identity_pool_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, set_identity_pool_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_identity_pool_configuration_errors()}

  def set_identity_pool_configuration(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/configuration"

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
  Subscribes to receive notifications when a dataset is modified by another
  device. This API can only be called with temporary credentials provided by
  Cognito Identity. You cannot call this API with developer credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20SubscribeToDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_name` (`t:string`) The name of the dataset to subcribe to.
  * `:device_id` (`t:string`) The unique ID generated for this device by Cognito.
  * `:identity_id` (`t:string`) Unique ID for this identity.
  * `:identity_pool_id` (`t:string`) A name-spaced GUID (for example,
  us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
  The ID of the pool to which the identity belongs.

  ## Optional parameters:
  """

  @spec subscribe_to_dataset(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, subscribe_to_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, subscribe_to_dataset_errors()}

  def subscribe_to_dataset(
        %Client{} = client,
        dataset_name,
        device_id,
        identity_id,
        identity_pool_id,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}/subscriptions/#{AWS.Util.encode_uri(device_id)}"

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
  Unsubscribes from receiving notifications when a dataset is modified by another
  device. This API can only be called with temporary credentials provided by
  Cognito Identity. You cannot call this API with developer credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20UnsubscribeFromDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_name` (`t:string`) The name of the dataset from which to unsubcribe.
  * `:device_id` (`t:string`) The unique ID generated for this device by Cognito.
  * `:identity_id` (`t:string`) Unique ID for this identity.
  * `:identity_pool_id` (`t:string`) A name-spaced GUID (for example,
  us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
  The ID of the pool to which this identity belongs.

  ## Optional parameters:
  """

  @spec unsubscribe_from_dataset(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, unsubscribe_from_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unsubscribe_from_dataset_errors()}

  def unsubscribe_from_dataset(
        %Client{} = client,
        dataset_name,
        device_id,
        identity_id,
        identity_pool_id,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}/subscriptions/#{AWS.Util.encode_uri(device_id)}"

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
  Posts updates to records and adds and deletes records for a dataset and user.
  The sync count in the record patch is your last known sync count for that
  record. The server will reject an UpdateRecords request with a
  ResourceConflictException if you try to patch a record with a new value but a
  stale sync count.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitosync%20UpdateRecords&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_name` (`t:string`)
  * `:identity_id` (`t:string`)
  * `:identity_pool_id` (`t:string`)

  ## Optional parameters:
  * `:client_context` (`t:string`)
  """

  @spec update_records(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_records_errors()}

  def update_records(
        %Client{} = client,
        dataset_name,
        identity_id,
        identity_pool_id,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}"

    # Validate optional parameters
    optional_params = [client_context: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_context) do
        [{"x-amz-Client-Context", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_context])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
