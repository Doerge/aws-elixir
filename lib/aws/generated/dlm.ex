# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DLM do
  @moduledoc """
  Amazon Data Lifecycle Manager With Amazon Data Lifecycle Manager, you can manage
  the lifecycle of your Amazon Web Services resources. You create lifecycle
  policies, which are used to automate operations on the specified resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      archive_retain_rule() :: %{
        "RetentionArchiveTier" => retention_archive_tier()
      }
      
  """
  @type archive_retain_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "CmkArn" => String.t(),
        "Encrypted" => boolean()
      }
      
  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lifecycle_policy_request() :: %{
        optional("CopyTags") => boolean(),
        optional("CreateInterval") => integer(),
        optional("CrossRegionCopyTargets") => list(cross_region_copy_target()()),
        optional("Description") => String.t(),
        optional("Exclusions") => exclusions(),
        optional("ExecutionRoleArn") => String.t(),
        optional("ExtendDeletion") => boolean(),
        optional("PolicyDetails") => policy_details(),
        optional("RetainInterval") => integer(),
        optional("State") => list(any())
      }
      
  """
  @type update_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cross_region_copy_action() :: %{
        "EncryptionConfiguration" => encryption_configuration(),
        "RetainRule" => cross_region_copy_retain_rule(),
        "Target" => String.t()
      }
      
  """
  @type cross_region_copy_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_lifecycle_policy_response() :: %{}
      
  """
  @type update_lifecycle_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      retain_rule() :: %{
        "Count" => integer(),
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }
      
  """
  @type retain_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deprecate_rule() :: %{
        "Count" => integer(),
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }
      
  """
  @type deprecate_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policies_request() :: %{
        optional("DefaultPolicyType") => list(any()),
        optional("PolicyIds") => list(String.t()()),
        optional("ResourceTypes") => list(list(any())()),
        optional("State") => list(any()),
        optional("TagsToAdd") => list(String.t()()),
        optional("TargetTags") => list(String.t()())
      }
      
  """
  @type get_lifecycle_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_parameters() :: %{
        "DescriptionRegex" => String.t(),
        "EventType" => list(any()),
        "SnapshotOwner" => list(String.t()())
      }
      
  """
  @type event_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fast_restore_rule() :: %{
        "AvailabilityZones" => list(String.t()()),
        "Count" => integer(),
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }
      
  """
  @type fast_restore_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameters() :: %{
        "ExcludeBootVolume" => boolean(),
        "ExcludeDataVolumeTags" => list(tag()()),
        "NoReboot" => boolean()
      }
      
  """
  @type parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_source() :: %{
        "Parameters" => event_parameters(),
        "Type" => list(any())
      }
      
  """
  @type event_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_response() :: %{}
      
  """
  @type delete_lifecycle_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t(),
        "ResourceIds" => list(String.t()()),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_summary() :: %{
        "DefaultPolicy" => boolean(),
        "Description" => String.t(),
        "PolicyId" => String.t(),
        "PolicyType" => list(any()),
        "State" => list(any()),
        "Tags" => map()
      }
      
  """
  @type lifecycle_policy_summary() :: %{String.t() => any()}

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
      
      cross_region_copy_deprecate_rule() :: %{
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }
      
  """
  @type cross_region_copy_deprecate_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t(),
        "MutuallyExclusiveParameters" => list(String.t()()),
        "RequiredParameters" => list(String.t()())
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      exclusions() :: %{
        "ExcludeBootVolumes" => boolean(),
        "ExcludeTags" => list(tag()()),
        "ExcludeVolumeTypes" => list(String.t()())
      }
      
  """
  @type exclusions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lifecycle_policy_response() :: %{
        "PolicyId" => String.t()
      }
      
  """
  @type create_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policies_response() :: %{
        "Policies" => list(lifecycle_policy_summary()())
      }
      
  """
  @type get_lifecycle_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cross_region_copy_rule() :: %{
        "CmkArn" => String.t(),
        "CopyTags" => boolean(),
        "DeprecateRule" => cross_region_copy_deprecate_rule(),
        "Encrypted" => boolean(),
        "RetainRule" => cross_region_copy_retain_rule(),
        "Target" => String.t(),
        "TargetRegion" => String.t()
      }
      
  """
  @type cross_region_copy_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cross_region_copy_target() :: %{
        "TargetRegion" => String.t()
      }
      
  """
  @type cross_region_copy_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy() :: %{
        "DateCreated" => non_neg_integer(),
        "DateModified" => non_neg_integer(),
        "DefaultPolicy" => boolean(),
        "Description" => String.t(),
        "ExecutionRoleArn" => String.t(),
        "PolicyArn" => String.t(),
        "PolicyDetails" => policy_details(),
        "PolicyId" => String.t(),
        "State" => list(any()),
        "StatusMessage" => String.t(),
        "Tags" => map()
      }
      
  """
  @type lifecycle_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      archive_rule() :: %{
        "RetainRule" => archive_retain_rule()
      }
      
  """
  @type archive_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule() :: %{
        "ArchiveRule" => archive_rule(),
        "CopyTags" => boolean(),
        "CreateRule" => create_rule(),
        "CrossRegionCopyRules" => list(cross_region_copy_rule()()),
        "DeprecateRule" => deprecate_rule(),
        "FastRestoreRule" => fast_restore_rule(),
        "Name" => String.t(),
        "RetainRule" => retain_rule(),
        "ShareRules" => list(share_rule()()),
        "TagsToAdd" => list(tag()()),
        "VariableTags" => list(tag()())
      }
      
  """
  @type schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_request() :: %{}
      
  """
  @type delete_lifecycle_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      action() :: %{
        "CrossRegionCopy" => list(cross_region_copy_action()()),
        "Name" => String.t()
      }
      
  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule() :: %{
        "CronExpression" => String.t(),
        "Interval" => integer(),
        "IntervalUnit" => list(any()),
        "Location" => list(any()),
        "Scripts" => list(script()()),
        "Times" => list(String.t()())
      }
      
  """
  @type create_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retention_archive_tier() :: %{
        "Count" => integer(),
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }
      
  """
  @type retention_archive_tier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_request() :: %{}
      
  """
  @type get_lifecycle_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      cross_region_copy_retain_rule() :: %{
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }
      
  """
  @type cross_region_copy_retain_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lifecycle_policy_request() :: %{
        optional("CopyTags") => boolean(),
        optional("CreateInterval") => integer(),
        optional("CrossRegionCopyTargets") => list(cross_region_copy_target()()),
        optional("DefaultPolicy") => list(any()),
        optional("Exclusions") => exclusions(),
        optional("ExtendDeletion") => boolean(),
        optional("PolicyDetails") => policy_details(),
        optional("RetainInterval") => integer(),
        optional("Tags") => map(),
        required("Description") => String.t(),
        required("ExecutionRoleArn") => String.t(),
        required("State") => list(any())
      }
      
  """
  @type create_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script() :: %{
        "ExecuteOperationOnScriptFailure" => boolean(),
        "ExecutionHandler" => String.t(),
        "ExecutionHandlerService" => list(any()),
        "ExecutionTimeout" => integer(),
        "MaximumRetryCount" => integer(),
        "Stages" => list(list(any())())
      }
      
  """
  @type script() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_details() :: %{
        "Actions" => list(action()()),
        "CopyTags" => boolean(),
        "CreateInterval" => integer(),
        "CrossRegionCopyTargets" => list(cross_region_copy_target()()),
        "EventSource" => event_source(),
        "Exclusions" => exclusions(),
        "ExtendDeletion" => boolean(),
        "Parameters" => parameters(),
        "PolicyLanguage" => list(any()),
        "PolicyType" => list(any()),
        "ResourceLocations" => list(list(any())()),
        "ResourceType" => list(any()),
        "ResourceTypes" => list(list(any())()),
        "RetainInterval" => integer(),
        "Schedules" => list(schedule()()),
        "TargetTags" => list(tag()())
      }
      
  """
  @type policy_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      share_rule() :: %{
        "TargetAccounts" => list(String.t()()),
        "UnshareInterval" => integer(),
        "UnshareIntervalUnit" => list(any())
      }
      
  """
  @type share_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_response() :: %{
        "Policy" => lifecycle_policy()
      }
      
  """
  @type get_lifecycle_policy_response() :: %{String.t() => any()}

  @type create_lifecycle_policy_errors() ::
          limit_exceeded_exception() | internal_server_exception() | invalid_request_exception()

  @type delete_lifecycle_policy_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lifecycle_policies_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_lifecycle_policy_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_lifecycle_policy_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-01-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dlm",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DLM",
      signature_version: "v4",
      signing_name: "dlm",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Data Lifecycle Manager lifecycle policy. Amazon Data Lifecycle
  Manager supports the following policy types:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dlm%20CreateLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_lifecycle_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lifecycle_policy_errors()}

  def create_lifecycle_policy(%Client{} = client, options \\ []) do
    url_path = "/policies"

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
  Deletes the specified lifecycle policy and halts the automated operations that
  the policy specified.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dlm%20DeleteLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:policy_id` (`t:string`) The identifier of the lifecycle policy.

  ## Optional parameters:
  """

  @spec delete_lifecycle_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lifecycle_policy_errors()}

  def delete_lifecycle_policy(%Client{} = client, policy_id, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_id)}"

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
  Gets summary information about all or the specified data lifecycle policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dlm%20GetLifecyclePolicies&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:default_policy_type` (`t:enum["ALL|INSTANCE|VOLUME"]`) [Default policies
  only] Specifies the type of default policy to get. Specify one of the
  following:
  * `:policy_ids` (`t:list[com.amazonaws.dlm#PolicyId]`) The identifiers of the
  data lifecycle policies.
  * `:resource_types` (`t:list[com.amazonaws.dlm#ResourceTypeValues]`) The
  resource type.
  * `:state` (`t:enum["DISABLED|ENABLED|ERROR"]`) The activation state.
  * `:tags_to_add` (`t:list[com.amazonaws.dlm#TagFilter]`) The tags to add to
  objects created by the policy.
  * `:target_tags` (`t:list[com.amazonaws.dlm#TagFilter]`) The target tag for a
  policy.
  """

  @spec get_lifecycle_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_lifecycle_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lifecycle_policies_errors()}

  def get_lifecycle_policies(%Client{} = client, options \\ []) do
    url_path = "/policies"

    # Validate optional parameters
    optional_params = [
      default_policy_type: nil,
      policy_ids: nil,
      resource_types: nil,
      state: nil,
      tags_to_add: nil,
      target_tags: nil
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
      if opt_val = Keyword.get(options, :target_tags) do
        [{"targetTags", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :tags_to_add) do
        [{"tagsToAdd", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :state) do
        [{"state", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :resource_types) do
        [{"resourceTypes", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :policy_ids) do
        [{"policyIds", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :default_policy_type) do
        [{"defaultPolicyType", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :default_policy_type,
        :policy_ids,
        :resource_types,
        :state,
        :tags_to_add,
        :target_tags
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets detailed information about the specified lifecycle policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dlm%20GetLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:policy_id` (`t:string`) The identifier of the lifecycle policy.

  ## Optional parameters:
  """

  @spec get_lifecycle_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lifecycle_policy_errors()}

  def get_lifecycle_policy(%Client{} = client, policy_id, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_id)}"

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
  Lists the tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dlm%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

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
  Adds the specified tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dlm%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

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
  Removes the specified tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dlm%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.
  * `:tag_keys` (`t:list[com.amazonaws.dlm#TagKey]`) The tag keys.

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
  Updates the specified lifecycle policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dlm%20UpdateLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:policy_id` (`t:string`) The identifier of the lifecycle policy.

  ## Optional parameters:
  """

  @spec update_lifecycle_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_lifecycle_policy_errors()}

  def update_lifecycle_policy(%Client{} = client, policy_id, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_id)}"

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
