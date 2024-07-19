# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeCatalyst do
  @moduledoc """
  Welcome to the Amazon CodeCatalyst API reference. This reference provides
  descriptions of operations and data types for Amazon CodeCatalyst. You can use
  the Amazon CodeCatalyst API to work with the following objects. Spaces, by
  calling the following:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_source_repository_branches_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_source_repository_branches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_space_request() :: %{}
      
  """
  @type delete_space_request() :: %{}

  @typedoc """

  ## Example:
      
      project_information() :: %{
        "name" => [String.t()],
        "projectId" => [String.t()]
      }
      
  """
  @type project_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_token_response() :: %{
        "accessTokenId" => String.t(),
        "expiresTime" => non_neg_integer(),
        "name" => String.t(),
        "secret" => String.t()
      }
      
  """
  @type create_access_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ide_configuration() :: %{
        "name" => [String.t()],
        "runtime" => [String.t()]
      }
      
  """
  @type ide_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_space_response() :: %{
        "displayName" => [String.t()],
        "name" => String.t()
      }
      
  """
  @type delete_space_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_details_request() :: %{
        optional("id") => [String.t()],
        optional("userName") => [String.t()]
      }
      
  """
  @type get_user_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_summary() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_run_sort_criteria() :: %{}
      
  """
  @type workflow_run_sort_criteria() :: %{}

  @typedoc """

  ## Example:
      
      ide() :: %{
        "name" => [String.t()],
        "runtime" => [String.t()]
      }
      
  """
  @type ide() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_project_request() :: %{}
      
  """
  @type get_project_request() :: %{}

  @typedoc """

  ## Example:
      
      access_token_summary() :: %{
        "expiresTime" => non_neg_integer(),
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type access_token_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_source_repository_request() :: %{
        optional("description") => String.t()
      }
      
  """
  @type create_source_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dev_environment_response() :: %{
        "alias" => [String.t()],
        "creatorId" => [String.t()],
        "id" => String.t(),
        "ides" => list(ide()()),
        "inactivityTimeoutMinutes" => integer(),
        "instanceType" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "persistentStorage" => persistent_storage(),
        "projectName" => String.t(),
        "repositories" => list(dev_environment_repository_summary()()),
        "spaceName" => String.t(),
        "status" => String.t(),
        "statusReason" => String.t(),
        "vpcConnectionName" => String.t()
      }
      
  """
  @type get_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_dev_environment_request() :: %{}
      
  """
  @type stop_dev_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      user_identity() :: %{
        "awsAccountId" => [String.t()],
        "principalId" => [String.t()],
        "userName" => [String.t()],
        "userType" => String.t()
      }
      
  """
  @type user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dev_environment_access_details() :: %{
        "streamUrl" => String.t(),
        "tokenValue" => String.t()
      }
      
  """
  @type dev_environment_access_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_dev_environment_session_request() :: %{
        required("sessionConfiguration") => dev_environment_session_configuration()
      }
      
  """
  @type start_dev_environment_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_space_request() :: %{}
      
  """
  @type get_space_request() :: %{}

  @typedoc """

  ## Example:
      
      get_subscription_response() :: %{
        "awsAccountName" => String.t(),
        "pendingSubscriptionStartTime" => non_neg_integer(),
        "pendingSubscriptionType" => [String.t()],
        "subscriptionType" => [String.t()]
      }
      
  """
  @type get_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t(),
        "spaceName" => String.t()
      }
      
  """
  @type update_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_source_repository_branch_request() :: %{
        optional("headCommitId") => [String.t()]
      }
      
  """
  @type create_source_repository_branch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_address() :: %{
        "email" => [String.t()],
        "verified" => [boolean()]
      }
      
  """
  @type email_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_log_entry() :: %{
        "errorCode" => [String.t()],
        "eventCategory" => [String.t()],
        "eventName" => [String.t()],
        "eventSource" => [String.t()],
        "eventTime" => non_neg_integer(),
        "eventType" => [String.t()],
        "id" => [String.t()],
        "operationType" => String.t(),
        "projectInformation" => project_information(),
        "requestId" => [String.t()],
        "requestPayload" => event_payload(),
        "responsePayload" => event_payload(),
        "sourceIpAddress" => [String.t()],
        "userAgent" => [String.t()],
        "userIdentity" => user_identity()
      }
      
  """
  @type event_log_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_source_repository_response() :: %{
        "name" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }
      
  """
  @type delete_source_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_request() :: %{}
      
  """
  @type get_workflow_request() :: %{}

  @typedoc """

  ## Example:
      
      repository_input() :: %{
        "branchName" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type repository_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_details_response() :: %{
        "displayName" => [String.t()],
        "primaryEmail" => email_address(),
        "userId" => [String.t()],
        "userName" => [String.t()],
        "version" => [String.t()]
      }
      
  """
  @type get_user_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dev_environment_response() :: %{
        "alias" => [String.t()],
        "clientToken" => String.t(),
        "id" => String.t(),
        "ides" => list(ide_configuration()()),
        "inactivityTimeoutMinutes" => integer(),
        "instanceType" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }
      
  """
  @type update_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dev_environment_sessions_response() :: %{
        "items" => list(dev_environment_session_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_dev_environment_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_dev_environment_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "status" => String.t()
      }
      
  """
  @type start_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_source_repository_request() :: %{}
      
  """
  @type get_source_repository_request() :: %{}

  @typedoc """

  ## Example:
      
      list_access_tokens_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_access_tokens_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t(),
        "spaceName" => String.t()
      }
      
  """
  @type create_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dev_environment_request() :: %{}
      
  """
  @type delete_dev_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      list_source_repositories_item() :: %{
        "createdTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type list_source_repositories_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_workflow_run_request() :: %{
        optional("clientToken") => [String.t()],
        required("workflowId") => String.t()
      }
      
  """
  @type start_workflow_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dev_environment_summary() :: %{
        "alias" => [String.t()],
        "creatorId" => [String.t()],
        "id" => String.t(),
        "ides" => list(ide()()),
        "inactivityTimeoutMinutes" => integer(),
        "instanceType" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "persistentStorage" => persistent_storage(),
        "projectName" => String.t(),
        "repositories" => list(dev_environment_repository_summary()()),
        "spaceName" => String.t(),
        "status" => String.t(),
        "statusReason" => String.t(),
        "vpcConnectionName" => String.t()
      }
      
  """
  @type dev_environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflows_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("sortBy") => list(workflow_sort_criteria()())
      }
      
  """
  @type list_workflows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_response() :: %{
        "items" => list(project_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_dev_environment_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "status" => String.t()
      }
      
  """
  @type stop_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_project_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => [String.t()],
        "spaceName" => String.t()
      }
      
  """
  @type get_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dev_environment_request() :: %{
        optional("alias") => [String.t()],
        optional("clientToken") => String.t(),
        optional("ides") => list(ide_configuration()()),
        optional("inactivityTimeoutMinutes") => integer(),
        optional("instanceType") => String.t()
      }
      
  """
  @type update_dev_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_logs_request() :: %{
        optional("eventName") => [String.t()],
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        required("endTime") => non_neg_integer(),
        required("startTime") => non_neg_integer()
      }
      
  """
  @type list_event_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dev_environment_request() :: %{
        optional("alias") => [String.t()],
        optional("clientToken") => String.t(),
        optional("ides") => list(ide_configuration()()),
        optional("inactivityTimeoutMinutes") => integer(),
        optional("repositories") => list(repository_input()()),
        optional("vpcConnectionName") => String.t(),
        required("instanceType") => String.t(),
        required("persistentStorage") => persistent_storage_configuration()
      }
      
  """
  @type create_dev_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_workflow_run_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "workflowId" => String.t()
      }
      
  """
  @type start_workflow_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_space_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t()
      }
      
  """
  @type update_space_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dev_environment_sessions_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_dev_environment_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_run_status_reason() :: %{}
      
  """
  @type workflow_run_status_reason() :: %{}

  @typedoc """

  ## Example:
      
      get_dev_environment_request() :: %{}
      
  """
  @type get_dev_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      list_source_repository_branches_response() :: %{
        "items" => list(list_source_repository_branches_item()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_source_repository_branches_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "comparisonOperator" => [String.t()],
        "key" => [String.t()],
        "values" => list([String.t()]())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflow_runs_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("sortBy") => list(workflow_run_sort_criteria()()),
        optional("workflowId") => String.t()
      }
      
  """
  @type list_workflow_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_source_repository_clone_urls_request() :: %{}
      
  """
  @type get_source_repository_clone_urls_request() :: %{}

  @typedoc """

  ## Example:
      
      workflow_summary() :: %{
        "createdTime" => non_neg_integer(),
        "definition" => workflow_definition_summary(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => [String.t()],
        "runMode" => String.t(),
        "sourceBranchName" => String.t(),
        "sourceRepositoryName" => String.t(),
        "status" => String.t()
      }
      
  """
  @type workflow_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_dev_environment_request() :: %{
        optional("ides") => list(ide_configuration()()),
        optional("inactivityTimeoutMinutes") => integer(),
        optional("instanceType") => String.t()
      }
      
  """
  @type start_dev_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_source_repository_request() :: %{}
      
  """
  @type delete_source_repository_request() :: %{}

  @typedoc """

  ## Example:
      
      get_subscription_request() :: %{}
      
  """
  @type get_subscription_request() :: %{}

  @typedoc """

  ## Example:
      
      start_dev_environment_session_response() :: %{
        "accessDetails" => dev_environment_access_details(),
        "id" => String.t(),
        "projectName" => String.t(),
        "sessionId" => [String.t()],
        "spaceName" => String.t()
      }
      
  """
  @type start_dev_environment_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_definition_summary() :: %{
        "path" => [String.t()]
      }
      
  """
  @type workflow_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_response() :: %{
        "displayName" => [String.t()],
        "name" => String.t(),
        "spaceName" => String.t()
      }
      
  """
  @type delete_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      persistent_storage_configuration() :: %{
        "sizeInGiB" => [integer()]
      }
      
  """
  @type persistent_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_request() :: %{
        optional("description") => String.t()
      }
      
  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dev_environment_session_summary() :: %{
        "devEnvironmentId" => String.t(),
        "id" => [String.t()],
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "startedTime" => non_neg_integer()
      }
      
  """
  @type dev_environment_session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_source_repository_response() :: %{
        "createdTime" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }
      
  """
  @type get_source_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dev_environments_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("projectName") => String.t()
      }
      
  """
  @type list_dev_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_list_filter() :: %{
        "comparisonOperator" => String.t(),
        "key" => String.t(),
        "values" => list([String.t()]())
      }
      
  """
  @type project_list_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_dev_environment_session_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "sessionId" => [String.t()],
        "spaceName" => String.t()
      }
      
  """
  @type stop_dev_environment_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_space_request() :: %{
        optional("description") => String.t()
      }
      
  """
  @type update_space_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflow_runs_response() :: %{
        "items" => list(workflow_run_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_workflow_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dev_environment_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "vpcConnectionName" => String.t()
      }
      
  """
  @type create_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_access_token_request() :: %{}
      
  """
  @type delete_access_token_request() :: %{}

  @typedoc """

  ## Example:
      
      list_event_logs_response() :: %{
        "items" => list(event_log_entry()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_event_logs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_session_response() :: %{
        "identity" => [String.t()]
      }
      
  """
  @type verify_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      persistent_storage() :: %{
        "sizeInGiB" => [integer()]
      }
      
  """
  @type persistent_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_token_request() :: %{
        optional("expiresTime") => non_neg_integer(),
        required("name") => String.t()
      }
      
  """
  @type create_access_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_spaces_response() :: %{
        "items" => list(space_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_spaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dev_environment_repository_summary() :: %{
        "branchName" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type dev_environment_repository_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_request() :: %{
        optional("description") => String.t(),
        required("displayName") => String.t()
      }
      
  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dev_environments_response() :: %{
        "items" => list(dev_environment_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_dev_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_space_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t(),
        "regionName" => String.t()
      }
      
  """
  @type get_space_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_request() :: %{
        optional("filters") => list(project_list_filter()()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_source_repository_branches_item() :: %{
        "headCommitId" => [String.t()],
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t(),
        "ref" => String.t()
      }
      
  """
  @type list_source_repository_branches_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_dev_environment_session_request() :: %{}
      
  """
  @type stop_dev_environment_session_request() :: %{}

  @typedoc """

  ## Example:
      
      get_workflow_run_request() :: %{}
      
  """
  @type get_workflow_run_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_access_token_response() :: %{}
      
  """
  @type delete_access_token_response() :: %{}

  @typedoc """

  ## Example:
      
      execute_command_session_configuration() :: %{
        "arguments" => list([String.t()]()),
        "command" => [String.t()]
      }
      
  """
  @type execute_command_session_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dev_environment_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }
      
  """
  @type delete_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_definition() :: %{
        "path" => [String.t()]
      }
      
  """
  @type workflow_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_request() :: %{}
      
  """
  @type delete_project_request() :: %{}

  @typedoc """

  ## Example:
      
      list_source_repositories_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_source_repositories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_source_repository_response() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }
      
  """
  @type create_source_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflows_response() :: %{
        "items" => list(workflow_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_workflows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_run_response() :: %{
        "endTime" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "statusReasons" => list(workflow_run_status_reason()()),
        "workflowId" => String.t()
      }
      
  """
  @type get_workflow_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_sort_criteria() :: %{}
      
  """
  @type workflow_sort_criteria() :: %{}

  @typedoc """

  ## Example:
      
      list_source_repositories_response() :: %{
        "items" => list(list_source_repositories_item()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_source_repositories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_run_summary() :: %{
        "endTime" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "statusReasons" => list(workflow_run_status_reason()()),
        "workflowId" => String.t(),
        "workflowName" => [String.t()]
      }
      
  """
  @type workflow_run_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dev_environment_session_configuration() :: %{
        "executeCommandSessionConfiguration" => execute_command_session_configuration(),
        "sessionType" => String.t()
      }
      
  """
  @type dev_environment_session_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_tokens_response() :: %{
        "items" => list(access_token_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_access_tokens_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      space_summary() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t(),
        "regionName" => String.t()
      }
      
  """
  @type space_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_source_repository_clone_urls_response() :: %{
        "https" => [String.t()]
      }
      
  """
  @type get_source_repository_clone_urls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_spaces_request() :: %{
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_spaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_payload() :: %{
        "contentType" => [String.t()],
        "data" => [String.t()]
      }
      
  """
  @type event_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_response() :: %{
        "createdTime" => non_neg_integer(),
        "definition" => workflow_definition(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => [String.t()],
        "projectName" => String.t(),
        "runMode" => String.t(),
        "sourceBranchName" => String.t(),
        "sourceRepositoryName" => String.t(),
        "spaceName" => String.t(),
        "status" => String.t()
      }
      
  """
  @type get_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_source_repository_branch_response() :: %{
        "headCommitId" => [String.t()],
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t(),
        "ref" => String.t()
      }
      
  """
  @type create_source_repository_branch_response() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2022-09-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codecatalyst",
      global?: true,
      hostname: "codecatalyst.global.api.aws",
      protocol: "rest-json",
      service_id: "CodeCatalyst",
      signature_version: nil,
      signing_name: "codecatalyst",
      target_prefix: nil
    }
  end

  @doc """
  Creates a personal access token (PAT) for the current user. A personal access
  token (PAT) is similar to a password. It is associated with your user identity
  for use across all spaces and projects in Amazon CodeCatalyst. You use PATs to
  access CodeCatalyst from resources that include integrated development
  environments (IDEs) and Git-based source repositories. PATs represent you in
  Amazon CodeCatalyst and you can manage them in your user settings.For more
  information, see [Managing personal access tokens in Amazon
  CodeCatalyst](https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-tokens-keys.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20CreateAccessToken&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_access_token(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_access_token_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def create_access_token(%Client{} = client, options \\ []) do
    url_path = "/v1/accessTokens"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based development
  environment that you can use to quickly work on the code stored in the source
  repositories of your project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20CreateDevEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec create_dev_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def create_dev_environment(%Client{} = client, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a project in a specified space.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20CreateProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec create_project(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def create_project(%Client{} = client, space_name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates an empty Git-based source repository in a specified project. The
  repository is created with an initial empty commit with a default branch named
  `main`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20CreateSourceRepository&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the source repository. For more information
  about name requirements, see Quotas for source repositories.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec create_source_repository(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_source_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def create_source_repository(%Client{} = client, name, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(name)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a branch in a specified source repository in Amazon CodeCatalyst.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20CreateSourceRepositoryBranch&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name for the branch you're creating.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:source_repository_name` (`t:string`) The name of the repository where you
  want to create a branch.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec create_source_repository_branch(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, create_source_repository_branch_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def create_source_repository_branch(
        %Client{} = client,
        name,
        project_name,
        source_repository_name,
        space_name,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(source_repository_name)}/branches/#{AWS.Util.encode_uri(name)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deletes a specified personal access token (PAT). A personal access token can
  only be deleted by the user who created it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20DeleteAccessToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the personal access token to delete. You can find
  the IDs of all PATs associated with your Amazon Web Services Builder ID in a
  space by calling ListAccessTokens.

  ## Optional parameters:
  """

  @spec delete_access_token(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_access_token_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_access_token(%Client{} = client, id, options \\ []) do
    url_path = "/v1/accessTokens/#{AWS.Util.encode_uri(id)}"

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
  Deletes a Dev Environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20DeleteDevEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The system-generated unique ID of the Dev Environment you
  want to delete. To retrieve a list of Dev Environment IDs, use
  ListDevEnvironments.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec delete_dev_environment(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_dev_environment(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}"

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
  Deletes a project in a space.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20DeleteProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the project in the space. To retrieve a list
  of project names, use ListProjects.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec delete_project(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_project(%Client{} = client, name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(name)}"

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
  Deletes a source repository in Amazon CodeCatalyst. You cannot use this API to
  delete a linked repository. It can only be used to delete a Amazon
  CodeCatalyst source repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20DeleteSourceRepository&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the source repository.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec delete_source_repository(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_source_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_source_repository(%Client{} = client, name, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(name)}"

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
  Deletes a space.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20DeleteSpace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the space. To retrieve a list of space names,
  use ListSpaces.

  ## Optional parameters:
  """

  @spec delete_space(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_space_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_space(%Client{} = client, name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(name)}"

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
  Returns information about a Dev Environment for a source repository in a
  project. Dev Environments are specific to the user who creates them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20GetDevEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The system-generated unique ID of the Dev Environment for
  which you want to view information. To retrieve a list of Dev Environment
  IDs, use ListDevEnvironments.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec get_dev_environment(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_dev_environment(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}"

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
  Returns information about a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20GetProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec get_project(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_project_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_project(%Client{} = client, name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(name)}"

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
  Returns information about a source repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20GetSourceRepository&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the source repository.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec get_source_repository(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_source_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_source_repository(%Client{} = client, name, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(name)}"

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
  Returns information about the URLs that can be used with a Git client to clone a
  source repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20GetSourceRepositoryCloneUrls&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:source_repository_name` (`t:string`) The name of the source repository.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec get_source_repository_clone_urls(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_source_repository_clone_urls_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_source_repository_clone_urls(
        %Client{} = client,
        project_name,
        source_repository_name,
        space_name,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(source_repository_name)}/cloneUrls"

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
  Returns information about an space.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20GetSpace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec get_space(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_space_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_space(%Client{} = client, name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(name)}"

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
  Returns information about the Amazon Web Services account used for billing
  purposes and the billing plan for the space.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20GetSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec get_subscription(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_subscription(%Client{} = client, space_name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/subscription"

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
  Returns information about a user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20GetUserDetails&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:id` (`t:string`) The system-generated unique ID of the user.
  * `:user_name` (`t:string`) The name of the user as displayed in Amazon
  CodeCatalyst.
  """

  @spec get_user_details(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_user_details_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_user_details(%Client{} = client, options \\ []) do
    url_path = "/userDetails"

    # Validate optional parameters
    optional_params = [id: nil, user_name: nil]

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
      if opt_val = Keyword.get(options, :user_name) do
        [{"userName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :id) do
        [{"id", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:id, :user_name])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20GetWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the workflow. To rerieve a list of workflow IDs,
  use ListWorkflows.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec get_workflow(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_workflow(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflows/#{AWS.Util.encode_uri(id)}"

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
  Returns information about a specified run of a workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20GetWorkflowRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the workflow run. To retrieve a list of workflow
  run IDs, use ListWorkflowRuns.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec get_workflow_run(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_workflow_run(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflowRuns/#{AWS.Util.encode_uri(id)}"

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
  Lists all personal access tokens (PATs) associated with the user who calls the
  API. You can only list PATs associated with your Amazon Web Services Builder
  ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListAccessTokens&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_access_tokens(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_access_tokens_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_access_tokens(%Client{} = client, options \\ []) do
    url_path = "/v1/accessTokens"

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
  Retrieves a list of active sessions for a Dev Environment in a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListDevEnvironmentSessions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dev_environment_id` (`t:string`) The system-generated unique ID of the Dev
  Environment.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec list_dev_environment_sessions(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_dev_environment_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_dev_environment_sessions(
        %Client{} = client,
        dev_environment_id,
        project_name,
        space_name,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(dev_environment_id)}/sessions"

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
  Retrieves a list of Dev Environments in a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListDevEnvironments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec list_dev_environments(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_dev_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_dev_environments(%Client{} = client, space_name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/devEnvironments"

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
  Retrieves a list of events that occurred during a specific time in a space. You
  can use these events to audit user and system activity in a space. For more
  information, see
  [Monitoring](https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-monitoring.html)
  in the *Amazon CodeCatalyst User Guide*. ListEventLogs guarantees events for
  the last 30 days in a given space. You can also view and retrieve a list of
  management events over the last 90 days for Amazon CodeCatalyst in the
  CloudTrail console by viewing Event history, or by creating a trail to create
  and maintain a record of events that extends past 90 days. For more
  information, see [Working with CloudTrail Event
  History](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events.html)
  and [Working with CloudTrail
  trails](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-getting-started.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListEventLogs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec list_event_logs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_event_logs_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_event_logs(%Client{} = client, space_name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/eventLogs"

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
  Retrieves a list of projects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListProjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec list_projects(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_projects(%Client{} = client, space_name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects"

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
  Retrieves a list of source repositories in a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListSourceRepositories&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec list_source_repositories(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_source_repositories_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_source_repositories(%Client{} = client, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories"

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
  Retrieves a list of branches in a specified source repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListSourceRepositoryBranches&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:source_repository_name` (`t:string`) The name of the source repository.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec list_source_repository_branches(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_source_repository_branches_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_source_repository_branches(
        %Client{} = client,
        project_name,
        source_repository_name,
        space_name,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(source_repository_name)}/branches"

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
  Retrieves a list of spaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListSpaces&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_spaces(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_spaces_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_spaces(%Client{} = client, options \\ []) do
    url_path = "/v1/spaces"

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
  Retrieves a list of workflow runs of a specified workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListWorkflowRuns&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of results to show in a single
  call to this API. If the number of results is larger than the number you
  specified, the response will include a NextToken element, which you can use
  to obtain additional results.
  * `:next_token` (`t:string`) A token returned from a call to this API to
  indicate the next batch of results to return, if any.
  * `:workflow_id` (`t:string`) The ID of the workflow. To retrieve a list of
  workflow IDs, use ListWorkflows.
  """

  @spec list_workflow_runs(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_workflow_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_workflow_runs(%Client{} = client, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflowRuns"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, workflow_id: nil]

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
      if opt_val = Keyword.get(options, :workflow_id) do
        [{"workflowId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :workflow_id])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of workflows in a specified project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20ListWorkflows&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of results to show in a single
  call to this API. If the number of results is larger than the number you
  specified, the response will include a NextToken element, which you can use
  to obtain additional results.
  * `:next_token` (`t:string`) A token returned from a call to this API to
  indicate the next batch of results to return, if any.
  """

  @spec list_workflows(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_workflows(%Client{} = client, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflows"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts a specified Dev Environment and puts it into an active state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20StartDevEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The system-generated unique ID of the Dev Environment.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec start_dev_environment(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, start_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def start_dev_environment(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}/start"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts a session for a specified Dev Environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20StartDevEnvironmentSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The system-generated unique ID of the Dev Environment.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec start_dev_environment_session(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, start_dev_environment_session_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def start_dev_environment_session(
        %Client{} = client,
        id,
        project_name,
        space_name,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}/session"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Begins a run of a specified workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20StartWorkflowRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.
  * `:workflow_id` (`t:string`) The system-generated unique ID of the workflow. To
  retrieve a list of workflow IDs, use ListWorkflows.

  ## Optional parameters:
  """

  @spec start_workflow_run(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, start_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def start_workflow_run(%Client{} = client, project_name, space_name, workflow_id, options \\ [])
      when is_binary(workflow_id) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflowRuns"

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
    query_params = [{"workflowId", workflow_id}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Pauses a specified Dev Environment and places it in a non-running state. Stopped
  Dev Environments do not consume compute minutes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20StopDevEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The system-generated unique ID of the Dev Environment.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec stop_dev_environment(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, stop_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def stop_dev_environment(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}/stop"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Stops a session for a specified Dev Environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20StopDevEnvironmentSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The system-generated unique ID of the Dev Environment. To
  obtain this ID, use ListDevEnvironments.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:session_id` (`t:string`) The system-generated unique ID of the Dev
  Environment session. This ID is returned by StartDevEnvironmentSession.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec stop_dev_environment_session(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, stop_dev_environment_session_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def stop_dev_environment_session(
        %Client{} = client,
        id,
        project_name,
        session_id,
        space_name,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}/session/#{AWS.Util.encode_uri(session_id)}"

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
  Changes one or more values for a Dev Environment. Updating certain values of the
  Dev Environment will cause a restart.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20UpdateDevEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The system-generated unique ID of the Dev Environment.
  * `:project_name` (`t:string`) The name of the project in the space.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec update_dev_environment(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def update_dev_environment(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}"

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
  Changes one or more values for a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20UpdateProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the project.
  * `:space_name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec update_project(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_project_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def update_project(%Client{} = client, name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(name)}"

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
  Changes one or more values for a space.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20UpdateSpace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the space.

  ## Optional parameters:
  """

  @spec update_space(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_space_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def update_space(%Client{} = client, name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(name)}"

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
  Verifies whether the calling user has a valid Amazon CodeCatalyst login and
  session. If successful, this returns the ID of the user in Amazon
  CodeCatalyst.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codecatalyst%20VerifySession&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec verify_session(AWS.Client.t(), Keyword.t()) ::
          {:ok, verify_session_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def verify_session(%Client{} = client, options \\ []) do
    url_path = "/session"

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
end
