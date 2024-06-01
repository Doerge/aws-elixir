# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Support do
  @moduledoc """
  Amazon Web Services Support The *Amazon Web Services Support API Reference* is
  intended for programmers who need detailed information about the Amazon Web
  Services Support operations and data types. You can use the API to manage your
  support cases programmatically. The Amazon Web Services Support API uses HTTP
  methods that return results in JSON format.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_communications_request() :: %{
        optional("afterTime") => String.t(),
        optional("beforeTime") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("caseId") => String.t()
      }
      
  """
  @type describe_communications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_category_specific_summary() :: %{
        "costOptimizing" => trusted_advisor_cost_optimizing_summary()
      }
      
  """
  @type trusted_advisor_category_specific_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_severity_levels_request() :: %{
        optional("language") => String.t()
      }
      
  """
  @type describe_severity_levels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supported_language() :: %{
        "code" => String.t(),
        "display" => String.t(),
        "language" => String.t()
      }
      
  """
  @type supported_language() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type attachment_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      communication() :: %{
        "attachmentSet" => list(attachment_details()()),
        "body" => String.t(),
        "caseId" => String.t(),
        "submittedBy" => String.t(),
        "timeCreated" => String.t()
      }
      
  """
  @type communication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_trusted_advisor_check_request() :: %{
        required("checkId") => String.t()
      }
      
  """
  @type refresh_trusted_advisor_check_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_check_refresh_status() :: %{
        "checkId" => String.t(),
        "millisUntilNextRefreshable" => float(),
        "status" => String.t()
      }
      
  """
  @type trusted_advisor_check_refresh_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_attachments_to_set_request() :: %{
        optional("attachmentSetId") => String.t(),
        required("attachments") => list(attachment()())
      }
      
  """
  @type add_attachments_to_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_services_request() :: %{
        optional("language") => String.t(),
        optional("serviceCodeList") => list(String.t()())
      }
      
  """
  @type describe_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_case_request() :: %{
        optional("attachmentSetId") => String.t(),
        optional("categoryCode") => String.t(),
        optional("ccEmailAddresses") => list(String.t()()),
        optional("issueType") => String.t(),
        optional("language") => String.t(),
        optional("serviceCode") => String.t(),
        optional("severityCode") => String.t(),
        required("communicationBody") => String.t(),
        required("subject") => String.t()
      }
      
  """
  @type create_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_result_request() :: %{
        optional("language") => String.t(),
        required("checkId") => String.t()
      }
      
  """
  @type describe_trusted_advisor_check_result_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      case_id_not_found() :: %{
        "message" => String.t()
      }
      
  """
  @type case_id_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      date_interval() :: %{
        "endDateTime" => String.t(),
        "startDateTime" => String.t()
      }
      
  """
  @type date_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_summaries_request() :: %{
        required("checkIds") => list(String.t()())
      }
      
  """
  @type describe_trusted_advisor_check_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recent_case_communications() :: %{
        "communications" => list(communication()()),
        "nextToken" => String.t()
      }
      
  """
  @type recent_case_communications() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment() :: %{
        "data" => binary(),
        "fileName" => String.t()
      }
      
  """
  @type attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_case_response() :: %{
        "caseId" => String.t()
      }
      
  """
  @type create_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "categories" => list(category()()),
        "code" => String.t(),
        "name" => String.t()
      }
      
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_refresh_statuses_response() :: %{
        "statuses" => list(trusted_advisor_check_refresh_status()())
      }
      
  """
  @type describe_trusted_advisor_check_refresh_statuses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_checks_request() :: %{
        required("language") => String.t()
      }
      
  """
  @type describe_trusted_advisor_checks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_supported_languages_request() :: %{
        required("categoryCode") => String.t(),
        required("issueType") => String.t(),
        required("serviceCode") => String.t()
      }
      
  """
  @type describe_supported_languages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_attachments_to_set_response() :: %{
        "attachmentSetId" => String.t(),
        "expiryTime" => String.t()
      }
      
  """
  @type add_attachments_to_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_check_description() :: %{
        "category" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "metadata" => list(String.t()()),
        "name" => String.t()
      }
      
  """
  @type trusted_advisor_check_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_services_response() :: %{
        "services" => list(service()())
      }
      
  """
  @type describe_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_attachment_request() :: %{
        required("attachmentId") => String.t()
      }
      
  """
  @type describe_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_checks_response() :: %{
        "checks" => list(trusted_advisor_check_description()())
      }
      
  """
  @type describe_trusted_advisor_checks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_communication_to_case_request() :: %{
        optional("attachmentSetId") => String.t(),
        optional("caseId") => String.t(),
        optional("ccEmailAddresses") => list(String.t()()),
        required("communicationBody") => String.t()
      }
      
  """
  @type add_communication_to_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_resource_detail() :: %{
        "isSuppressed" => boolean(),
        "metadata" => list(String.t()()),
        "region" => String.t(),
        "resourceId" => String.t(),
        "status" => String.t()
      }
      
  """
  @type trusted_advisor_resource_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      case_creation_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type case_creation_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_details() :: %{
        "attachmentId" => String.t(),
        "fileName" => String.t()
      }
      
  """
  @type attachment_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_set_expired() :: %{
        "message" => String.t()
      }
      
  """
  @type attachment_set_expired() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_refresh_statuses_request() :: %{
        required("checkIds") => list(String.t()())
      }
      
  """
  @type describe_trusted_advisor_check_refresh_statuses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_trusted_advisor_check_response() :: %{
        "status" => trusted_advisor_check_refresh_status()
      }
      
  """
  @type refresh_trusted_advisor_check_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_severity_levels_response() :: %{
        "severityLevels" => list(severity_level()())
      }
      
  """
  @type describe_severity_levels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_case_request() :: %{
        optional("caseId") => String.t()
      }
      
  """
  @type resolve_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_cost_optimizing_summary() :: %{
        "estimatedMonthlySavings" => float(),
        "estimatedPercentMonthlySavings" => float()
      }
      
  """
  @type trusted_advisor_cost_optimizing_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cases_response() :: %{
        "cases" => list(case_details()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_cases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_create_case_options_response() :: %{
        "communicationTypes" => list(communication_type_options()()),
        "languageAvailability" => String.t()
      }
      
  """
  @type describe_create_case_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_supported_languages_response() :: %{
        "supportedLanguages" => list(supported_language()())
      }
      
  """
  @type describe_supported_languages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      case_details() :: %{
        "caseId" => String.t(),
        "categoryCode" => String.t(),
        "ccEmailAddresses" => list(String.t()()),
        "displayId" => String.t(),
        "language" => String.t(),
        "recentCommunications" => recent_case_communications(),
        "serviceCode" => String.t(),
        "severityCode" => String.t(),
        "status" => String.t(),
        "subject" => String.t(),
        "submittedBy" => String.t(),
        "timeCreated" => String.t()
      }
      
  """
  @type case_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_check_result() :: %{
        "categorySpecificSummary" => trusted_advisor_category_specific_summary(),
        "checkId" => String.t(),
        "flaggedResources" => list(trusted_advisor_resource_detail()()),
        "resourcesSummary" => trusted_advisor_resources_summary(),
        "status" => String.t(),
        "timestamp" => String.t()
      }
      
  """
  @type trusted_advisor_check_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_result_response() :: %{
        "result" => trusted_advisor_check_result()
      }
      
  """
  @type describe_trusted_advisor_check_result_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_create_case_options_request() :: %{
        required("categoryCode") => String.t(),
        required("issueType") => String.t(),
        required("language") => String.t(),
        required("serviceCode") => String.t()
      }
      
  """
  @type describe_create_case_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_communications_response() :: %{
        "communications" => list(communication()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_communications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_set_id_not_found() :: %{
        "message" => String.t()
      }
      
  """
  @type attachment_set_id_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_attachment_response() :: %{
        "attachment" => attachment()
      }
      
  """
  @type describe_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_communication_to_case_response() :: %{
        "result" => boolean()
      }
      
  """
  @type add_communication_to_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cases_request() :: %{
        optional("afterTime") => String.t(),
        optional("beforeTime") => String.t(),
        optional("caseIdList") => list(String.t()()),
        optional("displayId") => String.t(),
        optional("includeCommunications") => boolean(),
        optional("includeResolvedCases") => boolean(),
        optional("language") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_cases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      communication_type_options() :: %{
        "datesWithoutSupport" => list(date_interval()()),
        "supportedHours" => list(supported_hour()()),
        "type" => String.t()
      }
      
  """
  @type communication_type_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_summaries_response() :: %{
        "summaries" => list(trusted_advisor_check_summary()())
      }
      
  """
  @type describe_trusted_advisor_check_summaries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supported_hour() :: %{
        "endTime" => String.t(),
        "startTime" => String.t()
      }
      
  """
  @type supported_hour() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_resources_summary() :: %{
        "resourcesFlagged" => float(),
        "resourcesIgnored" => float(),
        "resourcesProcessed" => float(),
        "resourcesSuppressed" => float()
      }
      
  """
  @type trusted_advisor_resources_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      severity_level() :: %{
        "code" => String.t(),
        "name" => String.t()
      }
      
  """
  @type severity_level() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      category() :: %{
        "code" => String.t(),
        "name" => String.t()
      }
      
  """
  @type category() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_set_size_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type attachment_set_size_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_check_summary() :: %{
        "categorySpecificSummary" => trusted_advisor_category_specific_summary(),
        "checkId" => String.t(),
        "hasFlaggedResources" => boolean(),
        "resourcesSummary" => trusted_advisor_resources_summary(),
        "status" => String.t(),
        "timestamp" => String.t()
      }
      
  """
  @type trusted_advisor_check_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_case_response() :: %{
        "finalCaseStatus" => String.t(),
        "initialCaseStatus" => String.t()
      }
      
  """
  @type resolve_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_id_not_found() :: %{
        "message" => String.t()
      }
      
  """
  @type attachment_id_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_attachment_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type describe_attachment_limit_exceeded() :: %{String.t() => any()}

  @type add_attachments_to_set_errors() ::
          attachment_set_size_limit_exceeded()
          | internal_server_error()
          | attachment_set_id_not_found()
          | attachment_set_expired()
          | attachment_limit_exceeded()

  @type add_communication_to_case_errors() ::
          internal_server_error()
          | attachment_set_id_not_found()
          | attachment_set_expired()
          | case_id_not_found()

  @type create_case_errors() ::
          internal_server_error()
          | attachment_set_id_not_found()
          | attachment_set_expired()
          | case_creation_limit_exceeded()

  @type describe_attachment_errors() ::
          describe_attachment_limit_exceeded()
          | attachment_id_not_found()
          | internal_server_error()

  @type describe_cases_errors() :: internal_server_error() | case_id_not_found()

  @type describe_communications_errors() :: internal_server_error() | case_id_not_found()

  @type describe_create_case_options_errors() :: throttling_exception() | internal_server_error()

  @type describe_services_errors() :: internal_server_error()

  @type describe_severity_levels_errors() :: internal_server_error()

  @type describe_supported_languages_errors() :: throttling_exception() | internal_server_error()

  @type describe_trusted_advisor_check_refresh_statuses_errors() ::
          throttling_exception() | internal_server_error()

  @type describe_trusted_advisor_check_result_errors() ::
          throttling_exception() | internal_server_error()

  @type describe_trusted_advisor_check_summaries_errors() ::
          throttling_exception() | internal_server_error()

  @type describe_trusted_advisor_checks_errors() ::
          throttling_exception() | internal_server_error()

  @type refresh_trusted_advisor_check_errors() :: internal_server_error()

  @type resolve_case_errors() :: internal_server_error() | case_id_not_found()

  def metadata do
    %{
      api_version: "2013-04-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "support",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Support",
      signature_version: "v4",
      signing_name: "support",
      target_prefix: "AWSSupport_20130415"
    }
  end

  @doc """
  Adds one or more attachments to an attachment set. An attachment set is a
  temporary container for attachments that you add to a case or case
  communication. The set is available for 1 hour after it's created. The
  `expiryTime` returned in the response is when the set expires.
  """
  @spec add_attachments_to_set(AWS.Client.t(), add_attachments_to_set_request(), Keyword.t()) ::
          {:ok, add_attachments_to_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_attachments_to_set_errors()}
  def add_attachments_to_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddAttachmentsToSet", input, options)
  end

  @doc """
  Adds additional customer communication to an Amazon Web Services Support case.
  Use the `caseId` parameter to identify the case to which to add communication.
  You can list a set of email addresses to copy on the communication by using
  the `ccEmailAddresses` parameter. The `communicationBody` value contains the
  text of the communication.
  """
  @spec add_communication_to_case(
          AWS.Client.t(),
          add_communication_to_case_request(),
          Keyword.t()
        ) ::
          {:ok, add_communication_to_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_communication_to_case_errors()}
  def add_communication_to_case(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddCommunicationToCase", input, options)
  end

  @doc """
  Creates a case in the Amazon Web Services Support Center. This operation is
  similar to how you create a case in the Amazon Web Services Support Center
  [Create Case](https://console.aws.amazon.com/support/home#/case/create) page.
  The Amazon Web Services Support API doesn't support requesting service limit
  increases. You can submit a service limit increase in the following ways:
  """
  @spec create_case(AWS.Client.t(), create_case_request(), Keyword.t()) ::
          {:ok, create_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_case_errors()}
  def create_case(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCase", input, options)
  end

  @doc """
  Returns the attachment that has the specified ID. Attachments can include
  screenshots, error logs, or other files that describe your issue. Attachment
  IDs are generated by the case management system when you add an attachment to
  a case or case communication. Attachment IDs are returned in the
  `AttachmentDetails` objects that are returned by the `DescribeCommunications`
  operation.
  """
  @spec describe_attachment(AWS.Client.t(), describe_attachment_request(), Keyword.t()) ::
          {:ok, describe_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_attachment_errors()}
  def describe_attachment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAttachment", input, options)
  end

  @doc """
  Returns a list of cases that you specify by passing one or more case IDs. You
  can use the `afterTime` and `beforeTime` parameters to filter the cases by
  date. You can set values for the `includeResolvedCases` and
  `includeCommunications` parameters to specify how much information to return.
  The response returns the following in JSON format:
  """
  @spec describe_cases(AWS.Client.t(), describe_cases_request(), Keyword.t()) ::
          {:ok, describe_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cases_errors()}
  def describe_cases(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCases", input, options)
  end

  @doc """
  Returns communications and attachments for one or more support cases. Use the
  `afterTime` and `beforeTime` parameters to filter by date. You can use the
  `caseId` parameter to restrict the results to a specific case. Case data is
  available for 12 months after creation. If a case was created more than 12
  months ago, a request for data might cause an error.
  """
  @spec describe_communications(AWS.Client.t(), describe_communications_request(), Keyword.t()) ::
          {:ok, describe_communications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_communications_errors()}
  def describe_communications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCommunications", input, options)
  end

  @doc """
  Returns a list of CreateCaseOption types along with the corresponding supported
  hours and language availability. You can specify the `language`
  `categoryCode`, `issueType` and `serviceCode` used to retrieve the
  CreateCaseOptions.
  """
  @spec describe_create_case_options(
          AWS.Client.t(),
          describe_create_case_options_request(),
          Keyword.t()
        ) ::
          {:ok, describe_create_case_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_create_case_options_errors()}
  def describe_create_case_options(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCreateCaseOptions", input, options)
  end

  @doc """
  Returns the current list of Amazon Web Services services and a list of service
  categories for each service. You then use service names and categories in your
  `CreateCase` requests. Each Amazon Web Services service has its own set of
  categories.
  """
  @spec describe_services(AWS.Client.t(), describe_services_request(), Keyword.t()) ::
          {:ok, describe_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_services_errors()}
  def describe_services(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeServices", input, options)
  end

  @doc """
  Returns the list of severity levels that you can assign to a support case. The
  severity level for a case is also a field in the `CaseDetails` data type that
  you include for a `CreateCase` request.
  """
  @spec describe_severity_levels(AWS.Client.t(), describe_severity_levels_request(), Keyword.t()) ::
          {:ok, describe_severity_levels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_severity_levels_errors()}
  def describe_severity_levels(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSeverityLevels", input, options)
  end

  @doc """
  Returns a list of supported languages for a specified `categoryCode`,
  `issueType` and `serviceCode`. The returned supported languages will include a
  ISO 639-1 code for the `language`, and the language display name.
  """
  @spec describe_supported_languages(
          AWS.Client.t(),
          describe_supported_languages_request(),
          Keyword.t()
        ) ::
          {:ok, describe_supported_languages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_supported_languages_errors()}
  def describe_supported_languages(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSupportedLanguages", input, options)
  end

  @doc """
  Returns the refresh status of the Trusted Advisor checks that have the specified
  check IDs. You can get the check IDs by calling the
  `DescribeTrustedAdvisorChecks` operation. Some checks are refreshed
  automatically, and you can't return their refresh statuses by using the
  `DescribeTrustedAdvisorCheckRefreshStatuses` operation. If you call this
  operation for these checks, you might see an `InvalidParameterValue` error.
  """
  @spec describe_trusted_advisor_check_refresh_statuses(
          AWS.Client.t(),
          describe_trusted_advisor_check_refresh_statuses_request(),
          Keyword.t()
        ) ::
          {:ok, describe_trusted_advisor_check_refresh_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_trusted_advisor_check_refresh_statuses_errors()}
  def describe_trusted_advisor_check_refresh_statuses(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeTrustedAdvisorCheckRefreshStatuses",
      input,
      options
    )
  end

  @doc """
  Returns the results of the Trusted Advisor check that has the specified check
  ID. You can get the check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation. The response contains a `TrustedAdvisorCheckResult` object, which
  contains these three objects:
  """
  @spec describe_trusted_advisor_check_result(
          AWS.Client.t(),
          describe_trusted_advisor_check_result_request(),
          Keyword.t()
        ) ::
          {:ok, describe_trusted_advisor_check_result_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_trusted_advisor_check_result_errors()}
  def describe_trusted_advisor_check_result(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustedAdvisorCheckResult", input, options)
  end

  @doc """
  Returns the results for the Trusted Advisor check summaries for the check IDs
  that you specified. You can get the check IDs by calling the
  `DescribeTrustedAdvisorChecks` operation. The response contains an array of
  `TrustedAdvisorCheckSummary` objects.
  """
  @spec describe_trusted_advisor_check_summaries(
          AWS.Client.t(),
          describe_trusted_advisor_check_summaries_request(),
          Keyword.t()
        ) ::
          {:ok, describe_trusted_advisor_check_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_trusted_advisor_check_summaries_errors()}
  def describe_trusted_advisor_check_summaries(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustedAdvisorCheckSummaries", input, options)
  end

  @doc """
  Returns information about all available Trusted Advisor checks, including the
  name, ID, category, description, and metadata. You must specify a language
  code. The response contains a `TrustedAdvisorCheckDescription` object for each
  check. You must set the Amazon Web Services Region to us-east-1.
  """
  @spec describe_trusted_advisor_checks(
          AWS.Client.t(),
          describe_trusted_advisor_checks_request(),
          Keyword.t()
        ) ::
          {:ok, describe_trusted_advisor_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_trusted_advisor_checks_errors()}
  def describe_trusted_advisor_checks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustedAdvisorChecks", input, options)
  end

  @doc """
  Refreshes the Trusted Advisor check that you specify using the check ID. You can
  get the check IDs by calling the `DescribeTrustedAdvisorChecks` operation.
  Some checks are refreshed automatically. If you call the
  `RefreshTrustedAdvisorCheck` operation to refresh them, you might see the
  `InvalidParameterValue` error.
  """
  @spec refresh_trusted_advisor_check(
          AWS.Client.t(),
          refresh_trusted_advisor_check_request(),
          Keyword.t()
        ) ::
          {:ok, refresh_trusted_advisor_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, refresh_trusted_advisor_check_errors()}
  def refresh_trusted_advisor_check(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RefreshTrustedAdvisorCheck", input, options)
  end

  @doc """
  Resolves a support case. This operation takes a `caseId` and returns the initial
  and final state of the case.
  """
  @spec resolve_case(AWS.Client.t(), resolve_case_request(), Keyword.t()) ::
          {:ok, resolve_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resolve_case_errors()}
  def resolve_case(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResolveCase", input, options)
  end
end
