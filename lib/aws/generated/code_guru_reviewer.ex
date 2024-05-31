# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruReviewer do
  @moduledoc """
  This section provides documentation for the Amazon CodeGuru Reviewer API
  operations.

  CodeGuru Reviewer is a
  service that uses program analysis and machine learning to detect potential
  defects that
  are difficult for developers to find and recommends fixes in your Java and
  Python
  code.

  By proactively detecting and providing recommendations for addressing code
  defects and
  implementing best practices, CodeGuru Reviewer improves the overall quality and
  maintainability of
  your code base during the code review stage. For more information about CodeGuru
  Reviewer, see the
  *
  [Amazon CodeGuru Reviewer User Guide](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html).*

  To improve the security of your CodeGuru Reviewer API calls, you can establish a
  private connection
  between your VPC and CodeGuru Reviewer by creating an *interface VPC endpoint*.
  For
  more information, see [CodeGuru Reviewer and interface VPC endpoints (Amazon Web Services
  PrivateLink)](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html)
  in the *Amazon CodeGuru Reviewer User
  Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      repository_association_summary() :: %{
        "AssociationArn" => String.t(),
        "AssociationId" => String.t(),
        "ConnectionArn" => String.t(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "ProviderType" => list(any()),
        "State" => list(any())
      }

  """
  @type repository_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_recommendation_feedback_request() :: %{
        optional("UserId") => String.t(),
        required("RecommendationId") => String.t()
      }

  """
  @type describe_recommendation_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      repository_association() :: %{
        "AssociationArn" => String.t(),
        "AssociationId" => String.t(),
        "ConnectionArn" => String.t(),
        "CreatedTimeStamp" => non_neg_integer(),
        "KMSKeyDetails" => kms_key_details(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "ProviderType" => list(any()),
        "S3RepositoryDetails" => s3_repository_details(),
        "State" => list(any()),
        "StateReason" => String.t()
      }

  """
  @type repository_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_metadata() :: %{
        "EventInfo" => event_info(),
        "RequestId" => String.t(),
        "Requester" => String.t(),
        "VendorName" => list(any())
      }

  """
  @type request_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      repository_analysis() :: %{
        "RepositoryHead" => repository_head_source_code_type(),
        "SourceCodeType" => source_code_type()
      }

  """
  @type repository_analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_code_reviews_response() :: %{
        "CodeReviewSummaries" => list(code_review_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_code_reviews_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation_feedback_summary() :: %{
        "Reactions" => list(list(any())()),
        "RecommendationId" => String.t(),
        "UserId" => String.t()
      }

  """
  @type recommendation_feedback_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_review() :: %{
        "AnalysisTypes" => list(list(any())()),
        "AssociationArn" => String.t(),
        "CodeReviewArn" => String.t(),
        "ConfigFileState" => list(any()),
        "CreatedTimeStamp" => non_neg_integer(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "Metrics" => metrics(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "ProviderType" => list(any()),
        "PullRequestId" => String.t(),
        "RepositoryName" => String.t(),
        "SourceCodeType" => source_code_type(),
        "State" => list(any()),
        "StateReason" => String.t(),
        "Type" => list(any())
      }

  """
  @type code_review() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_repository_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("KMSKeyDetails") => kms_key_details(),
        optional("Tags") => map(),
        required("Repository") => repository()
      }

  """
  @type associate_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_code_review_response() :: %{
        "CodeReview" => code_review()
      }

  """
  @type describe_code_review_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_repository_association_response() :: %{
        "RepositoryAssociation" => repository_association(),
        "Tags" => map()
      }

  """
  @type describe_repository_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metrics_summary() :: %{
        "FindingsCount" => float(),
        "MeteredLinesOfCodeCount" => float(),
        "SuppressedLinesOfCodeCount" => float()
      }

  """
  @type metrics_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_recommendation_feedback_response() :: %{
        "RecommendationFeedback" => recommendation_feedback()
      }

  """
  @type describe_recommendation_feedback_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_repository_request() :: %{}

  """
  @type disassociate_repository_request() :: %{}

  @typedoc """

  ## Example:

      list_repository_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t()()),
        optional("NextToken") => String.t(),
        optional("Owners") => list(String.t()()),
        optional("ProviderTypes") => list(list(any())()),
        optional("States") => list(list(any())())
      }

  """
  @type list_repository_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_repository() :: %{
        "BucketName" => String.t(),
        "Name" => String.t()
      }

  """
  @type s3_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metrics() :: %{
        "FindingsCount" => float(),
        "MeteredLinesOfCodeCount" => float(),
        "SuppressedLinesOfCodeCount" => float()
      }

  """
  @type metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      third_party_source_repository() :: %{
        "ConnectionArn" => String.t(),
        "Name" => String.t(),
        "Owner" => String.t()
      }

  """
  @type third_party_source_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation_feedback() :: %{
        "CodeReviewArn" => String.t(),
        "CreatedTimeStamp" => non_neg_integer(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "Reactions" => list(list(any())()),
        "RecommendationId" => String.t(),
        "UserId" => String.t()
      }

  """
  @type recommendation_feedback() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      repository() :: %{
        "Bitbucket" => third_party_source_repository(),
        "CodeCommit" => code_commit_repository(),
        "GitHubEnterpriseServer" => third_party_source_repository(),
        "S3Bucket" => s3_repository()
      }

  """
  @type repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      branch_diff_source_code_type() :: %{
        "DestinationBranchName" => String.t(),
        "SourceBranchName" => String.t()
      }

  """
  @type branch_diff_source_code_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_review_type() :: %{
        "AnalysisTypes" => list(list(any())()),
        "RepositoryAnalysis" => repository_analysis()
      }

  """
  @type code_review_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_code_review_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("Name") => String.t(),
        required("RepositoryAssociationArn") => String.t(),
        required("Type") => code_review_type()
      }

  """
  @type create_code_review_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_bucket_repository() :: %{
        "Details" => s3_repository_details(),
        "Name" => String.t()
      }

  """
  @type s3_bucket_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_repository_response() :: %{
        "RepositoryAssociation" => repository_association(),
        "Tags" => map()
      }

  """
  @type associate_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_code_review_response() :: %{
        "CodeReview" => code_review()
      }

  """
  @type create_code_review_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_recommendation_feedback_response() :: %{}

  """
  @type put_recommendation_feedback_response() :: %{}

  @typedoc """

  ## Example:

      rule_metadata() :: %{
        "LongDescription" => String.t(),
        "RuleId" => String.t(),
        "RuleName" => String.t(),
        "RuleTags" => list(String.t()()),
        "ShortDescription" => String.t()
      }

  """
  @type rule_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_code_type() :: %{
        "BranchDiff" => branch_diff_source_code_type(),
        "CommitDiff" => commit_diff_source_code_type(),
        "RepositoryHead" => repository_head_source_code_type(),
        "RequestMetadata" => request_metadata(),
        "S3BucketRepository" => s3_bucket_repository()
      }

  """
  @type source_code_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_review_summary() :: %{
        "CodeReviewArn" => String.t(),
        "CreatedTimeStamp" => non_neg_integer(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "MetricsSummary" => metrics_summary(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "ProviderType" => list(any()),
        "PullRequestId" => String.t(),
        "RepositoryName" => String.t(),
        "SourceCodeType" => source_code_type(),
        "State" => list(any()),
        "Type" => list(any())
      }

  """
  @type code_review_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_repository_response() :: %{
        "RepositoryAssociation" => repository_association(),
        "Tags" => map()
      }

  """
  @type disassociate_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      commit_diff_source_code_type() :: %{
        "DestinationCommit" => String.t(),
        "MergeBaseCommit" => String.t(),
        "SourceCommit" => String.t()
      }

  """
  @type commit_diff_source_code_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_artifacts() :: %{
        "BuildArtifactsObjectKey" => String.t(),
        "SourceCodeArtifactsObjectKey" => String.t()
      }

  """
  @type code_artifacts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_repository_details() :: %{
        "BucketName" => String.t(),
        "CodeArtifacts" => code_artifacts()
      }

  """
  @type s3_repository_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_recommendation_feedback_request() :: %{
        required("CodeReviewArn") => String.t(),
        required("Reactions") => list(list(any())()),
        required("RecommendationId") => String.t()
      }

  """
  @type put_recommendation_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_code_reviews_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProviderTypes") => list(list(any())()),
        optional("RepositoryNames") => list(String.t()()),
        optional("States") => list(list(any())()),
        required("Type") => list(any())
      }

  """
  @type list_code_reviews_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_key_details() :: %{
        "EncryptionOption" => list(any()),
        "KMSKeyId" => String.t()
      }

  """
  @type kms_key_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recommendation_feedback_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RecommendationIds") => list(String.t()()),
        optional("UserIds") => list(String.t()())
      }

  """
  @type list_recommendation_feedback_request() :: %{String.t() => any()}

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

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      repository_head_source_code_type() :: %{
        "BranchName" => String.t()
      }

  """
  @type repository_head_source_code_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_repository_associations_response() :: %{
        "NextToken" => String.t(),
        "RepositoryAssociationSummaries" => list(repository_association_summary()())
      }

  """
  @type list_repository_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_commit_repository() :: %{
        "Name" => String.t()
      }

  """
  @type code_commit_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation_summary() :: %{
        "Description" => String.t(),
        "EndLine" => integer(),
        "FilePath" => String.t(),
        "RecommendationCategory" => list(any()),
        "RecommendationId" => String.t(),
        "RuleMetadata" => rule_metadata(),
        "Severity" => list(any()),
        "StartLine" => integer()
      }

  """
  @type recommendation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recommendation_feedback_response() :: %{
        "NextToken" => String.t(),
        "RecommendationFeedbackSummaries" => list(recommendation_feedback_summary()())
      }

  """
  @type list_recommendation_feedback_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_code_review_request() :: %{}

  """
  @type describe_code_review_request() :: %{}

  @typedoc """

  ## Example:

      list_recommendations_response() :: %{
        "NextToken" => String.t(),
        "RecommendationSummaries" => list(recommendation_summary()())
      }

  """
  @type list_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_info() :: %{
        "Name" => String.t(),
        "State" => String.t()
      }

  """
  @type event_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_repository_association_request() :: %{}

  """
  @type describe_repository_association_request() :: %{}

  @typedoc """

  ## Example:

      list_recommendations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_recommendations_request() :: %{String.t() => any()}

  @type associate_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_code_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_code_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_recommendation_feedback_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_repository_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type disassociate_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type list_code_reviews_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_recommendation_feedback_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_repository_associations_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_recommendation_feedback_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2019-09-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeguru-reviewer",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CodeGuru Reviewer",
      signature_version: "v4",
      signing_name: "codeguru-reviewer",
      target_prefix: nil
    }
  end

  @doc """
  Use to associate an Amazon Web Services CodeCommit repository or a repository
  managed by Amazon Web Services
  CodeStar Connections with Amazon CodeGuru Reviewer.

  When you associate a repository, CodeGuru Reviewer reviews
  source code changes in the repository's pull requests and provides automatic
  recommendations. You can view recommendations using the CodeGuru Reviewer
  console. For more
  information, see [Recommendations in Amazon CodeGuru
  Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html)
  in the *Amazon CodeGuru Reviewer User Guide.*

  If you associate a CodeCommit or S3 repository, it must be in the same Amazon
  Web Services Region and
  Amazon Web Services account where its CodeGuru Reviewer code reviews are
  configured.

  Bitbucket and GitHub Enterprise Server repositories are managed by Amazon Web
  Services CodeStar
  Connections to connect to CodeGuru Reviewer. For more information, see
  [Associate a repository](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html)
  in the *Amazon CodeGuru Reviewer User Guide.*

  You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to
  associate a GitHub repository with
  Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For
  more information, see
  [Getting started with CodeGuru
  Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html)
  in the *CodeGuru Reviewer User Guide.*

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec associate_repository(AWS.Client.t(), associate_repository_request(), Keyword.t()) ::
          {:ok, associate_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_repository_errors()}
  def associate_repository(%Client{} = client, input, options \\ []) do
    url_path = "/associations"
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
  Use to create a code review with a
  [CodeReviewType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html)
  of
  `RepositoryAnalysis`.

  This type of code review analyzes all code under a
  specified branch in an associated repository. `PullRequest` code reviews are
  automatically triggered by a pull request.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_code_review(AWS.Client.t(), create_code_review_request(), Keyword.t()) ::
          {:ok, create_code_review_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_code_review_errors()}
  def create_code_review(%Client{} = client, input, options \\ []) do
    url_path = "/codereviews"
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
  Returns the metadata associated with the code review along with its status.

  ## Required positional parameters:
  * `:code_review_arn` (`t:string`) The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
      

  ## Optional parameters:
  """
  @spec describe_code_review(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_code_review_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_code_review_errors()}
  def describe_code_review(%Client{} = client, code_review_arn, options \\ []) do
    url_path = "/codereviews/#{AWS.Util.encode_uri(code_review_arn)}"

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
  Describes the customer feedback for a CodeGuru Reviewer recommendation.

  ## Required positional parameters:
  * `:code_review_arn` (`t:string`) The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
      

  ## Optional parameters:
  * `:recommendation_id` (`t:string`) The recommendation ID that can be used to track the provided recommendations and then to
         collect the feedback.
  * `:user_id` (`t:string`) Optional parameter to describe the feedback for a given user. If this is not supplied,
         it defaults to the user making the request.
  """
  @spec describe_recommendation_feedback(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_recommendation_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_recommendation_feedback_errors()}
  def describe_recommendation_feedback(
        %Client{} = client,
        code_review_arn,
        recommendation_id,
        options \\ []
      ) do
    url_path = "/feedback/#{AWS.Util.encode_uri(code_review_arn)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [recommendation_id: nil, user_id: nil
    # ])

    headers = []
    query_params = []

    {user_id, options} = Keyword.pop(options, :user_id, nil)

    query_params =
      if !is_nil(user_id) do
        [{"UserId", user_id} | query_params]
      else
        query_params
      end

    {recommendation_id, options} = Keyword.pop(options, :recommendation_id, nil)

    query_params =
      if !is_nil(recommendation_id) do
        [{"RecommendationId", recommendation_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a
  [RepositoryAssociation](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html)
  object that contains information about the requested
  repository association.

  ## Required positional parameters:
  * `:association_arn` (`t:string`) The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.

  ## Optional parameters:
  """
  @spec describe_repository_association(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_repository_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_repository_association_errors()}
  def describe_repository_association(%Client{} = client, association_arn, options \\ []) do
    url_path = "/associations/#{AWS.Util.encode_uri(association_arn)}"

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
  Removes the association between Amazon CodeGuru Reviewer and a repository.

  ## Required positional parameters:
  * `:association_arn` (`t:string`) The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.

  ## Optional parameters:
  """
  @spec disassociate_repository(
          AWS.Client.t(),
          String.t(),
          disassociate_repository_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_repository_errors()}
  def disassociate_repository(%Client{} = client, association_arn, input, options \\ []) do
    url_path = "/associations/#{AWS.Util.encode_uri(association_arn)}"
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
  Lists all the code reviews that the customer has created in the past 90 days.

  ## Required positional parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned per call. The default is 100.
  * `:next_token` (`t:string`) If <code>nextToken</code> is returned, there are more results available. The value of
            <code>nextToken</code> is a unique pagination token for each page. Make the call again
         using the returned token to retrieve the next page. Keep all other arguments
         unchanged.
  * `:provider_types` (`t:list[com.amazonaws.codegurureviewer#ProviderType]`) List of provider types for filtering that needs to be applied before displaying the
         result. For example, <code>providerTypes=[GitHub]</code> lists code reviews from
         GitHub.
  * `:repository_names` (`t:list[com.amazonaws.codegurureviewer#Name]`) List of repository names for filtering that needs to be applied before displaying the
         result.
  * `:states` (`t:list[com.amazonaws.codegurureviewer#JobState]`) List of states for filtering that needs to be applied before displaying the result. For
         example, <code>states=[Pending]</code> lists code reviews in the Pending state.
  * `:type` (`t:enum["PULL_REQUEST|REPOSITORY_ANALYSIS"]`) The type of code reviews to list in the response.
  """
  @spec list_code_reviews(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_code_reviews_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_code_reviews_errors()}
  def list_code_reviews(%Client{} = client, type, options \\ []) do
    url_path = "/codereviews"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, provider_types: nil, repository_names: nil, states: nil, type: nil
    # ])

    headers = []
    query_params = []

    {type, options} = Keyword.pop(options, :type, nil)

    query_params =
      if !is_nil(type) do
        [{"Type", type} | query_params]
      else
        query_params
      end

    {states, options} = Keyword.pop(options, :states, nil)

    query_params =
      if !is_nil(states) do
        [{"States", states} | query_params]
      else
        query_params
      end

    {repository_names, options} = Keyword.pop(options, :repository_names, nil)

    query_params =
      if !is_nil(repository_names) do
        [{"RepositoryNames", repository_names} | query_params]
      else
        query_params
      end

    {provider_types, options} = Keyword.pop(options, :provider_types, nil)

    query_params =
      if !is_nil(provider_types) do
        [{"ProviderTypes", provider_types} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of
  [RecommendationFeedbackSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html)
  objects that contain customer recommendation
  feedback for all CodeGuru Reviewer users.

  ## Required positional parameters:
  * `:code_review_arn` (`t:string`) The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
      

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned per call. The default is 100.
  * `:next_token` (`t:string`) If <code>nextToken</code> is returned, there are more results available. The value of
            <code>nextToken</code> is a unique pagination token for each page. Make the call again
         using the returned token to retrieve the next page. Keep all other arguments
         unchanged.
  * `:recommendation_ids` (`t:list[com.amazonaws.codegurureviewer#RecommendationId]`) Used to query the recommendation feedback for a given recommendation.
  * `:user_ids` (`t:list[com.amazonaws.codegurureviewer#UserId]`) An Amazon Web Services user&#39;s account ID or Amazon Resource Name (ARN). Use this ID to query the
         recommendation feedback for a code review from that user.
  """
  @spec list_recommendation_feedback(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_recommendation_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recommendation_feedback_errors()}
  def list_recommendation_feedback(%Client{} = client, code_review_arn, options \\ []) do
    url_path = "/feedback/#{AWS.Util.encode_uri(code_review_arn)}/RecommendationFeedback"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, recommendation_ids: nil, user_ids: nil
    # ])

    headers = []
    query_params = []

    {user_ids, options} = Keyword.pop(options, :user_ids, nil)

    query_params =
      if !is_nil(user_ids) do
        [{"UserIds", user_ids} | query_params]
      else
        query_params
      end

    {recommendation_ids, options} = Keyword.pop(options, :recommendation_ids, nil)

    query_params =
      if !is_nil(recommendation_ids) do
        [{"RecommendationIds", recommendation_ids} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the list of all recommendations for a completed code review.

  ## Required positional parameters:
  * `:code_review_arn` (`t:string`) The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
      

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned per call. The default is 100.
  * `:next_token` (`t:string`) Pagination token.
  """
  @spec list_recommendations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recommendations_errors()}
  def list_recommendations(%Client{} = client, code_review_arn, options \\ []) do
    url_path = "/codereviews/#{AWS.Util.encode_uri(code_review_arn)}/Recommendations"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of
  [RepositoryAssociationSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html) objects that contain summary information about a
  repository association.

  You can filter the returned list by
  [ProviderType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType),
  [Name](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name), [State](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State),
  and
  [Owner](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner).

  ## Required positional parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of repository association results returned by
            <code>ListRepositoryAssociations</code> in paginated output. When this parameter is
         used, <code>ListRepositoryAssociations</code> only returns <code>maxResults</code> results
         in a single page with a <code>nextToken</code> response element. The remaining results of
         the initial request can be seen by sending another <code>ListRepositoryAssociations</code>
         request with the returned <code>nextToken</code> value. This value can be between 1 and
         100. If this parameter is not used, <code>ListRepositoryAssociations</code> returns up to
         100 results and a <code>nextToken</code> value if applicable. 
  * `:names` (`t:list[com.amazonaws.codegurureviewer#Name]`) List of repository names to use as a filter.
  * `:next_token` (`t:string`) The <code>nextToken</code> value returned from a previous paginated
            <code>ListRepositoryAssociations</code> request where <code>maxResults</code> was used
         and the results exceeded the value of that parameter. Pagination continues from the end of
         the previous results that returned the <code>nextToken</code> value. 
  * `:owners` (`t:list[com.amazonaws.codegurureviewer#Owner]`) List of owners to use as a filter. For Amazon Web Services CodeCommit, it is the name of the
         CodeCommit account that was used to associate the repository. For other repository source
         providers, such as Bitbucket and GitHub Enterprise Server, this is name of the account that
         was used to associate the repository. 
  * `:provider_types` (`t:list[com.amazonaws.codegurureviewer#ProviderType]`) List of provider types to use as a filter.
  * `:states` (`t:list[com.amazonaws.codegurureviewer#RepositoryAssociationState]`) List of repository association states to use as a filter.
  """
  @spec list_repository_associations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_repository_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_repository_associations_errors()}
  def list_repository_associations(%Client{} = client, options \\ []) do
    url_path = "/associations"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, names: nil, next_token: nil, owners: nil, provider_types: nil, states: nil
    # ])

    headers = []
    query_params = []

    {states, options} = Keyword.pop(options, :states, nil)

    query_params =
      if !is_nil(states) do
        [{"State", states} | query_params]
      else
        query_params
      end

    {provider_types, options} = Keyword.pop(options, :provider_types, nil)

    query_params =
      if !is_nil(provider_types) do
        [{"ProviderType", provider_types} | query_params]
      else
        query_params
      end

    {owners, options} = Keyword.pop(options, :owners, nil)

    query_params =
      if !is_nil(owners) do
        [{"Owner", owners} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    {names, options} = Keyword.pop(options, :names, nil)

    query_params =
      if !is_nil(names) do
        [{"Name", names} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the list of tags associated with an associated repository resource.

  ## Required positional parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Stores customer feedback for a CodeGuru Reviewer recommendation.

  When this API is called again with
  different reactions the previous feedback is overwritten.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec put_recommendation_feedback(
          AWS.Client.t(),
          put_recommendation_feedback_request(),
          Keyword.t()
        ) ::
          {:ok, put_recommendation_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_recommendation_feedback_errors()}
  def put_recommendation_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/feedback"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds one or more tags to an associated repository.

  ## Required positional parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.

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
  Removes a tag from an associated repository.

  ## Required positional parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.codegurureviewer#TagKey]`) A list of the keys for each tag you want to remove from an associated repository.
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
end
