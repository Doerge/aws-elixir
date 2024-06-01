# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServerlessApplicationRepository do
  @moduledoc """
  The AWS Serverless Application Repository makes it easy for developers and
  enterprises to quickly find and deploy serverless applications in the AWS
  Cloud. For more information about serverless applications, see Serverless
  Computing and Applications on the AWS website. The AWS Serverless Application
  Repository is deeply integrated with the AWS Lambda console, so that
  developers of all levels can get started with serverless computing without
  needing to learn anything new. You can use category keywords to browse for
  applications such as web and mobile backends, data processing applications, or
  chatbots. You can also search for applications by name, publisher, or event
  source. To use an application, you simply choose it, configure any required
  fields, and deploy it with a few clicks.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_application_dependencies_response() :: %{
        "Dependencies" => list(application_dependency_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_application_dependencies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cloud_formation_template_response() :: %{
        "ApplicationId" => String.t(),
        "CreationTime" => String.t(),
        "ExpirationTime" => String.t(),
        "SemanticVersion" => String.t(),
        "Status" => list(any()),
        "TemplateId" => String.t(),
        "TemplateUrl" => String.t()
      }

  """
  @type get_cloud_formation_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_dependency_summary() :: %{
        "ApplicationId" => String.t(),
        "SemanticVersion" => String.t()
      }

  """
  @type application_dependency_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cloud_formation_template_request() :: %{}

  """
  @type get_cloud_formation_template_request() :: %{}

  @typedoc """

  ## Example:

      parameter_definition() :: %{
        "AllowedPattern" => String.t(),
        "AllowedValues" => list(String.t()()),
        "ConstraintDescription" => String.t(),
        "DefaultValue" => String.t(),
        "Description" => String.t(),
        "MaxLength" => integer(),
        "MaxValue" => integer(),
        "MinLength" => integer(),
        "MinValue" => integer(),
        "Name" => String.t(),
        "NoEcho" => boolean(),
        "ReferencedByResources" => list(String.t()()),
        "Type" => String.t()
      }

  """
  @type parameter_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_version_request() :: %{
        optional("SourceCodeArchiveUrl") => String.t(),
        optional("SourceCodeUrl") => String.t(),
        optional("TemplateBody") => String.t(),
        optional("TemplateUrl") => String.t()
      }

  """
  @type create_application_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_version_response() :: %{
        "ApplicationId" => String.t(),
        "CreationTime" => String.t(),
        "ParameterDefinitions" => list(parameter_definition()()),
        "RequiredCapabilities" => list(list(any())()),
        "ResourcesSupported" => boolean(),
        "SemanticVersion" => String.t(),
        "SourceCodeArchiveUrl" => String.t(),
        "SourceCodeUrl" => String.t(),
        "TemplateUrl" => String.t()
      }

  """
  @type create_application_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_policy_response() :: %{
        "Statements" => list(application_policy_statement()())
      }

  """
  @type get_application_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      version_summary() :: %{
        "ApplicationId" => String.t(),
        "CreationTime" => String.t(),
        "SemanticVersion" => String.t(),
        "SourceCodeUrl" => String.t()
      }

  """
  @type version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_value() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type parameter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

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

      put_application_policy_request() :: %{
        required("Statements") => list(application_policy_statement()())
      }

  """
  @type put_application_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("HomePageUrl") => String.t(),
        optional("Labels") => list(String.t()()),
        optional("LicenseBody") => String.t(),
        optional("LicenseUrl") => String.t(),
        optional("ReadmeBody") => String.t(),
        optional("ReadmeUrl") => String.t(),
        optional("SemanticVersion") => String.t(),
        optional("SourceCodeArchiveUrl") => String.t(),
        optional("SourceCodeUrl") => String.t(),
        optional("SpdxLicenseId") => String.t(),
        optional("TemplateBody") => String.t(),
        optional("TemplateUrl") => String.t(),
        required("Author") => String.t(),
        required("Description") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_formation_template_response() :: %{
        "ApplicationId" => String.t(),
        "CreationTime" => String.t(),
        "ExpirationTime" => String.t(),
        "SemanticVersion" => String.t(),
        "Status" => list(any()),
        "TemplateId" => String.t(),
        "TemplateUrl" => String.t()
      }

  """
  @type create_cloud_formation_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "ApplicationId" => String.t(),
        "Author" => String.t(),
        "CreationTime" => String.t(),
        "Description" => String.t(),
        "HomePageUrl" => String.t(),
        "IsVerifiedAuthor" => boolean(),
        "Labels" => list(String.t()()),
        "LicenseUrl" => String.t(),
        "Name" => String.t(),
        "ReadmeUrl" => String.t(),
        "SpdxLicenseId" => String.t(),
        "VerifiedAuthorUrl" => String.t(),
        "Version" => version()
      }

  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_application_dependencies_request() :: %{
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t(),
        optional("SemanticVersion") => String.t()
      }

  """
  @type list_application_dependencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      version() :: %{
        "ApplicationId" => String.t(),
        "CreationTime" => String.t(),
        "ParameterDefinitions" => list(parameter_definition()()),
        "RequiredCapabilities" => list(list(any())()),
        "ResourcesSupported" => boolean(),
        "SemanticVersion" => String.t(),
        "SourceCodeArchiveUrl" => String.t(),
        "SourceCodeUrl" => String.t(),
        "TemplateUrl" => String.t()
      }

  """
  @type version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("Author") => String.t(),
        optional("Description") => String.t(),
        optional("HomePageUrl") => String.t(),
        optional("Labels") => list(String.t()()),
        optional("ReadmeBody") => String.t(),
        optional("ReadmeUrl") => String.t()
      }

  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{
        "ApplicationId" => String.t(),
        "Author" => String.t(),
        "CreationTime" => String.t(),
        "Description" => String.t(),
        "HomePageUrl" => String.t(),
        "IsVerifiedAuthor" => boolean(),
        "Labels" => list(String.t()()),
        "LicenseUrl" => String.t(),
        "Name" => String.t(),
        "ReadmeUrl" => String.t(),
        "SpdxLicenseId" => String.t(),
        "VerifiedAuthorUrl" => String.t(),
        "Version" => version()
      }

  """
  @type update_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        "ApplicationId" => String.t(),
        "Author" => String.t(),
        "CreationTime" => String.t(),
        "Description" => String.t(),
        "HomePageUrl" => String.t(),
        "IsVerifiedAuthor" => boolean(),
        "Labels" => list(String.t()()),
        "LicenseUrl" => String.t(),
        "Name" => String.t(),
        "ReadmeUrl" => String.t(),
        "SpdxLicenseId" => String.t(),
        "VerifiedAuthorUrl" => String.t(),
        "Version" => version()
      }

  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_policy_request() :: %{}

  """
  @type get_application_policy_request() :: %{}

  @typedoc """

  ## Example:

      create_cloud_formation_change_set_request() :: %{
        optional("Capabilities") => list(String.t()()),
        optional("ChangeSetName") => String.t(),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("NotificationArns") => list(String.t()()),
        optional("ParameterOverrides") => list(parameter_value()()),
        optional("ResourceTypes") => list(String.t()()),
        optional("RollbackConfiguration") => rollback_configuration(),
        optional("SemanticVersion") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TemplateId") => String.t(),
        required("StackName") => String.t()
      }

  """
  @type create_cloud_formation_change_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_policy_statement() :: %{
        "Actions" => list(String.t()()),
        "PrincipalOrgIDs" => list(String.t()()),
        "Principals" => list(String.t()()),
        "StatementId" => String.t()
      }

  """
  @type application_policy_statement() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_application_versions_request() :: %{
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_application_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "ApplicationId" => String.t(),
        "Author" => String.t(),
        "CreationTime" => String.t(),
        "Description" => String.t(),
        "HomePageUrl" => String.t(),
        "Labels" => list(String.t()()),
        "Name" => String.t(),
        "SpdxLicenseId" => String.t()
      }

  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unshare_application_request() :: %{
        required("OrganizationId") => String.t()
      }

  """
  @type unshare_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "Applications" => list(application_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_application_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(version_summary()())
      }

  """
  @type list_application_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rollback_configuration() :: %{
        "MonitoringTimeInMinutes" => integer(),
        "RollbackTriggers" => list(rollback_trigger()())
      }

  """
  @type rollback_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rollback_trigger() :: %{
        "Arn" => String.t(),
        "Type" => String.t()
      }

  """
  @type rollback_trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_application_policy_response() :: %{
        "Statements" => list(application_policy_statement()())
      }

  """
  @type put_application_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{
        optional("SemanticVersion") => String.t()
      }

  """
  @type get_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_formation_template_request() :: %{
        optional("SemanticVersion") => String.t()
      }

  """
  @type create_cloud_formation_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      create_cloud_formation_change_set_response() :: %{
        "ApplicationId" => String.t(),
        "ChangeSetId" => String.t(),
        "SemanticVersion" => String.t(),
        "StackId" => String.t()
      }

  """
  @type create_cloud_formation_change_set_response() :: %{String.t() => any()}

  @type create_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_application_version_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_cloud_formation_change_set_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_cloud_formation_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_application_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_cloud_formation_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_application_dependencies_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_application_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_applications_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type put_application_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type unshare_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-09-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "serverlessrepo",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ServerlessApplicationRepository",
      signature_version: "v4",
      signing_name: "serverlessrepo",
      target_prefix: nil
    }
  end

  @doc """
  Creates an application, optionally including an AWS SAM file to create the first
  application version in the same call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20CreateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_application(AWS.Client.t(), create_application_request(), Keyword.t()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
      201
    )
  end

  @doc """
  Creates an application version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20CreateApplicationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.
  * `:semantic_version` (`t:string`) The semantic version of the new version.

  ## Optional parameters:
  """
  @spec create_application_version(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_application_version_request(),
          Keyword.t()
        ) ::
          {:ok, create_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_version_errors()}
  def create_application_version(
        %Client{} = client,
        application_id,
        semantic_version,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/versions/#{AWS.Util.encode_uri(semantic_version)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Creates an AWS CloudFormation change set for the given application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20CreateCloudFormationChangeSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  """
  @spec create_cloud_formation_change_set(
          AWS.Client.t(),
          String.t(),
          create_cloud_formation_change_set_request(),
          Keyword.t()
        ) ::
          {:ok, create_cloud_formation_change_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cloud_formation_change_set_errors()}
  def create_cloud_formation_change_set(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/changesets"
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
      201
    )
  end

  @doc """
  Creates an AWS CloudFormation template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20CreateCloudFormationTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  """
  @spec create_cloud_formation_template(
          AWS.Client.t(),
          String.t(),
          create_cloud_formation_template_request(),
          Keyword.t()
        ) ::
          {:ok, create_cloud_formation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cloud_formation_template_errors()}
  def create_cloud_formation_template(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/templates"
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
      201
    )
  end

  @doc """
  Deletes the specified application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20DeleteApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  """
  @spec delete_application(AWS.Client.t(), String.t(), delete_application_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
      204
    )
  end

  @doc """
  Gets the specified application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20GetApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  * `:semantic_version` (`t:string`) The semantic version of the application to
    get.
  """
  @spec get_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [semantic_version: nil
    # ])

    headers = []
    query_params = []

    {semantic_version, options} = Keyword.pop(options, :semantic_version, nil)

    query_params =
      if !is_nil(semantic_version) do
        [{"semanticVersion", semantic_version} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the policy for the application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20GetApplicationPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  """
  @spec get_application_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_application_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_policy_errors()}
  def get_application_policy(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/policy"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the specified AWS CloudFormation template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20GetCloudFormationTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.
  * `:template_id` (`t:string`) The UUID returned by CreateCloudFormationTemplate.

  ## Optional parameters:
  """
  @spec get_cloud_formation_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_cloud_formation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_cloud_formation_template_errors()}
  def get_cloud_formation_template(%Client{} = client, application_id, template_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of applications nested in the containing application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20ListApplicationDependencies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  * `:max_items` (`t:integer`) The total number of items to return.
  * `:next_token` (`t:string`) A token to specify where to start paginating.
  * `:semantic_version` (`t:string`) The semantic version of the application to
    get.
  """
  @spec list_application_dependencies(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_application_dependencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_dependencies_errors()}
  def list_application_dependencies(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dependencies"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_items: nil, next_token: nil, semantic_version: nil
    # ])

    headers = []
    query_params = []

    {semantic_version, options} = Keyword.pop(options, :semantic_version, nil)

    query_params =
      if !is_nil(semantic_version) do
        [{"semanticVersion", semantic_version} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_items, options} = Keyword.pop(options, :max_items, nil)

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists versions for the specified application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20ListApplicationVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  * `:max_items` (`t:integer`) The total number of items to return.
  * `:next_token` (`t:string`) A token to specify where to start paginating.
  """
  @spec list_application_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_application_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_versions_errors()}
  def list_application_versions(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/versions"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_items: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_items, options} = Keyword.pop(options, :max_items, nil)

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists applications owned by the requester.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20ListApplications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_items` (`t:integer`) The total number of items to return.
  * `:next_token` (`t:string`) A token to specify where to start paginating.
  """
  @spec list_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, options \\ []) do
    url_path = "/applications"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_items: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_items, options} = Keyword.pop(options, :max_items, nil)

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the permission policy for an application. For the list of actions supported
  for this operation, see [Application
  Permissions](https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions)
  .

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20PutApplicationPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  """
  @spec put_application_policy(
          AWS.Client.t(),
          String.t(),
          put_application_policy_request(),
          Keyword.t()
        ) ::
          {:ok, put_application_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_application_policy_errors()}
  def put_application_policy(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/policy"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Unshares an application from an AWS Organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20UnshareApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  """
  @spec unshare_application(
          AWS.Client.t(),
          String.t(),
          unshare_application_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unshare_application_errors()}
  def unshare_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/unshare"
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
      204
    )
  end

  @doc """
  Updates the specified application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=serverlessapplicationrepository%20UpdateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The Amazon Resource Name (ARN) of the
    application.

  ## Optional parameters:
  """
  @spec update_application(AWS.Client.t(), String.t(), update_application_request(), Keyword.t()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
