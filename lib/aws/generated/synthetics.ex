# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Synthetics do
  @moduledoc """
  Amazon CloudWatch Synthetics
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_canary_runs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_canary_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_canary_request() :: %{}

  """
  @type stop_canary_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      describe_canaries_response() :: %{
        "Canaries" => list(canary()()),
        "NextToken" => String.t()
      }

  """
  @type describe_canaries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_canaries_request() :: %{
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t()()),
        optional("NextToken") => String.t()
      }

  """
  @type describe_canaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_canary_response() :: %{}

  """
  @type delete_canary_response() :: %{}

  @typedoc """

  ## Example:

      create_canary_request() :: %{
        optional("ArtifactConfig") => artifact_config_input(),
        optional("FailureRetentionPeriodInDays") => integer(),
        optional("RunConfig") => canary_run_config_input(),
        optional("SuccessRetentionPeriodInDays") => integer(),
        optional("Tags") => map(),
        optional("VpcConfig") => vpc_config_input(),
        required("ArtifactS3Location") => String.t(),
        required("Code") => canary_code_input(),
        required("ExecutionRoleArn") => String.t(),
        required("Name") => String.t(),
        required("RuntimeVersion") => String.t(),
        required("Schedule") => canary_schedule_input()
      }

  """
  @type create_canary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_reference_output() :: %{
        "BaseCanaryRunId" => String.t(),
        "BaseScreenshots" => list(base_screenshot()())
      }

  """
  @type visual_reference_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary_status() :: %{
        "State" => list(any()),
        "StateReason" => String.t(),
        "StateReasonCode" => list(any())
      }

  """
  @type canary_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_runtime_versions_response() :: %{
        "NextToken" => String.t(),
        "RuntimeVersions" => list(runtime_version()())
      }

  """
  @type describe_runtime_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary_run_config_output() :: %{
        "ActiveTracing" => boolean(),
        "MemoryInMB" => integer(),
        "TimeoutInSeconds" => integer()
      }

  """
  @type canary_run_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_canaries_last_run_response() :: %{
        "CanariesLastRun" => list(canary_last_run()()),
        "NextToken" => String.t()
      }

  """
  @type describe_canaries_last_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_canary_response() :: %{}

  """
  @type stop_canary_response() :: %{}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_resources_response() :: %{
        "NextToken" => String.t(),
        "Resources" => list(String.t()())
      }

  """
  @type list_group_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_encryption_config() :: %{
        "EncryptionMode" => list(any()),
        "KmsKeyArn" => String.t()
      }

  """
  @type s3_encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_canary_response() :: %{}

  """
  @type start_canary_response() :: %{}

  @typedoc """

  ## Example:

      canary_run() :: %{
        "ArtifactS3Location" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Status" => canary_run_status(),
        "Timeline" => canary_run_timeline()
      }

  """
  @type canary_run() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary_schedule_input() :: %{
        "DurationInSeconds" => float(),
        "Expression" => String.t()
      }

  """
  @type canary_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_resource_response() :: %{}

  """
  @type associate_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_canary_response() :: %{
        "Canary" => canary()
      }

  """
  @type get_canary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary_run_config_input() :: %{
        "ActiveTracing" => boolean(),
        "EnvironmentVariables" => map(),
        "MemoryInMB" => integer(),
        "TimeoutInSeconds" => integer()
      }

  """
  @type canary_run_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_canary_request() :: %{
        optional("ArtifactConfig") => artifact_config_input(),
        optional("ArtifactS3Location") => String.t(),
        optional("Code") => canary_code_input(),
        optional("ExecutionRoleArn") => String.t(),
        optional("FailureRetentionPeriodInDays") => integer(),
        optional("RunConfig") => canary_run_config_input(),
        optional("RuntimeVersion") => String.t(),
        optional("Schedule") => canary_schedule_input(),
        optional("SuccessRetentionPeriodInDays") => integer(),
        optional("VisualReference") => visual_reference_input(),
        optional("VpcConfig") => vpc_config_input()
      }

  """
  @type update_canary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary_run_timeline() :: %{
        "Completed" => non_neg_integer(),
        "Started" => non_neg_integer()
      }

  """
  @type canary_run_timeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_canary_response() :: %{}

  """
  @type update_canary_response() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary_run_status() :: %{
        "State" => list(any()),
        "StateReason" => String.t(),
        "StateReasonCode" => list(any())
      }

  """
  @type canary_run_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary_last_run() :: %{
        "CanaryName" => String.t(),
        "LastRun" => canary_run()
      }

  """
  @type canary_last_run() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      artifact_config_output() :: %{
        "S3Encryption" => s3_encryption_config()
      }

  """
  @type artifact_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      base_screenshot() :: %{
        "IgnoreCoordinates" => list(String.t()()),
        "ScreenshotName" => String.t()
      }

  """
  @type base_screenshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_config_output() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "VpcId" => String.t()
      }

  """
  @type vpc_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_request() :: %{
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_resource_response() :: %{}

  """
  @type disassociate_resource_response() :: %{}

  @typedoc """

  ## Example:

      canary_timeline() :: %{
        "Created" => non_neg_integer(),
        "LastModified" => non_neg_integer(),
        "LastStarted" => non_neg_integer(),
        "LastStopped" => non_neg_integer()
      }

  """
  @type canary_timeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_resource_request() :: %{
        required("ResourceArn") => String.t()
      }

  """
  @type associate_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_canary_runs_response() :: %{
        "CanaryRuns" => list(canary_run()()),
        "NextToken" => String.t()
      }

  """
  @type get_canary_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary_code_output() :: %{
        "Handler" => String.t(),
        "SourceLocationArn" => String.t()
      }

  """
  @type canary_code_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_canaries_last_run_request() :: %{
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t()()),
        optional("NextToken") => String.t()
      }

  """
  @type describe_canaries_last_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_resource_request() :: %{
        required("ResourceArn") => String.t()
      }

  """
  @type disassociate_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_runtime_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_runtime_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_reference_input() :: %{
        "BaseCanaryRunId" => String.t(),
        "BaseScreenshots" => list(base_screenshot()())
      }

  """
  @type visual_reference_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_entity_too_large_exception() :: %{
        "Message" => String.t()
      }

  """
  @type request_entity_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_canary_request() :: %{}

  """
  @type start_canary_request() :: %{}

  @typedoc """

  ## Example:

      delete_group_response() :: %{}

  """
  @type delete_group_response() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      runtime_version() :: %{
        "DeprecationDate" => non_neg_integer(),
        "Description" => String.t(),
        "ReleaseDate" => non_neg_integer(),
        "VersionName" => String.t()
      }

  """
  @type runtime_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary() :: %{
        "ArtifactConfig" => artifact_config_output(),
        "ArtifactS3Location" => String.t(),
        "Code" => canary_code_output(),
        "EngineArn" => String.t(),
        "ExecutionRoleArn" => String.t(),
        "FailureRetentionPeriodInDays" => integer(),
        "Id" => String.t(),
        "Name" => String.t(),
        "RunConfig" => canary_run_config_output(),
        "RuntimeVersion" => String.t(),
        "Schedule" => canary_schedule_output(),
        "Status" => canary_status(),
        "SuccessRetentionPeriodInDays" => integer(),
        "Tags" => map(),
        "Timeline" => canary_timeline(),
        "VisualReference" => visual_reference_output(),
        "VpcConfig" => vpc_config_output()
      }

  """
  @type canary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_config_input() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }

  """
  @type vpc_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_canary_request() :: %{
        optional("DeleteLambda") => boolean()
      }

  """
  @type delete_canary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_associated_groups_request() :: %{String.t() => any()}

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

      list_group_resources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_group_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_response() :: %{
        "Group" => group()
      }

  """
  @type get_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_request() :: %{}

  """
  @type delete_group_request() :: %{}

  @typedoc """

  ## Example:

      get_canary_request() :: %{}

  """
  @type get_canary_request() :: %{}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t()
      }

  """
  @type group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_groups_response() :: %{
        "Groups" => list(group_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_associated_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_response() :: %{
        "Groups" => list(group_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_request() :: %{}

  """
  @type get_group_request() :: %{}

  @typedoc """

  ## Example:

      canary_schedule_output() :: %{
        "DurationInSeconds" => float(),
        "Expression" => String.t()
      }

  """
  @type canary_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_canary_response() :: %{
        "Canary" => canary()
      }

  """
  @type create_canary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canary_code_input() :: %{
        "Handler" => String.t(),
        "S3Bucket" => String.t(),
        "S3Key" => String.t(),
        "S3Version" => String.t(),
        "ZipFile" => binary()
      }

  """
  @type canary_code_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      artifact_config_input() :: %{
        "S3Encryption" => s3_encryption_config()
      }

  """
  @type artifact_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_response() :: %{
        "Group" => group()
      }

  """
  @type create_group_response() :: %{String.t() => any()}

  @type associate_resource_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_canary_errors() ::
          validation_exception()
          | request_entity_too_large_exception()
          | internal_server_exception()

  @type create_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_canary_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_canaries_errors() :: validation_exception() | internal_server_exception()

  @type describe_canaries_last_run_errors() ::
          validation_exception() | internal_server_exception()

  @type describe_runtime_versions_errors() :: validation_exception() | internal_server_exception()

  @type disassociate_resource_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_canary_errors() :: validation_exception() | internal_server_exception()

  @type get_canary_runs_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_associated_groups_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_group_resources_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_groups_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type start_canary_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_canary_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type update_canary_errors() ::
          validation_exception()
          | request_entity_too_large_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2017-10-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "synthetics",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "synthetics",
      signature_version: "v4",
      signing_name: "synthetics",
      target_prefix: nil
    }
  end

  @doc """
  Associates a canary with a group. Using groups can help you with managing and
  automating your canaries, and you can also view aggregated run results and
  statistics for all canaries in a group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20AssociateResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:group_identifier` (`t:string`) Specifies the group. You can specify the
    group name, the ARN, or the group ID as the GroupIdentifier.

  ## Optional parameters:
  """
  @spec associate_resource(AWS.Client.t(), String.t(), associate_resource_request(), Keyword.t()) ::
          {:ok, associate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_resource_errors()}
  def associate_resource(%Client{} = client, group_identifier, input, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}/associate"
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

  @doc """
  Creates a canary. Canaries are scripts that monitor your endpoints and APIs from
  the outside-in. Canaries help you check the availability and latency of your
  web services and troubleshoot anomalies by investigating load time data,
  screenshots of the UI, logs, and metrics. You can set up a canary to run
  continuously or just once. Do not use `CreateCanary` to modify an existing
  canary. Use
  [UpdateCanary](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html)
  instead. To create canaries, you must have the
  `CloudWatchSyntheticsFullAccess` policy. If you are creating a new IAM role
  for the canary, you also need the `iam:CreateRole`, `iam:CreatePolicy` and
  `iam:AttachRolePolicy` permissions. For more information, see [Necessary Roles
  and
  Permissions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20CreateCanary&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_canary(AWS.Client.t(), create_canary_request(), Keyword.t()) ::
          {:ok, create_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_canary_errors()}
  def create_canary(%Client{} = client, input, options \\ []) do
    url_path = "/canary"
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
  Creates a group which you can use to associate canaries with each other,
  including cross-Region canaries. Using groups can help you with managing and
  automating your canaries, and you can also view aggregated run results and
  statistics for all canaries in a group. Groups are global resources. When you
  create a group, it is replicated across Amazon Web Services Regions, and you
  can view it and add canaries to it from any Region. Although the group ARN
  format reflects the Region name where it was created, a group is not
  constrained to any Region. This means that you can put canaries from multiple
  Regions into the same group, and then use that group to view and manage all of
  those canaries in a single view.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20CreateGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_group(AWS.Client.t(), create_group_request(), Keyword.t()) ::
          {:ok, create_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/group"
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
  Permanently deletes the specified canary. If you specify `DeleteLambda` to
  `true`, CloudWatch Synthetics also deletes the Lambda functions and layers
  that are used by the canary.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20DeleteCanary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the canary that you want to delete. To find
    the names of your canaries, use DescribeCanaries.

  ## Optional parameters:
  * `:delete_lambda` (`t:boolean`) Specifies whether to also delete the Lambda
    functions and layers used by this canary. The default is false.
  """
  @spec delete_canary(AWS.Client.t(), String.t(), delete_canary_request(), Keyword.t()) ::
          {:ok, delete_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_canary_errors()}
  def delete_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}"
    headers = []

    {query_params, input} =
      [
        {"DeleteLambda", "deleteLambda"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:delete_lambda])

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
  Deletes a group. The group doesn't need to be empty to be deleted. If there are
  canaries in the group, they are not deleted when you delete the group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20DeleteGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:group_identifier` (`t:string`) Specifies which group to delete. You can
    specify the group name, the ARN, or the group ID as the GroupIdentifier.

  ## Optional parameters:
  """
  @spec delete_group(AWS.Client.t(), String.t(), delete_group_request(), Keyword.t()) ::
          {:ok, delete_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, group_identifier, input, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}"
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
  This operation returns a list of the canaries in your account, along with full
  details about each canary. This operation supports resource-level
  authorization using an IAM policy and the `Names` parameter. If you specify
  the `Names` parameter, the operation is successful only if you have
  authorization to view all the canaries that you specify in your request. If
  you do not have permission to view any of the canaries, the request fails with
  a 403 response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20DescribeCanaries&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_canaries(AWS.Client.t(), describe_canaries_request(), Keyword.t()) ::
          {:ok, describe_canaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_canaries_errors()}
  def describe_canaries(%Client{} = client, input, options \\ []) do
    url_path = "/canaries"
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
  Use this operation to see information from the most recent run of each canary
  that you have created. This operation supports resource-level authorization
  using an IAM policy and the `Names` parameter. If you specify the `Names`
  parameter, the operation is successful only if you have authorization to view
  all the canaries that you specify in your request. If you do not have
  permission to view any of the canaries, the request fails with a 403 response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20DescribeCanariesLastRun&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_canaries_last_run(
          AWS.Client.t(),
          describe_canaries_last_run_request(),
          Keyword.t()
        ) ::
          {:ok, describe_canaries_last_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_canaries_last_run_errors()}
  def describe_canaries_last_run(%Client{} = client, input, options \\ []) do
    url_path = "/canaries/last-run"
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
  Returns a list of Synthetics canary runtime versions. For more information, see
  [ Canary Runtime
  Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20DescribeRuntimeVersions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_runtime_versions(
          AWS.Client.t(),
          describe_runtime_versions_request(),
          Keyword.t()
        ) ::
          {:ok, describe_runtime_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_runtime_versions_errors()}
  def describe_runtime_versions(%Client{} = client, input, options \\ []) do
    url_path = "/runtime-versions"
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
  Removes a canary from a group. You must run this operation in the Region where
  the canary exists.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20DisassociateResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:group_identifier` (`t:string`) Specifies the group. You can specify the
    group name, the ARN, or the group ID as the GroupIdentifier.

  ## Optional parameters:
  """
  @spec disassociate_resource(
          AWS.Client.t(),
          String.t(),
          disassociate_resource_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_resource_errors()}
  def disassociate_resource(%Client{} = client, group_identifier, input, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}/disassociate"
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

  @doc """
  Retrieves complete information about one canary. You must specify the name of
  the canary that you want. To get a list of canaries and their names, use
  [DescribeCanaries](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20GetCanary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the canary that you want details for.

  ## Optional parameters:
  """
  @spec get_canary(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_canary_errors()}
  def get_canary(%Client{} = client, name, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}"

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
  Retrieves a list of runs for a specified canary.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20GetCanaryRuns&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the canary that you want to see runs for.

  ## Optional parameters:
  """
  @spec get_canary_runs(AWS.Client.t(), String.t(), get_canary_runs_request(), Keyword.t()) ::
          {:ok, get_canary_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_canary_runs_errors()}
  def get_canary_runs(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/runs"
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
  Returns information about one group. Groups are a global resource, so you can
  use this operation from any Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20GetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:group_identifier` (`t:string`) Specifies the group to return information
    for. You can specify the group name, the ARN, or the group ID as the
    GroupIdentifier.

  ## Optional parameters:
  """
  @spec get_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_errors()}
  def get_group(%Client{} = client, group_identifier, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}"

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
  Returns a list of the groups that the specified canary is associated with. The
  canary that you specify must be in the current Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20ListAssociatedGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the canary that you want to view
    groups for.

  ## Optional parameters:
  """
  @spec list_associated_groups(
          AWS.Client.t(),
          String.t(),
          list_associated_groups_request(),
          Keyword.t()
        ) ::
          {:ok, list_associated_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_associated_groups_errors()}
  def list_associated_groups(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resource/#{AWS.Util.encode_uri(resource_arn)}/groups"
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
  This operation returns a list of the ARNs of the canaries that are associated
  with the specified group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20ListGroupResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:group_identifier` (`t:string`) Specifies the group to return information
    for. You can specify the group name, the ARN, or the group ID as the
    GroupIdentifier.

  ## Optional parameters:
  """
  @spec list_group_resources(
          AWS.Client.t(),
          String.t(),
          list_group_resources_request(),
          Keyword.t()
        ) ::
          {:ok, list_group_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_group_resources_errors()}
  def list_group_resources(%Client{} = client, group_identifier, input, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}/resources"
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
  Returns a list of all groups in the account, displaying their names, unique IDs,
  and ARNs. The groups from all Regions are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20ListGroups&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_groups(AWS.Client.t(), list_groups_request(), Keyword.t()) ::
          {:ok, list_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_groups_errors()}
  def list_groups(%Client{} = client, input, options \\ []) do
    url_path = "/groups"
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
  Displays the tags associated with a canary or group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the canary or group that you want to
    view tags for.

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
  Use this operation to run a canary that has already been created. The frequency
  of the canary runs is determined by the value of the canary's `Schedule`. To
  see a canary's schedule, use
  [GetCanary](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20StartCanary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the canary that you want to run. To find
    canary names, use DescribeCanaries.

  ## Optional parameters:
  """
  @spec start_canary(AWS.Client.t(), String.t(), start_canary_request(), Keyword.t()) ::
          {:ok, start_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_canary_errors()}
  def start_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/start"
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
  Stops the canary to prevent all future runs. If the canary is currently
  running,the run that is in progress completes on its own, publishes metrics,
  and uploads artifacts, but it is not recorded in Synthetics as a completed
  run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20StopCanary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the canary that you want to stop. To find the
    names of your canaries, use ListCanaries.

  ## Optional parameters:
  """
  @spec stop_canary(AWS.Client.t(), String.t(), stop_canary_request(), Keyword.t()) ::
          {:ok, stop_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_canary_errors()}
  def stop_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/stop"
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
  Assigns one or more tags (key-value pairs) to the specified canary or group.
  Tags can help you organize and categorize your resources. You can also use
  them to scope user permissions, by granting a user permission to access or
  change only resources with certain tag values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the canary or group that you're adding
    tags to.

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
  Removes one or more tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the canary or group that you're
    removing tags from.
  * `:tag_keys` (`t:list[com.amazonaws.synthetics#TagKey]`) The list of tag keys
    to remove from the resource.

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
      200
    )
  end

  @doc """
  Updates the configuration of a canary that has already been created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=synthetics%20UpdateCanary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the canary that you want to update. To find
    the names of your canaries, use DescribeCanaries.

  ## Optional parameters:
  """
  @spec update_canary(AWS.Client.t(), String.t(), update_canary_request(), Keyword.t()) ::
          {:ok, update_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_canary_errors()}
  def update_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}"
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
