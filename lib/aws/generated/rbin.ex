# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Rbin do
  @moduledoc """
  This is the *Recycle Bin API Reference*. This documentation provides
  descriptions and syntax for each of the actions and data types in Recycle Bin.
  Recycle Bin is a resource recovery feature that enables you to restore
  accidentally deleted snapshots and EBS-backed AMIs. When using Recycle Bin, if
  your resources are deleted, they are retained in the Recycle Bin for a time
  period that you specify.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_request() :: %{
        optional("Description") => String.t(),
        optional("LockConfiguration") => lock_configuration(),
        optional("ResourceTags") => list(resource_tag()()),
        optional("Tags") => list(tag()()),
        required("ResourceType") => list(any()),
        required("RetentionPeriod") => retention_period()
      }
      
  """
  @type create_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockConfiguration" => lock_configuration(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any()),
        "Tags" => list(tag()())
      }
      
  """
  @type create_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_request() :: %{}
      
  """
  @type delete_rule_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_rule_response() :: %{}
      
  """
  @type delete_rule_response() :: %{}

  @typedoc """

  ## Example:
      
      get_rule_request() :: %{}
      
  """
  @type get_rule_request() :: %{}

  @typedoc """

  ## Example:
      
      get_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockConfiguration" => lock_configuration(),
        "LockEndTime" => non_neg_integer(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type get_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rules_request() :: %{
        optional("LockState") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceTags") => list(resource_tag()()),
        required("ResourceType") => list(any())
      }
      
  """
  @type list_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rules_response() :: %{
        "NextToken" => String.t(),
        "Rules" => list(rule_summary()())
      }
      
  """
  @type list_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lock_configuration() :: %{
        "UnlockDelay" => unlock_delay()
      }
      
  """
  @type lock_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lock_rule_request() :: %{
        required("LockConfiguration") => lock_configuration()
      }
      
  """
  @type lock_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lock_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockConfiguration" => lock_configuration(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type lock_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "ResourceTagKey" => String.t(),
        "ResourceTagValue" => String.t()
      }
      
  """
  @type resource_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retention_period() :: %{
        "RetentionPeriodUnit" => list(any()),
        "RetentionPeriodValue" => integer()
      }
      
  """
  @type retention_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_summary() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockState" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t()
      }
      
  """
  @type rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

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
      
      tag_resource_request() :: %{
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      unlock_delay() :: %{
        "UnlockDelayUnit" => list(any()),
        "UnlockDelayValue" => integer()
      }
      
  """
  @type unlock_delay() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unlock_rule_request() :: %{}
      
  """
  @type unlock_rule_request() :: %{}

  @typedoc """

  ## Example:
      
      unlock_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockConfiguration" => lock_configuration(),
        "LockEndTime" => non_neg_integer(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type unlock_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_rule_request() :: %{
        optional("Description") => String.t(),
        optional("ResourceTags") => list(resource_tag()()),
        optional("ResourceType") => list(any()),
        optional("RetentionPeriod") => retention_period()
      }
      
  """
  @type update_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockEndTime" => non_neg_integer(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type update_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type create_rule_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()

  @type delete_rule_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_rule_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_rules_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type lock_rule_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type unlock_rule_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type update_rule_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-06-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rbin",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "rbin",
      signature_version: "v4",
      signing_name: "rbin",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Recycle Bin retention rule. For more information, see [ Create Recycle
  Bin retention
  rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-create-rule)
  in the *Amazon Elastic Compute Cloud User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20CreateRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_rule(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rule_errors()}
  def create_rule(%Client{} = client, options \\ []) do
    url_path = "/rules"

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
  Deletes a Recycle Bin retention rule. For more information, see [ Delete Recycle
  Bin retention
  rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule)
  in the *Amazon Elastic Compute Cloud User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20DeleteRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identifier` (`t:string` required) The unique ID of the retention rule.
  ## Keyword parameters:
  """
  @spec delete_rule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, identifier, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  @doc """
  Gets information about a Recycle Bin retention rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20GetRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identifier` (`t:string` required) The unique ID of the retention rule.
  ## Keyword parameters:
  """
  @spec get_rule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rule_errors()}
  def get_rule(%Client{} = client, identifier, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"

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
  Lists the Recycle Bin retention rules in the Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20ListRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_rules(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rules_errors()}
  def list_rules(%Client{} = client, options \\ []) do
    url_path = "/list-rules"

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
  Lists the tags assigned to a retention rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  retention rule.
  ## Keyword parameters:
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
  Locks a retention rule. A locked retention rule can't be modified or deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20LockRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identifier` (`t:string` required) The unique ID of the retention rule.
  ## Keyword parameters:
  """
  @spec lock_rule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, lock_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, lock_rule_errors()}
  def lock_rule(%Client{} = client, identifier, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}/lock"

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
  Assigns tags to the specified retention rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  retention rule.
  ## Keyword parameters:
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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Unlocks a retention rule. After a retention rule is unlocked, it can be modified
  or deleted only after the unlock delay period expires.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20UnlockRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identifier` (`t:string` required) The unique ID of the retention rule.
  ## Keyword parameters:
  """
  @spec unlock_rule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, unlock_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unlock_rule_errors()}
  def unlock_rule(%Client{} = client, identifier, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}/unlock"

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
  Unassigns a tag from a retention rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  retention rule.
  * `:tag_keys` (`t:list[com.amazonaws.rbin#TagKey]` required) The tag keys of the
  tags to unassign. All tags that have the specified tag key are unassigned.
  ## Keyword parameters:
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
      204
    )
  end

  @doc """
  Updates an existing Recycle Bin retention rule. You can update a retention
  rule's description, resource tags, and retention period at any time after
  creation. You can't update a retention rule's resource type after creation.
  For more information, see [ Update Recycle Bin retention
  rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule)
  in the *Amazon Elastic Compute Cloud User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rbin%20UpdateRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identifier` (`t:string` required) The unique ID of the retention rule.
  ## Keyword parameters:
  """
  @spec update_rule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rule_errors()}
  def update_rule(%Client{} = client, identifier, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"

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
