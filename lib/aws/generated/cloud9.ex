# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Cloud9 do
  @moduledoc """
  Cloud9 Cloud9 is a collection of tools that you can use to code, build, run,
  test, debug, and release software in the cloud.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_result() :: %{
        "environmentIds" => list(String.t()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environments_result() :: %{
        "environments" => list(environment()())
      }
      
  """
  @type describe_environments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_environment_membership_request() :: %{
        required("environmentId") => String.t(),
        required("userArn") => String.t()
      }
      
  """
  @type delete_environment_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forbidden_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_membership_request() :: %{
        required("environmentId") => String.t(),
        required("permissions") => list(any()),
        required("userArn") => String.t()
      }
      
  """
  @type create_environment_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environment_memberships_request() :: %{
        optional("environmentId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("permissions") => list(list(any())()),
        optional("userArn") => String.t()
      }
      
  """
  @type describe_environment_memberships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environment_status_result() :: %{
        "message" => String.t(),
        "status" => list(any())
      }
      
  """
  @type describe_environment_status_result() :: %{String.t() => any()}

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
      
      environment() :: %{
        "arn" => String.t(),
        "connectionType" => list(any()),
        "description" => String.t(),
        "id" => String.t(),
        "lifecycle" => environment_lifecycle(),
        "managedCredentialsStatus" => list(any()),
        "name" => String.t(),
        "ownerArn" => String.t(),
        "type" => list(any())
      }
      
  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_result() :: %{}
      
  """
  @type update_environment_result() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_membership_result() :: %{
        "membership" => environment_member()
      }
      
  """
  @type create_environment_membership_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_request() :: %{
        required("environmentId") => String.t()
      }
      
  """
  @type delete_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_environment_ec2_result() :: %{
        "environmentId" => String.t()
      }
      
  """
  @type create_environment_ec2_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_result() :: %{}
      
  """
  @type delete_environment_result() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_access_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type concurrent_access_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_ec2_request() :: %{
        optional("automaticStopTimeMinutes") => integer(),
        optional("clientRequestToken") => String.t(),
        optional("connectionType") => list(any()),
        optional("description") => String.t(),
        optional("dryRun") => boolean(),
        optional("ownerArn") => String.t(),
        optional("subnetId") => String.t(),
        optional("tags") => list(tag()()),
        required("imageId") => String.t(),
        required("instanceType") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_environment_ec2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environment_status_request() :: %{
        required("environmentId") => String.t()
      }
      
  """
  @type describe_environment_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environment_memberships_result() :: %{
        "memberships" => list(environment_member()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_environment_memberships_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_request() :: %{
        optional("description") => String.t(),
        optional("managedCredentialsAction") => list(any()),
        optional("name") => String.t(),
        required("environmentId") => String.t()
      }
      
  """
  @type update_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_membership_request() :: %{
        required("environmentId") => String.t(),
        required("permissions") => list(any()),
        required("userArn") => String.t()
      }
      
  """
  @type update_environment_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_membership_result() :: %{
        "membership" => environment_member()
      }
      
  """
  @type update_environment_membership_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_member() :: %{
        "environmentId" => String.t(),
        "lastAccess" => non_neg_integer(),
        "permissions" => list(any()),
        "userArn" => String.t(),
        "userId" => String.t()
      }
      
  """
  @type environment_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_membership_result() :: %{}
      
  """
  @type delete_environment_membership_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_environments_request() :: %{
        required("environmentIds") => list(String.t()())
      }
      
  """
  @type describe_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_lifecycle() :: %{
        "failureResource" => String.t(),
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type environment_lifecycle() :: %{String.t() => any()}

  @type create_environment_ec2_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_environment_membership_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_environment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_environment_membership_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_environment_memberships_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_environment_status_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_environments_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_environments_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | not_found_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | concurrent_access_exception()
          | internal_server_error_exception()
          | not_found_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | concurrent_access_exception()
          | internal_server_error_exception()
          | not_found_exception()

  @type update_environment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_environment_membership_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-09-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloud9",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Cloud9",
      signature_version: "v4",
      signing_name: "cloud9",
      target_prefix: "AWSCloud9WorkspaceManagementService"
    }
  end

  @doc """
  Creates an Cloud9 development environment, launches an Amazon Elastic Compute
  Cloud (Amazon EC2) instance, and then connects from the instance to the
  environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20CreateEnvironmentEC2&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_environment_ec2_request`)
    %{
      optional("automaticStopTimeMinutes") => integer(),
      optional("clientRequestToken") => String.t(),
      optional("connectionType") => list(any()),
      optional("description") => String.t(),
      optional("dryRun") => boolean(),
      optional("ownerArn") => String.t(),
      optional("subnetId") => String.t(),
      optional("tags") => list(tag()()),
      required("imageId") => String.t(),
      required("instanceType") => String.t(),
      required("name") => String.t()
    }
  """

  @spec create_environment_ec2(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_environment_ec2_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_ec2_errors()}

  def create_environment_ec2(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEnvironmentEC2", input, options)
  end

  @doc """
  Adds an environment member to an Cloud9 development environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20CreateEnvironmentMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_environment_membership_request`)
    %{
      required("environmentId") => String.t(),
      required("permissions") => list(any()),
      required("userArn") => String.t()
    }
  """

  @spec create_environment_membership(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_environment_membership_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_membership_errors()}

  def create_environment_membership(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEnvironmentMembership", input, options)
  end

  @doc """
  Deletes an Cloud9 development environment. If an Amazon EC2 instance is
  connected to the environment, also terminates the instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20DeleteEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_environment_request`)
    %{
      required("environmentId") => String.t()
    }
  """

  @spec delete_environment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}

  def delete_environment(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEnvironment", input, options)
  end

  @doc """
  Deletes an environment member from a development environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20DeleteEnvironmentMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_environment_membership_request`)
    %{
      required("environmentId") => String.t(),
      required("userArn") => String.t()
    }
  """

  @spec delete_environment_membership(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_environment_membership_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_membership_errors()}

  def delete_environment_membership(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEnvironmentMembership", input, options)
  end

  @doc """
  Gets information about environment members for an Cloud9 development
  environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20DescribeEnvironmentMemberships&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_environment_memberships_request`)
    %{
      optional("environmentId") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("permissions") => list(list(any())()),
      optional("userArn") => String.t()
    }
  """

  @spec describe_environment_memberships(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_environment_memberships_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_environment_memberships_errors()}

  def describe_environment_memberships(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEnvironmentMemberships", input, options)
  end

  @doc """
  Gets status information for an Cloud9 development environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20DescribeEnvironmentStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_environment_status_request`)
    %{
      required("environmentId") => String.t()
    }
  """

  @spec describe_environment_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_environment_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_environment_status_errors()}

  def describe_environment_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEnvironmentStatus", input, options)
  end

  @doc """
  Gets information about Cloud9 development environments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20DescribeEnvironments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_environments_request`)
    %{
      required("environmentIds") => list(String.t()())
    }
  """

  @spec describe_environments(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_environments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_environments_errors()}

  def describe_environments(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEnvironments", input, options)
  end

  @doc """
  Gets a list of Cloud9 development environment identifiers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20ListEnvironments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_environments_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec list_environments(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_environments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environments_errors()}

  def list_environments(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEnvironments", input, options)
  end

  @doc """
  Gets a list of the tags associated with an Cloud9 development environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("ResourceARN") => String.t()
    }
  """

  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds tags to an Cloud9 development environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("Tags") => list(tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from an Cloud9 development environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Changes the settings of an existing Cloud9 development environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20UpdateEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_environment_request`)
    %{
      optional("description") => String.t(),
      optional("managedCredentialsAction") => list(any()),
      optional("name") => String.t(),
      required("environmentId") => String.t()
    }
  """

  @spec update_environment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_errors()}

  def update_environment(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateEnvironment", input, options)
  end

  @doc """
  Changes the settings of an existing environment member for an Cloud9 development
  environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloud9%20UpdateEnvironmentMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_environment_membership_request`)
    %{
      required("environmentId") => String.t(),
      required("permissions") => list(any()),
      required("userArn") => String.t()
    }
  """

  @spec update_environment_membership(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_environment_membership_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_membership_errors()}

  def update_environment_membership(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateEnvironmentMembership", input, options)
  end
end
