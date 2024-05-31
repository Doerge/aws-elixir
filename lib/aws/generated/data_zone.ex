# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataZone do
  @moduledoc """
  Amazon DataZone is a data management service that enables you to catalog,
  discover,
  govern, share, and analyze your data.

  With Amazon DataZone, you can share and access your
  data across accounts and supported regions. Amazon DataZone simplifies your
  experience
  across Amazon Web Services services, including, but not limited to, Amazon
  Redshift, Amazon
  Athena, Amazon Web Services Glue, and Amazon Web Services Lake Formation.
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

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

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

      data_product_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "dataProductItems" => list(data_product_item()()),
        "description" => String.t(),
        "domainId" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type data_product_summary() :: %{String.t() => any()}

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

      cancel_metadata_generation_run_output() :: %{}

  """
  @type cancel_metadata_generation_run_output() :: %{}

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
        "provisioningRoleArn" => String.t(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type environment_blueprint_configuration_item() :: %{String.t() => any()}

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
        "schedule" => schedule_configuration(),
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
        "schedule" => schedule_configuration(),
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

      get_environment_blueprint_configuration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t(),
        "enabledRegions" => list(String.t()()),
        "environmentBlueprintId" => String.t(),
        "manageAccessRoleArn" => String.t(),
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

      data_product_item() :: %{
        "domainId" => String.t(),
        "itemId" => String.t()
      }

  """
  @type data_product_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_glossary_term_input() :: %{}

  """
  @type delete_glossary_term_input() :: %{}

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

      get_form_type_input() :: %{
        optional("revision") => String.t()
      }

  """
  @type get_form_type_input() :: %{String.t() => any()}

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
        optional("clientToken") => [String.t()]
      }

  """
  @type delete_data_source_input() :: %{String.t() => any()}

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

  @type get_asset_errors() ::
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
  DataZone
  assets.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.
  * `:identifier` (`t:string`) The identifier of the asset.

  ## Optional parameters:
  * `:revision` (`t:string`) The revision that is to be made to the asset.
  """
  @spec accept_predictions(
          AWS.Client.t(),
          String.t(),
          String.t(),
          accept_predictions_input(),
          Keyword.t()
        ) ::
          {:ok, accept_predictions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_predictions_errors()}
  def accept_predictions(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/accept-predictions"

    headers = []

    {query_params, input} =
      [
        {"revision", "revision"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Accepts a subscription request to a specific asset.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The Amazon DataZone domain where the specified subscription request is being accepted.
  * `:identifier` (`t:string`) The unique identifier of the subscription request that is to be accepted.

  ## Optional parameters:
  """
  @spec accept_subscription_request(
          AWS.Client.t(),
          String.t(),
          String.t(),
          accept_subscription_request_input(),
          Keyword.t()
        ) ::
          {:ok, accept_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_subscription_request_errors()}
  def accept_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}/accept"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancels the metadata generation run.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the metadata generation run is to be
         cancelled.
  * `:identifier` (`t:string`) The ID of the metadata generation run.

  ## Optional parameters:
  """
  @spec cancel_metadata_generation_run(
          AWS.Client.t(),
          String.t(),
          String.t(),
          cancel_metadata_generation_run_input(),
          Keyword.t()
        ) ::
          {:ok, cancel_metadata_generation_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_metadata_generation_run_errors()}
  def cancel_metadata_generation_run(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs/#{AWS.Util.encode_uri(identifier)}/cancel"

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
  Cancels the subscription to the specified asset.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The unique identifier of the Amazon DataZone domain where the subscription request is being
         cancelled.
  * `:identifier` (`t:string`) The unique identifier of the subscription that is being cancelled.

  ## Optional parameters:
  """
  @spec cancel_subscription(
          AWS.Client.t(),
          String.t(),
          String.t(),
          cancel_subscription_input(),
          Keyword.t()
        ) ::
          {:ok, cancel_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_subscription_errors()}
  def cancel_subscription(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}/cancel"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an asset in Amazon DataZone catalog.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) Amazon DataZone domain where the asset is created.

  ## Optional parameters:
  """
  @spec create_asset(AWS.Client.t(), String.t(), create_asset_input(), Keyword.t()) ::
          {:ok, create_asset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_errors()}
  def create_asset(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets"
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
  Creates a revision of the asset.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The unique identifier of the domain where the asset is being revised.
  * `:identifier` (`t:string`) The identifier of the asset.

  ## Optional parameters:
  """
  @spec create_asset_revision(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_asset_revision_input(),
          Keyword.t()
        ) ::
          {:ok, create_asset_revision_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_revision_errors()}
  def create_asset_revision(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/revisions"

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
  Creates a custom asset type.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The unique identifier of the Amazon DataZone domain where the custom asset type is being
         created.

  ## Optional parameters:
  """
  @spec create_asset_type(AWS.Client.t(), String.t(), create_asset_type_input(), Keyword.t()) ::
          {:ok, create_asset_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_type_errors()}
  def create_asset_type(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types"
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
  Creates an Amazon DataZone data source.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain where the data source is created.

  ## Optional parameters:
  """
  @spec create_data_source(AWS.Client.t(), String.t(), create_data_source_input(), Keyword.t()) ::
          {:ok, create_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_source_errors()}
  def create_data_source(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources"
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
  Creates an Amazon DataZone domain.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_domain(AWS.Client.t(), create_domain_input(), Keyword.t()) ::
          {:ok, create_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v2/domains"
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
  Create an Amazon DataZone environment.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which the environment is created.

  ## Optional parameters:
  """
  @spec create_environment(AWS.Client.t(), String.t(), create_environment_input(), Keyword.t()) ::
          {:ok, create_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments"
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
  Creates an Amazon DataZone environment profile.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which this environment profile is created.

  ## Optional parameters:
  """
  @spec create_environment_profile(
          AWS.Client.t(),
          String.t(),
          create_environment_profile_input(),
          Keyword.t()
        ) ::
          {:ok, create_environment_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_profile_errors()}
  def create_environment_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles"
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
  Creates a metadata form type.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which this metadata form type is created.

  ## Optional parameters:
  """
  @spec create_form_type(AWS.Client.t(), String.t(), create_form_type_input(), Keyword.t()) ::
          {:ok, create_form_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_form_type_errors()}
  def create_form_type(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types"
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
  Creates an Amazon DataZone business glossary.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which this business glossary is created.

  ## Optional parameters:
  """
  @spec create_glossary(AWS.Client.t(), String.t(), create_glossary_input(), Keyword.t()) ::
          {:ok, create_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_glossary_errors()}
  def create_glossary(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries"
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
  Creates a business glossary term.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which this business glossary term is created.

  ## Optional parameters:
  """
  @spec create_glossary_term(
          AWS.Client.t(),
          String.t(),
          create_glossary_term_input(),
          Keyword.t()
        ) ::
          {:ok, create_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_glossary_term_errors()}
  def create_glossary_term(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms"
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
  Creates a group profile in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which the group profile is created.

  ## Optional parameters:
  """
  @spec create_group_profile(
          AWS.Client.t(),
          String.t(),
          create_group_profile_input(),
          Keyword.t()
        ) ::
          {:ok, create_group_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_profile_errors()}
  def create_group_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles"
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
  Publishes a listing (a record of an asset at a given time) or removes a listing
  from the
  catalog.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain.

  ## Optional parameters:
  """
  @spec create_listing_change_set(
          AWS.Client.t(),
          String.t(),
          create_listing_change_set_input(),
          Keyword.t()
        ) ::
          {:ok, create_listing_change_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_listing_change_set_errors()}
  def create_listing_change_set(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/change-set"
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
  Creates an Amazon DataZone project.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which this project is created.

  ## Optional parameters:
  """
  @spec create_project(AWS.Client.t(), String.t(), create_project_input(), Keyword.t()) ::
          {:ok, create_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects"
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
  Creates a project membership in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which project membership is created.
  * `:project_identifier` (`t:string`) The ID of the project for which this project membership was created.

  ## Optional parameters:
  """
  @spec create_project_membership(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_project_membership_input(),
          Keyword.t()
        ) ::
          {:ok, create_project_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_membership_errors()}
  def create_project_membership(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/createMembership"

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
  Creates a subsscription grant in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the subscription grant is created.

  ## Optional parameters:
  """
  @spec create_subscription_grant(
          AWS.Client.t(),
          String.t(),
          create_subscription_grant_input(),
          Keyword.t()
        ) ::
          {:ok, create_subscription_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscription_grant_errors()}
  def create_subscription_grant(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants"
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
  Creates a subscription request in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the subscription request is created.

  ## Optional parameters:
  """
  @spec create_subscription_request(
          AWS.Client.t(),
          String.t(),
          create_subscription_request_input(),
          Keyword.t()
        ) ::
          {:ok, create_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscription_request_errors()}
  def create_subscription_request(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests"
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
  Creates a subscription target in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which subscription target is created.
  * `:environment_identifier` (`t:string`) The ID of the environment in which subscription target is created.

  ## Optional parameters:
  """
  @spec create_subscription_target(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_subscription_target_input(),
          Keyword.t()
        ) ::
          {:ok, create_subscription_target_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscription_target_errors()}
  def create_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets"

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
  Creates a user profile in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which a user profile is created.

  ## Optional parameters:
  """
  @spec create_user_profile(AWS.Client.t(), String.t(), create_user_profile_input(), Keyword.t()) ::
          {:ok, create_user_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_profile_errors()}
  def create_user_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles"
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
  Delets an asset in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the asset is deleted.
  * `:identifier` (`t:string`) The identifier of the asset that is deleted.

  ## Optional parameters:
  """
  @spec delete_asset(AWS.Client.t(), String.t(), String.t(), delete_asset_input(), Keyword.t()) ::
          {:ok, delete_asset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_errors()}
  def delete_asset(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes an asset type in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the asset type is deleted.
  * `:identifier` (`t:string`) The identifier of the asset type that is deleted.

  ## Optional parameters:
  """
  @spec delete_asset_type(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_asset_type_input(),
          Keyword.t()
        ) ::
          {:ok, delete_asset_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_type_errors()}
  def delete_asset_type(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a data source in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the data source is deleted.
  * `:identifier` (`t:string`) The identifier of the data source that is deleted.

  ## Optional parameters:
  * `:client_token` (`t:`) A unique, case-sensitive identifier that is provided to ensure the idempotency of the
         request.
  """
  @spec delete_data_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_data_source_input(),
          Keyword.t()
        ) ::
          {:ok, delete_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_source_errors()}
  def delete_data_source(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes a Amazon DataZone domain.

  ## Required positional parameters:
  * `:identifier` (`t:string`) The identifier of the Amazon Web Services domain that is to be deleted.

  ## Optional parameters:
  * `:client_token` (`t:`) A unique, case-sensitive identifier that is provided to ensure the idempotency of the
         request.
  * `:skip_deletion_check` (`t:`) Specifies the optional flag to delete all child entities within the domain.
  """
  @spec delete_domain(AWS.Client.t(), String.t(), delete_domain_input(), Keyword.t()) ::
          {:ok, delete_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"skipDeletionCheck", "skipDeletionCheck"}
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
      202
    )
  end

  @doc """
  Deletes an environment in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the environment is deleted.
  * `:identifier` (`t:string`) The identifier of the environment that is to be deleted.

  ## Optional parameters:
  """
  @spec delete_environment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_environment_input(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes the blueprint configuration in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the blueprint configuration is deleted.
  * `:environment_blueprint_identifier` (`t:string`) The ID of the blueprint the configuration of which is deleted.

  ## Optional parameters:
  """
  @spec delete_environment_blueprint_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_environment_blueprint_configuration_input(),
          Keyword.t()
        ) ::
          {:ok, delete_environment_blueprint_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_blueprint_configuration_errors()}
  def delete_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

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
  Deletes an environment profile in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the environment profile is deleted.
  * `:identifier` (`t:string`) The ID of the environment profile that is deleted.

  ## Optional parameters:
  """
  @spec delete_environment_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_environment_profile_input(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_profile_errors()}
  def delete_environment_profile(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

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
  Delets and metadata form type in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the metadata form type is deleted.
  * `:form_type_identifier` (`t:string`) The ID of the metadata form type that is deleted.

  ## Optional parameters:
  """
  @spec delete_form_type(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_form_type_input(),
          Keyword.t()
        ) ::
          {:ok, delete_form_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_form_type_errors()}
  def delete_form_type(
        %Client{} = client,
        domain_identifier,
        form_type_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types/#{AWS.Util.encode_uri(form_type_identifier)}"

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
  Deletes a business glossary in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the business glossary is deleted.
  * `:identifier` (`t:string`) The ID of the business glossary that is deleted.

  ## Optional parameters:
  """
  @spec delete_glossary(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_glossary_input(),
          Keyword.t()
        ) ::
          {:ok, delete_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_glossary_errors()}
  def delete_glossary(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a business glossary term in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the business glossary term is deleted.
  * `:identifier` (`t:string`) The ID of the business glossary term that is deleted.

  ## Optional parameters:
  """
  @spec delete_glossary_term(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_glossary_term_input(),
          Keyword.t()
        ) ::
          {:ok, delete_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_glossary_term_errors()}
  def delete_glossary_term(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a listing (a record of an asset at a given time).

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain.
  * `:identifier` (`t:string`) The ID of the listing to be deleted.

  ## Optional parameters:
  """
  @spec delete_listing(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_listing_input(),
          Keyword.t()
        ) ::
          {:ok, delete_listing_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_listing_errors()}
  def delete_listing(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a project in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the project is deleted.
  * `:identifier` (`t:string`) The identifier of the project that is to be deleted.

  ## Optional parameters:
  * `:skip_deletion_check` (`t:`) Specifies the optional flag to delete all child entities within the project.
  """
  @spec delete_project(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_project_input(),
          Keyword.t()
        ) ::
          {:ok, delete_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

    headers = []

    {query_params, input} =
      [
        {"skipDeletionCheck", "skipDeletionCheck"}
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
      204
    )
  end

  @doc """
  Deletes project membership in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain where project membership is deleted.
  * `:project_identifier` (`t:string`) The ID of the Amazon DataZone project the membership to which is deleted.

  ## Optional parameters:
  """
  @spec delete_project_membership(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_project_membership_input(),
          Keyword.t()
        ) ::
          {:ok, delete_project_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_membership_errors()}
  def delete_project_membership(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/deleteMembership"

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
  Deletes and subscription grant in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain where the subscription grant is deleted.
  * `:identifier` (`t:string`) The ID of the subscription grant that is deleted.

  ## Optional parameters:
  """
  @spec delete_subscription_grant(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_subscription_grant_input(),
          Keyword.t()
        ) ::
          {:ok, delete_subscription_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscription_grant_errors()}
  def delete_subscription_grant(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a subscription request in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the subscription request is deleted.
  * `:identifier` (`t:string`) The ID of the subscription request that is deleted.

  ## Optional parameters:
  """
  @spec delete_subscription_request(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_subscription_request_input(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscription_request_errors()}
  def delete_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes a subscription target in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the subscription target is deleted.
  * `:environment_identifier` (`t:string`) The ID of the Amazon DataZone environment in which the subscription target is deleted.
  * `:identifier` (`t:string`) The ID of the subscription target that is deleted.

  ## Optional parameters:
  """
  @spec delete_subscription_target(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_subscription_target_input(),
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
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

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
  Deletes the specified time series form for the specified asset.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain that houses the asset for which you want to delete
         a time series form.
  * `:entity_identifier` (`t:string`) The ID of the asset for which you want to delete a time series form.
  * `:entity_type` (`t:enum["ASSET|LISTING"]`) The type of the asset for which you want to delete a time series form.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive identifier to ensure idempotency of the request. This field is
         automatically populated if not provided.
  * `:form_name` (`t:string`) The name of the time series form that you want to delete.
  """
  @spec delete_time_series_data_points(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_time_series_data_points_input(),
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
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"formName", "formName"}
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
      204
    )
  end

  @doc """
  Gets an Amazon DataZone asset.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain to which the asset belongs.
  * `:identifier` (`t:string`) The ID of the Amazon DataZone asset.

  ## Optional parameters:
  * `:revision` (`t:string`) The revision of the Amazon DataZone asset.
  """
  @spec get_asset(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_asset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_errors()}
  def get_asset(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [revision: nil
    # ])

    headers = []
    query_params = []

    {revision, options} = Keyword.pop(options, :revision, nil)

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone asset type.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the asset type exists.
  * `:identifier` (`t:string`) The ID of the asset type.

  ## Optional parameters:
  * `:revision` (`t:string`) The revision of the asset type.
  """
  @spec get_asset_type(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_asset_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_type_errors()}
  def get_asset_type(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types/#{AWS.Util.encode_uri(identifier)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [revision: nil
    # ])

    headers = []
    query_params = []

    {revision, options} = Keyword.pop(options, :revision, nil)

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone data source.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the data source exists.
  * `:identifier` (`t:string`) The ID of the Amazon DataZone data source.

  ## Optional parameters:
  """
  @spec get_data_source(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_errors()}
  def get_data_source(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

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
  Gets an Amazon DataZone data source run.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the domain in which this data source run was performed.
  * `:identifier` (`t:string`) The ID of the data source run.

  ## Optional parameters:
  """
  @spec get_data_source_run(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_data_source_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_run_errors()}
  def get_data_source_run(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-source-runs/#{AWS.Util.encode_uri(identifier)}"

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
  Gets an Amazon DataZone domain.

  ## Required positional parameters:
  * `:identifier` (`t:string`) The identifier of the specified Amazon DataZone domain.

  ## Optional parameters:
  """
  @spec get_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_errors()}
  def get_domain(%Client{} = client, identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"

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
  Gets an Amazon DataZone environment.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain where the environment exists.
  * `:identifier` (`t:string`) The ID of the Amazon DataZone environment.

  ## Optional parameters:
  """
  @spec get_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

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
  Gets an Amazon DataZone blueprint.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the domain in which this blueprint exists.
  * `:identifier` (`t:string`) The ID of this Amazon DataZone blueprint.

  ## Optional parameters:
  """
  @spec get_environment_blueprint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_blueprint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_blueprint_errors()}
  def get_environment_blueprint(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints/#{AWS.Util.encode_uri(identifier)}"

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
  Gets the blueprint configuration in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain where this blueprint exists.
  * `:environment_blueprint_identifier` (`t:string`) He ID of the blueprint.

  ## Optional parameters:
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
  Gets an evinronment profile in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which this environment profile exists.
  * `:identifier` (`t:string`) The ID of the environment profile.

  ## Optional parameters:
  """
  @spec get_environment_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_profile_errors()}
  def get_environment_profile(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

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
  Gets a metadata form type in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which this metadata form type exists.
  * `:form_type_identifier` (`t:string`) The ID of the metadata form type.

  ## Optional parameters:
  * `:revision` (`t:string`) The revision of this metadata form type.
  """
  @spec get_form_type(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_form_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_form_type_errors()}
  def get_form_type(%Client{} = client, domain_identifier, form_type_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types/#{AWS.Util.encode_uri(form_type_identifier)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [revision: nil
    # ])

    headers = []
    query_params = []

    {revision, options} = Keyword.pop(options, :revision, nil)

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a business glossary in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which this business glossary exists.
  * `:identifier` (`t:string`) The ID of the business glossary.

  ## Optional parameters:
  """
  @spec get_glossary(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_glossary_errors()}
  def get_glossary(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

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
  Gets a business glossary term in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which this business glossary term exists.
  * `:identifier` (`t:string`) The ID of the business glossary term.

  ## Optional parameters:
  """
  @spec get_glossary_term(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_glossary_term_errors()}
  def get_glossary_term(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

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
  Gets a group profile in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which the group profile exists.
  * `:group_identifier` (`t:string`) The identifier of the group profile.

  ## Optional parameters:
  """
  @spec get_group_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_group_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_profile_errors()}
  def get_group_profile(%Client{} = client, domain_identifier, group_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles/#{AWS.Util.encode_uri(group_identifier)}"

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
  Gets the data portal URL for the specified Amazon DataZone domain.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) the ID of the Amazon DataZone domain the data portal of which you want to get.

  ## Optional parameters:
  """
  @spec get_iam_portal_login_url(
          AWS.Client.t(),
          String.t(),
          get_iam_portal_login_url_input(),
          Keyword.t()
        ) ::
          {:ok, get_iam_portal_login_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_iam_portal_login_url_errors()}
  def get_iam_portal_login_url(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/get-portal-login-url"
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
  Gets a listing (a record of an asset at a given time).

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain.
  * `:identifier` (`t:string`) The ID of the listing.

  ## Optional parameters:
  * `:listing_revision` (`t:string`) The revision of the listing.
  """
  @spec get_listing(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_listing_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_listing_errors()}
  def get_listing(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/#{AWS.Util.encode_uri(identifier)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [listing_revision: nil
    # ])

    headers = []
    query_params = []

    {listing_revision, options} = Keyword.pop(options, :listing_revision, nil)

    query_params =
      if !is_nil(listing_revision) do
        [{"listingRevision", listing_revision} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a metadata generation run in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain the metadata generation run of which you want to
         get.
  * `:identifier` (`t:string`) The identifier of the metadata generation run.

  ## Optional parameters:
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
  Gets a project in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the project exists.
  * `:identifier` (`t:string`) The ID of the project.

  ## Optional parameters:
  """
  @spec get_project(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_project_errors()}
  def get_project(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

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
  Gets a subscription in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the subscription exists.
  * `:identifier` (`t:string`) The ID of the subscription.

  ## Optional parameters:
  """
  @spec get_subscription(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscription_errors()}
  def get_subscription(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}"

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
  Gets the subscription grant in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the subscription grant exists.
  * `:identifier` (`t:string`) The ID of the subscription grant.

  ## Optional parameters:
  """
  @spec get_subscription_grant(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_subscription_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscription_grant_errors()}
  def get_subscription_grant(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}"

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
  Gets the details of the specified subscription request.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which to get the subscription request
         details.
  * `:identifier` (`t:string`) The identifier of the subscription request the details of which to get.

  ## Optional parameters:
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
  Gets the subscription target in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which the subscription target exists.
  * `:environment_identifier` (`t:string`) The ID of the environment associated with the subscription target.
  * `:identifier` (`t:string`) The ID of the subscription target.

  ## Optional parameters:
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
  Gets the existing data point for the asset.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain that houses the asset for which you want to get the
         data point.
  * `:entity_identifier` (`t:string`) The ID of the asset for which you want to get the data point.
  * `:entity_type` (`t:enum["ASSET|LISTING"]`) The type of the asset for which you want to get the data point.
  * `:identifier` (`t:string`) The ID of the data point that you want to get.

  ## Optional parameters:
  * `:form_name` (`t:string`) The name of the time series form that houses the data point that you want to get.
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
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points/#{AWS.Util.encode_uri(identifier)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [form_name: nil
    # ])

    headers = []
    query_params = []

    {form_name, options} = Keyword.pop(options, :form_name, nil)

    query_params =
      if !is_nil(form_name) do
        [{"formName", form_name} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a user profile in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) the ID of the Amazon DataZone domain the data portal of which you want to get.
  * `:user_identifier` (`t:string`) The identifier of the user for which you want to get the user profile.

  ## Optional parameters:
  * `:type` (`t:enum["IAM|SSO"]`) The type of the user profile.
  """
  @spec get_user_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_user_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_profile_errors()}
  def get_user_profile(%Client{} = client, domain_identifier, user_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles/#{AWS.Util.encode_uri(user_identifier)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [type: nil
    # ])

    headers = []
    query_params = []

    {type, options} = Keyword.pop(options, :type, nil)

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the revisions for the asset.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the domain.
  * `:identifier` (`t:string`) The identifier of the asset.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of revisions to return in a single call to
            <code>ListAssetRevisions</code>. When the number of revisions to be listed is greater
         than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
         value that you can use in a subsequent call to <code>ListAssetRevisions</code> to list the
         next set of revisions.
  * `:next_token` (`t:string`) When the number of revisions is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of revisions, the response includes
         a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to <code>ListAssetRevisions</code> to
         list the next set of revisions.
  """
  @spec list_asset_revisions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_asset_revisions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_revisions_errors()}
  def list_asset_revisions(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/revisions"

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
  Lists data source run activities.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which to list data source run
         activities.
  * `:identifier` (`t:string`) The identifier of the data source run.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of activities to return in a single call to
            <code>ListDataSourceRunActivities</code>. When the number of activities to be listed is
         greater than the value of <code>MaxResults</code>, the response contains a
            <code>NextToken</code> value that you can use in a subsequent call to
            <code>ListDataSourceRunActivities</code> to list the next set of activities.
  * `:next_token` (`t:string`) When the number of activities is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of activities, the response
         includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to
            <code>ListDataSourceRunActivities</code> to list the next set of activities.
  * `:status` (`t:enum["FAILED|PUBLISHING_FAILED|SKIPPED_ALREADY_IMPORTED|SKIPPED_ARCHIVED|SKIPPED_NO_ACCESS|SUCCEEDED_CREATED|SUCCEEDED_UPDATED|UNCHANGED"]`) The status of the data source run.
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

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, status: nil
    # ])

    headers = []
    query_params = []

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists data source runs in Amazon DataZone.

  ## Required positional parameters:
  * `:data_source_identifier` (`t:string`) The identifier of the data source.
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which to invoke the
            <code>ListDataSourceRuns</code> action.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of runs to return in a single call to
         <code>ListDataSourceRuns</code>. When the number of runs to be listed is greater than the
         value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that
         you can use in a subsequent call to <code>ListDataSourceRuns</code> to list the next set of
         runs.
  * `:next_token` (`t:string`) When the number of runs is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of runs, the response includes a
         pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
         value in a subsequent call to <code>ListDataSourceRuns</code> to list the next set of
         runs.
  * `:status` (`t:enum["FAILED|PARTIALLY_SUCCEEDED|REQUESTED|RUNNING|SUCCESS"]`) The status of the data source.
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

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, status: nil
    # ])

    headers = []
    query_params = []

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists data sources in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which to list the data sources.

  ## Optional parameters:
  * `:environment_identifier` (`t:`) The identifier of the environment in which to list the data sources.
  * `:max_results` (`t:integer`) The maximum number of data sources to return in a single call to
            <code>ListDataSources</code>. When the number of data sources to be listed is greater
         than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
         value that you can use in a subsequent call to <code>ListDataSources</code> to list the
         next set of data sources.
  * `:name` (`t:string`) The name of the data source.
  * `:next_token` (`t:string`) When the number of data sources is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of data sources, the response
         includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to <code>ListDataSources</code> to
         list the next set of data sources.
  * `:project_identifier` (`t:`) The identifier of the project in which to list data sources.
  * `:status` (`t:enum["CREATING|DELETING|FAILED_CREATION|FAILED_DELETION|FAILED_UPDATE|READY|RUNNING|UPDATING"]`) The status of the data source.
  * `:type` (`t:string`) The type of the data source.
  """
  @spec list_data_sources(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_data_sources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sources_errors()}
  def list_data_sources(%Client{} = client, domain_identifier, project_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [environment_identifier: nil, max_results: nil, name: nil, next_token: nil, project_identifier: nil, status: nil, type: nil
    # ])

    headers = []
    query_params = []

    {type, options} = Keyword.pop(options, :type, nil)

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    {project_identifier, options} = Keyword.pop(options, :project_identifier, nil)

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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

    {name, options} = Keyword.pop(options, :name, nil)

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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

    {environment_identifier, options} = Keyword.pop(options, :environment_identifier, nil)

    query_params =
      if !is_nil(environment_identifier) do
        [{"environmentIdentifier", environment_identifier} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone domains.

  ## Required positional parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of domains to return in a single call to <code>ListDomains</code>.
         When the number of domains to be listed is greater than the value of
            <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you
         can use in a subsequent call to <code>ListDomains</code> to list the next set of
         domains.
  * `:next_token` (`t:string`) When the number of domains is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of domains, the response includes a
         pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
         value in a subsequent call to <code>ListDomains</code> to list the next set of
         domains.
  * `:status` (`t:enum["AVAILABLE|CREATING|CREATION_FAILED|DELETED|DELETING|DELETION_FAILED"]`) The status of the data source.
  """
  @spec list_domains(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_domains_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, options \\ []) do
    url_path = "/v2/domains"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, status: nil
    # ])

    headers = []
    query_params = []

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists blueprint configurations for a Amazon DataZone environment.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of blueprint configurations to return in a single call to
            <code>ListEnvironmentBlueprintConfigurations</code>. When the number of configurations
         to be listed is greater than the value of <code>MaxResults</code>, the response contains a
            <code>NextToken</code> value that you can use in a subsequent call to
            <code>ListEnvironmentBlueprintConfigurations</code> to list the next set of
         configurations.
  * `:next_token` (`t:string`) When the number of blueprint configurations is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of configurations, the response
         includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to
            <code>ListEnvironmentBlueprintConfigurations</code> to list the next set of
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
  Lists blueprints in an Amazon DataZone environment.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  * `:managed` (`t:`) Specifies whether the environment blueprint is managed by Amazon DataZone.
  * `:max_results` (`t:integer`) The maximum number of blueprints to return in a single call to
            <code>ListEnvironmentBlueprints</code>. When the number of blueprints to be listed is
         greater than the value of <code>MaxResults</code>, the response contains a
            <code>NextToken</code> value that you can use in a subsequent call to
            <code>ListEnvironmentBlueprints</code> to list the next set of blueprints.
  * `:name` (`t:string`) The name of the Amazon DataZone environment.
  * `:next_token` (`t:string`) When the number of blueprints in the environment is greater than the default value for
         the <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of blueprints in the environment,
         the response includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to
            <code>ListEnvironmentBlueprints</code>to list the next set of blueprints.
  """
  @spec list_environment_blueprints(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_environment_blueprints_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_blueprints_errors()}
  def list_environment_blueprints(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [managed: nil, max_results: nil, name: nil, next_token: nil
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

    {name, options} = Keyword.pop(options, :name, nil)

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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

    {managed, options} = Keyword.pop(options, :managed, nil)

    query_params =
      if !is_nil(managed) do
        [{"managed", managed} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone environment profiles.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  * `:aws_account_id` (`t:string`) The identifier of the Amazon Web Services account where you want to list environment
         profiles.
  * `:aws_account_region` (`t:string`) The Amazon Web Services region where you want to list environment profiles.
  * `:environment_blueprint_identifier` (`t:string`) The identifier of the blueprint that was used to create the environment profiles that
         you want to list.
  * `:max_results` (`t:integer`) The maximum number of environment profiles to return in a single call to
            <code>ListEnvironmentProfiles</code>. When the number of environment profiles to be
         listed is greater than the value of <code>MaxResults</code>, the response contains a
            <code>NextToken</code> value that you can use in a subsequent call to
            <code>ListEnvironmentProfiles</code> to list the next set of environment
         profiles.
  * `:name` (`t:string`) 
  * `:next_token` (`t:string`) When the number of environment profiles is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of environment profiles, the
         response includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to
            <code>ListEnvironmentProfiles</code> to list the next set of environment
         profiles.
  * `:project_identifier` (`t:string`) The identifier of the Amazon DataZone project.
  """
  @spec list_environment_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_environment_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_profiles_errors()}
  def list_environment_profiles(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [aws_account_id: nil, aws_account_region: nil, environment_blueprint_identifier: nil, max_results: nil, name: nil, next_token: nil, project_identifier: nil
    # ])

    headers = []
    query_params = []

    {project_identifier, options} = Keyword.pop(options, :project_identifier, nil)

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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

    {name, options} = Keyword.pop(options, :name, nil)

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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

    {environment_blueprint_identifier, options} =
      Keyword.pop(options, :environment_blueprint_identifier, nil)

    query_params =
      if !is_nil(environment_blueprint_identifier) do
        [{"environmentBlueprintIdentifier", environment_blueprint_identifier} | query_params]
      else
        query_params
      end

    {aws_account_region, options} = Keyword.pop(options, :aws_account_region, nil)

    query_params =
      if !is_nil(aws_account_region) do
        [{"awsAccountRegion", aws_account_region} | query_params]
      else
        query_params
      end

    {aws_account_id, options} = Keyword.pop(options, :aws_account_id, nil)

    query_params =
      if !is_nil(aws_account_id) do
        [{"awsAccountId", aws_account_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone environments.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  * `:aws_account_id` (`t:string`) The identifier of the Amazon Web Services account where you want to list
         environments.
  * `:aws_account_region` (`t:string`) The Amazon Web Services region where you want to list environments.
  * `:environment_blueprint_identifier` (`t:string`) The identifier of the Amazon DataZone blueprint.
  * `:environment_profile_identifier` (`t:string`) The identifier of the environment profile.
  * `:max_results` (`t:integer`) The maximum number of environments to return in a single call to
            <code>ListEnvironments</code>. When the number of environments to be listed is greater
         than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
         value that you can use in a subsequent call to <code>ListEnvironments</code> to list the
         next set of environments.
  * `:name` (`t:`) The name of the environment.
  * `:next_token` (`t:string`) When the number of environments is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of environments, the response
         includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to <code>ListEnvironments</code> to
         list the next set of environments.
  * `:project_identifier` (`t:string`) The identifier of the Amazon DataZone project.
  * `:provider` (`t:`) The provider of the environment.
  * `:status` (`t:enum["ACTIVE|CREATE_FAILED|CREATING|DELETED|DELETE_FAILED|DELETING|DISABLED|EXPIRED|INACCESSIBLE|SUSPENDED|UPDATE_FAILED|UPDATING|VALIDATION_FAILED"]`) The status of the environments that you want to list.
  """
  @spec list_environments(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_environments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, domain_identifier, project_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [aws_account_id: nil, aws_account_region: nil, environment_blueprint_identifier: nil, environment_profile_identifier: nil, max_results: nil, name: nil, next_token: nil, project_identifier: nil, provider: nil, status: nil
    # ])

    headers = []
    query_params = []

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    {provider, options} = Keyword.pop(options, :provider, nil)

    query_params =
      if !is_nil(provider) do
        [{"provider", provider} | query_params]
      else
        query_params
      end

    {project_identifier, options} = Keyword.pop(options, :project_identifier, nil)

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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

    {name, options} = Keyword.pop(options, :name, nil)

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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

    {environment_profile_identifier, options} =
      Keyword.pop(options, :environment_profile_identifier, nil)

    query_params =
      if !is_nil(environment_profile_identifier) do
        [{"environmentProfileIdentifier", environment_profile_identifier} | query_params]
      else
        query_params
      end

    {environment_blueprint_identifier, options} =
      Keyword.pop(options, :environment_blueprint_identifier, nil)

    query_params =
      if !is_nil(environment_blueprint_identifier) do
        [{"environmentBlueprintIdentifier", environment_blueprint_identifier} | query_params]
      else
        query_params
      end

    {aws_account_region, options} = Keyword.pop(options, :aws_account_region, nil)

    query_params =
      if !is_nil(aws_account_region) do
        [{"awsAccountRegion", aws_account_region} | query_params]
      else
        query_params
      end

    {aws_account_id, options} = Keyword.pop(options, :aws_account_id, nil)

    query_params =
      if !is_nil(aws_account_id) do
        [{"awsAccountId", aws_account_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all metadata generation runs.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain where you want to list metadata generation
         runs.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of metadata generation runs to return in a single call to
         ListMetadataGenerationRuns. When the number of metadata generation runs to be listed is
         greater than the value of MaxResults, the response contains a NextToken value that you can
         use in a subsequent call to ListMetadataGenerationRuns to list the next set of
         revisions.
  * `:next_token` (`t:string`) When the number of metadata generation runs is greater than the default value for the
         MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than
         the number of metadata generation runs, the response includes a pagination token named
         NextToken. You can specify this NextToken value in a subsequent call to
         ListMetadataGenerationRuns to list the next set of revisions.
  * `:status` (`t:enum["CANCELED|FAILED|IN_PROGRESS|SUBMITTED|SUCCEEDED"]`) The status of the metadata generation runs.
  * `:type` (`t:enum["BUSINESS_DESCRIPTIONS"]`) The type of the metadata generation runs.
  """
  @spec list_metadata_generation_runs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_metadata_generation_runs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_metadata_generation_runs_errors()}
  def list_metadata_generation_runs(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, status: nil, type: nil
    # ])

    headers = []
    query_params = []

    {type, options} = Keyword.pop(options, :type, nil)

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists all Amazon DataZone notifications.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  * `:after_timestamp` (`t:`) The time after which you want to list notifications.
  * `:before_timestamp` (`t:`) The time before which you want to list notifications.
  * `:max_results` (`t:integer`) The maximum number of notifications to return in a single call to
            <code>ListNotifications</code>. When the number of notifications to be listed is greater
         than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
         value that you can use in a subsequent call to <code>ListNotifications</code> to list the
         next set of notifications.
  * `:next_token` (`t:string`) When the number of notifications is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of notifications, the response
         includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to <code>ListNotifications</code> to
         list the next set of notifications.
  * `:subjects` (`t:list[smithy.api#String]`) The subjects of notifications.
  * `:task_status` (`t:enum["ACTIVE|INACTIVE"]`) The task status of notifications.
  * `:type` (`t:enum["EVENT|TASK"]`) The type of notifications.
  """
  @spec list_notifications(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notifications_errors()}
  def list_notifications(%Client{} = client, domain_identifier, type, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/notifications"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [after_timestamp: nil, before_timestamp: nil, max_results: nil, next_token: nil, subjects: nil, task_status: nil, type: nil
    # ])

    headers = []
    query_params = []

    {type, options} = Keyword.pop(options, :type, nil)

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    {task_status, options} = Keyword.pop(options, :task_status, nil)

    query_params =
      if !is_nil(task_status) do
        [{"taskStatus", task_status} | query_params]
      else
        query_params
      end

    {subjects, options} = Keyword.pop(options, :subjects, nil)

    query_params =
      if !is_nil(subjects) do
        [{"subjects", subjects} | query_params]
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {before_timestamp, options} = Keyword.pop(options, :before_timestamp, nil)

    query_params =
      if !is_nil(before_timestamp) do
        [{"beforeTimestamp", before_timestamp} | query_params]
      else
        query_params
      end

    {after_timestamp, options} = Keyword.pop(options, :after_timestamp, nil)

    query_params =
      if !is_nil(after_timestamp) do
        [{"afterTimestamp", after_timestamp} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all members of the specified project.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which you want to list project
         memberships.
  * `:project_identifier` (`t:string`) The identifier of the project whose memberships you want to list.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of memberships to return in a single call to
            <code>ListProjectMemberships</code>. When the number of memberships to be listed is
         greater than the value of <code>MaxResults</code>, the response contains a
            <code>NextToken</code> value that you can use in a subsequent call to
            <code>ListProjectMemberships</code> to list the next set of memberships.
  * `:next_token` (`t:string`) When the number of memberships is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of memberships, the response
         includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to <code>ListProjectMemberships</code>
         to list the next set of memberships.
  * `:sort_by` (`t:enum["NAME"]`) The method by which you want to sort the project memberships.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) The sort order of the project memberships.
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

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, sort_by: nil, sort_order: nil
    # ])

    headers = []
    query_params = []

    {sort_order, options} = Keyword.pop(options, :sort_order, nil)

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    {sort_by, options} = Keyword.pop(options, :sort_by, nil)

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
  Lists Amazon DataZone projects.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  * `:group_identifier` (`t:`) The identifier of a group.
  * `:max_results` (`t:integer`) The maximum number of projects to return in a single call to <code>ListProjects</code>.
         When the number of projects to be listed is greater than the value of
            <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you
         can use in a subsequent call to <code>ListProjects</code> to list the next set of
         projects.
  * `:name` (`t:string`) The name of the project.
  * `:next_token` (`t:string`) When the number of projects is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of projects, the response includes
         a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to <code>ListProjects</code> to list
         the next set of projects.
  * `:user_identifier` (`t:`) The identifier of the Amazon DataZone user.
  """
  @spec list_projects(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_projects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [group_identifier: nil, max_results: nil, name: nil, next_token: nil, user_identifier: nil
    # ])

    headers = []
    query_params = []

    {user_identifier, options} = Keyword.pop(options, :user_identifier, nil)

    query_params =
      if !is_nil(user_identifier) do
        [{"userIdentifier", user_identifier} | query_params]
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

    {name, options} = Keyword.pop(options, :name, nil)

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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

    {group_identifier, options} = Keyword.pop(options, :group_identifier, nil)

    query_params =
      if !is_nil(group_identifier) do
        [{"groupIdentifier", group_identifier} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists subscription grants.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  * `:environment_id` (`t:string`) The identifier of the Amazon DataZone environment.
  * `:max_results` (`t:integer`) The maximum number of subscription grants to return in a single call to
            <code>ListSubscriptionGrants</code>. When the number of subscription grants to be listed
         is greater than the value of <code>MaxResults</code>, the response contains a
            <code>NextToken</code> value that you can use in a subsequent call to
            <code>ListSubscriptionGrants</code> to list the next set of subscription grants.
  * `:next_token` (`t:string`) When the number of subscription grants is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of subscription grants, the
         response includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to <code>ListSubscriptionGrants</code>
         to list the next set of subscription grants.
  * `:sort_by` (`t:enum["CREATED_AT|UPDATED_AT"]`) Specifies the way of sorting the results of this action.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) Specifies the sort order of this action.
  * `:subscribed_listing_id` (`t:string`) The identifier of the subscribed listing.
  * `:subscription_id` (`t:string`) The identifier of the subscription.
  * `:subscription_target_id` (`t:string`) The identifier of the subscription target.
  """
  @spec list_subscription_grants(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_subscription_grants_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscription_grants_errors()}
  def list_subscription_grants(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [environment_id: nil, max_results: nil, next_token: nil, sort_by: nil, sort_order: nil, subscribed_listing_id: nil, subscription_id: nil, subscription_target_id: nil
    # ])

    headers = []
    query_params = []

    {subscription_target_id, options} = Keyword.pop(options, :subscription_target_id, nil)

    query_params =
      if !is_nil(subscription_target_id) do
        [{"subscriptionTargetId", subscription_target_id} | query_params]
      else
        query_params
      end

    {subscription_id, options} = Keyword.pop(options, :subscription_id, nil)

    query_params =
      if !is_nil(subscription_id) do
        [{"subscriptionId", subscription_id} | query_params]
      else
        query_params
      end

    {subscribed_listing_id, options} = Keyword.pop(options, :subscribed_listing_id, nil)

    query_params =
      if !is_nil(subscribed_listing_id) do
        [{"subscribedListingId", subscribed_listing_id} | query_params]
      else
        query_params
      end

    {sort_order, options} = Keyword.pop(options, :sort_order, nil)

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    {sort_by, options} = Keyword.pop(options, :sort_by, nil)

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {environment_id, options} = Keyword.pop(options, :environment_id, nil)

    query_params =
      if !is_nil(environment_id) do
        [{"environmentId", environment_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone subscription requests.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  * `:approver_project_id` (`t:string`) The identifier of the subscription request approver&#39;s project.
  * `:max_results` (`t:integer`) The maximum number of subscription requests to return in a single call to
            <code>ListSubscriptionRequests</code>. When the number of subscription requests to be
         listed is greater than the value of <code>MaxResults</code>, the response contains a
            <code>NextToken</code> value that you can use in a subsequent call to
            <code>ListSubscriptionRequests</code> to list the next set of subscription
         requests.
  * `:next_token` (`t:string`) When the number of subscription requests is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of subscription requests, the
         response includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to
            <code>ListSubscriptionRequests</code> to list the next set of subscription
         requests.
  * `:owning_project_id` (`t:string`) The identifier of the project for the subscription requests.
  * `:sort_by` (`t:enum["CREATED_AT|UPDATED_AT"]`) Specifies the way to sort the results of this action.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) Specifies the sort order for the results of this action.
  * `:status` (`t:enum["ACCEPTED|PENDING|REJECTED"]`) Specifies the status of the subscription requests.
  * `:subscribed_listing_id` (`t:string`) The identifier of the subscribed listing.
  """
  @spec list_subscription_requests(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_subscription_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscription_requests_errors()}
  def list_subscription_requests(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [approver_project_id: nil, max_results: nil, next_token: nil, owning_project_id: nil, sort_by: nil, sort_order: nil, status: nil, subscribed_listing_id: nil
    # ])

    headers = []
    query_params = []

    {subscribed_listing_id, options} = Keyword.pop(options, :subscribed_listing_id, nil)

    query_params =
      if !is_nil(subscribed_listing_id) do
        [{"subscribedListingId", subscribed_listing_id} | query_params]
      else
        query_params
      end

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    {sort_order, options} = Keyword.pop(options, :sort_order, nil)

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    {sort_by, options} = Keyword.pop(options, :sort_by, nil)

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    {owning_project_id, options} = Keyword.pop(options, :owning_project_id, nil)

    query_params =
      if !is_nil(owning_project_id) do
        [{"owningProjectId", owning_project_id} | query_params]
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {approver_project_id, options} = Keyword.pop(options, :approver_project_id, nil)

    query_params =
      if !is_nil(approver_project_id) do
        [{"approverProjectId", approver_project_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists subscription targets in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain where you want to list subscription
         targets.
  * `:environment_identifier` (`t:string`) The identifier of the environment where you want to list subscription targets.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of subscription targets to return in a single call to
            <code>ListSubscriptionTargets</code>. When the number of subscription targets to be
         listed is greater than the value of <code>MaxResults</code>, the response contains a
            <code>NextToken</code> value that you can use in a subsequent call to
            <code>ListSubscriptionTargets</code> to list the next set of subscription targets.
      
  * `:next_token` (`t:string`) When the number of subscription targets is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of subscription targets, the
         response includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to
            <code>ListSubscriptionTargets</code> to list the next set of subscription
         targets.
  * `:sort_by` (`t:enum["CREATED_AT|UPDATED_AT"]`) Specifies the way in which the results of this action are to be sorted.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) Specifies the sort order for the results of this action.
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

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, sort_by: nil, sort_order: nil
    # ])

    headers = []
    query_params = []

    {sort_order, options} = Keyword.pop(options, :sort_order, nil)

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    {sort_by, options} = Keyword.pop(options, :sort_by, nil)

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
  Lists subscriptions in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  * `:approver_project_id` (`t:string`) The identifier of the project for the subscription&#39;s approver.
  * `:max_results` (`t:integer`) The maximum number of subscriptions to return in a single call to
            <code>ListSubscriptions</code>. When the number of subscriptions to be listed is greater
         than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
         value that you can use in a subsequent call to <code>ListSubscriptions</code> to list the
         next set of Subscriptions. 
  * `:next_token` (`t:string`) When the number of subscriptions is greater than the default value for the
            <code>MaxResults</code> parameter, or if you explicitly specify a value for
            <code>MaxResults</code> that is less than the number of subscriptions, the response
         includes a pagination token named <code>NextToken</code>. You can specify this
            <code>NextToken</code> value in a subsequent call to <code>ListSubscriptions</code> to
         list the next set of subscriptions.
  * `:owning_project_id` (`t:string`) The identifier of the owning project.
  * `:sort_by` (`t:enum["CREATED_AT|UPDATED_AT"]`) Specifies the way in which the results of this action are to be sorted.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) Specifies the sort order for the results of this action.
  * `:status` (`t:enum["APPROVED|CANCELLED|REVOKED"]`) The status of the subscriptions that you want to list.
  * `:subscribed_listing_id` (`t:string`) The identifier of the subscribed listing for the subscriptions that you want to
         list.
  * `:subscription_request_identifier` (`t:string`) The identifier of the subscription request for the subscriptions that you want to
         list.
  """
  @spec list_subscriptions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_subscriptions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscriptions_errors()}
  def list_subscriptions(%Client{} = client, domain_identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [approver_project_id: nil, max_results: nil, next_token: nil, owning_project_id: nil, sort_by: nil, sort_order: nil, status: nil, subscribed_listing_id: nil, subscription_request_identifier: nil
    # ])

    headers = []
    query_params = []

    {subscription_request_identifier, options} =
      Keyword.pop(options, :subscription_request_identifier, nil)

    query_params =
      if !is_nil(subscription_request_identifier) do
        [{"subscriptionRequestIdentifier", subscription_request_identifier} | query_params]
      else
        query_params
      end

    {subscribed_listing_id, options} = Keyword.pop(options, :subscribed_listing_id, nil)

    query_params =
      if !is_nil(subscribed_listing_id) do
        [{"subscribedListingId", subscribed_listing_id} | query_params]
      else
        query_params
      end

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    {sort_order, options} = Keyword.pop(options, :sort_order, nil)

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    {sort_by, options} = Keyword.pop(options, :sort_by, nil)

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    {owning_project_id, options} = Keyword.pop(options, :owning_project_id, nil)

    query_params =
      if !is_nil(owning_project_id) do
        [{"owningProjectId", owning_project_id} | query_params]
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {approver_project_id, options} = Keyword.pop(options, :approver_project_id, nil)

    query_params =
      if !is_nil(approver_project_id) do
        [{"approverProjectId", approver_project_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for the specified resource in Amazon DataZone.

  ## Required positional parameters:
  * `:resource_arn` (`t:`) The ARN of the resource whose tags you want to list.

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
  Lists time series data points.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain that houses the assets for which you want to list
         time series data points.
  * `:entity_identifier` (`t:string`) The ID of the asset for which you want to list data points.
  * `:entity_type` (`t:enum["ASSET|LISTING"]`) The type of the asset for which you want to list data points.

  ## Optional parameters:
  * `:ended_at` (`t:`) The timestamp at which the data points that you wanted to list ended.
  * `:form_name` (`t:string`) The name of the time series data points form.
  * `:max_results` (`t:integer`) The maximum number of data points to return in a single call to
         ListTimeSeriesDataPoints. When the number of data points to be listed is greater than the
         value of MaxResults, the response contains a NextToken value that you can use in a
         subsequent call to ListTimeSeriesDataPoints to list the next set of data points.
  * `:next_token` (`t:string`) When the number of data points is greater than the default value for the MaxResults
         parameter, or if you explicitly specify a value for MaxResults that is less than the number
         of data points, the response includes a pagination token named NextToken. You can specify
         this NextToken value in a subsequent call to ListTimeSeriesDataPoints to list the next set
         of data points.
  * `:started_at` (`t:`) The timestamp at which the data points that you want to list started.
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
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [ended_at: nil, form_name: nil, max_results: nil, next_token: nil, started_at: nil
    # ])

    headers = []
    query_params = []

    {started_at, options} = Keyword.pop(options, :started_at, nil)

    query_params =
      if !is_nil(started_at) do
        [{"startedAt", started_at} | query_params]
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

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {form_name, options} = Keyword.pop(options, :form_name, nil)

    query_params =
      if !is_nil(form_name) do
        [{"formName", form_name} | query_params]
      else
        query_params
      end

    {ended_at, options} = Keyword.pop(options, :ended_at, nil)

    query_params =
      if !is_nil(ended_at) do
        [{"endedAt", ended_at} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Posts time series data points to Amazon DataZone for the specified asset.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain in which you want to post time series data
         points.
  * `:entity_identifier` (`t:string`) The ID of the asset for which you want to post time series data points.
  * `:entity_type` (`t:enum["ASSET|LISTING"]`) The type of the asset for which you want to post data points.

  ## Optional parameters:
  """
  @spec post_time_series_data_points(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          post_time_series_data_points_input(),
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
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points"

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
  Writes the configuration for the specified environment blueprint in Amazon
  DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.
  * `:environment_blueprint_identifier` (`t:string`) The identifier of the environment blueprint.

  ## Optional parameters:
  """
  @spec put_environment_blueprint_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          put_environment_blueprint_configuration_input(),
          Keyword.t()
        ) ::
          {:ok, put_environment_blueprint_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_environment_blueprint_configuration_errors()}
  def put_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Rejects automatically generated business-friendly metadata for your Amazon
  DataZone
  assets.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.
  * `:identifier` (`t:string`) The identifier of the prediction.

  ## Optional parameters:
  * `:revision` (`t:string`) The revision that is to be made to the asset.
  """
  @spec reject_predictions(
          AWS.Client.t(),
          String.t(),
          String.t(),
          reject_predictions_input(),
          Keyword.t()
        ) ::
          {:ok, reject_predictions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_predictions_errors()}
  def reject_predictions(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/reject-predictions"

    headers = []

    {query_params, input} =
      [
        {"revision", "revision"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Rejects the specified subscription request.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which the subscription request was
         rejected.
  * `:identifier` (`t:string`) The identifier of the subscription request that was rejected.

  ## Optional parameters:
  """
  @spec reject_subscription_request(
          AWS.Client.t(),
          String.t(),
          String.t(),
          reject_subscription_request_input(),
          Keyword.t()
        ) ::
          {:ok, reject_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_subscription_request_errors()}
  def reject_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}/reject"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Revokes a specified subscription in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain where you want to revoke a subscription.
  * `:identifier` (`t:string`) The identifier of the revoked subscription.

  ## Optional parameters:
  """
  @spec revoke_subscription(
          AWS.Client.t(),
          String.t(),
          String.t(),
          revoke_subscription_input(),
          Keyword.t()
        ) ::
          {:ok, revoke_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_subscription_errors()}
  def revoke_subscription(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}/revoke"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Searches for assets in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain.

  ## Optional parameters:
  """
  @spec search(AWS.Client.t(), String.t(), search_input(), Keyword.t()) ::
          {:ok, search_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_errors()}
  def search(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search"
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
  Searches group profiles in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which you want to search group
         profiles.

  ## Optional parameters:
  """
  @spec search_group_profiles(
          AWS.Client.t(),
          String.t(),
          search_group_profiles_input(),
          Keyword.t()
        ) ::
          {:ok, search_group_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_group_profiles_errors()}
  def search_group_profiles(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search-group-profiles"
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
  Searches listings (records of an asset at a given time) in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the domain in which to search listings.

  ## Optional parameters:
  """
  @spec search_listings(AWS.Client.t(), String.t(), search_listings_input(), Keyword.t()) ::
          {:ok, search_listings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_listings_errors()}
  def search_listings(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/search"
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
  Searches for types in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which to invoke the <code>SearchTypes</code>
         action.

  ## Optional parameters:
  """
  @spec search_types(AWS.Client.t(), String.t(), search_types_input(), Keyword.t()) ::
          {:ok, search_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_types_errors()}
  def search_types(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/types-search"
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
  Searches user profiles in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which you want to search user
         profiles.

  ## Optional parameters:
  """
  @spec search_user_profiles(
          AWS.Client.t(),
          String.t(),
          search_user_profiles_input(),
          Keyword.t()
        ) ::
          {:ok, search_user_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_user_profiles_errors()}
  def search_user_profiles(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search-user-profiles"
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
  Start the run of the specified data source in Amazon DataZone.

  ## Required positional parameters:
  * `:data_source_identifier` (`t:string`) The identifier of the data source.
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which to start a data source run.

  ## Optional parameters:
  """
  @spec start_data_source_run(
          AWS.Client.t(),
          String.t(),
          String.t(),
          start_data_source_run_input(),
          Keyword.t()
        ) ::
          {:ok, start_data_source_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_data_source_run_errors()}
  def start_data_source_run(
        %Client{} = client,
        data_source_identifier,
        domain_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(data_source_identifier)}/runs"

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
  Starts the metadata generation run.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The ID of the Amazon DataZone domain where you want to start a metadata generation
         run.

  ## Optional parameters:
  """
  @spec start_metadata_generation_run(
          AWS.Client.t(),
          String.t(),
          start_metadata_generation_run_input(),
          Keyword.t()
        ) ::
          {:ok, start_metadata_generation_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_metadata_generation_run_errors()}
  def start_metadata_generation_run(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs"
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
  Tags a resource in Amazon DataZone.

  ## Required positional parameters:
  * `:resource_arn` (`t:`) The ARN of the resource to be tagged in Amazon DataZone.

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
  Untags a resource in Amazon DataZone.

  ## Required positional parameters:
  * `:resource_arn` (`t:`) The ARN of the resource to be untagged in Amazon DataZone.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.datazone#TagKey]`) Specifies the tag keys for the <code>UntagResource</code> action.
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
  Updates the specified data source in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the domain in which to update a data source.
  * `:identifier` (`t:string`) The identifier of the data source to be updated.

  ## Optional parameters:
  """
  @spec update_data_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_data_source_input(),
          Keyword.t()
        ) ::
          {:ok, update_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_source_errors()}
  def update_data_source(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

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

  @doc """
  Updates a Amazon DataZone domain.

  ## Required positional parameters:
  * `:identifier` (`t:string`) The ID of the Amazon Web Services domain that is to be updated.

  ## Optional parameters:
  * `:client_token` (`t:`) A unique, case-sensitive identifier that is provided to ensure the idempotency of the
         request.
  """
  @spec update_domain(AWS.Client.t(), String.t(), update_domain_input(), Keyword.t()) ::
          {:ok, update_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_errors()}
  def update_domain(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the specified environment in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the domain in which the environment is to be updated.
  * `:identifier` (`t:string`) The identifier of the environment that is to be updated.

  ## Optional parameters:
  """
  @spec update_environment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_environment_input(),
          Keyword.t()
        ) ::
          {:ok, update_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

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

  @doc """
  Updates the specified environment profile in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which an environment profile is to be
         updated.
  * `:identifier` (`t:string`) The identifier of the environment profile that is to be updated.

  ## Optional parameters:
  """
  @spec update_environment_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_environment_profile_input(),
          Keyword.t()
        ) ::
          {:ok, update_environment_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_profile_errors()}
  def update_environment_profile(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

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

  @doc """
  Updates the business glossary in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which a business glossary is to be
         updated.
  * `:identifier` (`t:string`) The identifier of the business glossary to be updated.

  ## Optional parameters:
  """
  @spec update_glossary(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_glossary_input(),
          Keyword.t()
        ) ::
          {:ok, update_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_glossary_errors()}
  def update_glossary(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

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

  @doc """
  Updates a business glossary term in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which a business glossary term is to be
         updated.
  * `:identifier` (`t:string`) The identifier of the business glossary term that is to be updated.

  ## Optional parameters:
  """
  @spec update_glossary_term(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_glossary_term_input(),
          Keyword.t()
        ) ::
          {:ok, update_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_glossary_term_errors()}
  def update_glossary_term(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

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

  @doc """
  Updates the specified group profile in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which a group profile is updated.
  * `:group_identifier` (`t:string`) The identifier of the group profile that is updated.

  ## Optional parameters:
  """
  @spec update_group_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_group_profile_input(),
          Keyword.t()
        ) ::
          {:ok, update_group_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_profile_errors()}
  def update_group_profile(
        %Client{} = client,
        domain_identifier,
        group_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles/#{AWS.Util.encode_uri(group_identifier)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the specified project in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which a project is to be updated.
  * `:identifier` (`t:string`) The identifier of the project that is to be updated.

  ## Optional parameters:
  """
  @spec update_project(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_project_input(),
          Keyword.t()
        ) ::
          {:ok, update_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

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

  @doc """
  Updates the status of the specified subscription grant status in Amazon
  DataZone.

  ## Required positional parameters:
  * `:asset_identifier` (`t:string`) The identifier of the asset the subscription grant status of which is to be
         updated.
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which a subscription grant status is to be
         updated.
  * `:identifier` (`t:string`) The identifier of the subscription grant the status of which is to be updated.

  ## Optional parameters:
  """
  @spec update_subscription_grant_status(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_subscription_grant_status_input(),
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
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}/status/#{AWS.Util.encode_uri(asset_identifier)}"

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

  @doc """
  Updates a specified subscription request in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which a subscription request is to be
         updated.
  * `:identifier` (`t:string`) The identifier of the subscription request that is to be updated.

  ## Optional parameters:
  """
  @spec update_subscription_request(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_subscription_request_input(),
          Keyword.t()
        ) ::
          {:ok, update_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscription_request_errors()}
  def update_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

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

  @doc """
  Updates the specified subscription target in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which a subscription target is to be
         updated.
  * `:environment_identifier` (`t:string`) The identifier of the environment in which a subscription target is to be
         updated.
  * `:identifier` (`t:string`) Identifier of the subscription target that is to be updated.

  ## Optional parameters:
  """
  @spec update_subscription_target(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_subscription_target_input(),
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
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

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

  @doc """
  Updates the specified user profile in Amazon DataZone.

  ## Required positional parameters:
  * `:domain_identifier` (`t:string`) The identifier of the Amazon DataZone domain in which a user profile is updated.
  * `:user_identifier` (`t:string`) The identifier of the user whose user profile is to be updated.

  ## Optional parameters:
  """
  @spec update_user_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_user_profile_input(),
          Keyword.t()
        ) ::
          {:ok, update_user_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_profile_errors()}
  def update_user_profile(
        %Client{} = client,
        domain_identifier,
        user_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles/#{AWS.Util.encode_uri(user_identifier)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
