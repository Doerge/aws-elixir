# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Codestarnotifications do
  @moduledoc """
  This AWS CodeStar Notifications API Reference provides descriptions and usage
  examples of the operations and data types for the AWS CodeStar Notifications
  API. You can use the AWS CodeStar Notifications API to work with the following
  objects: Notification rules, by calling the following:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_notification_rule_result() :: %{
        "Arn" => String.t()
      }
      
  """
  @type create_notification_rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Arn") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_result() :: %{}
      
  """
  @type untag_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      list_notification_rules_request() :: %{
        optional("Filters") => list(list_notification_rules_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_notification_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsubscribe_request() :: %{
        required("Arn") => String.t(),
        required("TargetAddress") => String.t()
      }
      
  """
  @type unsubscribe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_target_result() :: %{}
      
  """
  @type delete_target_result() :: %{}

  @typedoc """

  ## Example:
      
      list_event_types_filter() :: %{
        "Name" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type list_event_types_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_targets_result() :: %{
        "NextToken" => String.t(),
        "Targets" => list(target_summary()())
      }
      
  """
  @type list_targets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notification_rule_request() :: %{
        required("Arn") => String.t()
      }
      
  """
  @type delete_notification_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_notification_rule_result() :: %{}
      
  """
  @type update_notification_rule_result() :: %{}

  @typedoc """

  ## Example:
      
      target() :: %{
        "TargetAddress" => String.t(),
        "TargetType" => String.t()
      }
      
  """
  @type target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_type_summary() :: %{
        "EventTypeId" => String.t(),
        "EventTypeName" => String.t(),
        "ResourceType" => String.t(),
        "ServiceName" => String.t()
      }
      
  """
  @type event_type_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notification_rule_result() :: %{
        "Arn" => String.t()
      }
      
  """
  @type delete_notification_rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_summary() :: %{
        "TargetAddress" => String.t(),
        "TargetStatus" => list(any()),
        "TargetType" => String.t()
      }
      
  """
  @type target_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_target_request() :: %{
        optional("ForceUnsubscribeAll") => boolean(),
        required("TargetAddress") => String.t()
      }
      
  """
  @type delete_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notification_rules_filter() :: %{
        "Name" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type list_notification_rules_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_types_result() :: %{
        "EventTypes" => list(event_type_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_event_types_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_notification_rule_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Status") => list(any()),
        optional("Tags") => map(),
        required("DetailType") => list(any()),
        required("EventTypeIds") => list(String.t()()),
        required("Name") => String.t(),
        required("Resource") => String.t(),
        required("Targets") => list(target()())
      }
      
  """
  @type create_notification_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribe_result() :: %{
        "Arn" => String.t()
      }
      
  """
  @type subscribe_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_notification_rule_request() :: %{
        optional("DetailType") => list(any()),
        optional("EventTypeIds") => list(String.t()()),
        optional("Name") => String.t(),
        optional("Status") => list(any()),
        optional("Targets") => list(target()()),
        required("Arn") => String.t()
      }
      
  """
  @type update_notification_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_result() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_targets_request() :: %{
        optional("Filters") => list(list_targets_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsubscribe_result() :: %{
        "Arn" => String.t()
      }
      
  """
  @type unsubscribe_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("Arn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribe_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("Arn") => String.t(),
        required("Target") => target()
      }
      
  """
  @type subscribe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_result() :: %{
        "Tags" => map()
      }
      
  """
  @type tag_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notification_rules_result() :: %{
        "NextToken" => String.t(),
        "NotificationRules" => list(notification_rule_summary()())
      }
      
  """
  @type list_notification_rules_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notification_rule_request() :: %{
        required("Arn") => String.t()
      }
      
  """
  @type describe_notification_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notification_rule_result() :: %{
        "Arn" => String.t(),
        "CreatedBy" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "DetailType" => list(any()),
        "EventTypes" => list(event_type_summary()()),
        "LastModifiedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "Resource" => String.t(),
        "Status" => list(any()),
        "Tags" => map(),
        "Targets" => list(target_summary()())
      }
      
  """
  @type describe_notification_rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_rule_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type notification_rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_types_request() :: %{
        optional("Filters") => list(list_event_types_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_event_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_targets_filter() :: %{
        "Name" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type list_targets_filter() :: %{String.t() => any()}

  @type create_notification_rule_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | configuration_exception()

  @type delete_notification_rule_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()

  @type delete_target_errors() :: validation_exception()

  @type describe_notification_rule_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_event_types_errors() :: validation_exception() | invalid_next_token_exception()

  @type list_notification_rules_errors() ::
          validation_exception() | invalid_next_token_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type list_targets_errors() :: validation_exception() | invalid_next_token_exception()

  @type subscribe_errors() ::
          validation_exception() | resource_not_found_exception() | configuration_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | resource_not_found_exception()

  @type unsubscribe_errors() :: validation_exception()

  @type untag_resource_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | resource_not_found_exception()

  @type update_notification_rule_errors() ::
          validation_exception() | resource_not_found_exception() | configuration_exception()

  def metadata do
    %{
      api_version: "2019-10-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codestar-notifications",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "codestar notifications",
      signature_version: "v4",
      signing_name: "codestar-notifications",
      target_prefix: nil
    }
  end

  @doc """
  Creates a notification rule for a resource. The rule specifies the events you
  want notifications about and the targets (such as Chatbot topics or Chatbot
  clients configured for Slack) where you want to receive them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20CreateNotificationRule&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_notification_rule(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_notification_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_notification_rule_errors()}

  def create_notification_rule(%Client{} = client, options \\ []) do
    url_path = "/createNotificationRule"

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
  Deletes a notification rule for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20DeleteNotificationRule&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_notification_rule(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_notification_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_notification_rule_errors()}

  def delete_notification_rule(%Client{} = client, options \\ []) do
    url_path = "/deleteNotificationRule"

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
  Deletes a specified target for notifications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20DeleteTarget&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_target(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_target_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_target_errors()}

  def delete_target(%Client{} = client, options \\ []) do
    url_path = "/deleteTarget"

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
  Returns information about a specified notification rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20DescribeNotificationRule&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_notification_rule(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_notification_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_notification_rule_errors()}

  def describe_notification_rule(%Client{} = client, options \\ []) do
    url_path = "/describeNotificationRule"

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
  Returns information about the event types available for configuring
  notifications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20ListEventTypes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_event_types(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_event_types_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_event_types_errors()}

  def list_event_types(%Client{} = client, options \\ []) do
    url_path = "/listEventTypes"

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
  Returns a list of the notification rules for an Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20ListNotificationRules&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_notification_rules(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_notification_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notification_rules_errors()}

  def list_notification_rules(%Client{} = client, options \\ []) do
    url_path = "/listNotificationRules"

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
  Returns a list of the tags associated with a notification rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, options \\ []) do
    url_path = "/listTagsForResource"

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
  Returns a list of the notification rule targets for an Amazon Web Services
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20ListTargets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_targets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_targets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_targets_errors()}

  def list_targets(%Client{} = client, options \\ []) do
    url_path = "/listTargets"

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
  Creates an association between a notification rule and an Chatbot topic or
  Chatbot client so that the associated target can receive notifications when
  the events described in the rule are triggered.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20Subscribe&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec subscribe(AWS.Client.t(), Keyword.t()) ::
          {:ok, subscribe_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, subscribe_errors()}

  def subscribe(%Client{} = client, options \\ []) do
    url_path = "/subscribe"

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
  Associates a set of provided tags with a notification rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, options \\ []) do
    url_path = "/tagResource"

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
  Removes an association between a notification rule and an Chatbot topic so that
  subscribers to that topic stop receiving notifications when the events
  described in the rule are triggered.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20Unsubscribe&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec unsubscribe(AWS.Client.t(), Keyword.t()) ::
          {:ok, unsubscribe_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unsubscribe_errors()}

  def unsubscribe(%Client{} = client, options \\ []) do
    url_path = "/unsubscribe"

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
  Removes the association between one or more provided tags and a notification
  rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) of the notification rule
  from which to remove the tags.
  * `:tag_keys` (`t:list[com.amazonaws.codestarnotifications#TagKey]`) The key
  names of the tags to remove.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, arn, tag_keys, options \\ []) when is_binary(tag_keys) do
    url_path = "/untagResource/#{AWS.Util.encode_uri(arn)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a notification rule for a resource. You can change the events that
  trigger the notification rule, the status of the rule, and the targets that
  receive the notifications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codestarnotifications%20UpdateNotificationRule&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_notification_rule(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_notification_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_notification_rule_errors()}

  def update_notification_rule(%Client{} = client, options \\ []) do
    url_path = "/updateNotificationRule"

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
end
