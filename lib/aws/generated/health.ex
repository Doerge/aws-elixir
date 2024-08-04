# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Health do
  @moduledoc """
  Health The Health API provides access to the Health information that appears in
  the [Health Dashboard](https://health.aws.amazon.com/health/home). You can use
  the API operations to get information about events that might affect your
  Amazon Web Services and resources. You must have a Business, Enterprise
  On-Ramp, or Enterprise Support plan from [Amazon Web Services
  Support](http://aws.amazon.com/premiumsupport/) to use the Health API. If you
  call the Health API from an Amazon Web Services account that doesn't have a
  Business, Enterprise On-Ramp, or Enterprise Support plan, you receive a
  `SubscriptionRequiredException` error.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_events_for_organization_response() :: %{
        "events" => list(organization_event()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_events_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_locale() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_locale() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_entity_aggregate() :: %{
        "accountId" => String.t(),
        "count" => integer(),
        "statuses" => map()
      }
      
  """
  @type account_entity_aggregate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_event_filter() :: %{
        "awsAccountIds" => list(String.t()()),
        "endTime" => date_time_range(),
        "entityArns" => list(String.t()()),
        "entityValues" => list(String.t()()),
        "eventStatusCodes" => list(list(any())()),
        "eventTypeCategories" => list(list(any())()),
        "eventTypeCodes" => list(String.t()()),
        "lastUpdatedTime" => date_time_range(),
        "regions" => list(String.t()()),
        "services" => list(String.t()()),
        "startTime" => date_time_range()
      }
      
  """
  @type organization_event_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_details_for_organization_request() :: %{
        optional("locale") => String.t(),
        required("organizationEventDetailFilters") => list(event_account_filter()())
      }
      
  """
  @type describe_event_details_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_accounts_for_organization_response() :: %{
        "affectedAccounts" => list(String.t()()),
        "eventScopeCode" => list(any()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_affected_accounts_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_pagination_token() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_pagination_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      affected_entity() :: %{
        "awsAccountId" => String.t(),
        "entityArn" => String.t(),
        "entityUrl" => String.t(),
        "entityValue" => String.t(),
        "eventArn" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "statusCode" => list(any()),
        "tags" => map()
      }
      
  """
  @type affected_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_aggregates_response() :: %{
        "entityAggregates" => list(entity_aggregate()())
      }
      
  """
  @type describe_entity_aggregates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_details() :: %{
        "event" => event(),
        "eventDescription" => event_description(),
        "eventMetadata" => map()
      }
      
  """
  @type event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_event_details_error_item() :: %{
        "awsAccountId" => String.t(),
        "errorMessage" => String.t(),
        "errorName" => String.t(),
        "eventArn" => String.t()
      }
      
  """
  @type organization_event_details_error_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_event_details() :: %{
        "awsAccountId" => String.t(),
        "event" => event(),
        "eventDescription" => event_description(),
        "eventMetadata" => map()
      }
      
  """
  @type organization_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_filter() :: %{
        "entityArns" => list(String.t()()),
        "entityValues" => list(String.t()()),
        "eventArns" => list(String.t()()),
        "lastUpdatedTimes" => list(date_time_range()()),
        "statusCodes" => list(list(any())()),
        "tags" => list(map()())
      }
      
  """
  @type entity_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_description() :: %{
        "latestDescription" => String.t()
      }
      
  """
  @type event_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_entities_for_organization_request() :: %{
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("organizationEntityAccountFilters") => list(entity_account_filter()()),
        optional("organizationEntityFilters") => list(event_account_filter()())
      }
      
  """
  @type describe_affected_entities_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_entities_for_organization_response() :: %{
        "entities" => list(affected_entity()()),
        "failedSet" => list(organization_affected_entities_error_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_affected_entities_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_account_filter() :: %{
        "awsAccountId" => String.t(),
        "eventArn" => String.t()
      }
      
  """
  @type event_account_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_aggregates_for_organization_response() :: %{
        "organizationEntityAggregates" => list(organization_entity_aggregate()())
      }
      
  """
  @type describe_entity_aggregates_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_aggregates_for_organization_request() :: %{
        optional("awsAccountIds") => list(String.t()()),
        required("eventArns") => list(String.t()())
      }
      
  """
  @type describe_entity_aggregates_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_details_request() :: %{
        optional("locale") => String.t(),
        required("eventArns") => list(String.t()())
      }
      
  """
  @type describe_event_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_types_response() :: %{
        "eventTypes" => list(event_type()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_event_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_aggregates_request() :: %{
        optional("eventArns") => list(String.t()())
      }
      
  """
  @type describe_entity_aggregates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_aggregate() :: %{
        "count" => integer(),
        "eventArn" => String.t(),
        "statuses" => map()
      }
      
  """
  @type entity_aggregate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_entities_response() :: %{
        "entities" => list(affected_entity()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_affected_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_health_service_status_for_organization_response() :: %{
        "healthServiceAccessStatusForOrganization" => String.t()
      }
      
  """
  @type describe_health_service_status_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_entity_aggregate() :: %{
        "accounts" => list(account_entity_aggregate()()),
        "count" => integer(),
        "eventArn" => String.t(),
        "statuses" => map()
      }
      
  """
  @type organization_entity_aggregate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_accounts_for_organization_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("eventArn") => String.t()
      }
      
  """
  @type describe_affected_accounts_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_account_filter() :: %{
        "awsAccountId" => String.t(),
        "eventArn" => String.t(),
        "statusCodes" => list(list(any())())
      }
      
  """
  @type entity_account_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_affected_entities_error_item() :: %{
        "awsAccountId" => String.t(),
        "errorMessage" => String.t(),
        "errorName" => String.t(),
        "eventArn" => String.t()
      }
      
  """
  @type organization_affected_entities_error_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      date_time_range() :: %{
        "from" => non_neg_integer(),
        "to" => non_neg_integer()
      }
      
  """
  @type date_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_filter() :: %{
        "availabilityZones" => list(String.t()()),
        "endTimes" => list(date_time_range()()),
        "entityArns" => list(String.t()()),
        "entityValues" => list(String.t()()),
        "eventArns" => list(String.t()()),
        "eventStatusCodes" => list(list(any())()),
        "eventTypeCategories" => list(list(any())()),
        "eventTypeCodes" => list(String.t()()),
        "lastUpdatedTimes" => list(date_time_range()()),
        "regions" => list(String.t()()),
        "services" => list(String.t()()),
        "startTimes" => list(date_time_range()()),
        "tags" => list(map()())
      }
      
  """
  @type event_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_aggregates_request() :: %{
        optional("filter") => event_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("aggregateField") => list(any())
      }
      
  """
  @type describe_event_aggregates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_for_organization_request() :: %{
        optional("filter") => organization_event_filter(),
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_events_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "arn" => String.t(),
        "availabilityZone" => String.t(),
        "endTime" => non_neg_integer(),
        "eventScopeCode" => list(any()),
        "eventTypeCategory" => list(any()),
        "eventTypeCode" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "region" => String.t(),
        "service" => String.t(),
        "startTime" => non_neg_integer(),
        "statusCode" => list(any())
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_request() :: %{
        optional("filter") => event_filter(),
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_aggregates_response() :: %{
        "eventAggregates" => list(event_aggregate()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_event_aggregates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_type_filter() :: %{
        "eventTypeCategories" => list(list(any())()),
        "eventTypeCodes" => list(String.t()()),
        "services" => list(String.t()())
      }
      
  """
  @type event_type_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_details_for_organization_response() :: %{
        "failedSet" => list(organization_event_details_error_item()()),
        "successfulSet" => list(organization_event_details()())
      }
      
  """
  @type describe_event_details_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_types_request() :: %{
        optional("filter") => event_type_filter(),
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_event_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_type() :: %{
        "category" => list(any()),
        "code" => String.t(),
        "service" => String.t()
      }
      
  """
  @type event_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_event() :: %{
        "arn" => String.t(),
        "endTime" => non_neg_integer(),
        "eventScopeCode" => list(any()),
        "eventTypeCategory" => list(any()),
        "eventTypeCode" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "region" => String.t(),
        "service" => String.t(),
        "startTime" => non_neg_integer(),
        "statusCode" => list(any())
      }
      
  """
  @type organization_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_details_response() :: %{
        "failedSet" => list(event_details_error_item()()),
        "successfulSet" => list(event_details()())
      }
      
  """
  @type describe_event_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_details_error_item() :: %{
        "errorMessage" => String.t(),
        "errorName" => String.t(),
        "eventArn" => String.t()
      }
      
  """
  @type event_details_error_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_aggregate() :: %{
        "aggregateValue" => String.t(),
        "count" => integer()
      }
      
  """
  @type event_aggregate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_response() :: %{
        "events" => list(event()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_entities_request() :: %{
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("filter") => entity_filter()
      }
      
  """
  @type describe_affected_entities_request() :: %{String.t() => any()}

  @type describe_affected_accounts_for_organization_errors() :: invalid_pagination_token()

  @type describe_affected_entities_errors() :: invalid_pagination_token() | unsupported_locale()

  @type describe_affected_entities_for_organization_errors() ::
          invalid_pagination_token() | unsupported_locale()

  @type describe_event_aggregates_errors() :: invalid_pagination_token()

  @type describe_event_details_errors() :: unsupported_locale()

  @type describe_event_details_for_organization_errors() :: unsupported_locale()

  @type describe_event_types_errors() :: invalid_pagination_token() | unsupported_locale()

  @type describe_events_errors() :: invalid_pagination_token() | unsupported_locale()

  @type describe_events_for_organization_errors() ::
          invalid_pagination_token() | unsupported_locale()

  @type disable_health_service_access_for_organization_errors() ::
          concurrent_modification_exception()

  @type enable_health_service_access_for_organization_errors() ::
          concurrent_modification_exception()

  def metadata do
    %{
      api_version: "2016-08-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "health",
      global?: true,
      hostname: "global.health.amazonaws.com",
      protocol: "json",
      service_id: "Health",
      signature_version: "v4",
      signing_name: "health",
      target_prefix: "AWSHealth_20160804"
    }
  end

  @doc """
   
  Returns a list of accounts in the organization from Organizations that are
  affected by the provided event. For more information about the different types
  of Health events, see
  [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).
  Before you can call this operation, you must first enable Health to work with
  Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
  operation from your organization's management account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeAffectedAccountsForOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_affected_accounts_for_organization_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      required("eventArn") => String.t()
    }
  """
  @spec describe_affected_accounts_for_organization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_affected_accounts_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_affected_accounts_for_organization_errors()}
  def describe_affected_accounts_for_organization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAffectedAccountsForOrganization", input, options)
  end

  @doc """
   
  Returns a list of entities that have been affected by the specified events,
  based on the specified filter criteria. Entities can refer to individual
  customer resources, groups of customer resources, or any other construct,
  depending on the Amazon Web Service. Events that have impact beyond that of
  the affected entities, or where the extent of impact is unknown, include at
  least one entity indicating this. At least one event ARN is required.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeAffectedEntities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_affected_entities_request`)
    %{
      optional("locale") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      required("filter") => entity_filter()
    }
  """
  @spec describe_affected_entities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_affected_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_affected_entities_errors()}
  def describe_affected_entities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAffectedEntities", input, options)
  end

  @doc """
   
  Returns a list of entities that have been affected by one or more events for one
  or more accounts in your organization in Organizations, based on the filter
  criteria. Entities can refer to individual customer resources, groups of
  customer resources, or any other construct, depending on the Amazon Web
  Service. At least one event Amazon Resource Name (ARN) and account ID are
  required.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeAffectedEntitiesForOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_affected_entities_for_organization_request`)
    %{
      optional("locale") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("organizationEntityAccountFilters") => list(entity_account_filter()()),
      optional("organizationEntityFilters") => list(event_account_filter()())
    }
  """
  @spec describe_affected_entities_for_organization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_affected_entities_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_affected_entities_for_organization_errors()}
  def describe_affected_entities_for_organization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAffectedEntitiesForOrganization", input, options)
  end

  @doc """
   
  Returns the number of entities that are affected by each of the specified
  events.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeEntityAggregates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_entity_aggregates_request`)
    %{
      optional("eventArns") => list(String.t()())
    }
  """
  @spec describe_entity_aggregates(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_entity_aggregates_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_entity_aggregates(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEntityAggregates", input, options)
  end

  @doc """
   
  Returns a list of entity aggregates for your Organizations that are affected by
  each of the specified events.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeEntityAggregatesForOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_entity_aggregates_for_organization_request`)
    %{
      optional("awsAccountIds") => list(String.t()()),
      required("eventArns") => list(String.t()())
    }
  """
  @spec describe_entity_aggregates_for_organization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_entity_aggregates_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_entity_aggregates_for_organization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEntityAggregatesForOrganization", input, options)
  end

  @doc """
   
  Returns the number of events of each event type (issue, scheduled change, and
  account notification). If no filter is specified, the counts of all events in
  each category are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeEventAggregates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_event_aggregates_request`)
    %{
      optional("filter") => event_filter(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      required("aggregateField") => list(any())
    }
  """
  @spec describe_event_aggregates(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_event_aggregates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_aggregates_errors()}
  def describe_event_aggregates(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventAggregates", input, options)
  end

  @doc """
   
  Returns detailed information about one or more specified events. Information
  includes standard event data (Amazon Web Services Region, service, and so on,
  as returned by
  [DescribeEvents](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html)),
  a detailed event description, and possible additional metadata that depends
  upon the nature of the event. Affected entities are not included. To retrieve
  the entities, use the
  [DescribeAffectedEntities](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html)
  operation. If a specified event can't be retrieved, an error message is
  returned for that event.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeEventDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_event_details_request`)
    %{
      optional("locale") => String.t(),
      required("eventArns") => list(String.t()())
    }
  """
  @spec describe_event_details(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_event_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_details_errors()}
  def describe_event_details(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventDetails", input, options)
  end

  @doc """
   
  Returns detailed information about one or more specified events for one or more
  Amazon Web Services accounts in your organization. This information includes
  standard event data (such as the Amazon Web Services Region and service), an
  event description, and (depending on the event) possible metadata. This
  operation doesn't return affected entities, such as the resources related to
  the event. To return affected entities, use the
  [DescribeAffectedEntitiesForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html)
  operation. Before you can call this operation, you must first enable Health to
  work with Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
  operation from your organization's management account. When you call the
  `DescribeEventDetailsForOrganization` operation, specify the
  `organizationEventDetailFilters` object in the request. Depending on the
  Health event type, note the following differences:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeEventDetailsForOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_event_details_for_organization_request`)
    %{
      optional("locale") => String.t(),
      required("organizationEventDetailFilters") => list(event_account_filter()())
    }
  """
  @spec describe_event_details_for_organization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_event_details_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_details_for_organization_errors()}
  def describe_event_details_for_organization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventDetailsForOrganization", input, options)
  end

  @doc """
   
  Returns the event types that meet the specified filter criteria. You can use
  this API operation to find information about the Health event, such as the
  category, Amazon Web Service, and event code. The metadata for each event
  appears in the
  [EventType](https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html)
  object. If you don't specify a filter criteria, the API operation returns all
  event types, in no particular order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeEventTypes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_event_types_request`)
    %{
      optional("filter") => event_type_filter(),
      optional("locale") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec describe_event_types(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_event_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_types_errors()}
  def describe_event_types(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventTypes", input, options)
  end

  @doc """
   
  Returns information about events that meet the specified filter criteria. Events
  are returned in a summary form and do not include the detailed description,
  any additional metadata that depends on the event type, or any affected
  resources. To retrieve that information, use the
  [DescribeEventDetails](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html)
  and
  [DescribeAffectedEntities](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html)
  operations. If no filter criteria are specified, all events are returned.
  Results are sorted by `lastModifiedTime`, starting with the most recent event.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_events_request`)
    %{
      optional("filter") => event_filter(),
      optional("locale") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec describe_events(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_events_errors()}
  def describe_events(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
   
  Returns information about events across your organization in Organizations. You
  can use the`filters` parameter to specify the events that you want to return.
  Events are returned in a summary form and don't include the affected accounts,
  detailed description, any additional metadata that depends on the event type,
  or any affected resources. To retrieve that information, use the following
  operations:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeEventsForOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_events_for_organization_request`)
    %{
      optional("filter") => organization_event_filter(),
      optional("locale") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec describe_events_for_organization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_events_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_events_for_organization_errors()}
  def describe_events_for_organization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventsForOrganization", input, options)
  end

  @doc """
   
  This operation provides status information on enabling or disabling Health to
  work with your organization. To call this operation, you must use the
  organization's management account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DescribeHealthServiceStatusForOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """
  @spec describe_health_service_status_for_organization(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, describe_health_service_status_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_health_service_status_for_organization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeHealthServiceStatusForOrganization",
      input,
      options
    )
  end

  @doc """
   
  Disables Health from working with Organizations. To call this operation, you
  must sign in to the organization's management account. For more information,
  see [Aggregating Health
  events](https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html) in
  the *Health User Guide*. This operation doesn't remove the service-linked role
  from the management account in your organization. You must use the IAM
  console, API, or Command Line Interface (CLI) to remove the service-linked
  role. For more information, see [Deleting a Service-Linked
  Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role)
  in the *IAM User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20DisableHealthServiceAccessForOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """
  @spec disable_health_service_access_for_organization(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_health_service_access_for_organization_errors()}
  def disable_health_service_access_for_organization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DisableHealthServiceAccessForOrganization",
      input,
      options
    )
  end

  @doc """
   
  Enables Health to work with Organizations. You can use the organizational view
  feature to aggregate events from all Amazon Web Services accounts in your
  organization in a centralized location. This operation also creates a
  service-linked role for the management account in the organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=health%20EnableHealthServiceAccessForOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """
  @spec enable_health_service_access_for_organization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_health_service_access_for_organization_errors()}
  def enable_health_service_access_for_organization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableHealthServiceAccessForOrganization", input, options)
  end
end
