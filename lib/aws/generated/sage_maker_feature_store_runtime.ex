# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerFeatureStoreRuntime do
  @moduledoc """
  Contains all data plane API operations and data types for the Amazon SageMaker
  Feature Store. Use this API to put, delete, and retrieve (get) features from a
  feature store. Use the following operations to configure your `OnlineStore`
  and `OfflineStore` features, and to create and manage feature groups:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_forbidden() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_forbidden() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_record_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "FeatureGroupName" => String.t(),
        "RecordIdentifierValueAsString" => String.t()
      }
      
  """
  @type batch_get_record_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_record_identifier() :: %{
        "FeatureGroupName" => String.t(),
        "FeatureNames" => list(String.t()()),
        "RecordIdentifiersValueAsString" => list(String.t()())
      }
      
  """
  @type batch_get_record_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_record_request() :: %{
        optional("ExpirationTimeResponse") => list(any()),
        required("Identifiers") => list(batch_get_record_identifier()())
      }
      
  """
  @type batch_get_record_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_record_response() :: %{
        "Errors" => list(batch_get_record_error()()),
        "Records" => list(batch_get_record_result_detail()()),
        "UnprocessedIdentifiers" => list(batch_get_record_identifier()())
      }
      
  """
  @type batch_get_record_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_record_result_detail() :: %{
        "ExpiresAt" => String.t(),
        "FeatureGroupName" => String.t(),
        "Record" => list(feature_value()()),
        "RecordIdentifierValueAsString" => String.t()
      }
      
  """
  @type batch_get_record_result_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_record_request() :: %{
        optional("DeletionMode") => list(any()),
        optional("TargetStores") => list(list(any())()),
        required("EventTime") => String.t(),
        required("RecordIdentifierValueAsString") => String.t()
      }
      
  """
  @type delete_record_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_value() :: %{
        "FeatureName" => String.t(),
        "ValueAsString" => String.t(),
        "ValueAsStringList" => list(String.t()())
      }
      
  """
  @type feature_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_record_request() :: %{
        optional("ExpirationTimeResponse") => list(any()),
        optional("FeatureNames") => list(String.t()()),
        required("RecordIdentifierValueAsString") => String.t()
      }
      
  """
  @type get_record_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_record_response() :: %{
        "ExpiresAt" => String.t(),
        "Record" => list(feature_value()())
      }
      
  """
  @type get_record_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_failure() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_request() :: %{
        optional("TargetStores") => list(list(any())()),
        optional("TtlDuration") => ttl_duration(),
        required("Record") => list(feature_value()())
      }
      
  """
  @type put_record_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_unavailable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ttl_duration() :: %{
        "Unit" => list(any()),
        "Value" => integer()
      }
      
  """
  @type ttl_duration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_error() :: %{String.t() => any()}

  @type batch_get_record_errors() ::
          validation_error() | service_unavailable() | internal_failure() | access_forbidden()

  @type delete_record_errors() ::
          validation_error() | service_unavailable() | internal_failure() | access_forbidden()

  @type get_record_errors() ::
          validation_error()
          | service_unavailable()
          | resource_not_found()
          | internal_failure()
          | access_forbidden()

  @type put_record_errors() ::
          validation_error() | service_unavailable() | internal_failure() | access_forbidden()

  def metadata do
    %{
      api_version: "2020-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "featurestore-runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker FeatureStore Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves a batch of `Records` from a `FeatureGroup`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakerfeaturestoreruntime%20BatchGetRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec batch_get_record(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_get_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_record_errors()}
  def batch_get_record(%Client{} = client, options \\ []) do
    url_path = "/BatchGetRecord"

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
  Deletes a `Record` from a `FeatureGroup` in the `OnlineStore`. Feature Store
  supports both `SoftDelete` and `HardDelete`. For `SoftDelete` (default),
  feature columns are set to `null` and the record is no longer retrievable by
  `GetRecord` or `BatchGetRecord`. For `HardDelete`, the complete `Record` is
  removed from the `OnlineStore`. In both cases, Feature Store appends the
  deleted record marker to the `OfflineStore`. The deleted record marker is a
  record with the same `RecordIdentifer` as the original, but with `is_deleted`
  value set to `True`, `EventTime` set to the delete input `EventTime`, and
  other feature values set to `null`. Note that the `EventTime` specified in
  `DeleteRecord` should be set later than the `EventTime` of the existing record
  in the `OnlineStore` for that `RecordIdentifer`. If it is not, the deletion
  does not occur:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakerfeaturestoreruntime%20DeleteRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:feature_group_name` (`t:string` required) The name or Amazon Resource Name
  (ARN) of the feature group to delete the record from.
  * `:event_time` (`t:string` required) Timestamp indicating when the deletion
  event occurred. EventTime can be used to query data at a certain point in
  time.
  * `:record_identifier_value_as_string` (`t:string` required) The value for the
  RecordIdentifier that uniquely identifies the record, in string format.
  ## Keyword parameters:
  * `:deletion_mode` (`t:enum["HARD_DELETE|SOFT_DELETE"]`) The name of the
  deletion mode for deleting the record. By default, the deletion mode is set
  to SoftDelete.
  * `:target_stores`
  (`t:list[com.amazonaws.sagemakerfeaturestoreruntime#TargetStore]`) A list of
  stores from which you're deleting the record. By default, Feature Store
  deletes the record from all of the stores that you're using for the
  FeatureGroup.
  """
  @spec delete_record(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_record_errors()}
  def delete_record(
        %Client{} = client,
        feature_group_name,
        event_time,
        record_identifier_value_as_string,
        options \\ []
      )
      when is_binary(event_time) and is_binary(record_identifier_value_as_string) do
    url_path = "/FeatureGroup/#{AWS.Util.encode_uri(feature_group_name)}"

    # Validate optional parameters
    optional_params = [deletion_mode: nil, target_stores: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [
      {"EventTime", event_time},
      {"RecordIdentifierValueAsString", record_identifier_value_as_string}
    ]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :target_stores) do
        [{"TargetStores", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :deletion_mode) do
        [{"DeletionMode", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:deletion_mode, :target_stores])

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
  Use for `OnlineStore` serving from a `FeatureStore`. Only the latest records
  stored in the `OnlineStore` can be retrieved. If no Record with
  `RecordIdentifierValue` is found, then an empty result is returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakerfeaturestoreruntime%20GetRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:feature_group_name` (`t:string` required) The name or Amazon Resource Name
  (ARN) of the feature group from which you want to retrieve a record.
  * `:record_identifier_value_as_string` (`t:string` required) The value that
  corresponds to RecordIdentifier type and uniquely identifies the record in
  the FeatureGroup.
  ## Keyword parameters:
  * `:expiration_time_response` (`t:enum["DISABLED|ENABLED"]`) Parameter to
  request ExpiresAt in response. If Enabled, GetRecord will return the value
  of ExpiresAt, if it is not null. If Disabled and null, GetRecord will return
  null.
  * `:feature_names`
  (`t:list[com.amazonaws.sagemakerfeaturestoreruntime#FeatureName]`) List of
  names of Features to be retrieved. If not specified, the latest value for
  all the Features are returned.
  """
  @spec get_record(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_record_errors()}
  def get_record(
        %Client{} = client,
        feature_group_name,
        record_identifier_value_as_string,
        options \\ []
      )
      when is_binary(record_identifier_value_as_string) do
    url_path = "/FeatureGroup/#{AWS.Util.encode_uri(feature_group_name)}"

    # Validate optional parameters
    optional_params = [expiration_time_response: nil, feature_names: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"RecordIdentifierValueAsString", record_identifier_value_as_string}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :feature_names) do
        [{"FeatureName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :expiration_time_response) do
        [{"ExpirationTimeResponse", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expiration_time_response, :feature_names])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `PutRecord` API is used to ingest a list of `Records` into your feature
  group. If a new record’s `EventTime` is greater, the new record is written to
  both the `OnlineStore` and `OfflineStore`. Otherwise, the record is a historic
  record and it is written only to the `OfflineStore`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakerfeaturestoreruntime%20PutRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:feature_group_name` (`t:string` required) The name or Amazon Resource Name
  (ARN) of the feature group that you want to insert the record into.
  ## Keyword parameters:
  """
  @spec put_record(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_record_errors()}
  def put_record(%Client{} = client, feature_group_name, options \\ []) do
    url_path = "/FeatureGroup/#{AWS.Util.encode_uri(feature_group_name)}"

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
end
