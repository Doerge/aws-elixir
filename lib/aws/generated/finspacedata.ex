# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Finspacedata do
  @moduledoc """
  The FinSpace APIs let you take actions inside the FinSpace.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      permission_group_params() :: %{
        "datasetPermissions" => list(resource_permission()()),
        "permissionGroupId" => String.t()
      }

  """
  @type permission_group_params() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_permission_group_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("applicationPermissions") => list(list(any())()),
        required("name") => String.t()
      }

  """
  @type create_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_external_data_view_access_details_request() :: %{}

  """
  @type get_external_data_view_access_details_request() :: %{}

  @typedoc """

  ## Example:

      list_users_by_permission_group_response() :: %{
        "nextToken" => String.t(),
        "users" => list(user_by_permission_group()())
      }

  """
  @type list_users_by_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_permission_group_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dataset_response() :: %{
        "datasetId" => String.t()
      }

  """
  @type delete_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_programmatic_access_credentials_response() :: %{
        "credentials" => credentials(),
        "durationInMinutes" => float()
      }

  """
  @type get_programmatic_access_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dataset_response() :: %{
        "datasetId" => String.t()
      }

  """
  @type update_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_response() :: %{
        "userId" => String.t()
      }

  """
  @type update_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_definition() :: %{
        "columns" => list(column_definition()()),
        "primaryKeyColumns" => list(String.t()())
      }

  """
  @type schema_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_view_response() :: %{
        "dataViewId" => String.t(),
        "datasetId" => String.t()
      }

  """
  @type create_data_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      credentials() :: %{
        "accessKeyId" => String.t(),
        "secretAccessKey" => String.t(),
        "sessionToken" => String.t()
      }

  """
  @type credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_response() :: %{
        "apiAccess" => list(any()),
        "apiAccessPrincipalArn" => String.t(),
        "createTime" => float(),
        "emailAddress" => String.t(),
        "firstName" => String.t(),
        "lastDisabledTime" => float(),
        "lastEnabledTime" => float(),
        "lastLoginTime" => float(),
        "lastModifiedTime" => float(),
        "lastName" => String.t(),
        "status" => list(any()),
        "type" => list(any()),
        "userId" => String.t()
      }

  """
  @type get_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_from_permission_group_response() :: %{
        "statusCode" => integer()
      }

  """
  @type disassociate_user_from_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_permission_groups_by_user_request() :: %{
        optional("nextToken") => String.t(),
        required("maxResults") => integer()
      }

  """
  @type list_permission_groups_by_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_user_to_permission_group_response() :: %{
        "statusCode" => integer()
      }

  """
  @type associate_user_to_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_permission_group_request() :: %{}

  """
  @type get_permission_group_request() :: %{}

  @typedoc """

  ## Example:

      create_data_view_request() :: %{
        optional("asOfTimestamp") => float(),
        optional("autoUpdate") => boolean(),
        optional("clientToken") => String.t(),
        optional("partitionColumns") => list(String.t()()),
        optional("sortColumns") => list(String.t()()),
        required("destinationTypeParams") => data_view_destination_type_params()
      }

  """
  @type create_data_view_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_by_permission_group_request() :: %{
        optional("nextToken") => String.t(),
        required("maxResults") => integer()
      }

  """
  @type list_users_by_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_external_data_view_access_details_response() :: %{
        "credentials" => aws_credentials(),
        "s3Location" => s3_location()
      }

  """
  @type get_external_data_view_access_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_changeset_request() :: %{}

  """
  @type get_changeset_request() :: %{}

  @typedoc """

  ## Example:

      create_permission_group_response() :: %{
        "permissionGroupId" => String.t()
      }

  """
  @type create_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_permission_group_response() :: %{
        "permissionGroupId" => String.t()
      }

  """
  @type delete_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_permission_groups_by_user_response() :: %{
        "nextToken" => String.t(),
        "permissionGroups" => list(permission_group_by_user()())
      }

  """
  @type list_permission_groups_by_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset() :: %{
        "alias" => String.t(),
        "createTime" => float(),
        "datasetArn" => String.t(),
        "datasetDescription" => String.t(),
        "datasetId" => String.t(),
        "datasetTitle" => String.t(),
        "kind" => list(any()),
        "lastModifiedTime" => float(),
        "ownerInfo" => dataset_owner_info(),
        "schemaDefinition" => schema_union()
      }

  """
  @type dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_response() :: %{
        "datasetId" => String.t()
      }

  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_view_request() :: %{}

  """
  @type get_data_view_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "reason" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "reason" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_changeset_response() :: %{
        "changesetId" => String.t(),
        "datasetId" => String.t()
      }

  """
  @type create_changeset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_request() :: %{}

  """
  @type get_user_request() :: %{}

  @typedoc """

  ## Example:

      dataset_owner_info() :: %{
        "email" => String.t(),
        "name" => String.t(),
        "phoneNumber" => String.t()
      }

  """
  @type dataset_owner_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_working_location_response() :: %{
        "s3Bucket" => String.t(),
        "s3Path" => String.t(),
        "s3Uri" => String.t()
      }

  """
  @type get_working_location_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_view_response() :: %{
        "asOfTimestamp" => float(),
        "autoUpdate" => boolean(),
        "createTime" => float(),
        "dataViewArn" => String.t(),
        "dataViewId" => String.t(),
        "datasetId" => String.t(),
        "destinationTypeParams" => data_view_destination_type_params(),
        "errorInfo" => data_view_error_info(),
        "lastModifiedTime" => float(),
        "partitionColumns" => list(String.t()()),
        "sortColumns" => list(String.t()()),
        "status" => list(any())
      }

  """
  @type get_data_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_from_permission_group_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type disassociate_user_from_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_user_password_response() :: %{
        "temporaryPassword" => String.t(),
        "userId" => String.t()
      }

  """
  @type reset_user_password_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      permission_group_by_user() :: %{
        "membershipStatus" => list(any()),
        "name" => String.t(),
        "permissionGroupId" => String.t()
      }

  """
  @type permission_group_by_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_response() :: %{
        "nextToken" => String.t(),
        "users" => list(user()())
      }

  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_permission_group_response() :: %{
        "permissionGroup" => permission_group()
      }

  """
  @type get_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_view_destination_type_params() :: %{
        "destinationType" => String.t(),
        "s3DestinationExportFileFormat" => list(any()),
        "s3DestinationExportFileFormatOptions" => map()
      }

  """
  @type data_view_destination_type_params() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_permission_group_request() :: %{
        optional("applicationPermissions") => list(list(any())()),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_changeset_request() :: %{
        optional("clientToken") => String.t(),
        required("changeType") => list(any()),
        required("formatParams") => map(),
        required("sourceParams") => map()
      }

  """
  @type create_changeset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_union() :: %{
        "tabularSchemaConfig" => schema_definition()
      }

  """
  @type schema_union() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_changeset_request() :: %{
        optional("clientToken") => String.t(),
        required("formatParams") => map(),
        required("sourceParams") => map()
      }

  """
  @type update_changeset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => String.t(),
        "key" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dataset_request() :: %{
        optional("alias") => String.t(),
        optional("clientToken") => String.t(),
        optional("datasetDescription") => String.t(),
        optional("schemaDefinition") => schema_union(),
        required("datasetTitle") => String.t(),
        required("kind") => list(any())
      }

  """
  @type update_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_changesets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_changesets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      changeset_summary() :: %{
        "activeFromTimestamp" => float(),
        "activeUntilTimestamp" => float(),
        "changeType" => list(any()),
        "changesetArn" => String.t(),
        "changesetId" => String.t(),
        "createTime" => float(),
        "datasetId" => String.t(),
        "errorInfo" => changeset_error_info(),
        "formatParams" => map(),
        "sourceParams" => map(),
        "status" => list(any()),
        "updatedByChangesetId" => String.t(),
        "updatesChangesetId" => String.t()
      }

  """
  @type changeset_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_user_password_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type reset_user_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_user_response() :: %{
        "userId" => String.t()
      }

  """
  @type disable_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      changeset_error_info() :: %{
        "errorCategory" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type changeset_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_changeset_response() :: %{
        "activeFromTimestamp" => float(),
        "activeUntilTimestamp" => float(),
        "changeType" => list(any()),
        "changesetArn" => String.t(),
        "changesetId" => String.t(),
        "createTime" => float(),
        "datasetId" => String.t(),
        "errorInfo" => changeset_error_info(),
        "formatParams" => map(),
        "sourceParams" => map(),
        "status" => list(any()),
        "updatedByChangesetId" => String.t(),
        "updatesChangesetId" => String.t()
      }

  """
  @type get_changeset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_permission_groups_response() :: %{
        "nextToken" => String.t(),
        "permissionGroups" => list(permission_group()())
      }

  """
  @type list_permission_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_changeset_response() :: %{
        "changesetId" => String.t(),
        "datasetId" => String.t()
      }

  """
  @type update_changeset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_view_error_info() :: %{
        "errorCategory" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type data_view_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_credentials() :: %{
        "accessKeyId" => String.t(),
        "expiration" => float(),
        "secretAccessKey" => String.t(),
        "sessionToken" => String.t()
      }

  """
  @type aws_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataset_request() :: %{}

  """
  @type get_dataset_request() :: %{}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("apiAccess") => list(any()),
        optional("apiAccessPrincipalArn") => String.t(),
        optional("clientToken") => String.t(),
        optional("firstName") => String.t(),
        optional("lastName") => String.t(),
        optional("type") => list(any())
      }

  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataset_response() :: %{
        "alias" => String.t(),
        "createTime" => float(),
        "datasetArn" => String.t(),
        "datasetDescription" => String.t(),
        "datasetId" => String.t(),
        "datasetTitle" => String.t(),
        "kind" => list(any()),
        "lastModifiedTime" => float(),
        "schemaDefinition" => schema_union(),
        "status" => list(any())
      }

  """
  @type get_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t(),
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_request() :: %{
        optional("alias") => String.t(),
        optional("clientToken") => String.t(),
        optional("datasetDescription") => String.t(),
        optional("ownerInfo") => dataset_owner_info(),
        optional("schemaDefinition") => schema_union(),
        required("datasetTitle") => String.t(),
        required("kind") => list(any()),
        required("permissionGroupParams") => permission_group_params()
      }

  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_user_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type enable_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_permission_group_response() :: %{
        "permissionGroupId" => String.t()
      }

  """
  @type update_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_user_to_permission_group_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type associate_user_to_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{}

  """
  @type throttling_exception() :: %{}

  @typedoc """

  ## Example:

      user() :: %{
        "apiAccess" => list(any()),
        "apiAccessPrincipalArn" => String.t(),
        "createTime" => float(),
        "emailAddress" => String.t(),
        "firstName" => String.t(),
        "lastDisabledTime" => float(),
        "lastEnabledTime" => float(),
        "lastLoginTime" => float(),
        "lastModifiedTime" => float(),
        "lastName" => String.t(),
        "status" => list(any()),
        "type" => list(any()),
        "userId" => String.t()
      }

  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_views_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_data_views_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("nextToken") => String.t(),
        required("maxResults") => integer()
      }

  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_by_permission_group() :: %{
        "apiAccess" => list(any()),
        "apiAccessPrincipalArn" => String.t(),
        "emailAddress" => String.t(),
        "firstName" => String.t(),
        "lastName" => String.t(),
        "membershipStatus" => list(any()),
        "status" => list(any()),
        "type" => list(any()),
        "userId" => String.t()
      }

  """
  @type user_by_permission_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_working_location_request() :: %{
        optional("locationType") => list(any())
      }

  """
  @type get_working_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_permission() :: %{
        "permission" => String.t()
      }

  """
  @type resource_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dataset_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasets_response() :: %{
        "datasets" => list(dataset()()),
        "nextToken" => String.t()
      }

  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      permission_group() :: %{
        "applicationPermissions" => list(list(any())()),
        "createTime" => float(),
        "description" => String.t(),
        "lastModifiedTime" => float(),
        "membershipStatus" => list(any()),
        "name" => String.t(),
        "permissionGroupId" => String.t()
      }

  """
  @type permission_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_programmatic_access_credentials_request() :: %{
        optional("durationInMinutes") => float(),
        required("environmentId") => String.t()
      }

  """
  @type get_programmatic_access_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_permission_groups_request() :: %{
        optional("nextToken") => String.t(),
        required("maxResults") => integer()
      }

  """
  @type list_permission_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_changesets_response() :: %{
        "changesets" => list(changeset_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_changesets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_view_summary() :: %{
        "asOfTimestamp" => float(),
        "autoUpdate" => boolean(),
        "createTime" => float(),
        "dataViewArn" => String.t(),
        "dataViewId" => String.t(),
        "datasetId" => String.t(),
        "destinationTypeProperties" => data_view_destination_type_params(),
        "errorInfo" => data_view_error_info(),
        "lastModifiedTime" => float(),
        "partitionColumns" => list(String.t()()),
        "sortColumns" => list(String.t()()),
        "status" => list(any())
      }

  """
  @type data_view_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_user_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type disable_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_response() :: %{
        "userId" => String.t()
      }

  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_user_response() :: %{
        "userId" => String.t()
      }

  """
  @type enable_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_definition() :: %{
        "columnDescription" => String.t(),
        "columnName" => String.t(),
        "dataType" => list(any())
      }

  """
  @type column_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_views_response() :: %{
        "dataViews" => list(data_view_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_views_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("apiAccess") => list(any()),
        optional("apiAccessPrincipalArn") => String.t(),
        optional("clientToken") => String.t(),
        optional("firstName") => String.t(),
        optional("lastName") => String.t(),
        required("emailAddress") => String.t(),
        required("type") => list(any())
      }

  """
  @type create_user_request() :: %{String.t() => any()}

  @type associate_user_to_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_changeset_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_view_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_dataset_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_permission_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_user_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_dataset_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_permission_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_user_from_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_user_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_changeset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_data_view_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_external_data_view_access_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_programmatic_access_credentials_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_working_location_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_changesets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_views_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_datasets_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_permission_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_permission_groups_by_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_users_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_users_by_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reset_user_password_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_changeset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-07-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "finspace-api",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "finspace data",
      signature_version: "v4",
      signing_name: "finspace-api",
      target_prefix: nil
    }
  end

  @doc """
  Adds a user to a permission group to grant permissions for actions a user can
  perform in FinSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20AssociateUserToPermissionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:permission_group_id` (`t:string`) The unique identifier for the permission
    group.
  * `:user_id` (`t:string`) The unique identifier for the user.

  ## Optional parameters:
  """
  @spec associate_user_to_permission_group(
          AWS.Client.t(),
          String.t(),
          String.t(),
          associate_user_to_permission_group_request(),
          Keyword.t()
        ) ::
          {:ok, associate_user_to_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_user_to_permission_group_errors()}
  def associate_user_to_permission_group(
        %Client{} = client,
        permission_group_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
  Creates a new Changeset in a FinSpace Dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20CreateChangeset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_id` (`t:string`) The unique identifier for the FinSpace Dataset
    where the Changeset will be created.

  ## Optional parameters:
  """
  @spec create_changeset(AWS.Client.t(), String.t(), create_changeset_request(), Keyword.t()) ::
          {:ok, create_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_changeset_errors()}
  def create_changeset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2"
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
  Creates a Dataview for a Dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20CreateDataView&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_id` (`t:string`) The unique Dataset identifier that is used to
    create a Dataview.

  ## Optional parameters:
  """
  @spec create_data_view(AWS.Client.t(), String.t(), create_data_view_request(), Keyword.t()) ::
          {:ok, create_data_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_view_errors()}
  def create_data_view(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2"
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
  Creates a new FinSpace Dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20CreateDataset&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_dataset(AWS.Client.t(), create_dataset_request(), Keyword.t()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataset_errors()}
  def create_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/datasetsv2"
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
  Creates a group of permissions for various actions that a user can perform in
  FinSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20CreatePermissionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_permission_group(AWS.Client.t(), create_permission_group_request(), Keyword.t()) ::
          {:ok, create_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_permission_group_errors()}
  def create_permission_group(%Client{} = client, input, options \\ []) do
    url_path = "/permission-group"
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
  Creates a new user in FinSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20CreateUser&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_user(AWS.Client.t(), create_user_request(), Keyword.t()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    url_path = "/user"
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
  Deletes a FinSpace Dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20DeleteDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_id` (`t:string`) The unique identifier of the Dataset to be deleted.

  ## Optional parameters:
  * `:client_token` (`t:string`) A token that ensures idempotency. This token
    expires in 10 minutes.
  """
  @spec delete_dataset(AWS.Client.t(), String.t(), delete_dataset_request(), Keyword.t()) ::
          {:ok, delete_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_errors()}
  def delete_dataset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
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
  Deletes a permission group. This action is irreversible.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20DeletePermissionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:permission_group_id` (`t:string`) The unique identifier for the permission
    group that you want to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) A token that ensures idempotency. This token
    expires in 10 minutes.
  """
  @spec delete_permission_group(
          AWS.Client.t(),
          String.t(),
          delete_permission_group_request(),
          Keyword.t()
        ) ::
          {:ok, delete_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_permission_group_errors()}
  def delete_permission_group(%Client{} = client, permission_group_id, input, options \\ []) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}"
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
  Denies access to the FinSpace web application and API for the specified user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20DisableUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string`) The unique identifier for the user that you want to
    deactivate.

  ## Optional parameters:
  """
  @spec disable_user(AWS.Client.t(), String.t(), disable_user_request(), Keyword.t()) ::
          {:ok, disable_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_user_errors()}
  def disable_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/disable"
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
  Removes a user from a permission group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20DisassociateUserFromPermissionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:permission_group_id` (`t:string`) The unique identifier for the permission
    group.
  * `:user_id` (`t:string`) The unique identifier for the user.

  ## Optional parameters:
  * `:client_token` (`t:string`) A token that ensures idempotency. This token
    expires in 10 minutes.
  """
  @spec disassociate_user_from_permission_group(
          AWS.Client.t(),
          String.t(),
          String.t(),
          disassociate_user_from_permission_group_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_user_from_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_user_from_permission_group_errors()}
  def disassociate_user_from_permission_group(
        %Client{} = client,
        permission_group_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
  Allows the specified user to access the FinSpace web application and API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20EnableUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string`) The unique identifier for the user that you want to
    activate.

  ## Optional parameters:
  """
  @spec enable_user(AWS.Client.t(), String.t(), enable_user_request(), Keyword.t()) ::
          {:ok, enable_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_user_errors()}
  def enable_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/enable"
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
  Get information about a Changeset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20GetChangeset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:changeset_id` (`t:string`) The unique identifier of the Changeset for which
    to get data.
  * `:dataset_id` (`t:string`) The unique identifier for the FinSpace Dataset
    where the Changeset is created.

  ## Optional parameters:
  """
  @spec get_changeset(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_changeset_errors()}
  def get_changeset(%Client{} = client, changeset_id, dataset_id, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2/#{AWS.Util.encode_uri(changeset_id)}"

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
  Gets information about a Dataview.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20GetDataView&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_view_id` (`t:string`) The unique identifier for the Dataview.
  * `:dataset_id` (`t:string`) The unique identifier for the Dataset used in the
    Dataview.

  ## Optional parameters:
  """
  @spec get_data_view(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_data_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_view_errors()}
  def get_data_view(%Client{} = client, data_view_id, dataset_id, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2/#{AWS.Util.encode_uri(data_view_id)}"

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
  Returns information about a Dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20GetDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_id` (`t:string`) The unique identifier for a Dataset.

  ## Optional parameters:
  """
  @spec get_dataset(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dataset_errors()}
  def get_dataset(%Client{} = client, dataset_id, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"

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
  Returns the credentials to access the external Dataview from an S3 location. To
  call this API:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20GetExternalDataViewAccessDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_view_id` (`t:string`) The unique identifier for the Dataview that you
    want to access.
  * `:dataset_id` (`t:string`) The unique identifier for the Dataset.

  ## Optional parameters:
  """
  @spec get_external_data_view_access_details(
          AWS.Client.t(),
          String.t(),
          String.t(),
          get_external_data_view_access_details_request(),
          Keyword.t()
        ) ::
          {:ok, get_external_data_view_access_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_external_data_view_access_details_errors()}
  def get_external_data_view_access_details(
        %Client{} = client,
        data_view_id,
        dataset_id,
        input,
        options \\ []
      ) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2/#{AWS.Util.encode_uri(data_view_id)}/external-access-details"

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
  Retrieves the details of a specific permission group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20GetPermissionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:permission_group_id` (`t:string`) The unique identifier for the permission
    group.

  ## Optional parameters:
  """
  @spec get_permission_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_permission_group_errors()}
  def get_permission_group(%Client{} = client, permission_group_id, options \\ []) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}"

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
  Request programmatic credentials to use with FinSpace SDK. For more information,
  see [Step 2. Access credentials programmatically using IAM access key id and
  secret access
  key](https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#accessing-credentials).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20GetProgrammaticAccessCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:duration_in_minutes` (`t:long`) The time duration in which the credentials
    remain valid.
  * `:environment_id` (`t:string`) The FinSpace environment identifier.
  """
  @spec get_programmatic_access_credentials(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_programmatic_access_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_programmatic_access_credentials_errors()}
  def get_programmatic_access_credentials(%Client{} = client, environment_id, options \\ []) do
    url_path = "/credentials/programmatic"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [duration_in_minutes: nil, environment_id: nil
    # ])

    headers = []
    query_params = []

    {environment_id, options} = Keyword.pop(options, :environment_id, nil)

    query_params =
      if !is_nil(environment_id) do
        [{"environmentId", environment_id} | query_params]
      else
        query_params
      end

    {duration_in_minutes, options} = Keyword.pop(options, :duration_in_minutes, nil)

    query_params =
      if !is_nil(duration_in_minutes) do
        [{"durationInMinutes", duration_in_minutes} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for a specific user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20GetUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string`) The unique identifier of the user to get data for.

  ## Optional parameters:
  """
  @spec get_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_errors()}
  def get_user(%Client{} = client, user_id, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}"

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
  A temporary Amazon S3 location, where you can copy your files from a source
  location to stage or use as a scratch space in FinSpace notebook.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20GetWorkingLocation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_working_location(AWS.Client.t(), get_working_location_request(), Keyword.t()) ::
          {:ok, get_working_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_working_location_errors()}
  def get_working_location(%Client{} = client, input, options \\ []) do
    url_path = "/workingLocationV1"
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
  Lists the FinSpace Changesets for a Dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20ListChangesets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_id` (`t:string`) The unique identifier for the FinSpace Dataset to
    which the Changeset belongs.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results per page.
  * `:next_token` (`t:string`) A token that indicates where a results page should
    begin.
  """
  @spec list_changesets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_changesets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_changesets_errors()}
  def list_changesets(%Client{} = client, dataset_id, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2"

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
  Lists all available Dataviews for a Dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20ListDataViews&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_id` (`t:string`) The unique identifier of the Dataset for which to
    retrieve Dataviews.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results per page.
  * `:next_token` (`t:string`) A token that indicates where a results page should
    begin.
  """
  @spec list_data_views(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_data_views_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_views_errors()}
  def list_data_views(%Client{} = client, dataset_id, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2"

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
  Lists all of the active Datasets that a user has access to.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20ListDatasets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results per page.
  * `:next_token` (`t:string`) A token that indicates where a results page should
    begin.
  """
  @spec list_datasets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_datasets_errors()}
  def list_datasets(%Client{} = client, options \\ []) do
    url_path = "/datasetsv2"

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
  Lists all available permission groups in FinSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20ListPermissionGroups&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results per page.
  * `:next_token` (`t:string`) A token that indicates where a results page should
    begin.
  """
  @spec list_permission_groups(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_permission_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permission_groups_errors()}
  def list_permission_groups(%Client{} = client, max_results, options \\ []) do
    url_path = "/permission-group"

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
  Lists all the permission groups that are associated with a specific user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20ListPermissionGroupsByUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string`) The unique identifier for the user.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results per page.
  * `:next_token` (`t:string`) A token that indicates where a results page should
    begin.
  """
  @spec list_permission_groups_by_user(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_permission_groups_by_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permission_groups_by_user_errors()}
  def list_permission_groups_by_user(%Client{} = client, user_id, max_results, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/permission-groups"

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
  Lists all available users in FinSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20ListUsers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results per page.
  * `:next_token` (`t:string`) A token that indicates where a results page should
    begin.
  """
  @spec list_users(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, max_results, options \\ []) do
    url_path = "/user"

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
  Lists details of all the users in a specific permission group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20ListUsersByPermissionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:permission_group_id` (`t:string`) The unique identifier for the permission
    group.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results per page.
  * `:next_token` (`t:string`) A token that indicates where a results page should
    begin.
  """
  @spec list_users_by_permission_group(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_users_by_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_by_permission_group_errors()}
  def list_users_by_permission_group(
        %Client{} = client,
        permission_group_id,
        max_results,
        options \\ []
      ) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}/users"

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
  Resets the password for a specified user ID and generates a temporary one. Only
  a superuser can reset password for other users. Resetting the password
  immediately invalidates the previous password associated with the user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20ResetUserPassword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string`) The unique identifier of the user that a temporary
    password is requested for.

  ## Optional parameters:
  """
  @spec reset_user_password(
          AWS.Client.t(),
          String.t(),
          reset_user_password_request(),
          Keyword.t()
        ) ::
          {:ok, reset_user_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_user_password_errors()}
  def reset_user_password(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/password"
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
  Updates a FinSpace Changeset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20UpdateChangeset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:changeset_id` (`t:string`) The unique identifier for the Changeset to
    update.
  * `:dataset_id` (`t:string`) The unique identifier for the FinSpace Dataset in
    which the Changeset is created.

  ## Optional parameters:
  """
  @spec update_changeset(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_changeset_request(),
          Keyword.t()
        ) ::
          {:ok, update_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_changeset_errors()}
  def update_changeset(%Client{} = client, changeset_id, dataset_id, input, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2/#{AWS.Util.encode_uri(changeset_id)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a FinSpace Dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20UpdateDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_id` (`t:string`) The unique identifier for the Dataset to update.

  ## Optional parameters:
  """
  @spec update_dataset(AWS.Client.t(), String.t(), update_dataset_request(), Keyword.t()) ::
          {:ok, update_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dataset_errors()}
  def update_dataset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modifies the details of a permission group. You cannot modify a
  `permissionGroupID`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20UpdatePermissionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:permission_group_id` (`t:string`) The unique identifier for the permission
    group to update.

  ## Optional parameters:
  """
  @spec update_permission_group(
          AWS.Client.t(),
          String.t(),
          update_permission_group_request(),
          Keyword.t()
        ) ::
          {:ok, update_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_permission_group_errors()}
  def update_permission_group(%Client{} = client, permission_group_id, input, options \\ []) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modifies the details of the specified user. You cannot update the `userId` for a
  user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=finspacedata%20UpdateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string`) The unique identifier for the user that you want to
    update.

  ## Optional parameters:
  """
  @spec update_user(AWS.Client.t(), String.t(), update_user_request(), Keyword.t()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
