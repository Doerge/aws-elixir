# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Amplify do
  @moduledoc """
  Amplify enables developers to develop and deploy cloud-powered mobile and web
  apps.

  Amplify Hosting provides a continuous delivery and hosting service for web
  applications.
  For more information, see the [Amplify Hosting User Guide](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html). The
  Amplify Framework is a comprehensive set of SDKs, libraries, tools, and
  documentation
  for client app development. For more information, see the [Amplify Framework.](https://docs.amplify.aws/)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      app() :: %{
        "appArn" => String.t(),
        "appId" => String.t(),
        "autoBranchCreationConfig" => auto_branch_creation_config(),
        "autoBranchCreationPatterns" => list(String.t()()),
        "basicAuthCredentials" => String.t(),
        "buildSpec" => String.t(),
        "createTime" => non_neg_integer(),
        "customHeaders" => String.t(),
        "customRules" => list(custom_rule()()),
        "defaultDomain" => String.t(),
        "description" => String.t(),
        "enableAutoBranchCreation" => boolean(),
        "enableBasicAuth" => boolean(),
        "enableBranchAutoBuild" => boolean(),
        "enableBranchAutoDeletion" => boolean(),
        "environmentVariables" => map(),
        "iamServiceRoleArn" => String.t(),
        "name" => String.t(),
        "platform" => list(any()),
        "productionBranch" => production_branch(),
        "repository" => String.t(),
        "repositoryCloneMethod" => list(any()),
        "tags" => map(),
        "updateTime" => non_neg_integer()
      }

  """
  @type app() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      branch() :: %{
        "activeJobId" => String.t(),
        "associatedResources" => list(String.t()()),
        "backend" => backend(),
        "backendEnvironmentArn" => String.t(),
        "basicAuthCredentials" => String.t(),
        "branchArn" => String.t(),
        "branchName" => String.t(),
        "buildSpec" => String.t(),
        "createTime" => non_neg_integer(),
        "customDomains" => list(String.t()()),
        "description" => String.t(),
        "destinationBranch" => String.t(),
        "displayName" => String.t(),
        "enableAutoBuild" => boolean(),
        "enableBasicAuth" => boolean(),
        "enableNotification" => boolean(),
        "enablePerformanceMode" => boolean(),
        "enablePullRequestPreview" => boolean(),
        "environmentVariables" => map(),
        "framework" => String.t(),
        "pullRequestEnvironmentName" => String.t(),
        "sourceBranch" => String.t(),
        "stage" => list(any()),
        "tags" => map(),
        "thumbnailUrl" => String.t(),
        "totalNumberOfJobs" => String.t(),
        "ttl" => String.t(),
        "updateTime" => non_neg_integer()
      }

  """
  @type branch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_job_result() :: %{
        "jobSummary" => job_summary()
      }

  """
  @type start_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_association_request() :: %{}

  """
  @type get_domain_association_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generate_access_logs_result() :: %{
        "logUrl" => String.t()
      }

  """
  @type generate_access_logs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sub_domain() :: %{
        "dnsRecord" => String.t(),
        "subDomainSetting" => sub_domain_setting(),
        "verified" => boolean()
      }

  """
  @type sub_domain() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_request() :: %{
        optional("accessToken") => String.t(),
        optional("autoBranchCreationConfig") => auto_branch_creation_config(),
        optional("autoBranchCreationPatterns") => list(String.t()()),
        optional("basicAuthCredentials") => String.t(),
        optional("buildSpec") => String.t(),
        optional("customHeaders") => String.t(),
        optional("customRules") => list(custom_rule()()),
        optional("description") => String.t(),
        optional("enableAutoBranchCreation") => boolean(),
        optional("enableBasicAuth") => boolean(),
        optional("enableBranchAutoBuild") => boolean(),
        optional("enableBranchAutoDeletion") => boolean(),
        optional("environmentVariables") => map(),
        optional("iamServiceRoleArn") => String.t(),
        optional("oauthToken") => String.t(),
        optional("platform") => list(any()),
        optional("repository") => String.t(),
        optional("tags") => map(),
        required("name") => String.t()
      }

  """
  @type create_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_branch_request() :: %{
        optional("backend") => backend(),
        optional("backendEnvironmentArn") => String.t(),
        optional("basicAuthCredentials") => String.t(),
        optional("buildSpec") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("enableAutoBuild") => boolean(),
        optional("enableBasicAuth") => boolean(),
        optional("enableNotification") => boolean(),
        optional("enablePerformanceMode") => boolean(),
        optional("enablePullRequestPreview") => boolean(),
        optional("environmentVariables") => map(),
        optional("framework") => String.t(),
        optional("pullRequestEnvironmentName") => String.t(),
        optional("stage") => list(any()),
        optional("tags") => map(),
        optional("ttl") => String.t(),
        required("branchName") => String.t()
      }

  """
  @type create_branch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_result() :: %{
        "jobSummaries" => list(job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_jobs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_backend_environment_result() :: %{
        "backendEnvironment" => backend_environment()
      }

  """
  @type create_backend_environment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_association_request() :: %{
        optional("autoSubDomainCreationPatterns") => list(String.t()()),
        optional("autoSubDomainIAMRole") => String.t(),
        optional("certificateSettings") => certificate_settings(),
        optional("enableAutoSubDomain") => boolean(),
        optional("subDomainSettings") => list(sub_domain_setting()())
      }

  """
  @type update_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_association_request() :: %{
        optional("autoSubDomainCreationPatterns") => list(String.t()()),
        optional("autoSubDomainIAMRole") => String.t(),
        optional("certificateSettings") => certificate_settings(),
        optional("enableAutoSubDomain") => boolean(),
        required("domainName") => String.t(),
        required("subDomainSettings") => list(sub_domain_setting()())
      }

  """
  @type create_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      backend() :: %{
        "stackArn" => String.t()
      }

  """
  @type backend() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_webhook_result() :: %{
        "webhook" => webhook()
      }

  """
  @type create_webhook_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_request() :: %{
        optional("fileMap") => map()
      }

  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_job_result() :: %{
        "jobSummary" => job_summary()
      }

  """
  @type delete_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generate_access_logs_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("startTime") => non_neg_integer(),
        required("domainName") => String.t()
      }

  """
  @type generate_access_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_branches_result() :: %{
        "branches" => list(branch()()),
        "nextToken" => String.t()
      }

  """
  @type list_branches_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_artifact_url_request() :: %{}

  """
  @type get_artifact_url_request() :: %{}

  @typedoc """

  ## Example:

      stop_job_request() :: %{}

  """
  @type stop_job_request() :: %{}

  @typedoc """

  ## Example:

      delete_domain_association_request() :: %{}

  """
  @type delete_domain_association_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_backend_environments_result() :: %{
        "backendEnvironments" => list(backend_environment()()),
        "nextToken" => String.t()
      }

  """
  @type list_backend_environments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_webhook_request() :: %{}

  """
  @type delete_webhook_request() :: %{}

  @typedoc """

  ## Example:

      list_apps_result() :: %{
        "apps" => list(app()()),
        "nextToken" => String.t()
      }

  """
  @type list_apps_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_backend_environment_request() :: %{
        optional("deploymentArtifacts") => String.t(),
        optional("stackName") => String.t(),
        required("environmentName") => String.t()
      }

  """
  @type create_backend_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_backend_environment_result() :: %{
        "backendEnvironment" => backend_environment()
      }

  """
  @type delete_backend_environment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_result() :: %{
        "job" => job()
      }

  """
  @type get_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_request() :: %{}

  """
  @type get_app_request() :: %{}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "commitId" => String.t(),
        "commitMessage" => String.t(),
        "commitTime" => non_neg_integer(),
        "endTime" => non_neg_integer(),
        "jobArn" => String.t(),
        "jobId" => String.t(),
        "jobType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sub_domain_setting() :: %{
        "branchName" => String.t(),
        "prefix" => String.t()
      }

  """
  @type sub_domain_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_result() :: %{
        "app" => app()
      }

  """
  @type update_app_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_association() :: %{
        "autoSubDomainCreationPatterns" => list(String.t()()),
        "autoSubDomainIAMRole" => String.t(),
        "certificate" => certificate(),
        "certificateVerificationDNSRecord" => String.t(),
        "domainAssociationArn" => String.t(),
        "domainName" => String.t(),
        "domainStatus" => list(any()),
        "enableAutoSubDomain" => boolean(),
        "statusReason" => String.t(),
        "subDomains" => list(sub_domain()()),
        "updateStatus" => list(any())
      }

  """
  @type domain_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_backend_environment_result() :: %{
        "backendEnvironment" => backend_environment()
      }

  """
  @type get_backend_environment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_deployment_result() :: %{
        "jobSummary" => job_summary()
      }

  """
  @type start_deployment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependent_service_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type dependent_service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_webhook_result() :: %{
        "webhook" => webhook()
      }

  """
  @type delete_webhook_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      production_branch() :: %{
        "branchName" => String.t(),
        "lastDeployTime" => non_neg_integer(),
        "status" => String.t(),
        "thumbnailUrl" => String.t()
      }

  """
  @type production_branch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_result() :: %{
        "fileUploadUrls" => map(),
        "jobId" => String.t(),
        "zipUploadUrl" => String.t()
      }

  """
  @type create_deployment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_webhook_request() :: %{
        optional("branchName") => String.t(),
        optional("description") => String.t()
      }

  """
  @type update_webhook_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_webhooks_result() :: %{
        "nextToken" => String.t(),
        "webhooks" => list(webhook()())
      }

  """
  @type list_webhooks_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_webhook_request() :: %{
        optional("description") => String.t(),
        required("branchName") => String.t()
      }

  """
  @type create_webhook_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      backend_environment() :: %{
        "backendEnvironmentArn" => String.t(),
        "createTime" => non_neg_integer(),
        "deploymentArtifacts" => String.t(),
        "environmentName" => String.t(),
        "stackName" => String.t(),
        "updateTime" => non_neg_integer()
      }

  """
  @type backend_environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_result() :: %{
        "app" => app()
      }

  """
  @type delete_app_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_branch_result() :: %{
        "branch" => branch()
      }

  """
  @type update_branch_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_branch_request() :: %{}

  """
  @type get_branch_request() :: %{}

  @typedoc """

  ## Example:

      list_domain_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_domain_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_job_request() :: %{
        optional("commitId") => String.t(),
        optional("commitMessage") => String.t(),
        optional("commitTime") => non_neg_integer(),
        optional("jobId") => String.t(),
        optional("jobReason") => String.t(),
        required("jobType") => list(any())
      }

  """
  @type start_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_backend_environments_request() :: %{
        optional("environmentName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_backend_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_backend_environment_request() :: %{}

  """
  @type delete_backend_environment_request() :: %{}

  @typedoc """

  ## Example:

      custom_rule() :: %{
        "condition" => String.t(),
        "source" => String.t(),
        "status" => String.t(),
        "target" => String.t()
      }

  """
  @type custom_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_branch_result() :: %{
        "branch" => branch()
      }

  """
  @type create_branch_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      certificate() :: %{
        "certificateVerificationDNSRecord" => String.t(),
        "customCertificateArn" => String.t(),
        "type" => list(any())
      }

  """
  @type certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_branch_request() :: %{}

  """
  @type delete_branch_request() :: %{}

  @typedoc """

  ## Example:

      get_webhook_request() :: %{}

  """
  @type get_webhook_request() :: %{}

  @typedoc """

  ## Example:

      delete_app_request() :: %{}

  """
  @type delete_app_request() :: %{}

  @typedoc """

  ## Example:

      update_branch_request() :: %{
        optional("backend") => backend(),
        optional("backendEnvironmentArn") => String.t(),
        optional("basicAuthCredentials") => String.t(),
        optional("buildSpec") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("enableAutoBuild") => boolean(),
        optional("enableBasicAuth") => boolean(),
        optional("enableNotification") => boolean(),
        optional("enablePerformanceMode") => boolean(),
        optional("enablePullRequestPreview") => boolean(),
        optional("environmentVariables") => map(),
        optional("framework") => String.t(),
        optional("pullRequestEnvironmentName") => String.t(),
        optional("stage") => list(any()),
        optional("ttl") => String.t()
      }

  """
  @type update_branch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_domain_association_result() :: %{
        "domainAssociation" => domain_association()
      }

  """
  @type update_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_job_request() :: %{}

  """
  @type delete_job_request() :: %{}

  @typedoc """

  ## Example:

      get_domain_association_result() :: %{
        "domainAssociation" => domain_association()
      }

  """
  @type get_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      job() :: %{
        "steps" => list(step()()),
        "summary" => job_summary()
      }

  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_artifacts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_artifacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_request() :: %{
        optional("accessToken") => String.t(),
        optional("autoBranchCreationConfig") => auto_branch_creation_config(),
        optional("autoBranchCreationPatterns") => list(String.t()()),
        optional("basicAuthCredentials") => String.t(),
        optional("buildSpec") => String.t(),
        optional("customHeaders") => String.t(),
        optional("customRules") => list(custom_rule()()),
        optional("description") => String.t(),
        optional("enableAutoBranchCreation") => boolean(),
        optional("enableBasicAuth") => boolean(),
        optional("enableBranchAutoBuild") => boolean(),
        optional("enableBranchAutoDeletion") => boolean(),
        optional("environmentVariables") => map(),
        optional("iamServiceRoleArn") => String.t(),
        optional("name") => String.t(),
        optional("oauthToken") => String.t(),
        optional("platform") => list(any()),
        optional("repository") => String.t()
      }

  """
  @type update_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_request() :: %{}

  """
  @type get_job_request() :: %{}

  @typedoc """

  ## Example:

      certificate_settings() :: %{
        "customCertificateArn" => String.t(),
        "type" => list(any())
      }

  """
  @type certificate_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_apps_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_apps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_result() :: %{
        "app" => app()
      }

  """
  @type get_app_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_association_result() :: %{
        "domainAssociation" => domain_association()
      }

  """
  @type delete_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      artifact() :: %{
        "artifactFileName" => String.t(),
        "artifactId" => String.t()
      }

  """
  @type artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_artifacts_result() :: %{
        "artifacts" => list(artifact()()),
        "nextToken" => String.t()
      }

  """
  @type list_artifacts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_webhook_result() :: %{
        "webhook" => webhook()
      }

  """
  @type get_webhook_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step() :: %{
        "artifactsUrl" => String.t(),
        "context" => String.t(),
        "endTime" => non_neg_integer(),
        "logUrl" => String.t(),
        "screenshots" => map(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusReason" => String.t(),
        "stepName" => String.t(),
        "testArtifactsUrl" => String.t(),
        "testConfigUrl" => String.t()
      }

  """
  @type step() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_webhooks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_webhooks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_branch_result() :: %{
        "branch" => branch()
      }

  """
  @type get_branch_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_branch_result() :: %{
        "branch" => branch()
      }

  """
  @type delete_branch_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_result() :: %{
        "app" => app()
      }

  """
  @type create_app_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_backend_environment_request() :: %{}

  """
  @type get_backend_environment_request() :: %{}

  @typedoc """

  ## Example:

      auto_branch_creation_config() :: %{
        "basicAuthCredentials" => String.t(),
        "buildSpec" => String.t(),
        "enableAutoBuild" => boolean(),
        "enableBasicAuth" => boolean(),
        "enablePerformanceMode" => boolean(),
        "enablePullRequestPreview" => boolean(),
        "environmentVariables" => map(),
        "framework" => String.t(),
        "pullRequestEnvironmentName" => String.t(),
        "stage" => list(any())
      }

  """
  @type auto_branch_creation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_branches_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_branches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_artifact_url_result() :: %{
        "artifactId" => String.t(),
        "artifactUrl" => String.t()
      }

  """
  @type get_artifact_url_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_associations_result() :: %{
        "domainAssociations" => list(domain_association()()),
        "nextToken" => String.t()
      }

  """
  @type list_domain_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      webhook() :: %{
        "branchName" => String.t(),
        "createTime" => non_neg_integer(),
        "description" => String.t(),
        "updateTime" => non_neg_integer(),
        "webhookArn" => String.t(),
        "webhookId" => String.t(),
        "webhookUrl" => String.t()
      }

  """
  @type webhook() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_job_result() :: %{
        "jobSummary" => job_summary()
      }

  """
  @type stop_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_deployment_request() :: %{
        optional("jobId") => String.t(),
        optional("sourceUrl") => String.t()
      }

  """
  @type start_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_association_result() :: %{
        "domainAssociation" => domain_association()
      }

  """
  @type create_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_webhook_result() :: %{
        "webhook" => webhook()
      }

  """
  @type update_webhook_result() :: %{String.t() => any()}

  @type create_app_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_backend_environment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_branch_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_deployment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_domain_association_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_webhook_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_app_errors() ::
          bad_request_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_backend_environment_errors() ::
          bad_request_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_branch_errors() ::
          bad_request_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_domain_association_errors() ::
          bad_request_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_webhook_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type generate_access_logs_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_app_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_artifact_url_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_backend_environment_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_branch_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_domain_association_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_webhook_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_apps_errors() ::
          bad_request_exception() | unauthorized_exception() | internal_failure_exception()

  @type list_artifacts_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_backend_environments_errors() ::
          bad_request_exception() | unauthorized_exception() | internal_failure_exception()

  @type list_branches_errors() ::
          bad_request_exception() | unauthorized_exception() | internal_failure_exception()

  @type list_domain_associations_errors() ::
          bad_request_exception() | unauthorized_exception() | internal_failure_exception()

  @type list_jobs_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_failure_exception()

  @type list_webhooks_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type start_deployment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type start_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type stop_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_failure_exception()

  @type update_app_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_branch_errors() ::
          bad_request_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_domain_association_errors() ::
          bad_request_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_webhook_errors() ::
          bad_request_exception()
          | not_found_exception()
          | dependent_service_failure_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "amplify",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Amplify",
      signature_version: "v4",
      signing_name: "amplify",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new Amplify app.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_app(AWS.Client.t(), create_app_request(), Keyword.t()) ::
          {:ok, create_app_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_errors()}
  def create_app(%Client{} = client, input, options \\ []) do
    url_path = "/apps"
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
  Creates a new backend environment for an Amplify app.

  This API is available only to Amplify Gen 1 applications where the
  backend is created using Amplify Studio or the Amplify
  command line interface (CLI). This API isn’t available to applications created
  using the
  Amplify Gen 2 public preview. When you deploy an application with
  Amplify Gen 2, you provision the app's backend infrastructure using Typescript
  code.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
  """
  @spec create_backend_environment(
          AWS.Client.t(),
          String.t(),
          create_backend_environment_request(),
          Keyword.t()
        ) ::
          {:ok, create_backend_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backend_environment_errors()}
  def create_backend_environment(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments"
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
  Creates a new branch for an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
  """
  @spec create_branch(AWS.Client.t(), String.t(), create_branch_request(), Keyword.t()) ::
          {:ok, create_branch_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_branch_errors()}
  def create_branch(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches"
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
  Creates a deployment for a manually deployed Amplify app.

  Manually deployed apps are
  not connected to a repository.

  The maximum duration between the `CreateDeployment` call and the
  `StartDeployment` call cannot exceed 8 hours. If the duration exceeds 8
  hours, the `StartDeployment` call and the associated `Job` will
  fail.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)

  ## Optional parameters:
  """
  @spec create_deployment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_deployment_request(),
          Keyword.t()
        ) ::
          {:ok, create_deployment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/deployments"

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
  Creates a new domain association for an Amplify app.

  This action associates a custom
  domain with the Amplify app

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
  """
  @spec create_domain_association(
          AWS.Client.t(),
          String.t(),
          create_domain_association_request(),
          Keyword.t()
        ) ::
          {:ok, create_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_association_errors()}
  def create_domain_association(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains"
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
  Creates a new webhook on an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
  """
  @spec create_webhook(AWS.Client.t(), String.t(), create_webhook_request(), Keyword.t()) ::
          {:ok, create_webhook_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_webhook_errors()}
  def create_webhook(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/webhooks"
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
  Deletes an existing Amplify app specified by an app ID.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
  """
  @spec delete_app(AWS.Client.t(), String.t(), delete_app_request(), Keyword.t()) ::
          {:ok, delete_app_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_errors()}
  def delete_app(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}"
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
  Deletes a backend environment for an Amplify app.

  This API is available only to Amplify Gen 1 applications where the
  backend was created using Amplify Studio or the Amplify
  command line interface (CLI). This API isn’t available to applications created
  using the
  Amplify Gen 2 public preview. When you deploy an application with
  Amplify Gen 2, you provision the app's backend infrastructure using Typescript
  code.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :environment_name (t:string String.t/0) (environmentName)

  ## Optional parameters:
  """
  @spec delete_backend_environment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_backend_environment_request(),
          Keyword.t()
        ) ::
          {:ok, delete_backend_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backend_environment_errors()}
  def delete_backend_environment(
        %Client{} = client,
        app_id,
        environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments/#{AWS.Util.encode_uri(environment_name)}"

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
  Deletes a branch for an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)

  ## Optional parameters:
  """
  @spec delete_branch(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_branch_request(),
          Keyword.t()
        ) ::
          {:ok, delete_branch_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_branch_errors()}
  def delete_branch(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}"
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
  Deletes a domain association for an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :domain_name (t:string String.t/0) (domainName)

  ## Optional parameters:
  """
  @spec delete_domain_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_domain_association_request(),
          Keyword.t()
        ) ::
          {:ok, delete_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_association_errors()}
  def delete_domain_association(%Client{} = client, app_id, domain_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Deletes a job for a branch of an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)
   • :job_id (t:string String.t/0) (jobId)

  ## Optional parameters:
  """
  @spec delete_job(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_job_request(),
          Keyword.t()
        ) ::
          {:ok, delete_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_job_errors()}
  def delete_job(%Client{} = client, app_id, branch_name, job_id, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Deletes a webhook.

  ## Required positional parameters:
   • :webhook_id (t:string String.t/0) (webhookId)

  ## Optional parameters:
  """
  @spec delete_webhook(AWS.Client.t(), String.t(), delete_webhook_request(), Keyword.t()) ::
          {:ok, delete_webhook_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_webhook_errors()}
  def delete_webhook(%Client{} = client, webhook_id, input, options \\ []) do
    url_path = "/webhooks/#{AWS.Util.encode_uri(webhook_id)}"
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
  Returns the website access logs for a specific time range using a presigned URL.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
  """
  @spec generate_access_logs(
          AWS.Client.t(),
          String.t(),
          generate_access_logs_request(),
          Keyword.t()
        ) ::
          {:ok, generate_access_logs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_access_logs_errors()}
  def generate_access_logs(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/accesslogs"
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
  Returns an existing Amplify app specified by an app ID.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
  """
  @spec get_app(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_app_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_app_errors()}
  def get_app(%Client{} = client, app_id, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}"

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
  Returns the artifact info that corresponds to an artifact id.

  ## Required positional parameters:
   • :artifact_id (t:string String.t/0) (artifactId)

  ## Optional parameters:
  """
  @spec get_artifact_url(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_artifact_url_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_artifact_url_errors()}
  def get_artifact_url(%Client{} = client, artifact_id, options \\ []) do
    url_path = "/artifacts/#{AWS.Util.encode_uri(artifact_id)}"

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
  Returns a backend environment for an Amplify app.

  This API is available only to Amplify Gen 1 applications where the
  backend was created using Amplify Studio or the Amplify
  command line interface (CLI). This API isn’t available to applications created
  using the
  Amplify Gen 2 public preview. When you deploy an application with
  Amplify Gen 2, you provision the app's backend infrastructure using Typescript
  code.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :environment_name (t:string String.t/0) (environmentName)

  ## Optional parameters:
  """
  @spec get_backend_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_backend_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backend_environment_errors()}
  def get_backend_environment(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments/#{AWS.Util.encode_uri(environment_name)}"

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
  Returns a branch for an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)

  ## Optional parameters:
  """
  @spec get_branch(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_branch_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_branch_errors()}
  def get_branch(%Client{} = client, app_id, branch_name, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}"

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
  Returns the domain information for an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :domain_name (t:string String.t/0) (domainName)

  ## Optional parameters:
  """
  @spec get_domain_association(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_association_errors()}
  def get_domain_association(%Client{} = client, app_id, domain_name, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains/#{AWS.Util.encode_uri(domain_name)}"

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
  Returns a job for a branch of an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)
   • :job_id (t:string String.t/0) (jobId)

  ## Optional parameters:
  """
  @spec get_job(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, app_id, branch_name, job_id, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Returns the webhook information that corresponds to a specified webhook ID.

  ## Required positional parameters:
   • :webhook_id (t:string String.t/0) (webhookId)

  ## Optional parameters:
  """
  @spec get_webhook(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_webhook_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_webhook_errors()}
  def get_webhook(%Client{} = client, webhook_id, options \\ []) do
    url_path = "/webhooks/#{AWS.Util.encode_uri(webhook_id)}"

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
  Returns a list of the existing Amplify apps.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_apps(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_apps_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_apps_errors()}
  def list_apps(%Client{} = client, options \\ []) do
    url_path = "/apps"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of artifacts for a specified app, branch, and job.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)
   • :job_id (t:string String.t/0) (jobId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_artifacts(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_artifacts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_artifacts_errors()}
  def list_artifacts(%Client{} = client, app_id, branch_name, job_id, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/artifacts"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the backend environments for an Amplify app.

  This API is available only to Amplify Gen 1 applications where the
  backend was created using Amplify Studio or the Amplify
  command line interface (CLI). This API isn’t available to applications created
  using the
  Amplify Gen 2 public preview. When you deploy an application with
  Amplify Gen 2, you provision the app's backend infrastructure using Typescript
  code.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
   • :environment_name (t:String.t/0) (environmentName)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_backend_environments(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_backend_environments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backend_environments_errors()}
  def list_backend_environments(%Client{} = client, app_id, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [environment_name: nil, max_results: nil, next_token: nil
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {environment_name, options} = Keyword.pop(options, :environment_name, nil)

    query_params =
      if !is_nil(environment_name) do
        [{"environmentName", environment_name} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the branches of an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_branches(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_branches_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_branches_errors()}
  def list_branches(%Client{} = client, app_id, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the domain associations for an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_domain_associations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_domain_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domain_associations_errors()}
  def list_domain_associations(%Client{} = client, app_id, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the jobs for a branch of an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_jobs(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_jobs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_jobs_errors()}
  def list_jobs(%Client{} = client, app_id, branch_name, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags for a specified Amazon Resource Name (ARN).

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (resourceArn)

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
  Returns a list of webhooks for an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_webhooks(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_webhooks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_webhooks_errors()}
  def list_webhooks(%Client{} = client, app_id, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/webhooks"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a deployment for a manually deployed app.

  Manually deployed apps are not
  connected to a repository.

  The maximum duration between the `CreateDeployment` call and the
  `StartDeployment` call cannot exceed 8 hours. If the duration exceeds 8
  hours, the `StartDeployment` call and the associated `Job` will
  fail.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)

  ## Optional parameters:
  """
  @spec start_deployment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          start_deployment_request(),
          Keyword.t()
        ) ::
          {:ok, start_deployment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_deployment_errors()}
  def start_deployment(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/deployments/start"

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
  Starts a new job for a branch of an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)

  ## Optional parameters:
  """
  @spec start_job(AWS.Client.t(), String.t(), String.t(), start_job_request(), Keyword.t()) ::
          {:ok, start_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_job_errors()}
  def start_job(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs"

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
  Stops a job that is in progress for a branch of an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)
   • :job_id (t:string String.t/0) (jobId)

  ## Optional parameters:
  """
  @spec stop_job(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          stop_job_request(),
          Keyword.t()
        ) ::
          {:ok, stop_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_job_errors()}
  def stop_job(%Client{} = client, app_id, branch_name, job_id, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/stop"

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
  Tags the resource with a tag key and value.

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (resourceArn)

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
  Untags a resource with a specified Amazon Resource Name (ARN).

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (resourceArn)

  ## Optional parameters:
   • :tag_keys (t:String.t/0) (tagKeys)
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
  Updates an existing Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)

  ## Optional parameters:
  """
  @spec update_app(AWS.Client.t(), String.t(), update_app_request(), Keyword.t()) ::
          {:ok, update_app_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_errors()}
  def update_app(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}"
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
  Updates a branch for an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :branch_name (t:string String.t/0) (branchName)

  ## Optional parameters:
  """
  @spec update_branch(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_branch_request(),
          Keyword.t()
        ) ::
          {:ok, update_branch_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_branch_errors()}
  def update_branch(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}"
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
  Creates a new domain association for an Amplify app.

  ## Required positional parameters:
   • :app_id (t:string String.t/0) (appId)
   • :domain_name (t:string String.t/0) (domainName)

  ## Optional parameters:
  """
  @spec update_domain_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_domain_association_request(),
          Keyword.t()
        ) ::
          {:ok, update_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_association_errors()}
  def update_domain_association(%Client{} = client, app_id, domain_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Updates a webhook.

  ## Required positional parameters:
   • :webhook_id (t:string String.t/0) (webhookId)

  ## Optional parameters:
  """
  @spec update_webhook(AWS.Client.t(), String.t(), update_webhook_request(), Keyword.t()) ::
          {:ok, update_webhook_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_webhook_errors()}
  def update_webhook(%Client{} = client, webhook_id, input, options \\ []) do
    url_path = "/webhooks/#{AWS.Util.encode_uri(webhook_id)}"
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
end
