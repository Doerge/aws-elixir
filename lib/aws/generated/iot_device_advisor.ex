# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IotDeviceAdvisor do
  @moduledoc """
  Amazon Web Services IoT Core Device Advisor is a cloud-based, fully managed test
  capability for validating IoT devices during device software development.
  Device Advisor provides pre-built tests that you can use to validate IoT
  devices for reliable and secure connectivity with Amazon Web Services IoT Core
  before deploying devices to production. By using Device Advisor, you can
  confirm that your devices can connect to Amazon Web Services IoT Core, follow
  security best practices and, if applicable, receive software updates from IoT
  Device Management. You can also download signed qualification reports to
  submit to the Amazon Web Services Partner Network to get your device qualified
  for the Amazon Web Services Partner Device Catalog without the need to send
  your device in and wait for it to be tested.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_suite_definitions_response() :: %{
        "nextToken" => String.t(),
        "suiteDefinitionInformationList" => list(suite_definition_information()())
      }

  """
  @type list_suite_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_suite_run_request() :: %{}

  """
  @type get_suite_run_request() :: %{}

  @typedoc """

  ## Example:

      start_suite_run_response() :: %{
        "createdAt" => non_neg_integer(),
        "endpoint" => String.t(),
        "suiteRunArn" => String.t(),
        "suiteRunId" => String.t()
      }

  """
  @type start_suite_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suite_run_configuration() :: %{
        "parallelRun" => boolean(),
        "primaryDevice" => device_under_test(),
        "selectedTestList" => list(String.t()())
      }

  """
  @type suite_run_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suite_definition_information() :: %{
        "createdAt" => non_neg_integer(),
        "defaultDevices" => list(device_under_test()()),
        "intendedForQualification" => boolean(),
        "isLongDurationTest" => boolean(),
        "protocol" => list(any()),
        "suiteDefinitionId" => String.t(),
        "suiteDefinitionName" => String.t()
      }

  """
  @type suite_definition_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_suite_definition_response() :: %{
        "createdAt" => non_neg_integer(),
        "suiteDefinitionArn" => String.t(),
        "suiteDefinitionId" => String.t(),
        "suiteDefinitionName" => String.t()
      }

  """
  @type create_suite_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      test_result() :: %{
        "groups" => list(group_result()())
      }

  """
  @type test_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suite_run_information() :: %{
        "createdAt" => non_neg_integer(),
        "endAt" => non_neg_integer(),
        "failed" => integer(),
        "passed" => integer(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "suiteDefinitionId" => String.t(),
        "suiteDefinitionName" => String.t(),
        "suiteDefinitionVersion" => String.t(),
        "suiteRunId" => String.t()
      }

  """
  @type suite_run_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_under_test() :: %{
        "certificateArn" => String.t(),
        "deviceRoleArn" => String.t(),
        "thingArn" => String.t()
      }

  """
  @type device_under_test() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_suite_run_response() :: %{}

  """
  @type stop_suite_run_response() :: %{}

  @typedoc """

  ## Example:

      get_suite_run_report_response() :: %{
        "qualificationReportDownloadUrl" => String.t()
      }

  """
  @type get_suite_run_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_suite_definitions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_suite_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_suite_run_report_request() :: %{}

  """
  @type get_suite_run_report_request() :: %{}

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

      get_endpoint_response() :: %{
        "endpoint" => String.t()
      }

  """
  @type get_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_suite_run_response() :: %{
        "endTime" => non_neg_integer(),
        "errorReason" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "suiteDefinitionId" => String.t(),
        "suiteDefinitionVersion" => String.t(),
        "suiteRunArn" => String.t(),
        "suiteRunConfiguration" => suite_run_configuration(),
        "suiteRunId" => String.t(),
        "tags" => map(),
        "testResult" => test_result()
      }

  """
  @type get_suite_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_suite_definition_request() :: %{
        optional("tags") => map(),
        required("suiteDefinitionConfiguration") => suite_definition_configuration()
      }

  """
  @type create_suite_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_suite_run_request() :: %{}

  """
  @type stop_suite_run_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_suite_definition_request() :: %{
        optional("suiteDefinitionVersion") => String.t()
      }

  """
  @type get_suite_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_suite_runs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("suiteDefinitionId") => String.t(),
        optional("suiteDefinitionVersion") => String.t()
      }

  """
  @type list_suite_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_suite_definition_request() :: %{}

  """
  @type delete_suite_definition_request() :: %{}

  @typedoc """

  ## Example:

      suite_definition_configuration() :: %{
        "devicePermissionRoleArn" => String.t(),
        "devices" => list(device_under_test()()),
        "intendedForQualification" => boolean(),
        "isLongDurationTest" => boolean(),
        "protocol" => list(any()),
        "rootGroup" => String.t(),
        "suiteDefinitionName" => String.t()
      }

  """
  @type suite_definition_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_case_scenario() :: %{
        "failure" => String.t(),
        "status" => list(any()),
        "systemMessage" => String.t(),
        "testCaseScenarioId" => String.t(),
        "testCaseScenarioType" => list(any())
      }

  """
  @type test_case_scenario() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_suite_definition_response() :: %{}

  """
  @type delete_suite_definition_response() :: %{}

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

      update_suite_definition_request() :: %{
        required("suiteDefinitionConfiguration") => suite_definition_configuration()
      }

  """
  @type update_suite_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_suite_definition_response() :: %{
        "createdAt" => non_neg_integer(),
        "lastModifiedAt" => non_neg_integer(),
        "latestVersion" => String.t(),
        "suiteDefinitionArn" => String.t(),
        "suiteDefinitionConfiguration" => suite_definition_configuration(),
        "suiteDefinitionId" => String.t(),
        "suiteDefinitionVersion" => String.t(),
        "tags" => map()
      }

  """
  @type get_suite_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_suite_runs_response() :: %{
        "nextToken" => String.t(),
        "suiteRunsList" => list(suite_run_information()())
      }

  """
  @type list_suite_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_result() :: %{
        "groupId" => String.t(),
        "groupName" => String.t(),
        "tests" => list(test_case_run()())
      }

  """
  @type group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_suite_run_request() :: %{
        optional("suiteDefinitionVersion") => String.t(),
        optional("tags") => map(),
        required("suiteRunConfiguration") => suite_run_configuration()
      }

  """
  @type start_suite_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_case_run() :: %{
        "endTime" => non_neg_integer(),
        "failure" => String.t(),
        "logUrl" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "testCaseDefinitionId" => String.t(),
        "testCaseDefinitionName" => String.t(),
        "testCaseRunId" => String.t(),
        "testScenarios" => list(test_case_scenario()()),
        "warnings" => String.t()
      }

  """
  @type test_case_run() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_endpoint_request() :: %{
        optional("authenticationMethod") => list(any()),
        optional("certificateArn") => String.t(),
        optional("deviceRoleArn") => String.t(),
        optional("thingArn") => String.t()
      }

  """
  @type get_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_suite_definition_response() :: %{
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "suiteDefinitionArn" => String.t(),
        "suiteDefinitionId" => String.t(),
        "suiteDefinitionName" => String.t(),
        "suiteDefinitionVersion" => String.t()
      }

  """
  @type update_suite_definition_response() :: %{String.t() => any()}

  @type create_suite_definition_errors() :: validation_exception() | internal_server_exception()

  @type delete_suite_definition_errors() :: validation_exception() | internal_server_exception()

  @type get_endpoint_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_suite_definition_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_suite_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_suite_run_report_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_suite_definitions_errors() :: validation_exception() | internal_server_exception()

  @type list_suite_runs_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type start_suite_run_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type stop_suite_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_suite_definition_errors() :: validation_exception() | internal_server_exception()

  def metadata do
    %{
      api_version: "2020-09-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.iotdeviceadvisor",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IotDeviceAdvisor",
      signature_version: "v4",
      signing_name: "iotdeviceadvisor",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Device Advisor test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20CreateSuiteDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_suite_definition(AWS.Client.t(), create_suite_definition_request(), Keyword.t()) ::
          {:ok, create_suite_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_suite_definition_errors()}
  def create_suite_definition(%Client{} = client, input, options \\ []) do
    url_path = "/suiteDefinitions"
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
  Deletes a Device Advisor test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20DeleteSuiteDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:suite_definition_id` (`t:string`) Suite definition ID of the test suite to
    be deleted.

  ## Optional parameters:
  """
  @spec delete_suite_definition(
          AWS.Client.t(),
          String.t(),
          delete_suite_definition_request(),
          Keyword.t()
        ) ::
          {:ok, delete_suite_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_suite_definition_errors()}
  def delete_suite_definition(%Client{} = client, suite_definition_id, input, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}"
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
  Gets information about an Device Advisor endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20GetEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:authentication_method` (`t:enum["SignatureVersion4|X509ClientCertificate"]`)
    The authentication method used during the device connection.
  * `:certificate_arn` (`t:string`) The certificate ARN of the device. This is an
    optional parameter.
  * `:device_role_arn` (`t:string`) The device role ARN of the device. This is an
    optional parameter.
  * `:thing_arn` (`t:string`) The thing ARN of the device. This is an optional
    parameter.
  """
  @spec get_endpoint(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_endpoint_errors()}
  def get_endpoint(%Client{} = client, options \\ []) do
    url_path = "/endpoint"

    # Validate optional parameters
    optional_params = [
      authentication_method: nil,
      certificate_arn: nil,
      device_role_arn: nil,
      thing_arn: nil
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
      if opt_val = Keyword.get(options, :thing_arn) do
        [{"thingArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :device_role_arn) do
        [{"deviceRoleArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :certificate_arn) do
        [{"certificateArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :authentication_method) do
        [{"authenticationMethod", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:authentication_method, :certificate_arn, :device_role_arn, :thing_arn])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Device Advisor test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20GetSuiteDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:suite_definition_id` (`t:string`) Suite definition ID of the test suite to
    get.

  ## Optional parameters:
  * `:suite_definition_version` (`t:string`) Suite definition version of the test
    suite to get.
  """
  @spec get_suite_definition(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_suite_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_suite_definition_errors()}
  def get_suite_definition(%Client{} = client, suite_definition_id, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}"

    # Validate optional parameters
    optional_params = [suite_definition_version: nil]

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
      if opt_val = Keyword.get(options, :suite_definition_version) do
        [{"suiteDefinitionVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:suite_definition_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Device Advisor test suite run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20GetSuiteRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:suite_definition_id` (`t:string`) Suite definition ID for the test suite
    run.
  * `:suite_run_id` (`t:string`) Suite run ID for the test suite run.

  ## Optional parameters:
  """
  @spec get_suite_run(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_suite_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_suite_run_errors()}
  def get_suite_run(%Client{} = client, suite_definition_id, suite_run_id, options \\ []) do
    url_path =
      "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns/#{AWS.Util.encode_uri(suite_run_id)}"

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
  Gets a report download link for a successful Device Advisor qualifying test
  suite run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20GetSuiteRunReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:suite_definition_id` (`t:string`) Suite definition ID of the test suite.
  * `:suite_run_id` (`t:string`) Suite run ID of the test suite run.

  ## Optional parameters:
  """
  @spec get_suite_run_report(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_suite_run_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_suite_run_report_errors()}
  def get_suite_run_report(%Client{} = client, suite_definition_id, suite_run_id, options \\ []) do
    url_path =
      "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns/#{AWS.Util.encode_uri(suite_run_id)}/report"

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
  Lists the Device Advisor test suites you have created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20ListSuiteDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return at once.
  * `:next_token` (`t:string`) A token used to get the next set of results.
  """
  @spec list_suite_definitions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_suite_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_suite_definitions_errors()}
  def list_suite_definitions(%Client{} = client, options \\ []) do
    url_path = "/suiteDefinitions"

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
  Lists runs of the specified Device Advisor test suite. You can list all runs of
  the test suite, or the runs of a specific version of the test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20ListSuiteRuns&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return at once.
  * `:next_token` (`t:string`) A token to retrieve the next set of results.
  * `:suite_definition_id` (`t:string`) Lists the test suite runs of the specified
    test suite based on suite definition ID.
  * `:suite_definition_version` (`t:string`) Must be passed along with
    suiteDefinitionId. Lists the test suite runs of the specified test suite
    based on suite definition version.
  """
  @spec list_suite_runs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_suite_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_suite_runs_errors()}
  def list_suite_runs(%Client{} = client, options \\ []) do
    url_path = "/suiteRuns"

    # Validate optional parameters
    optional_params = [
      max_results: nil,
      next_token: nil,
      suite_definition_id: nil,
      suite_definition_version: nil
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
      if opt_val = Keyword.get(options, :suite_definition_version) do
        [{"suiteDefinitionVersion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :suite_definition_id) do
        [{"suiteDefinitionId", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :suite_definition_id, :suite_definition_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags attached to an IoT Device Advisor resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The resource ARN of the IoT Device Advisor
    resource. This can be SuiteDefinition ARN or SuiteRun ARN.

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
  Starts a Device Advisor test suite run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20StartSuiteRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:suite_definition_id` (`t:string`) Suite definition ID of the test suite.

  ## Optional parameters:
  """
  @spec start_suite_run(AWS.Client.t(), String.t(), start_suite_run_request(), Keyword.t()) ::
          {:ok, start_suite_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_suite_run_errors()}
  def start_suite_run(%Client{} = client, suite_definition_id, input, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns"
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
  Stops a Device Advisor test suite run that is currently running.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20StopSuiteRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:suite_definition_id` (`t:string`) Suite definition ID of the test suite run
    to be stopped.
  * `:suite_run_id` (`t:string`) Suite run ID of the test suite run to be stopped.

  ## Optional parameters:
  """
  @spec stop_suite_run(
          AWS.Client.t(),
          String.t(),
          String.t(),
          stop_suite_run_request(),
          Keyword.t()
        ) ::
          {:ok, stop_suite_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_suite_run_errors()}
  def stop_suite_run(%Client{} = client, suite_definition_id, suite_run_id, input, options \\ []) do
    url_path =
      "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns/#{AWS.Util.encode_uri(suite_run_id)}/stop"

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
  Adds to and modifies existing tags of an IoT Device Advisor resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The resource ARN of an IoT Device Advisor
    resource. This can be SuiteDefinition ARN or SuiteRun ARN.

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
  Removes tags from an IoT Device Advisor resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The resource ARN of an IoT Device Advisor
    resource. This can be SuiteDefinition ARN or SuiteRun ARN.
  * `:tag_keys` (`t:list[com.amazonaws.iotdeviceadvisor#String128]`) List of tag
    keys to remove from the IoT Device Advisor resource.

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
  Updates a Device Advisor test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdeviceadvisor%20UpdateSuiteDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:suite_definition_id` (`t:string`) Suite definition ID of the test suite to
    be updated.

  ## Optional parameters:
  """
  @spec update_suite_definition(
          AWS.Client.t(),
          String.t(),
          update_suite_definition_request(),
          Keyword.t()
        ) ::
          {:ok, update_suite_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_suite_definition_errors()}
  def update_suite_definition(%Client{} = client, suite_definition_id, input, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}"
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
