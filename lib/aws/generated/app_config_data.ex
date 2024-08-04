# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppConfigData do
  @moduledoc """
  AppConfig Data provides the data plane APIs your application uses to retrieve
  configuration data. Here's how it works: Your application retrieves
  configuration data by first establishing a configuration session using the
  AppConfig Data `StartConfigurationSession` API action. Your session's client
  then makes periodic calls to `GetLatestConfiguration` to check for and
  retrieve the latest data available.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Details" => list(),
        "Message" => String.t(),
        "Reason" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_latest_configuration_request() :: %{
        required("ConfigurationToken") => String.t()
      }
      
  """
  @type get_latest_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_latest_configuration_response() :: %{
        optional("Configuration") => binary(),
        optional("ContentType") => String.t(),
        optional("NextPollConfigurationToken") => String.t(),
        optional("NextPollIntervalInSeconds") => integer(),
        optional("VersionLabel") => String.t()
      }
      
  """
  @type get_latest_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_detail() :: %{
        "Problem" => String.t()
      }
      
  """
  @type invalid_parameter_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ReferencedBy" => map(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_configuration_session_request() :: %{
        optional("RequiredMinimumPollIntervalInSeconds") => integer(),
        required("ApplicationIdentifier") => String.t(),
        required("ConfigurationProfileIdentifier") => String.t(),
        required("EnvironmentIdentifier") => String.t()
      }
      
  """
  @type start_configuration_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_configuration_session_response() :: %{
        optional("InitialConfigurationToken") => String.t()
      }
      
  """
  @type start_configuration_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @type get_latest_configuration_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | bad_request_exception()

  @type start_configuration_session_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | bad_request_exception()

  def metadata do
    %{
      api_version: "2021-11-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appconfigdata",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AppConfigData",
      signature_version: "v4",
      signing_name: "appconfig",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves the latest deployed configuration. This API may return empty
  configuration data if the client already has the latest version. For more
  information about this API action and to view example CLI commands that show
  how to use it with the `StartConfigurationSession` API action, see [Retrieving
  the
  configuration](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration)
  in the *AppConfig User Guide*. Note the following important information. Each
  configuration token is only valid for one call to `GetLatestConfiguration`.
  The `GetLatestConfiguration` response includes a `NextPollConfigurationToken`
  that should always replace the token used for the just-completed call in
  preparation for the next one. `GetLatestConfiguration` is a priced call. For
  more information, see
  [Pricing](https://aws.amazon.com/systems-manager/pricing/).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfigdata%20GetLatestConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_token` (`t:string` required) Token describing the current
    state of the configuration session. To obtain a token, first call the
    StartConfigurationSession API. Note that every call to
    GetLatestConfiguration will return a new ConfigurationToken
    (NextPollConfigurationToken in the response) and must be provided to
    subsequent GetLatestConfiguration API calls.
  """
  @spec get_latest_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_latest_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_latest_configuration_errors()}
  def get_latest_configuration(%Client{} = client, configuration_token, options \\ [])
      when is_binary(configuration_token) do
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
    query_params = [{"configuration_token", configuration_token}]

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "ContentType"},
          {"Next-Poll-Configuration-Token", "NextPollConfigurationToken"},
          {"Next-Poll-Interval-In-Seconds", "NextPollIntervalInSeconds"},
          {"Version-Label", "VersionLabel"}
        ]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a configuration session used to retrieve a deployed configuration. For
  more information about this API action and to view example CLI commands that
  show how to use it with the `GetLatestConfiguration` API action, see
  [Retrieving the
  configuration](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration)
  in the *AppConfig User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=appconfigdata%20StartConfigurationSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_configuration_session(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_configuration_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_configuration_session_errors()}
  def start_configuration_session(%Client{} = client, options \\ []) do
    url_path = "/configurationsessions"

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
end
