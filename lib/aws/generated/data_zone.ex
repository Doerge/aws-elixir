# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataZone do
  @moduledoc """
  Amazon DataZone is a data management service that enables you to catalog,
  discover, govern, share, and analyze your data. With Amazon DataZone, you can
  share and access your data across accounts and supported regions. Amazon
  DataZone simplifies your experience across Amazon Web Services services,
  including, but not limited to, Amazon Redshift, Amazon Athena, Amazon Web
  Services Glue, and Amazon Web Services Lake Formation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      asset_revision() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "revision" => String.t()
      }
      
  """
  @type asset_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_group_profile_input() :: %{
        required("status") => list(any())
      }
      
  """
  @type update_group_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_output() :: %{
        "description" => [String.t()],
        "domainExecutionRole" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => [String.t()],
        "singleSignOn" => single_sign_on()
      }
      
  """
  @type update_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_metadata_generation_runs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any()),
        optional("type") => list(any())
      }
      
  """
  @type list_metadata_generation_runs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_asset_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("externalIdentifier") => String.t(),
        optional("formsInput") => list(form_input()()),
        optional("glossaryTerms") => list(String.t()()),
        optional("predictionConfiguration") => prediction_configuration(),
        optional("typeRevision") => String.t(),
        required("name") => String.t(),
        required("owningProjectIdentifier") => String.t(),
        required("typeIdentifier") => String.t()
      }
      
  """
  @type create_asset_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_user_profiles_output() :: %{
        "items" => list(user_profile_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type search_user_profiles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_item() :: %{
        "additionalAttributes" => asset_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "externalIdentifier" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "identifier" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type asset_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      business_name_generation_configuration() :: %{
        "enabled" => [boolean()]
      }
      
  """
  @type business_name_generation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_action_input() :: %{
        optional("description") => [String.t()],
        required("name") => [String.t()],
        required("parameters") => list()
      }
      
  """
  @type create_environment_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_actions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environment_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_filter_summary() :: %{
        "assetId" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "effectiveColumnNames" => list([String.t()]()),
        "effectiveRowFilter" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type asset_filter_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_credential_configuration() :: %{
        "secretManagerArn" => [String.t()]
      }
      
  """
  @type redshift_credential_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_glossary_term_output() :: %{
        "domainId" => String.t(),
        "glossaryId" => String.t(),
        "id" => String.t(),
        "longDescription" => String.t(),
        "name" => String.t(),
        "shortDescription" => String.t(),
        "status" => list(any()),
        "termRelations" => term_relations()
      }
      
  """
  @type update_glossary_term_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_time_series_data_points_output() :: %{}
      
  """
  @type delete_time_series_data_points_output() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_blueprint_configurations_output() :: %{
        "items" => list(environment_blueprint_configuration_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environment_blueprint_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_source_runs_output() :: %{
        "items" => list(data_source_run_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_data_source_runs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_run_configuration_input() :: %{
        "dataAccessRole" => [String.t()],
        "redshiftCredentialConfiguration" => redshift_credential_configuration(),
        "redshiftStorage" => list(),
        "relationalFilterConfigurations" => list(relational_filter_configuration()())
      }
      
  """
  @type redshift_run_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_asset_filters_output() :: %{
        "items" => list(asset_filter_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_asset_filters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_source_runs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type list_data_source_runs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_asset_type_input() :: %{
        optional("revision") => String.t()
      }
      
  """
  @type get_asset_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_sort() :: %{
        "attribute" => String.t(),
        "order" => list(any())
      }
      
  """
  @type search_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type subscription_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_target_form() :: %{
        "content" => [String.t()],
        "formName" => String.t()
      }
      
  """
  @type subscription_target_form() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_project_memberships_output() :: %{
        "members" => list(project_member()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_project_memberships_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_profile_input() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsAccountRegion") => String.t(),
        optional("description") => [String.t()],
        optional("name") => String.t(),
        optional("userParameters") => list(environment_parameter()())
      }
      
  """
  @type update_environment_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscription_target_output() :: %{
        "applicableAssetTypes" => list(String.t()()),
        "authorizedPrincipals" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "manageAccessRole" => [String.t()],
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "subscriptionTargetConfig" => list(subscription_target_form()()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type update_subscription_target_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_subscription_request_input() :: %{
        optional("decisionComment") => String.t()
      }
      
  """
  @type reject_subscription_request_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_group_profile_output() :: %{
        "domainId" => String.t(),
        "groupName" => String.t(),
        "id" => String.t(),
        "status" => list(any())
      }
      
  """
  @type update_group_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_input() :: %{}
      
  """
  @type get_domain_input() :: %{}

  @typedoc """

  ## Example:
      
      get_environment_action_input() :: %{}
      
  """
  @type get_environment_action_input() :: %{}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_asset_filter_output() :: %{
        "assetId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "effectiveColumnNames" => list([String.t()]()),
        "effectiveRowFilter" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type get_asset_filter_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_form_type_output() :: %{}
      
  """
  @type delete_form_type_output() :: %{}

  @typedoc """

  ## Example:
      
      asset_listing_details() :: %{
        "listingId" => String.t(),
        "listingStatus" => list(any())
      }
      
  """
  @type asset_listing_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        "deploymentId" => [String.t()],
        "deploymentStatus" => list(any()),
        "deploymentType" => list(any()),
        "failureReason" => environment_error(),
        "isDeploymentComplete" => [boolean()],
        "messages" => list(String.t()())
      }
      
  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentActions" => list(configurable_environment_action()()),
        "environmentBlueprintId" => String.t(),
        "environmentProfileId" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastDeployment" => deployment(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "provisionedResources" => list(resource()()),
        "provisioningProperties" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }
      
  """
  @type get_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_input() :: %{
        optional("description") => String.t(),
        optional("glossaryTerms") => list(String.t()()),
        optional("name") => String.t()
      }
      
  """
  @type update_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_source_input() :: %{}
      
  """
  @type get_data_source_input() :: %{}

  @typedoc """

  ## Example:
      
      get_lineage_node_input() :: %{
        optional("eventTimestamp") => [non_neg_integer()]
      }
      
  """
  @type get_lineage_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_member() :: %{
        "designation" => list(any()),
        "memberDetails" => list()
      }
      
  """
  @type project_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "failureReasons" => list(project_deletion_error()()),
        "id" => String.t(),
        "name" => String.t(),
        "projectStatus" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      project_deletion_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type project_deletion_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_action_output() :: %{
        "description" => [String.t()],
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "parameters" => list()
      }
      
  """
  @type create_environment_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_listing_change_set_output() :: %{
        "listingId" => String.t(),
        "listingRevision" => String.t(),
        "status" => list(any())
      }
      
  """
  @type create_listing_change_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_profile_output() :: %{
        "domainId" => String.t(),
        "groupName" => String.t(),
        "id" => String.t(),
        "status" => list(any())
      }
      
  """
  @type get_group_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_input() :: %{
        optional("description") => [String.t()],
        optional("environmentAccountIdentifier") => [String.t()],
        optional("environmentAccountRegion") => [String.t()],
        optional("environmentBlueprintIdentifier") => [String.t()],
        optional("glossaryTerms") => list(String.t()()),
        optional("userParameters") => list(environment_parameter()()),
        required("environmentProfileIdentifier") => String.t(),
        required("name") => [String.t()],
        required("projectIdentifier") => String.t()
      }
      
  """
  @type create_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_profile_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentBlueprintId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }
      
  """
  @type update_environment_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      term_relations() :: %{
        "classifies" => list(String.t()()),
        "isA" => list(String.t()())
      }
      
  """
  @type term_relations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_target_input() :: %{}
      
  """
  @type get_subscription_target_input() :: %{}

  @typedoc """

  ## Example:
      
      list_time_series_data_points_output() :: %{
        "items" => list(time_series_data_point_summary_form_output()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_time_series_data_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_summary() :: %{
        "arn" => [String.t()],
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "managedAccountId" => [String.t()],
        "name" => String.t(),
        "portalUrl" => [String.t()],
        "status" => list(any())
      }
      
  """
  @type domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscription_target_output() :: %{
        "applicableAssetTypes" => list(String.t()()),
        "authorizedPrincipals" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "manageAccessRole" => [String.t()],
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "subscriptionTargetConfig" => list(subscription_target_form()()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type create_subscription_target_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscription_request_input() :: %{
        optional("clientToken") => [String.t()],
        required("requestReason") => String.t(),
        required("subscribedListings") => list(subscribed_listing_input()()),
        required("subscribedPrincipals") => list(list()())
      }
      
  """
  @type create_subscription_request_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_source_input() :: %{
        optional("assetFormsInput") => list(form_input()()),
        optional("clientToken") => [String.t()],
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("enableSetting") => list(any()),
        optional("publishOnImport") => [boolean()],
        optional("recommendation") => recommendation_configuration(),
        optional("schedule") => schedule_configuration(),
        required("environmentIdentifier") => [String.t()],
        required("name") => String.t(),
        required("projectIdentifier") => [String.t()],
        required("type") => String.t()
      }
      
  """
  @type create_data_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_form_type_input() :: %{
        optional("description") => String.t(),
        optional("status") => list(any()),
        required("model") => list(),
        required("name") => String.t(),
        required("owningProjectIdentifier") => String.t()
      }
      
  """
  @type create_form_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_summary() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentProfileId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_resource() :: %{
        "id" => [String.t()],
        "name" => [String.t()],
        "type" => list(any())
      }
      
  """
  @type notification_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source_run_activity() :: %{
        "createdAt" => non_neg_integer(),
        "dataAssetId" => [String.t()],
        "dataAssetStatus" => list(any()),
        "dataSourceRunId" => String.t(),
        "database" => String.t(),
        "errorMessage" => data_source_error_message(),
        "projectId" => String.t(),
        "technicalDescription" => String.t(),
        "technicalName" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type data_source_run_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_input() :: %{}
      
  """
  @type delete_environment_input() :: %{}

  @typedoc """

  ## Example:
      
      search_input() :: %{
        optional("additionalAttributes") => list(list(any())()),
        optional("filters") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owningProjectIdentifier") => String.t(),
        optional("searchIn") => list(search_in_item()()),
        optional("searchText") => String.t(),
        optional("sort") => search_sort(),
        required("searchScope") => list(any())
      }
      
  """
  @type search_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      single_sign_on() :: %{
        "type" => list(any()),
        "userAssignment" => list(any())
      }
      
  """
  @type single_sign_on() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_asset_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "externalIdentifier" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "formsOutput" => list(form_output()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()()),
        "listing" => asset_listing_details(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "predictionConfiguration" => prediction_configuration(),
        "readOnlyFormsOutput" => list(form_output()()),
        "revision" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type create_asset_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscription_grants_output() :: %{
        "items" => list(subscription_grant_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_subscription_grants_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      less_than_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type less_than_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_subscription_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type revoke_subscription_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_profile_output() :: %{
        "details" => list(),
        "domainId" => String.t(),
        "id" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type get_user_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_details() :: %{
        "userId" => [String.t()]
      }
      
  """
  @type user_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_time_series_data_points_input() :: %{
        optional("clientToken") => String.t(),
        required("formName") => String.t()
      }
      
  """
  @type delete_time_series_data_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      group_profile_summary() :: %{
        "domainId" => String.t(),
        "groupName" => String.t(),
        "id" => String.t(),
        "status" => list(any())
      }
      
  """
  @type group_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_asset_revision_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("formsInput") => list(form_input()()),
        optional("glossaryTerms") => list(String.t()()),
        optional("predictionConfiguration") => prediction_configuration(),
        optional("typeRevision") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_asset_revision_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      is_not_null_expression() :: %{
        "columnName" => [String.t()]
      }
      
  """
  @type is_not_null_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscription_request_input() :: %{
        required("requestReason") => String.t()
      }
      
  """
  @type update_subscription_request_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_listing_input() :: %{
        optional("listingRevision") => String.t()
      }
      
  """
  @type get_listing_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_self_grant_status_output() :: %{
        "selfGrantStatusDetails" => list(self_grant_status_detail()())
      }
      
  """
  @type redshift_self_grant_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "failureReasons" => list(project_deletion_error()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "projectStatus" => list(any())
      }
      
  """
  @type create_project_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_blueprint_configuration_input() :: %{}
      
  """
  @type get_environment_blueprint_configuration_input() :: %{}

  @typedoc """

  ## Example:
      
      subscription_target_summary() :: %{
        "applicableAssetTypes" => list(String.t()()),
        "authorizedPrincipals" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "manageAccessRole" => [String.t()],
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "subscriptionTargetConfig" => list(subscription_target_form()()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type subscription_target_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lineage_node_history_input() :: %{
        optional("direction") => list(any()),
        optional("eventTimestampGTE") => [non_neg_integer()],
        optional("eventTimestampLTE") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_lineage_node_history_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_subscription_input() :: %{
        optional("retainPermissions") => [boolean()]
      }
      
  """
  @type revoke_subscription_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_types_input() :: %{
        optional("filters") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("searchIn") => list(search_in_item()()),
        optional("searchText") => String.t(),
        optional("sort") => search_sort(),
        required("managed") => [boolean()],
        required("searchScope") => list(any())
      }
      
  """
  @type search_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_environment_role_input() :: %{}
      
  """
  @type disassociate_environment_role_input() :: %{}

  @typedoc """

  ## Example:
      
      greater_than_or_equal_to_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type greater_than_or_equal_to_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_asset_filter_input() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => String.t(),
        required("configuration") => list(),
        required("name") => String.t()
      }
      
  """
  @type create_asset_filter_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      post_time_series_data_points_input() :: %{
        optional("clientToken") => String.t(),
        required("forms") => list(time_series_data_point_form_input()())
      }
      
  """
  @type post_time_series_data_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_source_run_input() :: %{}
      
  """
  @type get_data_source_run_input() :: %{}

  @typedoc """

  ## Example:
      
      subscription_grant_summary() :: %{
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type subscription_grant_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()()),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lastRunAssetCount" => [integer()],
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "projectId" => String.t(),
        "publishOnImport" => [boolean()],
        "recommendation" => recommendation_configuration(),
        "schedule" => schedule_configuration(),
        "selfGrantStatus" => list(),
        "status" => list(any()),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type get_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notifications_input() :: %{
        optional("afterTimestamp") => [non_neg_integer()],
        optional("beforeTimestamp") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("subjects") => list([String.t()]()),
        optional("taskStatus") => list(any()),
        required("type") => list(any())
      }
      
  """
  @type list_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_serverless_storage() :: %{
        "workgroupName" => [String.t()]
      }
      
  """
  @type redshift_serverless_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscriptions_input() :: %{
        optional("approverProjectId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owningProjectId") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("status") => list(any()),
        optional("subscribedListingId") => String.t(),
        optional("subscriptionRequestIdentifier") => String.t()
      }
      
  """
  @type list_subscriptions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_asset_filter_input() :: %{}
      
  """
  @type delete_asset_filter_input() :: %{}

  @typedoc """

  ## Example:
      
      update_user_profile_input() :: %{
        optional("type") => list(any()),
        required("status") => list(any())
      }
      
  """
  @type update_user_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_asset_type_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "formsOutput" => map(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type get_asset_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_blueprint_configurations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environment_blueprint_configurations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_input() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsAccountRegion") => String.t(),
        optional("environmentBlueprintIdentifier") => String.t(),
        optional("environmentProfileIdentifier") => String.t(),
        optional("maxResults") => integer(),
        optional("name") => [String.t()],
        optional("nextToken") => String.t(),
        optional("provider") => [String.t()],
        optional("status") => list(any()),
        required("projectIdentifier") => String.t()
      }
      
  """
  @type list_environments_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_environment_role_input() :: %{}
      
  """
  @type associate_environment_role_input() :: %{}

  @typedoc """

  ## Example:
      
      cancel_metadata_generation_run_output() :: %{}
      
  """
  @type cancel_metadata_generation_run_output() :: %{}

  @typedoc """

  ## Example:
      
      list_environment_actions_output() :: %{
        "items" => list(environment_action_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environment_actions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_generation_run_input() :: %{
        optional("clientToken") => String.t(),
        required("owningProjectIdentifier") => String.t(),
        required("target") => metadata_generation_run_target(),
        required("type") => list(any())
      }
      
  """
  @type start_metadata_generation_run_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_item_additional_attributes() :: %{
        "formsOutput" => list(form_output()()),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()()),
        "readOnlyFormsOutput" => list(form_output()())
      }
      
  """
  @type asset_item_additional_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_blueprint_configuration_item() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t(),
        "enabledRegions" => list(String.t()()),
        "environmentBlueprintId" => String.t(),
        "manageAccessRoleArn" => String.t(),
        "provisioningConfigurations" => list(list()()),
        "provisioningRoleArn" => String.t(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type environment_blueprint_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_action_input() :: %{
        optional("description") => [String.t()],
        optional("name") => [String.t()],
        optional("parameters") => list()
      }
      
  """
  @type update_environment_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_data_source_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceConfigurationSnapshot" => [String.t()],
        "dataSourceId" => String.t(),
        "domainId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "projectId" => String.t(),
        "runStatisticsForAssets" => run_statistics_for_assets(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "stoppedAt" => non_neg_integer(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type start_data_source_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_choice() :: %{
        "predictionChoices" => list([integer()]()),
        "predictionTarget" => [String.t()]
      }
      
  """
  @type reject_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_source_run_activities_output() :: %{
        "items" => list(data_source_run_activity()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_data_source_run_activities_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_predictions_output() :: %{
        "assetId" => String.t(),
        "assetRevision" => String.t(),
        "domainId" => String.t()
      }
      
  """
  @type reject_predictions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_input() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => [String.t()],
        optional("kmsKeyIdentifier") => String.t(),
        optional("singleSignOn") => single_sign_on(),
        optional("tags") => map(),
        required("domainExecutionRole") => String.t(),
        required("name") => [String.t()]
      }
      
  """
  @type create_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscription_target_input() :: %{}
      
  """
  @type delete_subscription_target_input() :: %{}

  @typedoc """

  ## Example:
      
      list_time_series_data_points_input() :: %{
        optional("endedAt") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("startedAt") => [non_neg_integer()],
        required("formName") => String.t()
      }
      
  """
  @type list_time_series_data_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_request_details_input() :: %{}
      
  """
  @type get_subscription_request_details_input() :: %{}

  @typedoc """

  ## Example:
      
      lineage_node_type_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => [String.t()],
        "domainId" => String.t(),
        "formsOutput" => map(),
        "name" => [String.t()],
        "revision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type lineage_node_type_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metadata_generation_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "target" => metadata_generation_run_target(),
        "type" => list(any())
      }
      
  """
  @type get_metadata_generation_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source_error_message() :: %{
        "errorDetail" => [String.t()],
        "errorType" => list(any())
      }
      
  """
  @type data_source_error_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_cluster_storage() :: %{
        "clusterName" => [String.t()]
      }
      
  """
  @type redshift_cluster_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_asset_type_output() :: %{}
      
  """
  @type delete_asset_type_output() :: %{}

  @typedoc """

  ## Example:
      
      reject_rule() :: %{
        "rule" => list(any()),
        "threshold" => [float()]
      }
      
  """
  @type reject_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_profile_input() :: %{
        optional("type") => list(any())
      }
      
  """
  @type get_user_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glossary_term_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "glossaryId" => String.t(),
        "id" => String.t(),
        "longDescription" => String.t(),
        "name" => String.t(),
        "shortDescription" => String.t(),
        "status" => list(any()),
        "termRelations" => term_relations(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type glossary_term_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_target_name_map() :: %{
        "assetId" => String.t(),
        "targetName" => [String.t()]
      }
      
  """
  @type asset_target_name_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_environment_blueprint_configuration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t(),
        "enabledRegions" => list(String.t()()),
        "environmentBlueprintId" => String.t(),
        "manageAccessRoleArn" => String.t(),
        "provisioningConfigurations" => list(list()()),
        "provisioningRoleArn" => String.t(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type put_environment_blueprint_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscription_grant_input() :: %{
        optional("assetTargetNames") => list(asset_target_name_map()()),
        optional("clientToken") => [String.t()],
        required("environmentIdentifier") => String.t(),
        required("grantedEntity") => list(),
        required("subscriptionTargetIdentifier") => String.t()
      }
      
  """
  @type create_subscription_grant_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_profile_input() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsAccountRegion") => String.t(),
        optional("description") => String.t(),
        optional("userParameters") => list(environment_parameter()()),
        required("environmentBlueprintIdentifier") => String.t(),
        required("name") => String.t(),
        required("projectIdentifier") => String.t()
      }
      
  """
  @type create_environment_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentActions" => list(configurable_environment_action()()),
        "environmentBlueprintId" => String.t(),
        "environmentProfileId" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastDeployment" => deployment(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "provisionedResources" => list(resource()()),
        "provisioningProperties" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }
      
  """
  @type create_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      post_lineage_event_input() :: %{
        optional("clientToken") => String.t(),
        required("event") => binary()
      }
      
  """
  @type post_lineage_event_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_user_profile_details() :: %{
        "arn" => [String.t()]
      }
      
  """
  @type iam_user_profile_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_predictions_input() :: %{
        optional("clientToken") => String.t(),
        optional("rejectChoices") => list(reject_choice()()),
        optional("rejectRule") => reject_rule(),
        optional("revision") => String.t()
      }
      
  """
  @type reject_predictions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_data_point_form_input() :: %{
        "content" => [String.t()],
        "formName" => String.t(),
        "timestamp" => [non_neg_integer()],
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type time_series_data_point_form_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_output() :: %{
        "items" => list(list()()),
        "nextToken" => String.t(),
        "totalMatchCount" => [integer()]
      }
      
  """
  @type search_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_grant_input() :: %{}
      
  """
  @type get_subscription_grant_input() :: %{}

  @typedoc """

  ## Example:
      
      create_user_profile_input() :: %{
        optional("clientToken") => [String.t()],
        optional("userType") => list(any()),
        required("userIdentifier") => String.t()
      }
      
  """
  @type create_user_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_blueprint_configuration_input() :: %{}
      
  """
  @type delete_environment_blueprint_configuration_input() :: %{}

  @typedoc """

  ## Example:
      
      subscribed_listing() :: %{
        "description" => String.t(),
        "id" => String.t(),
        "item" => list(),
        "name" => String.t(),
        "ownerProjectId" => String.t(),
        "ownerProjectName" => [String.t()],
        "revision" => String.t()
      }
      
  """
  @type subscribed_listing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_form_type_output() :: %{
        "description" => String.t(),
        "domainId" => String.t(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t()
      }
      
  """
  @type create_form_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_generation_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type start_metadata_generation_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscription_target_input() :: %{
        optional("clientToken") => [String.t()],
        optional("provider") => [String.t()],
        required("applicableAssetTypes") => list(String.t()()),
        required("authorizedPrincipals") => list(String.t()()),
        required("manageAccessRole") => [String.t()],
        required("name") => String.t(),
        required("subscriptionTargetConfig") => list(subscription_target_form()()),
        required("type") => [String.t()]
      }
      
  """
  @type create_subscription_target_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_source_input() :: %{
        optional("assetFormsInput") => list(form_input()()),
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("enableSetting") => list(any()),
        optional("name") => String.t(),
        optional("publishOnImport") => [boolean()],
        optional("recommendation") => recommendation_configuration(),
        optional("retainPermissionsOnRevokeFailure") => [boolean()],
        optional("schedule") => schedule_configuration()
      }
      
  """
  @type update_data_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      form_entry_input() :: %{
        "required" => [boolean()],
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type form_entry_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_listing() :: %{
        "assetId" => String.t(),
        "assetRevision" => String.t(),
        "assetType" => String.t(),
        "createdAt" => non_neg_integer(),
        "forms" => String.t(),
        "glossaryTerms" => list(detailed_glossary_term()()),
        "latestTimeSeriesDataPointForms" => list(time_series_data_point_summary_form_output()()),
        "owningProjectId" => String.t()
      }
      
  """
  @type asset_listing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_input() :: %{
        optional("clientToken") => [String.t()],
        optional("skipDeletionCheck") => [boolean()]
      }
      
  """
  @type delete_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_parameter() :: %{
        "defaultValue" => [String.t()],
        "description" => String.t(),
        "fieldType" => [String.t()],
        "isEditable" => [boolean()],
        "isOptional" => [boolean()],
        "keyName" => [String.t()]
      }
      
  """
  @type custom_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_asset_input() :: %{
        optional("revision") => String.t()
      }
      
  """
  @type get_asset_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_profile_output() :: %{
        "details" => list(),
        "domainId" => String.t(),
        "id" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type update_user_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_membership_output() :: %{}
      
  """
  @type create_project_membership_output() :: %{}

  @typedoc """

  ## Example:
      
      is_null_expression() :: %{
        "columnName" => [String.t()]
      }
      
  """
  @type is_null_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_glossary_output() :: %{}
      
  """
  @type delete_glossary_output() :: %{}

  @typedoc """

  ## Example:
      
      get_glossary_term_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "glossaryId" => String.t(),
        "id" => String.t(),
        "longDescription" => String.t(),
        "name" => String.t(),
        "shortDescription" => String.t(),
        "status" => list(any()),
        "termRelations" => term_relations(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type get_glossary_term_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_output() :: %{
        "items" => list(domain_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_domains_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentActions" => list(configurable_environment_action()()),
        "environmentBlueprintId" => String.t(),
        "environmentProfileId" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastDeployment" => deployment(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "provisionedResources" => list(resource()()),
        "provisioningProperties" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }
      
  """
  @type update_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      like_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type like_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()()),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "projectId" => String.t(),
        "publishOnImport" => [boolean()],
        "recommendation" => recommendation_configuration(),
        "schedule" => schedule_configuration(),
        "status" => list(any()),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type create_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      equal_to_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type equal_to_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_iam_portal_login_url_output() :: %{
        "authCodeUrl" => [String.t()],
        "userProfileId" => [String.t()]
      }
      
  """
  @type get_iam_portal_login_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_rule() :: %{
        "rule" => list(any()),
        "threshold" => [float()]
      }
      
  """
  @type accept_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metadata_generation_run_target() :: %{
        "identifier" => [String.t()],
        "revision" => String.t(),
        "type" => list(any())
      }
      
  """
  @type metadata_generation_run_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()()),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "projectId" => String.t(),
        "publishOnImport" => [boolean()],
        "retainPermissionsOnRevokeFailure" => [boolean()],
        "schedule" => schedule_configuration(),
        "selfGrantStatus" => list(),
        "status" => list(any()),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type delete_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_glossary_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type get_glossary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_listing_item_additional_attributes() :: %{
        "forms" => String.t(),
        "latestTimeSeriesDataPointForms" => list(time_series_data_point_summary_form_output()())
      }
      
  """
  @type asset_listing_item_additional_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_blueprints_input() :: %{
        optional("managed") => [boolean()],
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environment_blueprints_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_sources_input() :: %{
        optional("environmentIdentifier") => [String.t()],
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("status") => list(any()),
        optional("type") => String.t(),
        required("projectIdentifier") => [String.t()]
      }
      
  """
  @type list_data_sources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_output() :: %{
        "items" => list(project_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_projects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_profile_output() :: %{
        "details" => list(),
        "domainId" => String.t(),
        "id" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type create_user_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_user_profiles_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("searchText") => String.t(),
        required("userType") => list(any())
      }
      
  """
  @type search_user_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_action_output() :: %{
        "description" => [String.t()],
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "parameters" => list()
      }
      
  """
  @type get_environment_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type reject_subscription_request_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topic() :: %{
        "resource" => notification_resource(),
        "role" => list(any()),
        "subject" => [String.t()]
      }
      
  """
  @type topic() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configurable_environment_action() :: %{
        "auth" => list(any()),
        "parameters" => list(configurable_action_parameter()()),
        "type" => [String.t()]
      }
      
  """
  @type configurable_environment_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_output() :: %{
        "arn" => [String.t()],
        "createdAt" => non_neg_integer(),
        "description" => [String.t()],
        "domainExecutionRole" => String.t(),
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => [String.t()],
        "portalUrl" => [String.t()],
        "singleSignOn" => single_sign_on(),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type get_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_listings_output() :: %{
        "items" => list(list()()),
        "nextToken" => String.t(),
        "totalMatchCount" => [integer()]
      }
      
  """
  @type search_listings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prediction_configuration() :: %{
        "businessNameGeneration" => business_name_generation_configuration()
      }
      
  """
  @type prediction_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_action_summary() :: %{
        "description" => [String.t()],
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "parameters" => list()
      }
      
  """
  @type environment_action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_blueprint_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "provider" => [String.t()],
        "provisioningProperties" => list(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type environment_blueprint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_input() :: %{}
      
  """
  @type get_environment_input() :: %{}

  @typedoc """

  ## Example:
      
      create_glossary_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("status") => list(any()),
        required("name") => String.t(),
        required("owningProjectIdentifier") => String.t()
      }
      
  """
  @type create_glossary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listing_revision_input() :: %{
        "identifier" => String.t(),
        "revision" => String.t()
      }
      
  """
  @type listing_revision_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_output() :: %{
        "items" => list(environment_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environments_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_statistics_for_assets() :: %{
        "added" => [integer()],
        "failed" => [integer()],
        "skipped" => [integer()],
        "unchanged" => [integer()],
        "updated" => [integer()]
      }
      
  """
  @type run_statistics_for_assets() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscription_grant_status_output() :: %{
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type update_subscription_grant_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_input() :: %{
        optional("description") => [String.t()],
        optional("glossaryTerms") => list(String.t()()),
        optional("name") => [String.t()]
      }
      
  """
  @type update_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscription_targets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_subscription_targets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_asset_filter_input() :: %{}
      
  """
  @type get_asset_filter_input() :: %{}

  @typedoc """

  ## Example:
      
      post_lineage_event_output() :: %{}
      
  """
  @type post_lineage_event_output() :: %{}

  @typedoc """

  ## Example:
      
      not_equal_to_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type not_equal_to_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_data_point_form_output() :: %{
        "content" => [String.t()],
        "formName" => String.t(),
        "id" => String.t(),
        "timestamp" => [non_neg_integer()],
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type time_series_data_point_form_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_like_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type not_like_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscription_request_input() :: %{}
      
  """
  @type delete_subscription_request_input() :: %{}

  @typedoc """

  ## Example:
      
      asset_type_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "formsOutput" => map(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type asset_type_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glue_run_configuration_input() :: %{
        "autoImportDataQualityResult" => [boolean()],
        "dataAccessRole" => [String.t()],
        "relationalFilterConfigurations" => list(relational_filter_configuration()())
      }
      
  """
  @type glue_run_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_source_run_activities_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type list_data_source_run_activities_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_glossary_input() :: %{}
      
  """
  @type delete_glossary_input() :: %{}

  @typedoc """

  ## Example:
      
      lineage_node_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => [String.t()],
        "domainId" => String.t(),
        "eventTimestamp" => [non_neg_integer()],
        "id" => String.t(),
        "name" => [String.t()],
        "sourceIdentifier" => [String.t()],
        "typeName" => [String.t()],
        "typeRevision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type lineage_node_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscription_grant_output() :: %{
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type create_subscription_grant_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_glossary_term_output() :: %{}
      
  """
  @type delete_glossary_term_output() :: %{}

  @typedoc """

  ## Example:
      
      list_subscription_requests_input() :: %{
        optional("approverProjectId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owningProjectId") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("status") => list(any()),
        optional("subscribedListingId") => String.t()
      }
      
  """
  @type list_subscription_requests_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      form_type_data() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "imports" => list(import()()),
        "model" => list(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "status" => list(any())
      }
      
  """
  @type form_type_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribed_project() :: %{
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type subscribed_project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_profile_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentBlueprintId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }
      
  """
  @type get_environment_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_glossary_term_output() :: %{
        "domainId" => String.t(),
        "glossaryId" => String.t(),
        "id" => String.t(),
        "longDescription" => String.t(),
        "name" => String.t(),
        "shortDescription" => String.t(),
        "status" => list(any()),
        "termRelations" => term_relations()
      }
      
  """
  @type create_glossary_term_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_profile_input() :: %{}
      
  """
  @type get_environment_profile_input() :: %{}

  @typedoc """

  ## Example:
      
      create_environment_profile_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentBlueprintId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }
      
  """
  @type create_environment_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_listings_input() :: %{
        optional("additionalAttributes") => list(list(any())()),
        optional("filters") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("searchIn") => list(search_in_item()()),
        optional("searchText") => [String.t()],
        optional("sort") => search_sort()
      }
      
  """
  @type search_listings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_expression() :: %{
        "expression" => [String.t()],
        "type" => list(any())
      }
      
  """
  @type filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_asset_filters_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type list_asset_filters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glossary_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type glossary_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscription_grants_input() :: %{
        optional("environmentId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("subscribedListingId") => String.t(),
        optional("subscriptionId") => String.t(),
        optional("subscriptionTargetId") => String.t()
      }
      
  """
  @type list_subscription_grants_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "attribute" => String.t(),
        "value" => [String.t()]
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_asset_type_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "formsOutput" => map(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type create_asset_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_data_source_run_input() :: %{
        optional("clientToken") => [String.t()]
      }
      
  """
  @type start_data_source_run_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_in_item() :: %{
        "attribute" => String.t()
      }
      
  """
  @type search_in_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_target_output() :: %{
        "applicableAssetTypes" => list(String.t()()),
        "authorizedPrincipals" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "manageAccessRole" => [String.t()],
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "subscriptionTargetConfig" => list(subscription_target_form()()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type get_subscription_target_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_asset_revision_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "externalIdentifier" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "formsOutput" => list(form_output()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()()),
        "listing" => asset_listing_details(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "predictionConfiguration" => prediction_configuration(),
        "readOnlyFormsOutput" => list(form_output()()),
        "revision" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type create_asset_revision_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_membership_input() :: %{
        required("member") => list()
      }
      
  """
  @type delete_project_membership_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_time_series_data_point_output() :: %{
        "domainId" => String.t(),
        "entityId" => String.t(),
        "entityType" => list(any()),
        "form" => time_series_data_point_form_output(),
        "formName" => String.t()
      }
      
  """
  @type get_time_series_data_point_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_profiles_input() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsAccountRegion") => String.t(),
        optional("environmentBlueprintIdentifier") => String.t(),
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("projectIdentifier") => String.t()
      }
      
  """
  @type list_environment_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()()),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "projectId" => String.t(),
        "publishOnImport" => [boolean()],
        "recommendation" => recommendation_configuration(),
        "retainPermissionsOnRevokeFailure" => [boolean()],
        "schedule" => schedule_configuration(),
        "selfGrantStatus" => list(),
        "status" => list(any()),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type update_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_input() :: %{
        optional("description") => String.t(),
        optional("glossaryTerms") => list(String.t()()),
        required("name") => String.t()
      }
      
  """
  @type create_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscription_grant_input() :: %{}
      
  """
  @type delete_subscription_grant_input() :: %{}

  @typedoc """

  ## Example:
      
      get_environment_blueprint_output() :: %{
        "createdAt" => [non_neg_integer()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "name" => String.t(),
        "provider" => [String.t()],
        "provisioningProperties" => list(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }
      
  """
  @type get_environment_blueprint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_console_link_parameters() :: %{
        "uri" => [String.t()]
      }
      
  """
  @type aws_console_link_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_form_type_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "imports" => list(import()()),
        "model" => list(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "status" => list(any())
      }
      
  """
  @type get_form_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_asset_filter_output() :: %{
        "assetId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "effectiveColumnNames" => list([String.t()]()),
        "effectiveRowFilter" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type create_asset_filter_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_output() :: %{
        "actionLink" => String.t(),
        "creationTimestamp" => [non_neg_integer()],
        "domainIdentifier" => String.t(),
        "identifier" => String.t(),
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "message" => String.t(),
        "metadata" => map(),
        "status" => list(any()),
        "title" => String.t(),
        "topic" => topic(),
        "type" => list(any())
      }
      
  """
  @type notification_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      row_filter_configuration() :: %{
        "rowFilter" => list(),
        "sensitive" => [boolean()]
      }
      
  """
  @type row_filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_glossary_term_input() :: %{
        optional("glossaryIdentifier") => String.t(),
        optional("longDescription") => String.t(),
        optional("name") => String.t(),
        optional("shortDescription") => String.t(),
        optional("status") => list(any()),
        optional("termRelations") => term_relations()
      }
      
  """
  @type update_glossary_term_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_action_output() :: %{
        "description" => [String.t()],
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "parameters" => list()
      }
      
  """
  @type update_environment_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      column_filter_configuration() :: %{
        "includedColumnNames" => list([String.t()]())
      }
      
  """
  @type column_filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_blueprint_configuration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t(),
        "enabledRegions" => list(String.t()()),
        "environmentBlueprintId" => String.t(),
        "manageAccessRoleArn" => String.t(),
        "provisioningConfigurations" => list(list()()),
        "provisioningRoleArn" => String.t(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type get_environment_blueprint_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_output() :: %{
        "arn" => [String.t()],
        "description" => [String.t()],
        "domainExecutionRole" => String.t(),
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => [String.t()],
        "portalUrl" => [String.t()],
        "singleSignOn" => single_sign_on(),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type create_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_asset_type_input() :: %{
        optional("description") => String.t(),
        required("formsInput") => map(),
        required("name") => String.t(),
        required("owningProjectIdentifier") => String.t()
      }
      
  """
  @type create_asset_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_subscription_input() :: %{}
      
  """
  @type cancel_subscription_input() :: %{}

  @typedoc """

  ## Example:
      
      cancel_subscription_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type cancel_subscription_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sso_user_profile_details() :: %{
        "firstName" => String.t(),
        "lastName" => String.t(),
        "username" => String.t()
      }
      
  """
  @type sso_user_profile_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_metadata_generation_run_input() :: %{}
      
  """
  @type cancel_metadata_generation_run_input() :: %{}

  @typedoc """

  ## Example:
      
      list_subscription_targets_output() :: %{
        "items" => list(subscription_target_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_subscription_targets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_asset_input() :: %{}
      
  """
  @type delete_asset_input() :: %{}

  @typedoc """

  ## Example:
      
      delete_project_membership_output() :: %{}
      
  """
  @type delete_project_membership_output() :: %{}

  @typedoc """

  ## Example:
      
      data_source_summary() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceId" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => String.t(),
        "lastRunAssetCount" => [integer()],
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "schedule" => schedule_configuration(),
        "status" => list(any()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type data_source_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_listing_item() :: %{
        "additionalAttributes" => asset_listing_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "entityId" => String.t(),
        "entityRevision" => String.t(),
        "entityType" => String.t(),
        "glossaryTerms" => list(detailed_glossary_term()()),
        "listingCreatedBy" => String.t(),
        "listingId" => String.t(),
        "listingRevision" => String.t(),
        "listingUpdatedBy" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t()
      }
      
  """
  @type asset_listing_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_credentials_input() :: %{}
      
  """
  @type get_environment_credentials_input() :: %{}

  @typedoc """

  ## Example:
      
      delete_environment_blueprint_configuration_output() :: %{}
      
  """
  @type delete_environment_blueprint_configuration_output() :: %{}

  @typedoc """

  ## Example:
      
      search_group_profiles_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("searchText") => String.t(),
        required("groupType") => list(any())
      }
      
  """
  @type search_group_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_blueprints_output() :: %{
        "items" => list(environment_blueprint_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environment_blueprints_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_asset_output() :: %{}
      
  """
  @type delete_asset_output() :: %{}

  @typedoc """

  ## Example:
      
      get_iam_portal_login_url_input() :: %{}
      
  """
  @type get_iam_portal_login_url_input() :: %{}

  @typedoc """

  ## Example:
      
      list_notifications_output() :: %{
        "nextToken" => String.t(),
        "notifications" => list(notification_output()())
      }
      
  """
  @type list_notifications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_asset_filter_output() :: %{
        "assetId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "effectiveColumnNames" => list([String.t()]()),
        "effectiveRowFilter" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type update_asset_filter_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "failureReasons" => list(project_deletion_error()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "projectStatus" => list(any())
      }
      
  """
  @type update_project_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lineage_node_reference() :: %{
        "eventTimestamp" => [non_neg_integer()],
        "id" => String.t()
      }
      
  """
  @type lineage_node_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_glossary_term_input() :: %{}
      
  """
  @type delete_glossary_term_input() :: %{}

  @typedoc """

  ## Example:
      
      in_expression() :: %{
        "columnName" => [String.t()],
        "values" => list([String.t()]())
      }
      
  """
  @type in_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_group_profile_input() :: %{
        optional("clientToken") => [String.t()],
        required("groupIdentifier") => String.t()
      }
      
  """
  @type create_group_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lineage_node_history_output() :: %{
        "nextToken" => String.t(),
        "nodes" => list(lineage_node_summary()())
      }
      
  """
  @type list_lineage_node_history_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_profile_summary() :: %{
        "details" => list(),
        "domainId" => String.t(),
        "id" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type user_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source_run_summary() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "projectId" => String.t(),
        "runStatisticsForAssets" => run_statistics_for_assets(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "stoppedAt" => non_neg_integer(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type data_source_run_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      accept_predictions_input() :: %{
        optional("acceptChoices") => list(accept_choice()()),
        optional("acceptRule") => accept_rule(),
        optional("clientToken") => String.t(),
        optional("revision") => String.t()
      }
      
  """
  @type accept_predictions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_input() :: %{
        optional("groupIdentifier") => [String.t()],
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("userIdentifier") => [String.t()]
      }
      
  """
  @type list_projects_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_profile_summary() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentBlueprintId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type environment_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_request_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type subscription_request_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_predictions_output() :: %{
        "assetId" => String.t(),
        "domainId" => String.t(),
        "revision" => String.t()
      }
      
  """
  @type accept_predictions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribed_asset_listing() :: %{
        "entityId" => String.t(),
        "entityRevision" => String.t(),
        "entityType" => String.t(),
        "forms" => String.t(),
        "glossaryTerms" => list(detailed_glossary_term()())
      }
      
  """
  @type subscribed_asset_listing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      self_grant_status_detail() :: %{
        "databaseName" => [String.t()],
        "failureCause" => [String.t()],
        "schemaName" => [String.t()],
        "status" => list(any())
      }
      
  """
  @type self_grant_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_listing_change_set_input() :: %{
        optional("clientToken") => String.t(),
        optional("entityRevision") => String.t(),
        required("action") => list(any()),
        required("entityIdentifier") => String.t(),
        required("entityType") => list(any())
      }
      
  """
  @type create_listing_change_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      relational_filter_configuration() :: %{
        "databaseName" => [String.t()],
        "filterExpressions" => list(filter_expression()()),
        "schemaName" => [String.t()]
      }
      
  """
  @type relational_filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_form_type_input() :: %{}
      
  """
  @type delete_form_type_input() :: %{}

  @typedoc """

  ## Example:
      
      less_than_or_equal_to_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type less_than_or_equal_to_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type accept_subscription_request_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type update_subscription_request_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
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
      
      cloud_formation_properties() :: %{
        "templateUrl" => [String.t()]
      }
      
  """
  @type cloud_formation_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_asset_type_input() :: %{}
      
  """
  @type delete_asset_type_input() :: %{}

  @typedoc """

  ## Example:
      
      schedule_configuration() :: %{
        "schedule" => String.t(),
        "timezone" => list(any())
      }
      
  """
  @type schedule_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_environment_role_output() :: %{}
      
  """
  @type associate_environment_role_output() :: %{}

  @typedoc """

  ## Example:
      
      get_glossary_input() :: %{}
      
  """
  @type get_glossary_input() :: %{}

  @typedoc """

  ## Example:
      
      recommendation_configuration() :: %{
        "enableBusinessNameGeneration" => [boolean()]
      }
      
  """
  @type recommendation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_project_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "failureReasons" => list(project_deletion_error()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "projectStatus" => list(any())
      }
      
  """
  @type get_project_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_listing_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "item" => list(),
        "listingRevision" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type get_listing_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_in_expression() :: %{
        "columnName" => [String.t()],
        "values" => list([String.t()]())
      }
      
  """
  @type not_in_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_profile_input() :: %{}
      
  """
  @type get_group_profile_input() :: %{}

  @typedoc """

  ## Example:
      
      list_environment_profiles_output() :: %{
        "items" => list(environment_profile_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environment_profiles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_asset_filter_input() :: %{
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("name") => [String.t()]
      }
      
  """
  @type update_asset_filter_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_source_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceConfigurationSnapshot" => [String.t()],
        "dataSourceId" => String.t(),
        "domainId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "projectId" => String.t(),
        "runStatisticsForAssets" => run_statistics_for_assets(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "stoppedAt" => non_neg_integer(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type get_data_source_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_glossary_term_input() :: %{}
      
  """
  @type get_glossary_term_input() :: %{}

  @typedoc """

  ## Example:
      
      get_project_input() :: %{}
      
  """
  @type get_project_input() :: %{}

  @typedoc """

  ## Example:
      
      delete_project_output() :: %{}
      
  """
  @type delete_project_output() :: %{}

  @typedoc """

  ## Example:
      
      list_metadata_generation_runs_output() :: %{
        "items" => list(metadata_generation_run_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_metadata_generation_runs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_input() :: %{
        optional("skipDeletionCheck") => [boolean()]
      }
      
  """
  @type delete_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_choice() :: %{
        "editedValue" => String.t(),
        "predictionChoice" => [integer()],
        "predictionTarget" => [String.t()]
      }
      
  """
  @type accept_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listing_revision() :: %{
        "id" => String.t(),
        "revision" => String.t()
      }
      
  """
  @type listing_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metadata_generation_run_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "target" => metadata_generation_run_target(),
        "type" => list(any())
      }
      
  """
  @type metadata_generation_run_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribed_asset() :: %{
        "assetId" => String.t(),
        "assetRevision" => String.t(),
        "failureCause" => failure_cause(),
        "failureTimestamp" => [non_neg_integer()],
        "grantedTimestamp" => [non_neg_integer()],
        "status" => list(any()),
        "targetName" => [String.t()]
      }
      
  """
  @type subscribed_asset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_project_memberships_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_project_memberships_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_data_point_summary_form_output() :: %{
        "contentSummary" => [String.t()],
        "formName" => String.t(),
        "id" => String.t(),
        "timestamp" => [non_neg_integer()],
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type time_series_data_point_summary_form_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      post_time_series_data_points_output() :: %{
        "domainId" => String.t(),
        "entityId" => String.t(),
        "entityType" => list(any()),
        "forms" => list(time_series_data_point_form_output()())
      }
      
  """
  @type post_time_series_data_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_grant_output() :: %{
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type get_subscription_grant_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glue_run_configuration_output() :: %{
        "accountId" => [String.t()],
        "autoImportDataQualityResult" => [boolean()],
        "dataAccessRole" => [String.t()],
        "region" => [String.t()],
        "relationalFilterConfigurations" => list(relational_filter_configuration()())
      }
      
  """
  @type glue_run_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribed_project_input() :: %{
        "identifier" => String.t()
      }
      
  """
  @type subscribed_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscription_grant_status_input() :: %{
        optional("failureCause") => failure_cause(),
        optional("targetName") => [String.t()],
        required("status") => list(any())
      }
      
  """
  @type update_subscription_grant_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      form_output() :: %{
        "content" => [String.t()],
        "formName" => String.t(),
        "typeName" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type form_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_properties() :: %{
        "endTimeoutMinutes" => [integer()],
        "startTimeoutMinutes" => [integer()]
      }
      
  """
  @type deployment_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_environment_role_output() :: %{}
      
  """
  @type disassociate_environment_role_output() :: %{}

  @typedoc """

  ## Example:
      
      get_subscription_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type get_subscription_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribed_listing_input() :: %{
        "identifier" => String.t()
      }
      
  """
  @type subscribed_listing_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_cause() :: %{
        "message" => [String.t()]
      }
      
  """
  @type failure_cause() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_asset_revisions_output() :: %{
        "items" => list(asset_revision()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_asset_revisions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      group_details() :: %{
        "groupId" => [String.t()]
      }
      
  """
  @type group_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_action_input() :: %{}
      
  """
  @type delete_environment_action_input() :: %{}

  @typedoc """

  ## Example:
      
      environment_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type environment_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detailed_glossary_term() :: %{
        "name" => String.t(),
        "shortDescription" => String.t()
      }
      
  """
  @type detailed_glossary_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_membership_input() :: %{
        required("designation") => list(any()),
        required("member") => list()
      }
      
  """
  @type create_project_membership_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_output() :: %{
        "status" => list(any())
      }
      
  """
  @type delete_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_listing_input() :: %{}
      
  """
  @type delete_listing_input() :: %{}

  @typedoc """

  ## Example:
      
      get_lineage_node_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => [String.t()],
        "domainId" => String.t(),
        "downstreamNodes" => list(lineage_node_reference()()),
        "eventTimestamp" => [non_neg_integer()],
        "formsOutput" => list(form_output()()),
        "id" => String.t(),
        "name" => [String.t()],
        "sourceIdentifier" => [String.t()],
        "typeName" => [String.t()],
        "typeRevision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "upstreamNodes" => list(lineage_node_reference()())
      }
      
  """
  @type get_lineage_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_form_type_input() :: %{
        optional("revision") => String.t()
      }
      
  """
  @type get_form_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      greater_than_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type greater_than_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_request_details_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type get_subscription_request_details_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      form_entry_output() :: %{
        "required" => [boolean()],
        "typeName" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type form_entry_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_glossary_output() :: %{
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any())
      }
      
  """
  @type update_glossary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type list_domains_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glue_self_grant_status_output() :: %{
        "selfGrantStatusDetails" => list(self_grant_status_detail()())
      }
      
  """
  @type glue_self_grant_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_blueprint_input() :: %{}
      
  """
  @type get_environment_blueprint_input() :: %{}

  @typedoc """

  ## Example:
      
      list_data_sources_output() :: %{
        "items" => list(data_source_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_data_sources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_asset_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "externalIdentifier" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "formsOutput" => list(form_output()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()()),
        "listing" => asset_listing_details(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "readOnlyFormsOutput" => list(form_output()()),
        "revision" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type get_asset_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_parameter() :: %{
        "name" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type environment_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import() :: %{
        "name" => String.t(),
        "revision" => String.t()
      }
      
  """
  @type import() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_types_output() :: %{
        "items" => list(list()()),
        "nextToken" => String.t(),
        "totalMatchCount" => [integer()]
      }
      
  """
  @type search_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_source_input() :: %{
        optional("clientToken") => [String.t()],
        optional("retainPermissionsOnRevokeFailure") => [boolean()]
      }
      
  """
  @type delete_data_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_credentials_output() :: %{
        "accessKeyId" => [String.t()],
        "expiration" => [non_neg_integer()],
        "secretAccessKey" => [String.t()],
        "sessionToken" => [String.t()]
      }
      
  """
  @type get_environment_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_time_series_data_point_input() :: %{
        required("formName") => String.t()
      }
      
  """
  @type get_time_series_data_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type create_subscription_request_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_subscription_request_input() :: %{
        optional("decisionComment") => String.t()
      }
      
  """
  @type accept_subscription_request_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_input() :: %{}
      
  """
  @type get_subscription_input() :: %{}

  @typedoc """

  ## Example:
      
      list_subscription_requests_output() :: %{
        "items" => list(subscription_request_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_subscription_requests_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_glossary_term_input() :: %{
        optional("clientToken") => String.t(),
        optional("longDescription") => String.t(),
        optional("shortDescription") => String.t(),
        optional("status") => list(any()),
        optional("termRelations") => term_relations(),
        required("glossaryIdentifier") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_glossary_term_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_glossary_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("name") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type update_glossary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metadata_generation_run_input() :: %{}
      
  """
  @type get_metadata_generation_run_input() :: %{}

  @typedoc """

  ## Example:
      
      delete_environment_profile_input() :: %{}
      
  """
  @type delete_environment_profile_input() :: %{}

  @typedoc """

  ## Example:
      
      create_group_profile_output() :: %{
        "domainId" => String.t(),
        "groupName" => String.t(),
        "id" => String.t(),
        "status" => list(any())
      }
      
  """
  @type create_group_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_group_profiles_output() :: %{
        "items" => list(group_profile_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type search_group_profiles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscriptions_output() :: %{
        "items" => list(subscription_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_subscriptions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscription_target_input() :: %{
        optional("applicableAssetTypes") => list(String.t()()),
        optional("authorizedPrincipals") => list(String.t()()),
        optional("manageAccessRole") => [String.t()],
        optional("name") => String.t(),
        optional("provider") => [String.t()],
        optional("subscriptionTargetConfig") => list(subscription_target_form()())
      }
      
  """
  @type update_subscription_target_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_asset_revisions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_asset_revisions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_input() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => [String.t()],
        optional("domainExecutionRole") => String.t(),
        optional("name") => [String.t()],
        optional("singleSignOn") => single_sign_on()
      }
      
  """
  @type update_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscription_grant_output() :: %{
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type delete_subscription_grant_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lake_formation_configuration() :: %{
        "locationRegistrationExcludeS3Locations" => list(String.t()()),
        "locationRegistrationRole" => String.t()
      }
      
  """
  @type lake_formation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_listing_output() :: %{}
      
  """
  @type delete_listing_output() :: %{}

  @typedoc """

  ## Example:
      
      form_input() :: %{
        "content" => [String.t()],
        "formName" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }
      
  """
  @type form_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_glossary_output() :: %{
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any())
      }
      
  """
  @type create_glossary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configurable_action_parameter() :: %{
        "key" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type configurable_action_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "name" => [String.t()],
        "provider" => [String.t()],
        "type" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_run_configuration_output() :: %{
        "accountId" => [String.t()],
        "dataAccessRole" => [String.t()],
        "redshiftCredentialConfiguration" => redshift_credential_configuration(),
        "redshiftStorage" => list(),
        "region" => [String.t()],
        "relationalFilterConfigurations" => list(relational_filter_configuration()())
      }
      
  """
  @type redshift_run_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_environment_blueprint_configuration_input() :: %{
        optional("manageAccessRoleArn") => String.t(),
        optional("provisioningConfigurations") => list(list()()),
        optional("provisioningRoleArn") => String.t(),
        optional("regionalParameters") => map(),
        required("enabledRegions") => list(String.t()())
      }
      
  """
  @type put_environment_blueprint_configuration_input() :: %{String.t() => any()}

  @type accept_predictions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type accept_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_environment_role_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_metadata_generation_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_asset_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_asset_revision_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_asset_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_form_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_glossary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_glossary_term_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_group_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_listing_change_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_project_membership_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_subscription_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_subscription_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_user_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_asset_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_asset_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_environment_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_blueprint_configuration_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type delete_environment_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_form_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_glossary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_glossary_term_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_listing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_project_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_subscription_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_subscription_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_time_series_data_points_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_environment_role_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_asset_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_asset_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_data_source_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_blueprint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_blueprint_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_credentials_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_form_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_glossary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_glossary_term_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_group_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_iam_portal_login_url_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_lineage_node_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_listing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_metadata_generation_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_subscription_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_subscription_request_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_subscription_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_time_series_data_point_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_user_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_asset_filters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_asset_revisions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_source_run_activities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_source_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_sources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_environment_actions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_environment_blueprint_configurations_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_environment_blueprints_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_environment_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_environments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_lineage_node_history_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_metadata_generation_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_notifications_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_project_memberships_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_projects_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_subscription_grants_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_subscription_requests_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_subscription_targets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_subscriptions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_time_series_data_points_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type post_lineage_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type post_time_series_data_points_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_environment_blueprint_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reject_predictions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reject_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type revoke_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type search_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_group_profiles_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_listings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_user_profiles_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_data_source_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_metadata_generation_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type update_asset_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type update_environment_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_glossary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_glossary_term_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_group_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_subscription_grant_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_subscription_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_user_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "datazone",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DataZone",
      signature_version: "v4",
      signing_name: "datazone",
      target_prefix: nil
    }
  end

  @doc """
  Accepts automatically generated business-friendly metadata for your Amazon
  DataZone assets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20AcceptPredictions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.
  * `:identifier` (`t:string` required) The identifier of the asset.

  ## Keyword parameters:
  * `:revision` (`t:string`) The revision that is to be made to the asset.
  """
  @spec accept_predictions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, accept_predictions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_predictions_errors()}
  def accept_predictions(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/accept-predictions"

    # Validate optional parameters
    optional_params = [revision: nil]

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
      if opt_val = Keyword.get(options, :revision) do
        [{"revision", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:revision])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Accepts a subscription request to a specific asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20AcceptSubscriptionRequest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The Amazon DataZone domain where
    the specified subscription request is being accepted.
  * `:identifier` (`t:string` required) The unique identifier of the subscription
    request that is to be accepted.
  """
  @spec accept_subscription_request(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, accept_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_subscription_request_errors()}
  def accept_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}/accept"

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
  Associates the environment role in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20AssociateEnvironmentRole&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the environment role is associated.
  * `:environment_identifier` (`t:string` required) The ID of the Amazon DataZone
    environment.
  * `:environment_role_arn` (`t:string` required) The ARN of the environment role.
  """
  @spec associate_environment_role(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, associate_environment_role_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_environment_role_errors()}
  def associate_environment_role(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        environment_role_arn,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/roles/#{AWS.Util.encode_uri(environment_role_arn)}"

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
  Cancels the metadata generation run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CancelMetadataGenerationRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the metadata generation run is to be cancelled.
  * `:identifier` (`t:string` required) The ID of the metadata generation run.
  """
  @spec cancel_metadata_generation_run(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_metadata_generation_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_metadata_generation_run_errors()}
  def cancel_metadata_generation_run(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs/#{AWS.Util.encode_uri(identifier)}/cancel"

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
  Cancels the subscription to the specified asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CancelSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The unique identifier of the Amazon
    DataZone domain where the subscription request is being cancelled.
  * `:identifier` (`t:string` required) The unique identifier of the subscription
    that is being cancelled.
  """
  @spec cancel_subscription(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_subscription_errors()}
  def cancel_subscription(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}/cancel"

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
  Creates an asset in Amazon DataZone catalog.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) Amazon DataZone domain where the
    asset is created.
  """
  @spec create_asset(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_asset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_errors()}
  def create_asset(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets"

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
  Creates a data asset filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateAssetFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_identifier` (`t:string` required) The ID of the data asset.
  * `:domain_identifier` (`t:string` required) The ID of the domain in which you
    want to create an asset filter.
  """
  @spec create_asset_filter(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_asset_filter_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_filter_errors()}
  def create_asset_filter(%Client{} = client, asset_identifier, domain_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters"

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
  Creates a revision of the asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateAssetRevision&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The unique identifier of the domain
    where the asset is being revised.
  * `:identifier` (`t:string` required) The identifier of the asset.
  """
  @spec create_asset_revision(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_asset_revision_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_revision_errors()}
  def create_asset_revision(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/revisions"

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
  Creates a custom asset type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateAssetType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The unique identifier of the Amazon
    DataZone domain where the custom asset type is being created.
  """
  @spec create_asset_type(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_asset_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_type_errors()}
  def create_asset_type(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types"

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
  Creates an Amazon DataZone data source.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateDataSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain where the data source is created.
  """
  @spec create_data_source(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_source_errors()}
  def create_data_source(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources"

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
  Creates an Amazon DataZone domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_domain(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, options \\ []) do
    url_path = "/v2/domains"

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
  Create an Amazon DataZone environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which the environment is created.
  """
  @spec create_environment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments"

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
  Creates an action for the environment, for example, creates a console link for
  an analytics tool that is available in this environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateEnvironmentAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the environment action is created.
  * `:environment_identifier` (`t:string` required) The ID of the environment in
    which the environment action is created.
  """
  @spec create_environment_action(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_environment_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_action_errors()}
  def create_environment_action(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions"

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
  Creates an Amazon DataZone environment profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateEnvironmentProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this environment profile is created.
  """
  @spec create_environment_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_environment_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_profile_errors()}
  def create_environment_profile(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles"

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
  Creates a metadata form type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateFormType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this metadata form type is created.
  """
  @spec create_form_type(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_form_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_form_type_errors()}
  def create_form_type(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types"

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
  Creates an Amazon DataZone business glossary.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateGlossary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this business glossary is created.
  """
  @spec create_glossary(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_glossary_errors()}
  def create_glossary(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries"

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
  Creates a business glossary term.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateGlossaryTerm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this business glossary term is created.
  """
  @spec create_glossary_term(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_glossary_term_errors()}
  def create_glossary_term(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms"

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
  Creates a group profile in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateGroupProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which the group profile is created.
  """
  @spec create_group_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_group_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_profile_errors()}
  def create_group_profile(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles"

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
  Publishes a listing (a record of an asset at a given time) or removes a listing
  from the catalog.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateListingChangeSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain.
  """
  @spec create_listing_change_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_listing_change_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_listing_change_set_errors()}
  def create_listing_change_set(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/change-set"

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
  Creates an Amazon DataZone project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this project is created.
  """
  @spec create_project(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects"

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
  Creates a project membership in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateProjectMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which project membership is created.
  * `:project_identifier` (`t:string` required) The ID of the project for which
    this project membership was created.
  """
  @spec create_project_membership(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_project_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_membership_errors()}
  def create_project_membership(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/createMembership"

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
  Creates a subsscription grant in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateSubscriptionGrant&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the subscription grant is created.
  """
  @spec create_subscription_grant(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_subscription_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscription_grant_errors()}
  def create_subscription_grant(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants"

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
  Creates a subscription request in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateSubscriptionRequest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the subscription request is created.
  """
  @spec create_subscription_request(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscription_request_errors()}
  def create_subscription_request(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests"

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
  Creates a subscription target in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateSubscriptionTarget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which subscription target is created.
  * `:environment_identifier` (`t:string` required) The ID of the environment in
    which subscription target is created.
  """
  @spec create_subscription_target(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_subscription_target_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscription_target_errors()}
  def create_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets"

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
  Creates a user profile in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20CreateUserProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which a user profile is created.
  """
  @spec create_user_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_user_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_profile_errors()}
  def create_user_profile(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles"

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
  Delets an asset in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the asset is deleted.
  * `:identifier` (`t:string` required) The identifier of the asset that is
    deleted.
  """
  @spec delete_asset(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_asset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_errors()}
  def delete_asset(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes an asset filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteAssetFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_identifier` (`t:string` required) The ID of the data asset.
  * `:domain_identifier` (`t:string` required) The ID of the domain where you want
    to delete an asset filter.
  * `:identifier` (`t:string` required) The ID of the asset filter that you want
    to delete.
  """
  @spec delete_asset_filter(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_filter_errors()}
  def delete_asset_filter(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes an asset type in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteAssetType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the asset type is deleted.
  * `:identifier` (`t:string` required) The identifier of the asset type that is
    deleted.
  """
  @spec delete_asset_type(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_asset_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_type_errors()}
  def delete_asset_type(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a data source in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteDataSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the data source is deleted.
  * `:identifier` (`t:string` required) The identifier of the data source that is
    deleted.

  ## Keyword parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive identifier that is
    provided to ensure the idempotency of the request.
  * `:retain_permissions_on_revoke_failure` (`t:string`) Specifies that the
    granted permissions are retained in case of a self-subscribe functionality
    failure for a data source.
  """
  @spec delete_data_source(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_source_errors()}
  def delete_data_source(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

    # Validate optional parameters
    optional_params = [client_token: nil, retain_permissions_on_revoke_failure: nil]

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
      if opt_val = Keyword.get(options, :retain_permissions_on_revoke_failure) do
        [{"retainPermissionsOnRevokeFailure", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token, :retain_permissions_on_revoke_failure])

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
  Deletes a Amazon DataZone domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identifier` (`t:string` required) The identifier of the Amazon Web Services
    domain that is to be deleted.

  ## Keyword parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive identifier that is
    provided to ensure the idempotency of the request.
  * `:skip_deletion_check` (`t:string`) Specifies the optional flag to delete all
    child entities within the domain.
  """
  @spec delete_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"

    # Validate optional parameters
    optional_params = [client_token: nil, skip_deletion_check: nil]

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
      if opt_val = Keyword.get(options, :skip_deletion_check) do
        [{"skipDeletionCheck", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token, :skip_deletion_check])

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
      202
    )
  end

  @doc """
  Deletes an environment in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the environment is deleted.
  * `:identifier` (`t:string` required) The identifier of the environment that is
    to be deleted.
  """
  @spec delete_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes an action for the environment, for example, deletes a console link for
  an analytics tool that is available in this environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteEnvironmentAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which an environment action is deleted.
  * `:environment_identifier` (`t:string` required) The ID of the environment
    where an environment action is deleted.
  * `:identifier` (`t:string` required) The ID of the environment action that is
    deleted.
  """
  @spec delete_environment_action(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_action_errors()}
  def delete_environment_action(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes the blueprint configuration in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteEnvironmentBlueprintConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the blueprint configuration is deleted.
  * `:environment_blueprint_identifier` (`t:string` required) The ID of the
    blueprint the configuration of which is deleted.
  """
  @spec delete_environment_blueprint_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, delete_environment_blueprint_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_blueprint_configuration_errors()}
  def delete_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

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
  Deletes an environment profile in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteEnvironmentProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the environment profile is deleted.
  * `:identifier` (`t:string` required) The ID of the environment profile that is
    deleted.
  """
  @spec delete_environment_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_profile_errors()}
  def delete_environment_profile(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

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
  Delets and metadata form type in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteFormType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the metadata form type is deleted.
  * `:form_type_identifier` (`t:string` required) The ID of the metadata form type
    that is deleted.
  """
  @spec delete_form_type(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_form_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_form_type_errors()}
  def delete_form_type(%Client{} = client, domain_identifier, form_type_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types/#{AWS.Util.encode_uri(form_type_identifier)}"

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
  Deletes a business glossary in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteGlossary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the business glossary is deleted.
  * `:identifier` (`t:string` required) The ID of the business glossary that is
    deleted.
  """
  @spec delete_glossary(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_glossary_errors()}
  def delete_glossary(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a business glossary term in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteGlossaryTerm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the business glossary term is deleted.
  * `:identifier` (`t:string` required) The ID of the business glossary term that
    is deleted.
  """
  @spec delete_glossary_term(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_glossary_term_errors()}
  def delete_glossary_term(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a listing (a record of an asset at a given time).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteListing&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain.
  * `:identifier` (`t:string` required) The ID of the listing to be deleted.
  """
  @spec delete_listing(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_listing_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_listing_errors()}
  def delete_listing(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a project in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the project is deleted.
  * `:identifier` (`t:string` required) The identifier of the project that is to
    be deleted.

  ## Keyword parameters:
  * `:skip_deletion_check` (`t:string`) Specifies the optional flag to delete all
    child entities within the project.
  """
  @spec delete_project(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

    # Validate optional parameters
    optional_params = [skip_deletion_check: nil]

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
      if opt_val = Keyword.get(options, :skip_deletion_check) do
        [{"skipDeletionCheck", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:skip_deletion_check])

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
  Deletes project membership in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteProjectMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain where project membership is deleted.
  * `:project_identifier` (`t:string` required) The ID of the Amazon DataZone
    project the membership to which is deleted.
  """
  @spec delete_project_membership(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_project_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_membership_errors()}
  def delete_project_membership(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/deleteMembership"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Deletes and subscription grant in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteSubscriptionGrant&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain where the subscription grant is deleted.
  * `:identifier` (`t:string` required) The ID of the subscription grant that is
    deleted.
  """
  @spec delete_subscription_grant(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_subscription_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscription_grant_errors()}
  def delete_subscription_grant(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a subscription request in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteSubscriptionRequest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the subscription request is deleted.
  * `:identifier` (`t:string` required) The ID of the subscription request that is
    deleted.
  """
  @spec delete_subscription_request(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscription_request_errors()}
  def delete_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a subscription target in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteSubscriptionTarget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the subscription target is deleted.
  * `:environment_identifier` (`t:string` required) The ID of the Amazon DataZone
    environment in which the subscription target is deleted.
  * `:identifier` (`t:string` required) The ID of the subscription target that is
    deleted.
  """
  @spec delete_subscription_target(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscription_target_errors()}
  def delete_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes the specified time series form for the specified asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DeleteTimeSeriesDataPoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain that houses the asset for which you want to delete a time series
    form.
  * `:entity_identifier` (`t:string` required) The ID of the asset for which you
    want to delete a time series form.
  * `:entity_type` (`t:enum["ASSET|LISTING"]` required) The type of the asset for
    which you want to delete a time series form.
  * `:form_name` (`t:string` required) The name of the time series form that you
    want to delete.

  ## Keyword parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive identifier to ensure
    idempotency of the request. This field is automatically populated if not
    provided.
  """
  @spec delete_time_series_data_points(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, delete_time_series_data_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_time_series_data_points_errors()}
  def delete_time_series_data_points(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        form_name,
        options \\ []
      )
      when is_binary(form_name) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"formName", form_name}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Disassociates the environment role in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20DisassociateEnvironmentRole&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which an environment role is disassociated.
  * `:environment_identifier` (`t:string` required) The ID of the environment.
  * `:environment_role_arn` (`t:string` required) The ARN of the environment role.
  """
  @spec disassociate_environment_role(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, disassociate_environment_role_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_environment_role_errors()}
  def disassociate_environment_role(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        environment_role_arn,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/roles/#{AWS.Util.encode_uri(environment_role_arn)}"

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
  Gets an Amazon DataZone asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain to which the asset belongs.
  * `:identifier` (`t:string` required) The ID of the Amazon DataZone asset.

  ## Keyword parameters:
  * `:revision` (`t:string`) The revision of the Amazon DataZone asset.
  """
  @spec get_asset(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_asset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_errors()}
  def get_asset(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}"

    # Validate optional parameters
    optional_params = [revision: nil]

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
      if opt_val = Keyword.get(options, :revision) do
        [{"revision", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:revision])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an asset filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetAssetFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_identifier` (`t:string` required) The ID of the data asset.
  * `:domain_identifier` (`t:string` required) The ID of the domain where you want
    to get an asset filter.
  * `:identifier` (`t:string` required) The ID of the asset filter.
  """
  @spec get_asset_filter(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_asset_filter_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_filter_errors()}
  def get_asset_filter(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters/#{AWS.Util.encode_uri(identifier)}"

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
  Gets an Amazon DataZone asset type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetAssetType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the asset type exists.
  * `:identifier` (`t:string` required) The ID of the asset type.

  ## Keyword parameters:
  * `:revision` (`t:string`) The revision of the asset type.
  """
  @spec get_asset_type(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_asset_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_type_errors()}
  def get_asset_type(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types/#{AWS.Util.encode_uri(identifier)}"

    # Validate optional parameters
    optional_params = [revision: nil]

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
      if opt_val = Keyword.get(options, :revision) do
        [{"revision", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:revision])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone data source.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetDataSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the data source exists.
  * `:identifier` (`t:string` required) The ID of the Amazon DataZone data source.
  """
  @spec get_data_source(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_errors()}
  def get_data_source(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

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
  Gets an Amazon DataZone data source run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetDataSourceRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the domain in which this
    data source run was performed.
  * `:identifier` (`t:string` required) The ID of the data source run.
  """
  @spec get_data_source_run(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_data_source_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_run_errors()}
  def get_data_source_run(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-source-runs/#{AWS.Util.encode_uri(identifier)}"

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
  Gets an Amazon DataZone domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identifier` (`t:string` required) The identifier of the specified Amazon
    DataZone domain.
  """
  @spec get_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_errors()}
  def get_domain(%Client{} = client, identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"

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
  Gets an Amazon DataZone environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain where the environment exists.
  * `:identifier` (`t:string` required) The ID of the Amazon DataZone environment.
  """
  @spec get_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

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
  Gets the specified environment action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetEnvironmentAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the GetEnvironmentAction API is invoked.
  * `:environment_identifier` (`t:string` required) The environment ID of the
    environment action.
  * `:identifier` (`t:string` required) The ID of the environment action
  """
  @spec get_environment_action(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_action_errors()}
  def get_environment_action(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions/#{AWS.Util.encode_uri(identifier)}"

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
  Gets an Amazon DataZone blueprint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetEnvironmentBlueprint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the domain in
    which this blueprint exists.
  * `:identifier` (`t:string` required) The ID of this Amazon DataZone blueprint.
  """
  @spec get_environment_blueprint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_blueprint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_blueprint_errors()}
  def get_environment_blueprint(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints/#{AWS.Util.encode_uri(identifier)}"

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
  Gets the blueprint configuration in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetEnvironmentBlueprintConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain where this blueprint exists.
  * `:environment_blueprint_identifier` (`t:string` required) He ID of the
    blueprint.
  """
  @spec get_environment_blueprint_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_environment_blueprint_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_blueprint_configuration_errors()}
  def get_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

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
  Gets the credentials of an environment in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetEnvironmentCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this environment and its credentials exist.
  * `:environment_identifier` (`t:string` required) The ID of the environment
    whose credentials this operation gets.
  """
  @spec get_environment_credentials(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_credentials_errors()}
  def get_environment_credentials(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/credentials"

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
  Gets an evinronment profile in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetEnvironmentProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this environment profile exists.
  * `:identifier` (`t:string` required) The ID of the environment profile.
  """
  @spec get_environment_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_profile_errors()}
  def get_environment_profile(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

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
  Gets a metadata form type in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetFormType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this metadata form type exists.
  * `:form_type_identifier` (`t:string` required) The ID of the metadata form
    type.

  ## Keyword parameters:
  * `:revision` (`t:string`) The revision of this metadata form type.
  """
  @spec get_form_type(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_form_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_form_type_errors()}
  def get_form_type(%Client{} = client, domain_identifier, form_type_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types/#{AWS.Util.encode_uri(form_type_identifier)}"

    # Validate optional parameters
    optional_params = [revision: nil]

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
      if opt_val = Keyword.get(options, :revision) do
        [{"revision", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:revision])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a business glossary in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetGlossary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this business glossary exists.
  * `:identifier` (`t:string` required) The ID of the business glossary.
  """
  @spec get_glossary(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_glossary_errors()}
  def get_glossary(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

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
  Gets a business glossary term in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetGlossaryTerm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which this business glossary term exists.
  * `:identifier` (`t:string` required) The ID of the business glossary term.
  """
  @spec get_glossary_term(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_glossary_term_errors()}
  def get_glossary_term(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

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
  Gets a group profile in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetGroupProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which the group profile exists.
  * `:group_identifier` (`t:string` required) The identifier of the group profile.
  """
  @spec get_group_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_group_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_profile_errors()}
  def get_group_profile(%Client{} = client, domain_identifier, group_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles/#{AWS.Util.encode_uri(group_identifier)}"

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
  Gets the data portal URL for the specified Amazon DataZone domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetIamPortalLoginUrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) the ID of the Amazon DataZone
    domain the data portal of which you want to get.
  """
  @spec get_iam_portal_login_url(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_iam_portal_login_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_iam_portal_login_url_errors()}
  def get_iam_portal_login_url(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/get-portal-login-url"

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
  Gets the data lineage node.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetLineageNode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the domain in which you
    want to get the data lineage node.
  * `:identifier` (`t:string` required) The ID of the data lineage node that you
    want to get.

  ## Keyword parameters:
  * `:event_timestamp` (`t:string`) The event time stamp for which you want to get
    the data lineage node.
  """
  @spec get_lineage_node(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_lineage_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lineage_node_errors()}
  def get_lineage_node(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/lineage/nodes/#{AWS.Util.encode_uri(identifier)}"

    # Validate optional parameters
    optional_params = [event_timestamp: nil]

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
      if opt_val = Keyword.get(options, :event_timestamp) do
        [{"timestamp", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:event_timestamp])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a listing (a record of an asset at a given time).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetListing&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain.
  * `:identifier` (`t:string` required) The ID of the listing.

  ## Keyword parameters:
  * `:listing_revision` (`t:string`) The revision of the listing.
  """
  @spec get_listing(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_listing_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_listing_errors()}
  def get_listing(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/#{AWS.Util.encode_uri(identifier)}"

    # Validate optional parameters
    optional_params = [listing_revision: nil]

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
      if opt_val = Keyword.get(options, :listing_revision) do
        [{"listingRevision", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:listing_revision])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a metadata generation run in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetMetadataGenerationRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain the metadata generation run of which you want to get.
  * `:identifier` (`t:string` required) The identifier of the metadata generation
    run.
  """
  @spec get_metadata_generation_run(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_metadata_generation_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metadata_generation_run_errors()}
  def get_metadata_generation_run(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs/#{AWS.Util.encode_uri(identifier)}"

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
  Gets a project in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the project exists.
  * `:identifier` (`t:string` required) The ID of the project.
  """
  @spec get_project(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_project_errors()}
  def get_project(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

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
  Gets a subscription in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the subscription exists.
  * `:identifier` (`t:string` required) The ID of the subscription.
  """
  @spec get_subscription(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscription_errors()}
  def get_subscription(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}"

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
  Gets the subscription grant in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetSubscriptionGrant&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the subscription grant exists.
  * `:identifier` (`t:string` required) The ID of the subscription grant.
  """
  @spec get_subscription_grant(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_subscription_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscription_grant_errors()}
  def get_subscription_grant(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}"

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
  Gets the details of the specified subscription request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetSubscriptionRequestDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which to get the subscription request details.
  * `:identifier` (`t:string` required) The identifier of the subscription request
    the details of which to get.
  """
  @spec get_subscription_request_details(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_subscription_request_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscription_request_details_errors()}
  def get_subscription_request_details(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

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
  Gets the subscription target in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetSubscriptionTarget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the subscription target exists.
  * `:environment_identifier` (`t:string` required) The ID of the environment
    associated with the subscription target.
  * `:identifier` (`t:string` required) The ID of the subscription target.
  """
  @spec get_subscription_target(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_subscription_target_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscription_target_errors()}
  def get_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

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
  Gets the existing data point for the asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetTimeSeriesDataPoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain that houses the asset for which you want to get the data point.
  * `:entity_identifier` (`t:string` required) The ID of the asset for which you
    want to get the data point.
  * `:entity_type` (`t:enum["ASSET|LISTING"]` required) The type of the asset for
    which you want to get the data point.
  * `:identifier` (`t:string` required) The ID of the data point that you want to
    get.
  * `:form_name` (`t:string` required) The name of the time series form that
    houses the data point that you want to get.
  """
  @spec get_time_series_data_point(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_time_series_data_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_time_series_data_point_errors()}
  def get_time_series_data_point(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        identifier,
        form_name,
        options \\ []
      )
      when is_binary(form_name) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points/#{AWS.Util.encode_uri(identifier)}"

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
    query_params = [{"formName", form_name}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a user profile in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20GetUserProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) the ID of the Amazon DataZone
    domain the data portal of which you want to get.
  * `:user_identifier` (`t:string` required) The identifier of the user for which
    you want to get the user profile.

  ## Keyword parameters:
  * `:type` (`t:enum["IAM|SSO"]`) The type of the user profile.
  """
  @spec get_user_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_user_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_profile_errors()}
  def get_user_profile(%Client{} = client, domain_identifier, user_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles/#{AWS.Util.encode_uri(user_identifier)}"

    # Validate optional parameters
    optional_params = [type: nil]

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
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists asset filters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListAssetFilters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_identifier` (`t:string` required) The ID of the data asset.
  * `:domain_identifier` (`t:string` required) The ID of the domain where you want
    to list asset filters.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of asset filters to return in
    a single call to ListAssetFilters. When the number of asset filters to be
    listed is greater than the value of MaxResults, the response contains a
    NextToken value that you can use in a subsequent call to ListAssetFilters to
    list the next set of asset filters.
  * `:next_token` (`t:string`) When the number of asset filters is greater than
    the default value for the MaxResults parameter, or if you explicitly specify
    a value for MaxResults that is less than the number of asset filters, the
    response includes a pagination token named NextToken. You can specify this
    NextToken value in a subsequent call to ListAssetFilters to list the next
    set of asset filters.
  * `:status` (`t:enum["INVALID|VALID"]`) The status of the asset filter.
  """
  @spec list_asset_filters(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_asset_filters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_filters_errors()}
  def list_asset_filters(%Client{} = client, asset_identifier, domain_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil]

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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the revisions for the asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListAssetRevisions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the domain.
  * `:identifier` (`t:string` required) The identifier of the asset.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of revisions to return in a
    single call to ListAssetRevisions. When the number of revisions to be listed
    is greater than the value of MaxResults, the response contains a NextToken
    value that you can use in a subsequent call to ListAssetRevisions to list
    the next set of revisions.
  * `:next_token` (`t:string`) When the number of revisions is greater than the
    default value for the MaxResults parameter, or if you explicitly specify a
    value for MaxResults that is less than the number of revisions, the response
    includes a pagination token named NextToken. You can specify this NextToken
    value in a subsequent call to ListAssetRevisions to list the next set of
    revisions.
  """
  @spec list_asset_revisions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_asset_revisions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_revisions_errors()}
  def list_asset_revisions(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/revisions"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists data source run activities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListDataSourceRunActivities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which to list data source run activities.
  * `:identifier` (`t:string` required) The identifier of the data source run.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of activities to return in a
    single call to ListDataSourceRunActivities. When the number of activities to
    be listed is greater than the value of MaxResults, the response contains a
    NextToken value that you can use in a subsequent call to
    ListDataSourceRunActivities to list the next set of activities.
  * `:next_token` (`t:string`) When the number of activities is greater than the
    default value for the MaxResults parameter, or if you explicitly specify a
    value for MaxResults that is less than the number of activities, the
    response includes a pagination token named NextToken. You can specify this
    NextToken value in a subsequent call to ListDataSourceRunActivities to list
    the next set of activities.
  * `:status`
    (`t:enum["FAILED|PUBLISHING_FAILED|SKIPPED_ALREADY_IMPORTED|SKIPPED_ARCHIVED|SKIPPED_NO_ACCESS|SUCCEEDED_CREATED|SUCCEEDED_UPDATED|UNCHANGED"]`)
    The status of the data source run.
  """
  @spec list_data_source_run_activities(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_data_source_run_activities_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_source_run_activities_errors()}
  def list_data_source_run_activities(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-source-runs/#{AWS.Util.encode_uri(identifier)}/activities"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil]

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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists data source runs in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListDataSourceRuns&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_source_identifier` (`t:string` required) The identifier of the data
    source.
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which to invoke the ListDataSourceRuns action.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of runs to return in a single
    call to ListDataSourceRuns. When the number of runs to be listed is greater
    than the value of MaxResults, the response contains a NextToken value that
    you can use in a subsequent call to ListDataSourceRuns to list the next set
    of runs.
  * `:next_token` (`t:string`) When the number of runs is greater than the default
    value for the MaxResults parameter, or if you explicitly specify a value for
    MaxResults that is less than the number of runs, the response includes a
    pagination token named NextToken. You can specify this NextToken value in a
    subsequent call to ListDataSourceRuns to list the next set of runs.
  * `:status` (`t:enum["FAILED|PARTIALLY_SUCCEEDED|REQUESTED|RUNNING|SUCCESS"]`)
    The status of the data source.
  """
  @spec list_data_source_runs(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_data_source_runs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_source_runs_errors()}
  def list_data_source_runs(
        %Client{} = client,
        data_source_identifier,
        domain_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(data_source_identifier)}/runs"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil]

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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists data sources in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListDataSources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which to list the data sources.
  * `:project_identifier` (`t:string` required) The identifier of the project in
    which to list data sources.

  ## Keyword parameters:
  * `:environment_identifier` (`t:string`) The identifier of the environment in
    which to list the data sources.
  * `:max_results` (`t:integer`) The maximum number of data sources to return in a
    single call to ListDataSources. When the number of data sources to be listed
    is greater than the value of MaxResults, the response contains a NextToken
    value that you can use in a subsequent call to ListDataSources to list the
    next set of data sources.
  * `:name` (`t:string`) The name of the data source.
  * `:next_token` (`t:string`) When the number of data sources is greater than the
    default value for the MaxResults parameter, or if you explicitly specify a
    value for MaxResults that is less than the number of data sources, the
    response includes a pagination token named NextToken. You can specify this
    NextToken value in a subsequent call to ListDataSources to list the next set
    of data sources.
  * `:status`
    (`t:enum["CREATING|DELETING|FAILED_CREATION|FAILED_DELETION|FAILED_UPDATE|READY|RUNNING|UPDATING"]`)
    The status of the data source.
  * `:type` (`t:string`) The type of the data source.
  """
  @spec list_data_sources(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_data_sources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sources_errors()}
  def list_data_sources(%Client{} = client, domain_identifier, project_identifier, options \\ [])
      when is_binary(project_identifier) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources"

    # Validate optional parameters
    optional_params = [
      environment_identifier: nil,
      max_results: nil,
      name: nil,
      next_token: nil,
      status: nil,
      type: nil
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
    query_params = [{"projectIdentifier", project_identifier}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :environment_identifier) do
        [{"environmentIdentifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:environment_identifier, :max_results, :name, :next_token, :status, :type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone domains.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListDomains&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of domains to return in a
    single call to ListDomains. When the number of domains to be listed is
    greater than the value of MaxResults, the response contains a NextToken
    value that you can use in a subsequent call to ListDomains to list the next
    set of domains.
  * `:next_token` (`t:string`) When the number of domains is greater than the
    default value for the MaxResults parameter, or if you explicitly specify a
    value for MaxResults that is less than the number of domains, the response
    includes a pagination token named NextToken. You can specify this NextToken
    value in a subsequent call to ListDomains to list the next set of domains.
  * `:status`
    (`t:enum["AVAILABLE|CREATING|CREATION_FAILED|DELETED|DELETING|DELETION_FAILED"]`)
    The status of the data source.
  """
  @spec list_domains(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_domains_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, options \\ []) do
    url_path = "/v2/domains"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil]

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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists existing environment actions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListEnvironmentActions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which the environment actions are listed.
  * `:environment_identifier` (`t:string` required) The ID of the envrironment
    whose environment actions are listed.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of environment actions to
    return in a single call to ListEnvironmentActions. When the number of
    environment actions to be listed is greater than the value of MaxResults,
    the response contains a NextToken value that you can use in a subsequent
    call to ListEnvironmentActions to list the next set of environment actions.
  * `:next_token` (`t:string`) When the number of environment actions is greater
    than the default value for the MaxResults parameter, or if you explicitly
    specify a value for MaxResults that is less than the number of environment
    actions, the response includes a pagination token named NextToken. You can
    specify this NextToken value in a subsequent call to ListEnvironmentActions
    to list the next set of environment actions.
  """
  @spec list_environment_actions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_environment_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_actions_errors()}
  def list_environment_actions(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists blueprint configurations for a Amazon DataZone environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListEnvironmentBlueprintConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of blueprint configurations to
    return in a single call to ListEnvironmentBlueprintConfigurations. When the
    number of configurations to be listed is greater than the value of
    MaxResults, the response contains a NextToken value that you can use in a
    subsequent call to ListEnvironmentBlueprintConfigurations to list the next
    set of configurations.
  * `:next_token` (`t:string`) When the number of blueprint configurations is
    greater than the default value for the MaxResults parameter, or if you
    explicitly specify a value for MaxResults that is less than the number of
    configurations, the response includes a pagination token named NextToken.
    You can specify this NextToken value in a subsequent call to
    ListEnvironmentBlueprintConfigurations to list the next set of
    configurations.
  """
  @spec list_environment_blueprint_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_environment_blueprint_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_blueprint_configurations_errors()}
  def list_environment_blueprint_configurations(
        %Client{} = client,
        domain_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists blueprints in an Amazon DataZone environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListEnvironmentBlueprints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.

  ## Keyword parameters:
  * `:managed` (`t:string`) Specifies whether the environment blueprint is managed
    by Amazon DataZone.
  * `:max_results` (`t:integer`) The maximum number of blueprints to return in a
    single call to ListEnvironmentBlueprints. When the number of blueprints to
    be listed is greater than the value of MaxResults, the response contains a
    NextToken value that you can use in a subsequent call to
    ListEnvironmentBlueprints to list the next set of blueprints.
  * `:name` (`t:string`) The name of the Amazon DataZone environment.
  * `:next_token` (`t:string`) When the number of blueprints in the environment is
    greater than the default value for the MaxResults parameter, or if you
    explicitly specify a value for MaxResults that is less than the number of
    blueprints in the environment, the response includes a pagination token
    named NextToken. You can specify this NextToken value in a subsequent call
    to ListEnvironmentBlueprintsto list the next set of blueprints.
  """
  @spec list_environment_blueprints(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_environment_blueprints_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_blueprints_errors()}
  def list_environment_blueprints(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints"

    # Validate optional parameters
    optional_params = [managed: nil, max_results: nil, name: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :managed) do
        [{"managed", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:managed, :max_results, :name, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone environment profiles.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListEnvironmentProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.

  ## Keyword parameters:
  * `:aws_account_id` (`t:string`) The identifier of the Amazon Web Services
    account where you want to list environment profiles.
  * `:aws_account_region` (`t:string`) The Amazon Web Services region where you
    want to list environment profiles.
  * `:environment_blueprint_identifier` (`t:string`) The identifier of the
    blueprint that was used to create the environment profiles that you want to
    list.
  * `:max_results` (`t:integer`) The maximum number of environment profiles to
    return in a single call to ListEnvironmentProfiles. When the number of
    environment profiles to be listed is greater than the value of MaxResults,
    the response contains a NextToken value that you can use in a subsequent
    call to ListEnvironmentProfiles to list the next set of environment
    profiles.
  * `:name` (`t:string`)
  * `:next_token` (`t:string`) When the number of environment profiles is greater
    than the default value for the MaxResults parameter, or if you explicitly
    specify a value for MaxResults that is less than the number of environment
    profiles, the response includes a pagination token named NextToken. You can
    specify this NextToken value in a subsequent call to ListEnvironmentProfiles
    to list the next set of environment profiles.
  * `:project_identifier` (`t:string`) The identifier of the Amazon DataZone
    project.
  """
  @spec list_environment_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_environment_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_profiles_errors()}
  def list_environment_profiles(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles"

    # Validate optional parameters
    optional_params = [
      aws_account_id: nil,
      aws_account_region: nil,
      environment_blueprint_identifier: nil,
      max_results: nil,
      name: nil,
      next_token: nil,
      project_identifier: nil
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
      if opt_val = Keyword.get(options, :project_identifier) do
        [{"projectIdentifier", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :environment_blueprint_identifier) do
        [{"environmentBlueprintIdentifier", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aws_account_region) do
        [{"awsAccountRegion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aws_account_id) do
        [{"awsAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :aws_account_id,
        :aws_account_region,
        :environment_blueprint_identifier,
        :max_results,
        :name,
        :next_token,
        :project_identifier
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone environments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListEnvironments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.
  * `:project_identifier` (`t:string` required) The identifier of the Amazon
    DataZone project.

  ## Keyword parameters:
  * `:aws_account_id` (`t:string`) The identifier of the Amazon Web Services
    account where you want to list environments.
  * `:aws_account_region` (`t:string`) The Amazon Web Services region where you
    want to list environments.
  * `:environment_blueprint_identifier` (`t:string`) The identifier of the Amazon
    DataZone blueprint.
  * `:environment_profile_identifier` (`t:string`) The identifier of the
    environment profile.
  * `:max_results` (`t:integer`) The maximum number of environments to return in a
    single call to ListEnvironments. When the number of environments to be
    listed is greater than the value of MaxResults, the response contains a
    NextToken value that you can use in a subsequent call to ListEnvironments to
    list the next set of environments.
  * `:name` (`t:string`) The name of the environment.
  * `:next_token` (`t:string`) When the number of environments is greater than the
    default value for the MaxResults parameter, or if you explicitly specify a
    value for MaxResults that is less than the number of environments, the
    response includes a pagination token named NextToken. You can specify this
    NextToken value in a subsequent call to ListEnvironments to list the next
    set of environments.
  * `:provider` (`t:string`) The provider of the environment.
  * `:status`
    (`t:enum["ACTIVE|CREATE_FAILED|CREATING|DELETED|DELETE_FAILED|DELETING|DISABLED|EXPIRED|INACCESSIBLE|SUSPENDED|UPDATE_FAILED|UPDATING|VALIDATION_FAILED"]`)
    The status of the environments that you want to list.
  """
  @spec list_environments(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_environments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, domain_identifier, project_identifier, options \\ [])
      when is_binary(project_identifier) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments"

    # Validate optional parameters
    optional_params = [
      aws_account_id: nil,
      aws_account_region: nil,
      environment_blueprint_identifier: nil,
      environment_profile_identifier: nil,
      max_results: nil,
      name: nil,
      next_token: nil,
      provider: nil,
      status: nil
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
    query_params = [{"projectIdentifier", project_identifier}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :provider) do
        [{"provider", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :environment_profile_identifier) do
        [{"environmentProfileIdentifier", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :environment_blueprint_identifier) do
        [{"environmentBlueprintIdentifier", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aws_account_region) do
        [{"awsAccountRegion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aws_account_id) do
        [{"awsAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :aws_account_id,
        :aws_account_region,
        :environment_blueprint_identifier,
        :environment_profile_identifier,
        :max_results,
        :name,
        :next_token,
        :provider,
        :status
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the history of the specified data lineage node.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListLineageNodeHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the domain where you want
    to list the history of the specified data lineage node.
  * `:identifier` (`t:string` required) The ID of the data lineage node whose
    history you want to list.

  ## Keyword parameters:
  * `:direction` (`t:enum["DOWNSTREAM|UPSTREAM"]`) The direction of the data
    lineage node refers to the lineage node having neighbors in that direction.
    For example, if direction is UPSTREAM, the ListLineageNodeHistory API
    responds with historical versions with upstream neighbors only.
  * `:event_timestamp_g_t_e` (`t:string`) Specifies whether the action is to
    return data lineage node history from the time after the event timestamp.
  * `:event_timestamp_l_t_e` (`t:string`) Specifies whether the action is to
    return data lineage node history from the time prior of the event timestamp.
  * `:max_results` (`t:integer`) The maximum number of history items to return in
    a single call to ListLineageNodeHistory. When the number of memberships to
    be listed is greater than the value of MaxResults, the response contains a
    NextToken value that you can use in a subsequent call to
    ListLineageNodeHistory to list the next set of items.
  * `:next_token` (`t:string`) When the number of history items is greater than
    the default value for the MaxResults parameter, or if you explicitly specify
    a value for MaxResults that is less than the number of items, the response
    includes a pagination token named NextToken. You can specify this NextToken
    value in a subsequent call to ListLineageNodeHistory to list the next set of
    items.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) The order by which you want
    data lineage node history to be sorted.
  """
  @spec list_lineage_node_history(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_lineage_node_history_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lineage_node_history_errors()}
  def list_lineage_node_history(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/lineage/nodes/#{AWS.Util.encode_uri(identifier)}/history"

    # Validate optional parameters
    optional_params = [
      direction: nil,
      event_timestamp_g_t_e: nil,
      event_timestamp_l_t_e: nil,
      max_results: nil,
      next_token: nil,
      sort_order: nil
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
      if opt_val = Keyword.get(options, :sort_order) do
        [{"sortOrder", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :event_timestamp_l_t_e) do
        [{"timestampLTE", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :event_timestamp_g_t_e) do
        [{"timestampGTE", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :direction) do
        [{"direction", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :direction,
        :event_timestamp_g_t_e,
        :event_timestamp_l_t_e,
        :max_results,
        :next_token,
        :sort_order
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all metadata generation runs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListMetadataGenerationRuns&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain where you want to list metadata generation runs.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of metadata generation runs to
    return in a single call to ListMetadataGenerationRuns. When the number of
    metadata generation runs to be listed is greater than the value of
    MaxResults, the response contains a NextToken value that you can use in a
    subsequent call to ListMetadataGenerationRuns to list the next set of
    revisions.
  * `:next_token` (`t:string`) When the number of metadata generation runs is
    greater than the default value for the MaxResults parameter, or if you
    explicitly specify a value for MaxResults that is less than the number of
    metadata generation runs, the response includes a pagination token named
    NextToken. You can specify this NextToken value in a subsequent call to
    ListMetadataGenerationRuns to list the next set of revisions.
  * `:status` (`t:enum["CANCELED|FAILED|IN_PROGRESS|SUBMITTED|SUCCEEDED"]`) The
    status of the metadata generation runs.
  * `:type` (`t:enum["BUSINESS_DESCRIPTIONS"]`) The type of the metadata
    generation runs.
  """
  @spec list_metadata_generation_runs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_metadata_generation_runs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_metadata_generation_runs_errors()}
  def list_metadata_generation_runs(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil, type: nil]

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
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :status, :type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Amazon DataZone notifications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListNotifications&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.
  * `:type` (`t:enum["EVENT|TASK"]` required) The type of notifications.

  ## Keyword parameters:
  * `:after_timestamp` (`t:string`) The time after which you want to list
    notifications.
  * `:before_timestamp` (`t:string`) The time before which you want to list
    notifications.
  * `:max_results` (`t:integer`) The maximum number of notifications to return in
    a single call to ListNotifications. When the number of notifications to be
    listed is greater than the value of MaxResults, the response contains a
    NextToken value that you can use in a subsequent call to ListNotifications
    to list the next set of notifications.
  * `:next_token` (`t:string`) When the number of notifications is greater than
    the default value for the MaxResults parameter, or if you explicitly specify
    a value for MaxResults that is less than the number of notifications, the
    response includes a pagination token named NextToken. You can specify this
    NextToken value in a subsequent call to ListNotifications to list the next
    set of notifications.
  * `:subjects` (`t:list[smithy.api#String]`) The subjects of notifications.
  * `:task_status` (`t:enum["ACTIVE|INACTIVE"]`) The task status of notifications.
  """
  @spec list_notifications(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notifications_errors()}
  def list_notifications(%Client{} = client, domain_identifier, type, options \\ [])
      when is_binary(type) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/notifications"

    # Validate optional parameters
    optional_params = [
      after_timestamp: nil,
      before_timestamp: nil,
      max_results: nil,
      next_token: nil,
      subjects: nil,
      task_status: nil
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
    query_params = [{"type", type}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :task_status) do
        [{"taskStatus", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :subjects) do
        [{"subjects", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :before_timestamp) do
        [{"beforeTimestamp", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :after_timestamp) do
        [{"afterTimestamp", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :after_timestamp,
        :before_timestamp,
        :max_results,
        :next_token,
        :subjects,
        :task_status
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all members of the specified project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListProjectMemberships&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which you want to list project memberships.
  * `:project_identifier` (`t:string` required) The identifier of the project
    whose memberships you want to list.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of memberships to return in a
    single call to ListProjectMemberships. When the number of memberships to be
    listed is greater than the value of MaxResults, the response contains a
    NextToken value that you can use in a subsequent call to
    ListProjectMemberships to list the next set of memberships.
  * `:next_token` (`t:string`) When the number of memberships is greater than the
    default value for the MaxResults parameter, or if you explicitly specify a
    value for MaxResults that is less than the number of memberships, the
    response includes a pagination token named NextToken. You can specify this
    NextToken value in a subsequent call to ListProjectMemberships to list the
    next set of memberships.
  * `:sort_by` (`t:enum["NAME"]`) The method by which you want to sort the project
    memberships.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) The sort order of the project
    memberships.
  """
  @spec list_project_memberships(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_project_memberships_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_project_memberships_errors()}
  def list_project_memberships(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/memberships"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, sort_by: nil, sort_order: nil]

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
      if opt_val = Keyword.get(options, :sort_order) do
        [{"sortOrder", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_by) do
        [{"sortBy", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :sort_by, :sort_order])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone projects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListProjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.

  ## Keyword parameters:
  * `:group_identifier` (`t:string`) The identifier of a group.
  * `:max_results` (`t:integer`) The maximum number of projects to return in a
    single call to ListProjects. When the number of projects to be listed is
    greater than the value of MaxResults, the response contains a NextToken
    value that you can use in a subsequent call to ListProjects to list the next
    set of projects.
  * `:name` (`t:string`) The name of the project.
  * `:next_token` (`t:string`) When the number of projects is greater than the
    default value for the MaxResults parameter, or if you explicitly specify a
    value for MaxResults that is less than the number of projects, the response
    includes a pagination token named NextToken. You can specify this NextToken
    value in a subsequent call to ListProjects to list the next set of projects.
  * `:user_identifier` (`t:string`) The identifier of the Amazon DataZone user.
  """
  @spec list_projects(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_projects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects"

    # Validate optional parameters
    optional_params = [
      group_identifier: nil,
      max_results: nil,
      name: nil,
      next_token: nil,
      user_identifier: nil
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
      if opt_val = Keyword.get(options, :user_identifier) do
        [{"userIdentifier", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :group_identifier) do
        [{"groupIdentifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:group_identifier, :max_results, :name, :next_token, :user_identifier])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists subscription grants.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListSubscriptionGrants&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.

  ## Keyword parameters:
  * `:environment_id` (`t:string`) The identifier of the Amazon DataZone
    environment.
  * `:max_results` (`t:integer`) The maximum number of subscription grants to
    return in a single call to ListSubscriptionGrants. When the number of
    subscription grants to be listed is greater than the value of MaxResults,
    the response contains a NextToken value that you can use in a subsequent
    call to ListSubscriptionGrants to list the next set of subscription grants.
  * `:next_token` (`t:string`) When the number of subscription grants is greater
    than the default value for the MaxResults parameter, or if you explicitly
    specify a value for MaxResults that is less than the number of subscription
    grants, the response includes a pagination token named NextToken. You can
    specify this NextToken value in a subsequent call to ListSubscriptionGrants
    to list the next set of subscription grants.
  * `:sort_by` (`t:enum["CREATED_AT|UPDATED_AT"]`) Specifies the way of sorting
    the results of this action.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) Specifies the sort order of
    this action.
  * `:subscribed_listing_id` (`t:string`) The identifier of the subscribed
    listing.
  * `:subscription_id` (`t:string`) The identifier of the subscription.
  * `:subscription_target_id` (`t:string`) The identifier of the subscription
    target.
  """
  @spec list_subscription_grants(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_subscription_grants_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscription_grants_errors()}
  def list_subscription_grants(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants"

    # Validate optional parameters
    optional_params = [
      environment_id: nil,
      max_results: nil,
      next_token: nil,
      sort_by: nil,
      sort_order: nil,
      subscribed_listing_id: nil,
      subscription_id: nil,
      subscription_target_id: nil
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
      if opt_val = Keyword.get(options, :subscription_target_id) do
        [{"subscriptionTargetId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :subscription_id) do
        [{"subscriptionId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :subscribed_listing_id) do
        [{"subscribedListingId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_order) do
        [{"sortOrder", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_by) do
        [{"sortBy", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :environment_id) do
        [{"environmentId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :environment_id,
        :max_results,
        :next_token,
        :sort_by,
        :sort_order,
        :subscribed_listing_id,
        :subscription_id,
        :subscription_target_id
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone subscription requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListSubscriptionRequests&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.

  ## Keyword parameters:
  * `:approver_project_id` (`t:string`) The identifier of the subscription request
    approver's project.
  * `:max_results` (`t:integer`) The maximum number of subscription requests to
    return in a single call to ListSubscriptionRequests. When the number of
    subscription requests to be listed is greater than the value of MaxResults,
    the response contains a NextToken value that you can use in a subsequent
    call to ListSubscriptionRequests to list the next set of subscription
    requests.
  * `:next_token` (`t:string`) When the number of subscription requests is greater
    than the default value for the MaxResults parameter, or if you explicitly
    specify a value for MaxResults that is less than the number of subscription
    requests, the response includes a pagination token named NextToken. You can
    specify this NextToken value in a subsequent call to
    ListSubscriptionRequests to list the next set of subscription requests.
  * `:owning_project_id` (`t:string`) The identifier of the project for the
    subscription requests.
  * `:sort_by` (`t:enum["CREATED_AT|UPDATED_AT"]`) Specifies the way to sort the
    results of this action.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) Specifies the sort order for
    the results of this action.
  * `:status` (`t:enum["ACCEPTED|PENDING|REJECTED"]`) Specifies the status of the
    subscription requests.
  * `:subscribed_listing_id` (`t:string`) The identifier of the subscribed
    listing.
  """
  @spec list_subscription_requests(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_subscription_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscription_requests_errors()}
  def list_subscription_requests(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests"

    # Validate optional parameters
    optional_params = [
      approver_project_id: nil,
      max_results: nil,
      next_token: nil,
      owning_project_id: nil,
      sort_by: nil,
      sort_order: nil,
      status: nil,
      subscribed_listing_id: nil
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
      if opt_val = Keyword.get(options, :subscribed_listing_id) do
        [{"subscribedListingId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_order) do
        [{"sortOrder", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_by) do
        [{"sortBy", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :owning_project_id) do
        [{"owningProjectId", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :approver_project_id) do
        [{"approverProjectId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :approver_project_id,
        :max_results,
        :next_token,
        :owning_project_id,
        :sort_by,
        :sort_order,
        :status,
        :subscribed_listing_id
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists subscription targets in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListSubscriptionTargets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain where you want to list subscription targets.
  * `:environment_identifier` (`t:string` required) The identifier of the
    environment where you want to list subscription targets.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of subscription targets to
    return in a single call to ListSubscriptionTargets. When the number of
    subscription targets to be listed is greater than the value of MaxResults,
    the response contains a NextToken value that you can use in a subsequent
    call to ListSubscriptionTargets to list the next set of subscription
    targets.
  * `:next_token` (`t:string`) When the number of subscription targets is greater
    than the default value for the MaxResults parameter, or if you explicitly
    specify a value for MaxResults that is less than the number of subscription
    targets, the response includes a pagination token named NextToken. You can
    specify this NextToken value in a subsequent call to ListSubscriptionTargets
    to list the next set of subscription targets.
  * `:sort_by` (`t:enum["CREATED_AT|UPDATED_AT"]`) Specifies the way in which the
    results of this action are to be sorted.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) Specifies the sort order for
    the results of this action.
  """
  @spec list_subscription_targets(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_subscription_targets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscription_targets_errors()}
  def list_subscription_targets(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, sort_by: nil, sort_order: nil]

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
      if opt_val = Keyword.get(options, :sort_order) do
        [{"sortOrder", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_by) do
        [{"sortBy", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :sort_by, :sort_order])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists subscriptions in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListSubscriptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.

  ## Keyword parameters:
  * `:approver_project_id` (`t:string`) The identifier of the project for the
    subscription's approver.
  * `:max_results` (`t:integer`) The maximum number of subscriptions to return in
    a single call to ListSubscriptions. When the number of subscriptions to be
    listed is greater than the value of MaxResults, the response contains a
    NextToken value that you can use in a subsequent call to ListSubscriptions
    to list the next set of Subscriptions.
  * `:next_token` (`t:string`) When the number of subscriptions is greater than
    the default value for the MaxResults parameter, or if you explicitly specify
    a value for MaxResults that is less than the number of subscriptions, the
    response includes a pagination token named NextToken. You can specify this
    NextToken value in a subsequent call to ListSubscriptions to list the next
    set of subscriptions.
  * `:owning_project_id` (`t:string`) The identifier of the owning project.
  * `:sort_by` (`t:enum["CREATED_AT|UPDATED_AT"]`) Specifies the way in which the
    results of this action are to be sorted.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) Specifies the sort order for
    the results of this action.
  * `:status` (`t:enum["APPROVED|CANCELLED|REVOKED"]`) The status of the
    subscriptions that you want to list.
  * `:subscribed_listing_id` (`t:string`) The identifier of the subscribed listing
    for the subscriptions that you want to list.
  * `:subscription_request_identifier` (`t:string`) The identifier of the
    subscription request for the subscriptions that you want to list.
  """
  @spec list_subscriptions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_subscriptions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscriptions_errors()}
  def list_subscriptions(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions"

    # Validate optional parameters
    optional_params = [
      approver_project_id: nil,
      max_results: nil,
      next_token: nil,
      owning_project_id: nil,
      sort_by: nil,
      sort_order: nil,
      status: nil,
      subscribed_listing_id: nil,
      subscription_request_identifier: nil
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
      if opt_val = Keyword.get(options, :subscription_request_identifier) do
        [{"subscriptionRequestIdentifier", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :subscribed_listing_id) do
        [{"subscribedListingId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_order) do
        [{"sortOrder", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_by) do
        [{"sortBy", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :owning_project_id) do
        [{"owningProjectId", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :approver_project_id) do
        [{"approverProjectId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :approver_project_id,
        :max_results,
        :next_token,
        :owning_project_id,
        :sort_by,
        :sort_order,
        :status,
        :subscribed_listing_id,
        :subscription_request_identifier
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for the specified resource in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource whose tags you
    want to list.
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
  Lists time series data points.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20ListTimeSeriesDataPoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain that houses the assets for which you want to list time series data
    points.
  * `:entity_identifier` (`t:string` required) The ID of the asset for which you
    want to list data points.
  * `:entity_type` (`t:enum["ASSET|LISTING"]` required) The type of the asset for
    which you want to list data points.
  * `:form_name` (`t:string` required) The name of the time series data points
    form.

  ## Keyword parameters:
  * `:ended_at` (`t:string`) The timestamp at which the data points that you
    wanted to list ended.
  * `:max_results` (`t:integer`) The maximum number of data points to return in a
    single call to ListTimeSeriesDataPoints. When the number of data points to
    be listed is greater than the value of MaxResults, the response contains a
    NextToken value that you can use in a subsequent call to
    ListTimeSeriesDataPoints to list the next set of data points.
  * `:next_token` (`t:string`) When the number of data points is greater than the
    default value for the MaxResults parameter, or if you explicitly specify a
    value for MaxResults that is less than the number of data points, the
    response includes a pagination token named NextToken. You can specify this
    NextToken value in a subsequent call to ListTimeSeriesDataPoints to list the
    next set of data points.
  * `:started_at` (`t:string`) The timestamp at which the data points that you
    want to list started.
  """
  @spec list_time_series_data_points(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_time_series_data_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_time_series_data_points_errors()}
  def list_time_series_data_points(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        form_name,
        options \\ []
      )
      when is_binary(form_name) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points"

    # Validate optional parameters
    optional_params = [ended_at: nil, max_results: nil, next_token: nil, started_at: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"formName", form_name}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :started_at) do
        [{"startedAt", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :ended_at) do
        [{"endedAt", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:ended_at, :max_results, :next_token, :started_at])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Posts a data lineage event.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20PostLineageEvent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the domain where you want
    to post a data lineage event.
  * `:input` (`t:map`):
    * `"event" => t:blob` (required) The data lineage event that you want to post.
    Only open-lineage run event are supported as events.

  ## Keyword parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive identifier that is
    provided to ensure the idempotency of the request.
  """
  @spec post_lineage_event(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, post_lineage_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, post_lineage_event_errors()}
  def post_lineage_event(%Client{} = client, domain_identifier, input, options \\ [])
      when is_map(input) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/lineage/events"

    # Validate optional parameters
    optional_params = [client_token: nil]

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
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Posts time series data points to Amazon DataZone for the specified asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20PostTimeSeriesDataPoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain in which you want to post time series data points.
  * `:entity_identifier` (`t:string` required) The ID of the asset for which you
    want to post time series data points.
  * `:entity_type` (`t:enum["ASSET|LISTING"]` required) The type of the asset for
    which you want to post data points.
  """
  @spec post_time_series_data_points(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, post_time_series_data_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, post_time_series_data_points_errors()}
  def post_time_series_data_points(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points"

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
  Writes the configuration for the specified environment blueprint in Amazon
  DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20PutEnvironmentBlueprintConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.
  * `:environment_blueprint_identifier` (`t:string` required) The identifier of
    the environment blueprint.
  """
  @spec put_environment_blueprint_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, put_environment_blueprint_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_environment_blueprint_configuration_errors()}
  def put_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

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
  Rejects automatically generated business-friendly metadata for your Amazon
  DataZone assets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20RejectPredictions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.
  * `:identifier` (`t:string` required) The identifier of the prediction.

  ## Keyword parameters:
  * `:revision` (`t:string`) The revision that is to be made to the asset.
  """
  @spec reject_predictions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, reject_predictions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_predictions_errors()}
  def reject_predictions(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/reject-predictions"

    # Validate optional parameters
    optional_params = [revision: nil]

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
      if opt_val = Keyword.get(options, :revision) do
        [{"revision", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:revision])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Rejects the specified subscription request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20RejectSubscriptionRequest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which the subscription request was rejected.
  * `:identifier` (`t:string` required) The identifier of the subscription request
    that was rejected.
  """
  @spec reject_subscription_request(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, reject_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_subscription_request_errors()}
  def reject_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}/reject"

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
  Revokes a specified subscription in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20RevokeSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain where you want to revoke a subscription.
  * `:identifier` (`t:string` required) The identifier of the revoked
    subscription.
  """
  @spec revoke_subscription(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, revoke_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_subscription_errors()}
  def revoke_subscription(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}/revoke"

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
  Searches for assets in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20Search&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain.
  """
  @spec search(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, search_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_errors()}
  def search(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search"

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
  Searches group profiles in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20SearchGroupProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which you want to search group profiles.
  """
  @spec search_group_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, search_group_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_group_profiles_errors()}
  def search_group_profiles(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search-group-profiles"

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
  Searches listings (records of an asset at a given time) in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20SearchListings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the domain in
    which to search listings.
  """
  @spec search_listings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, search_listings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_listings_errors()}
  def search_listings(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/search"

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
  Searches for types in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20SearchTypes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which to invoke the SearchTypes action.
  """
  @spec search_types(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, search_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_types_errors()}
  def search_types(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/types-search"

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
  Searches user profiles in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20SearchUserProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which you want to search user profiles.
  """
  @spec search_user_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, search_user_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_user_profiles_errors()}
  def search_user_profiles(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search-user-profiles"

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
  Start the run of the specified data source in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20StartDataSourceRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_source_identifier` (`t:string` required) The identifier of the data
    source.
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which to start a data source run.
  """
  @spec start_data_source_run(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, start_data_source_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_data_source_run_errors()}
  def start_data_source_run(
        %Client{} = client,
        data_source_identifier,
        domain_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(data_source_identifier)}/runs"

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
  Starts the metadata generation run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20StartMetadataGenerationRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The ID of the Amazon DataZone
    domain where you want to start a metadata generation run.
  """
  @spec start_metadata_generation_run(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_metadata_generation_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_metadata_generation_run_errors()}
  def start_metadata_generation_run(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs"

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
  Tags a resource in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to be tagged in
    Amazon DataZone.
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
  Untags a resource in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to be untagged
    in Amazon DataZone.
  * `:tag_keys` (`t:list[com.amazonaws.datazone#TagKey]` required) Specifies the
    tag keys for the UntagResource action.
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
  Updates an asset filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateAssetFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_identifier` (`t:string` required) The ID of the data asset.
  * `:domain_identifier` (`t:string` required) The ID of the domain where you want
    to update an asset filter.
  * `:identifier` (`t:string` required) The ID of the asset filter.
  """
  @spec update_asset_filter(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_asset_filter_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_asset_filter_errors()}
  def update_asset_filter(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters/#{AWS.Util.encode_uri(identifier)}"

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
  Updates the specified data source in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateDataSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the domain in
    which to update a data source.
  * `:identifier` (`t:string` required) The identifier of the data source to be
    updated.
  """
  @spec update_data_source(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_source_errors()}
  def update_data_source(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

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
  Updates a Amazon DataZone domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identifier` (`t:string` required) The ID of the Amazon Web Services domain
    that is to be updated.

  ## Keyword parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive identifier that is
    provided to ensure the idempotency of the request.
  """
  @spec update_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_errors()}
  def update_domain(%Client{} = client, identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

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
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the specified environment in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the domain in
    which the environment is to be updated.
  * `:identifier` (`t:string` required) The identifier of the environment that is
    to be updated.
  """
  @spec update_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

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
  Updates an environment action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateEnvironmentAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The domain ID of the environment
    action.
  * `:environment_identifier` (`t:string` required) The environment ID of the
    environment action.
  * `:identifier` (`t:string` required) The ID of the environment action.
  """
  @spec update_environment_action(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_environment_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_action_errors()}
  def update_environment_action(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions/#{AWS.Util.encode_uri(identifier)}"

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
  Updates the specified environment profile in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateEnvironmentProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which an environment profile is to be updated.
  * `:identifier` (`t:string` required) The identifier of the environment profile
    that is to be updated.
  """
  @spec update_environment_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_environment_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_profile_errors()}
  def update_environment_profile(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

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
  Updates the business glossary in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateGlossary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which a business glossary is to be updated.
  * `:identifier` (`t:string` required) The identifier of the business glossary to
    be updated.
  """
  @spec update_glossary(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_glossary_errors()}
  def update_glossary(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

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
  Updates a business glossary term in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateGlossaryTerm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which a business glossary term is to be updated.
  * `:identifier` (`t:string` required) The identifier of the business glossary
    term that is to be updated.
  """
  @spec update_glossary_term(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_glossary_term_errors()}
  def update_glossary_term(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

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
  Updates the specified group profile in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateGroupProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which a group profile is updated.
  * `:group_identifier` (`t:string` required) The identifier of the group profile
    that is updated.
  """
  @spec update_group_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_group_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_profile_errors()}
  def update_group_profile(%Client{} = client, domain_identifier, group_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles/#{AWS.Util.encode_uri(group_identifier)}"

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
  Updates the specified project in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which a project is to be updated.
  * `:identifier` (`t:string` required) The identifier of the project that is to
    be updated.
  """
  @spec update_project(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

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
  Updates the status of the specified subscription grant status in Amazon
  DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateSubscriptionGrantStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_identifier` (`t:string` required) The identifier of the asset the
    subscription grant status of which is to be updated.
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which a subscription grant status is to be updated.
  * `:identifier` (`t:string` required) The identifier of the subscription grant
    the status of which is to be updated.
  """
  @spec update_subscription_grant_status(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, update_subscription_grant_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscription_grant_status_errors()}
  def update_subscription_grant_status(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}/status/#{AWS.Util.encode_uri(asset_identifier)}"

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
  Updates a specified subscription request in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateSubscriptionRequest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which a subscription request is to be updated.
  * `:identifier` (`t:string` required) The identifier of the subscription request
    that is to be updated.
  """
  @spec update_subscription_request(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscription_request_errors()}
  def update_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

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
  Updates the specified subscription target in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateSubscriptionTarget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which a subscription target is to be updated.
  * `:environment_identifier` (`t:string` required) The identifier of the
    environment in which a subscription target is to be updated.
  * `:identifier` (`t:string` required) Identifier of the subscription target that
    is to be updated.
  """
  @spec update_subscription_target(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, update_subscription_target_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscription_target_errors()}
  def update_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

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
  Updates the specified user profile in Amazon DataZone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datazone%20UpdateUserProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_identifier` (`t:string` required) The identifier of the Amazon
    DataZone domain in which a user profile is updated.
  * `:user_identifier` (`t:string` required) The identifier of the user whose user
    profile is to be updated.
  """
  @spec update_user_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_user_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_profile_errors()}
  def update_user_profile(%Client{} = client, domain_identifier, user_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles/#{AWS.Util.encode_uri(user_identifier)}"

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
end
