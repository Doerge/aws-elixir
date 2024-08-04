# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LakeFormation do
  @moduledoc """
  Lake Formation
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_object_input() :: %{
        "ETag" => String.t(),
        "PartitionValues" => list(String.t()()),
        "Uri" => String.t()
      }
      
  """
  @type delete_object_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grant_permissions_request() :: %{
        optional("CatalogId") => String.t(),
        optional("PermissionsWithGrantOption") => list(list(any())()),
        required("Permissions") => list(list(any())()),
        required("Principal") => data_lake_principal(),
        required("Resource") => resource()
      }
      
  """
  @type grant_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_lake_principal_request() :: %{}
      
  """
  @type get_data_lake_principal_request() :: %{}

  @typedoc """

  ## Example:
      
      list_permissions_response() :: %{
        "NextToken" => String.t(),
        "PrincipalResourcePermissions" => list(principal_resource_permissions()())
      }
      
  """
  @type list_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_databases_by_l_f_tags_request() :: %{
        optional("CatalogId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Expression") => list(l_f_tag()())
      }
      
  """
  @type search_databases_by_l_f_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lake_formation_identity_center_configuration_response() :: %{
        "ApplicationArn" => String.t()
      }
      
  """
  @type create_lake_formation_identity_center_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      l_f_tag_key_resource() :: %{
        "CatalogId" => String.t(),
        "TagKey" => String.t(),
        "TagValues" => list(String.t()())
      }
      
  """
  @type l_f_tag_key_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      principal_permissions() :: %{
        "Permissions" => list(list(any())()),
        "Principal" => data_lake_principal()
      }
      
  """
  @type principal_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type entity_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_timeout_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_response() :: %{
        "NextToken" => String.t(),
        "ResourceInfoList" => list(resource_info()())
      }
      
  """
  @type list_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_response() :: %{
        "ResourceInfo" => resource_info()
      }
      
  """
  @type describe_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_condition() :: %{
        "ComparisonOperator" => list(any()),
        "Field" => list(any()),
        "StringValueList" => list(String.t()())
      }
      
  """
  @type filter_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_l_f_tag_request() :: %{
        optional("CatalogId") => String.t(),
        optional("TagValuesToAdd") => list(String.t()()),
        optional("TagValuesToDelete") => list(String.t()()),
        required("TagKey") => String.t()
      }
      
  """
  @type update_l_f_tag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_session_context() :: %{
        "AdditionalContext" => map(),
        "ClusterId" => String.t(),
        "QueryAuthorizationId" => String.t(),
        "QueryId" => String.t(),
        "QueryStartTime" => non_neg_integer()
      }
      
  """
  @type query_session_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      l_f_tag() :: %{
        "TagKey" => String.t(),
        "TagValues" => list(String.t()())
      }
      
  """
  @type l_f_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type expired_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_request() :: %{
        optional("HybridAccessEnabled") => boolean(),
        optional("WithFederation") => boolean(),
        required("ResourceArn") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type update_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_storage_optimizer_request() :: %{
        optional("CatalogId") => String.t(),
        required("DatabaseName") => String.t(),
        required("StorageOptimizerConfig") => map(),
        required("TableName") => String.t()
      }
      
  """
  @type update_table_storage_optimizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      commit_transaction_request() :: %{
        required("TransactionId") => String.t()
      }
      
  """
  @type commit_transaction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_l_f_tag_request() :: %{
        optional("CatalogId") => String.t(),
        required("TagKey") => String.t()
      }
      
  """
  @type get_l_f_tag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_l_f_tags_response() :: %{
        "LFTagOnDatabase" => list(l_f_tag_pair()()),
        "LFTagsOnColumns" => list(column_l_f_tag()()),
        "LFTagsOnTable" => list(l_f_tag_pair()())
      }
      
  """
  @type get_resource_l_f_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_transaction_request() :: %{
        required("TransactionId") => String.t()
      }
      
  """
  @type cancel_transaction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_transaction_response() :: %{
        "TransactionDescription" => transaction_description()
      }
      
  """
  @type describe_transaction_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      l_f_tag_policy_resource() :: %{
        "CatalogId" => String.t(),
        "Expression" => list(l_f_tag()()),
        "ResourceType" => list(any())
      }
      
  """
  @type l_f_tag_policy_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_resource() :: %{
        "CatalogId" => String.t(),
        "DatabaseName" => String.t(),
        "Name" => String.t(),
        "TableWildcard" => table_wildcard()
      }
      
  """
  @type table_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      l_f_tag_error() :: %{
        "Error" => error_detail(),
        "LFTag" => l_f_tag_pair()
      }
      
  """
  @type l_f_tag_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      planning_statistics() :: %{
        "EstimatedDataToScanBytes" => float(),
        "PlanningTimeMillis" => float(),
        "QueueTimeMillis" => float(),
        "WorkUnitsGeneratedCount" => float()
      }
      
  """
  @type planning_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lake_formation_identity_center_configuration_request() :: %{
        optional("ApplicationStatus") => list(any()),
        optional("CatalogId") => String.t(),
        optional("ExternalFiltering") => external_filtering_configuration(),
        optional("ShareRecipients") => list(data_lake_principal()())
      }
      
  """
  @type update_lake_formation_identity_center_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      all_rows_wildcard() :: %{}
      
  """
  @type all_rows_wildcard() :: %{}

  @typedoc """

  ## Example:
      
      create_lake_formation_identity_center_configuration_request() :: %{
        optional("CatalogId") => String.t(),
        optional("ExternalFiltering") => external_filtering_configuration(),
        optional("InstanceArn") => String.t(),
        optional("ShareRecipients") => list(data_lake_principal()())
      }
      
  """
  @type create_lake_formation_identity_center_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_transactions_response() :: %{
        "NextToken" => String.t(),
        "Transactions" => list(transaction_description()())
      }
      
  """
  @type list_transactions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_temporary_glue_partition_credentials_response() :: %{
        "AccessKeyId" => String.t(),
        "Expiration" => non_neg_integer(),
        "SecretAccessKey" => String.t(),
        "SessionToken" => String.t()
      }
      
  """
  @type get_temporary_glue_partition_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_resource() :: %{
        "CatalogId" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type database_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lake_formation_opt_in_request() :: %{
        required("Principal") => data_lake_principal(),
        required("Resource") => resource()
      }
      
  """
  @type delete_lake_formation_opt_in_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_l_f_tag_response() :: %{}
      
  """
  @type delete_l_f_tag_response() :: %{}

  @typedoc """

  ## Example:
      
      tagged_table() :: %{
        "LFTagOnDatabase" => list(l_f_tag_pair()()),
        "LFTagsOnColumns" => list(column_l_f_tag()()),
        "LFTagsOnTable" => list(l_f_tag_pair()()),
        "Table" => table_resource()
      }
      
  """
  @type tagged_table() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      principal_resource_permissions() :: %{
        "AdditionalDetails" => details_map(),
        "LastUpdated" => non_neg_integer(),
        "LastUpdatedBy" => String.t(),
        "Permissions" => list(list(any())()),
        "PermissionsWithGrantOption" => list(list(any())()),
        "Principal" => data_lake_principal(),
        "Resource" => resource()
      }
      
  """
  @type principal_resource_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_table_storage_optimizers_response() :: %{
        "NextToken" => String.t(),
        "StorageOptimizerList" => list(storage_optimizer()())
      }
      
  """
  @type list_table_storage_optimizers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_tables_by_l_f_tags_request() :: %{
        optional("CatalogId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Expression") => list(l_f_tag()())
      }
      
  """
  @type search_tables_by_l_f_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transaction_canceled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type transaction_canceled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      partition_objects() :: %{
        "Objects" => list(table_object()()),
        "PartitionValues" => list(String.t()())
      }
      
  """
  @type partition_objects() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_state_request() :: %{
        required("QueryId") => String.t()
      }
      
  """
  @type get_query_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_l_f_tag_response() :: %{
        "CatalogId" => String.t(),
        "TagKey" => String.t(),
        "TagValues" => list(String.t()())
      }
      
  """
  @type get_l_f_tag_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_resource_response() :: %{}
      
  """
  @type deregister_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_l_f_tag_request() :: %{
        optional("CatalogId") => String.t(),
        required("TagKey") => String.t(),
        required("TagValues") => list(String.t()())
      }
      
  """
  @type create_l_f_tag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lake_formation_opt_ins_response() :: %{
        "LakeFormationOptInsInfoList" => list(lake_formation_opt_ins_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_lake_formation_opt_ins_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_cells_filter_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Table") => table_resource()
      }
      
  """
  @type list_data_cells_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_number_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_number_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      virtual_object() :: %{
        "ETag" => String.t(),
        "Uri" => String.t()
      }
      
  """
  @type virtual_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_transaction_request() :: %{
        optional("TransactionType") => list(any())
      }
      
  """
  @type start_transaction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transaction_commit_in_progress_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type transaction_commit_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_transactions_request() :: %{
        optional("CatalogId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => list(any())
      }
      
  """
  @type list_transactions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extend_transaction_response() :: %{}
      
  """
  @type extend_transaction_response() :: %{}

  @typedoc """

  ## Example:
      
      query_planning_context() :: %{
        "CatalogId" => String.t(),
        "DatabaseName" => String.t(),
        "QueryAsOfTime" => non_neg_integer(),
        "QueryParameters" => map(),
        "TransactionId" => String.t()
      }
      
  """
  @type query_planning_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lake_formation_opt_in_request() :: %{
        required("Principal") => data_lake_principal(),
        required("Resource") => resource()
      }
      
  """
  @type create_lake_formation_opt_in_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_objects_request() :: %{
        optional("CatalogId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PartitionPredicate") => String.t(),
        optional("QueryAsOfTime") => non_neg_integer(),
        optional("TransactionId") => String.t(),
        required("DatabaseName") => String.t(),
        required("TableName") => String.t()
      }
      
  """
  @type get_table_objects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_planning_request() :: %{
        required("QueryPlanningContext") => query_planning_context(),
        required("QueryString") => String.t()
      }
      
  """
  @type start_query_planning_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_principal() :: %{
        "DataLakePrincipalIdentifier" => String.t()
      }
      
  """
  @type data_lake_principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_l_f_tags_to_resource_response() :: %{
        "Failures" => list(l_f_tag_error()())
      }
      
  """
  @type add_l_f_tags_to_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_cells_filter() :: %{
        "ColumnNames" => list(String.t()()),
        "ColumnWildcard" => column_wildcard(),
        "DatabaseName" => String.t(),
        "Name" => String.t(),
        "RowFilter" => row_filter(),
        "TableCatalogId" => String.t(),
        "TableName" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type data_cells_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_optimizer() :: %{
        "Config" => map(),
        "ErrorMessage" => String.t(),
        "LastRunDetails" => String.t(),
        "StorageOptimizerType" => list(any()),
        "Warnings" => String.t()
      }
      
  """
  @type storage_optimizer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_location_resource() :: %{
        "CatalogId" => String.t(),
        "ResourceArn" => String.t()
      }
      
  """
  @type data_location_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_cells_filter_response() :: %{}
      
  """
  @type delete_data_cells_filter_response() :: %{}

  @typedoc """

  ## Example:
      
      register_resource_response() :: %{}
      
  """
  @type register_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      put_data_lake_settings_response() :: %{}
      
  """
  @type put_data_lake_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      partition_value_list() :: %{
        "Values" => list(String.t()())
      }
      
  """
  @type partition_value_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_work_unit_results_request() :: %{
        required("QueryId") => String.t(),
        required("WorkUnitId") => float(),
        required("WorkUnitToken") => String.t()
      }
      
  """
  @type get_work_unit_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_databases_by_l_f_tags_response() :: %{
        "DatabaseList" => list(tagged_database()()),
        "NextToken" => String.t()
      }
      
  """
  @type search_databases_by_l_f_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_l_f_tag_response() :: %{}
      
  """
  @type update_l_f_tag_response() :: %{}

  @typedoc """

  ## Example:
      
      get_data_lake_settings_request() :: %{
        optional("CatalogId") => String.t()
      }
      
  """
  @type get_data_lake_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_temporary_glue_partition_credentials_request() :: %{
        optional("AuditContext") => audit_context(),
        optional("DurationSeconds") => integer(),
        optional("Permissions") => list(list(any())()),
        optional("SupportedPermissionTypes") => list(list(any())()),
        required("Partition") => partition_value_list(),
        required("TableArn") => String.t()
      }
      
  """
  @type get_temporary_glue_partition_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_cells_filter_response() :: %{}
      
  """
  @type update_data_cells_filter_response() :: %{}

  @typedoc """

  ## Example:
      
      transaction_committed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type transaction_committed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      column_wildcard() :: %{
        "ExcludedColumnNames" => list(String.t()())
      }
      
  """
  @type column_wildcard() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_permissions_request_entry() :: %{
        "Id" => String.t(),
        "Permissions" => list(list(any())()),
        "PermissionsWithGrantOption" => list(list(any())()),
        "Principal" => data_lake_principal(),
        "Resource" => resource()
      }
      
  """
  @type batch_permissions_request_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_objects_response() :: %{}
      
  """
  @type update_table_objects_response() :: %{}

  @typedoc """

  ## Example:
      
      commit_transaction_response() :: %{
        "TransactionStatus" => list(any())
      }
      
  """
  @type commit_transaction_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_wildcard() :: %{}
      
  """
  @type table_wildcard() :: %{}

  @typedoc """

  ## Example:
      
      catalog_resource() :: %{}
      
  """
  @type catalog_resource() :: %{}

  @typedoc """

  ## Example:
      
      update_resource_response() :: %{}
      
  """
  @type update_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      table_object() :: %{
        "ETag" => String.t(),
        "Size" => float(),
        "Uri" => String.t()
      }
      
  """
  @type table_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_transaction_request() :: %{
        required("TransactionId") => String.t()
      }
      
  """
  @type describe_transaction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lake_formation_opt_ins_info() :: %{
        "LastModified" => non_neg_integer(),
        "LastUpdatedBy" => String.t(),
        "Principal" => data_lake_principal(),
        "Resource" => resource()
      }
      
  """
  @type lake_formation_opt_ins_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_l_f_tags_from_resource_response() :: %{
        "Failures" => list(l_f_tag_error()())
      }
      
  """
  @type remove_l_f_tags_from_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      details_map() :: %{
        "ResourceShare" => list(String.t()())
      }
      
  """
  @type details_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_work_units_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => [integer()],
        required("QueryId") => String.t()
      }
      
  """
  @type get_work_units_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_tables_by_l_f_tags_response() :: %{
        "NextToken" => String.t(),
        "TableList" => list(tagged_table()())
      }
      
  """
  @type search_tables_by_l_f_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_object_input() :: %{
        "ETag" => String.t(),
        "PartitionValues" => list(String.t()()),
        "Size" => float(),
        "Uri" => String.t()
      }
      
  """
  @type add_object_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transaction_description() :: %{
        "TransactionEndTime" => non_neg_integer(),
        "TransactionId" => String.t(),
        "TransactionStartTime" => non_neg_integer(),
        "TransactionStatus" => list(any())
      }
      
  """
  @type transaction_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_l_f_tags_request() :: %{
        optional("CatalogId") => String.t(),
        optional("ShowAssignedLFTags") => boolean(),
        required("Resource") => resource()
      }
      
  """
  @type get_resource_l_f_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      row_filter() :: %{
        "AllRowsWildcard" => all_rows_wildcard(),
        "FilterExpression" => String.t()
      }
      
  """
  @type row_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_objects_on_cancel_response() :: %{}
      
  """
  @type delete_objects_on_cancel_response() :: %{}

  @typedoc """

  ## Example:
      
      get_data_lake_settings_response() :: %{
        "DataLakeSettings" => data_lake_settings()
      }
      
  """
  @type get_data_lake_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_cells_filter_request() :: %{
        required("TableData") => data_cells_filter()
      }
      
  """
  @type update_data_cells_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      write_operation() :: %{
        "AddObject" => add_object_input(),
        "DeleteObject" => delete_object_input()
      }
      
  """
  @type write_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_temporary_glue_table_credentials_response() :: %{
        "AccessKeyId" => String.t(),
        "Expiration" => non_neg_integer(),
        "SecretAccessKey" => String.t(),
        "SessionToken" => String.t(),
        "VendedS3Path" => list(String.t()())
      }
      
  """
  @type get_temporary_glue_table_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_lake_formation_identity_center_configuration_response() :: %{
        "ApplicationArn" => String.t(),
        "CatalogId" => String.t(),
        "ExternalFiltering" => external_filtering_configuration(),
        "InstanceArn" => String.t(),
        "ResourceShare" => String.t(),
        "ShareRecipients" => list(data_lake_principal()())
      }
      
  """
  @type describe_lake_formation_identity_center_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_state_response() :: %{
        "Error" => String.t(),
        "State" => list(any())
      }
      
  """
  @type get_query_state_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      l_f_tag_pair() :: %{
        "CatalogId" => String.t(),
        "TagKey" => String.t(),
        "TagValues" => list(String.t()())
      }
      
  """
  @type l_f_tag_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_l_f_tag_request() :: %{
        optional("CatalogId") => String.t(),
        required("TagKey") => String.t()
      }
      
  """
  @type delete_l_f_tag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lake_formation_opt_ins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Principal") => data_lake_principal(),
        optional("Resource") => resource()
      }
      
  """
  @type list_lake_formation_opt_ins_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_lake_formation_identity_center_configuration_request() :: %{
        optional("CatalogId") => String.t()
      }
      
  """
  @type describe_lake_formation_identity_center_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_l_f_tag_response() :: %{}
      
  """
  @type create_l_f_tag_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_lake_formation_identity_center_configuration_response() :: %{}
      
  """
  @type delete_lake_formation_identity_center_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_permissions_request() :: %{
        optional("CatalogId") => String.t(),
        optional("IncludeRelated") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Principal") => data_lake_principal(),
        optional("Resource") => resource(),
        optional("ResourceType") => list(any())
      }
      
  """
  @type list_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_revoke_permissions_response() :: %{
        "Failures" => list(batch_permissions_failure_entry()())
      }
      
  """
  @type batch_revoke_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_objects_request() :: %{
        optional("CatalogId") => String.t(),
        optional("TransactionId") => String.t(),
        required("DatabaseName") => String.t(),
        required("TableName") => String.t(),
        required("WriteOperations") => list(write_operation()())
      }
      
  """
  @type update_table_objects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lake_formation_identity_center_configuration_response() :: %{}
      
  """
  @type update_lake_formation_identity_center_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_data_cells_filter_response() :: %{
        "DataCellsFilters" => list(data_cells_filter()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_data_cells_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_permissions_failure_entry() :: %{
        "Error" => error_detail(),
        "RequestEntry" => batch_permissions_request_entry()
      }
      
  """
  @type batch_permissions_failure_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_effective_permissions_for_path_response() :: %{
        "NextToken" => String.t(),
        "Permissions" => list(principal_resource_permissions()())
      }
      
  """
  @type get_effective_permissions_for_path_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_grant_permissions_request() :: %{
        optional("CatalogId") => String.t(),
        required("Entries") => list(batch_permissions_request_entry()())
      }
      
  """
  @type batch_grant_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_storage_optimizer_response() :: %{
        "Result" => String.t()
      }
      
  """
  @type update_table_storage_optimizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_l_f_tags_request() :: %{
        optional("CatalogId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceShareType") => list(any())
      }
      
  """
  @type list_l_f_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_permissions_response() :: %{}
      
  """
  @type revoke_permissions_response() :: %{}

  @typedoc """

  ## Example:
      
      get_work_unit_results_response() :: %{
        "ResultStream" => binary()
      }
      
  """
  @type get_work_unit_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_resource_request() :: %{
        optional("HybridAccessEnabled") => boolean(),
        optional("RoleArn") => String.t(),
        optional("UseServiceLinkedRole") => boolean(),
        optional("WithFederation") => boolean(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type register_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_objects_on_cancel_request() :: %{
        optional("CatalogId") => String.t(),
        required("DatabaseName") => String.t(),
        required("Objects") => list(virtual_object()()),
        required("TableName") => String.t(),
        required("TransactionId") => String.t()
      }
      
  """
  @type delete_objects_on_cancel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_detail() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t()
      }
      
  """
  @type error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lake_formation_opt_in_response() :: %{}
      
  """
  @type create_lake_formation_opt_in_response() :: %{}

  @typedoc """

  ## Example:
      
      data_lake_settings() :: %{
        "AllowExternalDataFiltering" => boolean(),
        "AllowFullTableExternalDataAccess" => boolean(),
        "AuthorizedSessionTagValueList" => list(String.t()()),
        "CreateDatabaseDefaultPermissions" => list(principal_permissions()()),
        "CreateTableDefaultPermissions" => list(principal_permissions()()),
        "DataLakeAdmins" => list(data_lake_principal()()),
        "ExternalDataFilteringAllowList" => list(data_lake_principal()()),
        "Parameters" => map(),
        "ReadOnlyAdmins" => list(data_lake_principal()()),
        "TrustedResourceOwners" => list(String.t()())
      }
      
  """
  @type data_lake_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      statistics_not_ready_yet_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type statistics_not_ready_yet_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assume_decorated_role_with_saml_request() :: %{
        optional("DurationSeconds") => integer(),
        required("PrincipalArn") => String.t(),
        required("RoleArn") => String.t(),
        required("SAMLAssertion") => String.t()
      }
      
  """
  @type assume_decorated_role_with_saml_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_grant_permissions_response() :: %{
        "Failures" => list(batch_permissions_failure_entry()())
      }
      
  """
  @type batch_grant_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      external_filtering_configuration() :: %{
        "AuthorizedTargets" => list(String.t()()),
        "Status" => list(any())
      }
      
  """
  @type external_filtering_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_cells_filter_response() :: %{}
      
  """
  @type create_data_cells_filter_response() :: %{}

  @typedoc """

  ## Example:
      
      data_cells_filter_resource() :: %{
        "DatabaseName" => String.t(),
        "Name" => String.t(),
        "TableCatalogId" => String.t(),
        "TableName" => String.t()
      }
      
  """
  @type data_cells_filter_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_statistics_request() :: %{
        required("QueryId") => String.t()
      }
      
  """
  @type get_query_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      work_units_not_ready_yet_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type work_units_not_ready_yet_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audit_context() :: %{
        "AdditionalAuditContext" => String.t()
      }
      
  """
  @type audit_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_work_units_response() :: %{
        "NextToken" => String.t(),
        "QueryId" => String.t(),
        "WorkUnitRanges" => list(work_unit_range()())
      }
      
  """
  @type get_work_units_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tagged_database() :: %{
        "Database" => database_resource(),
        "LFTags" => list(l_f_tag_pair()())
      }
      
  """
  @type tagged_database() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_data_lake_settings_request() :: %{
        optional("CatalogId") => String.t(),
        required("DataLakeSettings") => data_lake_settings()
      }
      
  """
  @type put_data_lake_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_revoke_permissions_request() :: %{
        optional("CatalogId") => String.t(),
        required("Entries") => list(batch_permissions_request_entry()())
      }
      
  """
  @type batch_revoke_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_cells_filter_request() :: %{
        required("TableData") => data_cells_filter()
      }
      
  """
  @type create_data_cells_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission_type_mismatch_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type permission_type_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_statistics() :: %{
        "AverageExecutionTimeMillis" => float(),
        "DataScannedBytes" => float(),
        "WorkUnitsExecutedCount" => float()
      }
      
  """
  @type execution_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_statistics_response() :: %{
        "ExecutionStatistics" => execution_statistics(),
        "PlanningStatistics" => planning_statistics(),
        "QuerySubmissionTime" => non_neg_integer()
      }
      
  """
  @type get_query_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_info() :: %{
        "HybridAccessEnabled" => boolean(),
        "LastModified" => non_neg_integer(),
        "ResourceArn" => String.t(),
        "RoleArn" => String.t(),
        "WithFederation" => boolean()
      }
      
  """
  @type resource_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type describe_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_objects_response() :: %{
        "NextToken" => String.t(),
        "Objects" => list(partition_objects()())
      }
      
  """
  @type get_table_objects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extend_transaction_request() :: %{
        optional("TransactionId") => String.t()
      }
      
  """
  @type extend_transaction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_with_columns_resource() :: %{
        "CatalogId" => String.t(),
        "ColumnNames" => list(String.t()()),
        "ColumnWildcard" => column_wildcard(),
        "DatabaseName" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type table_with_columns_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_request() :: %{
        optional("FilterConditionList") => list(filter_condition()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_l_f_tags_response() :: %{
        "LFTags" => list(l_f_tag_pair()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_l_f_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_permissions_request() :: %{
        optional("CatalogId") => String.t(),
        optional("PermissionsWithGrantOption") => list(list(any())()),
        required("Permissions") => list(list(any())()),
        required("Principal") => data_lake_principal(),
        required("Resource") => resource()
      }
      
  """
  @type revoke_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_cells_filter_request() :: %{
        optional("DatabaseName") => String.t(),
        optional("Name") => String.t(),
        optional("TableCatalogId") => String.t(),
        optional("TableName") => String.t()
      }
      
  """
  @type delete_data_cells_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lake_formation_identity_center_configuration_request() :: %{
        optional("CatalogId") => String.t()
      }
      
  """
  @type delete_lake_formation_identity_center_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_transaction_response() :: %{}
      
  """
  @type cancel_transaction_response() :: %{}

  @typedoc """

  ## Example:
      
      get_data_cells_filter_request() :: %{
        required("DatabaseName") => String.t(),
        required("Name") => String.t(),
        required("TableCatalogId") => String.t(),
        required("TableName") => String.t()
      }
      
  """
  @type get_data_cells_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_temporary_glue_table_credentials_request() :: %{
        optional("AuditContext") => audit_context(),
        optional("DurationSeconds") => integer(),
        optional("Permissions") => list(list(any())()),
        optional("QuerySessionContext") => query_session_context(),
        optional("S3Path") => String.t(),
        optional("SupportedPermissionTypes") => list(list(any())()),
        required("TableArn") => String.t()
      }
      
  """
  @type get_temporary_glue_table_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glue_encryption_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type glue_encryption_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_l_f_tags_from_resource_request() :: %{
        optional("CatalogId") => String.t(),
        required("LFTags") => list(l_f_tag_pair()()),
        required("Resource") => resource()
      }
      
  """
  @type remove_l_f_tags_from_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_effective_permissions_for_path_request() :: %{
        optional("CatalogId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_effective_permissions_for_path_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      work_unit_range() :: %{
        "WorkUnitIdMax" => float(),
        "WorkUnitIdMin" => float(),
        "WorkUnitToken" => String.t()
      }
      
  """
  @type work_unit_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_lake_principal_response() :: %{
        "Identity" => String.t()
      }
      
  """
  @type get_data_lake_principal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_cells_filter_response() :: %{
        "DataCellsFilter" => data_cells_filter()
      }
      
  """
  @type get_data_cells_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_ready_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assume_decorated_role_with_saml_response() :: %{
        "AccessKeyId" => String.t(),
        "Expiration" => non_neg_integer(),
        "SecretAccessKey" => String.t(),
        "SessionToken" => String.t()
      }
      
  """
  @type assume_decorated_role_with_saml_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type deregister_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_table_storage_optimizers_request() :: %{
        optional("CatalogId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StorageOptimizerType") => list(any()),
        required("DatabaseName") => String.t(),
        required("TableName") => String.t()
      }
      
  """
  @type list_table_storage_optimizers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_transaction_response() :: %{
        "TransactionId" => String.t()
      }
      
  """
  @type start_transaction_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lake_formation_opt_in_response() :: %{}
      
  """
  @type delete_lake_formation_opt_in_response() :: %{}

  @typedoc """

  ## Example:
      
      grant_permissions_response() :: %{}
      
  """
  @type grant_permissions_response() :: %{}

  @typedoc """

  ## Example:
      
      add_l_f_tags_to_resource_request() :: %{
        optional("CatalogId") => String.t(),
        required("LFTags") => list(l_f_tag_pair()()),
        required("Resource") => resource()
      }
      
  """
  @type add_l_f_tags_to_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_planning_response() :: %{
        "QueryId" => String.t()
      }
      
  """
  @type start_query_planning_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      column_l_f_tag() :: %{
        "LFTags" => list(l_f_tag_pair()()),
        "Name" => String.t()
      }
      
  """
  @type column_l_f_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "Catalog" => catalog_resource(),
        "DataCellsFilter" => data_cells_filter_resource(),
        "DataLocation" => data_location_resource(),
        "Database" => database_resource(),
        "LFTag" => l_f_tag_key_resource(),
        "LFTagPolicy" => l_f_tag_policy_resource(),
        "Table" => table_resource(),
        "TableWithColumns" => table_with_columns_resource()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type add_l_f_tags_to_resource_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type assume_decorated_role_with_saml_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type batch_grant_permissions_errors() ::
          invalid_input_exception() | operation_timeout_exception()

  @type batch_revoke_permissions_errors() ::
          invalid_input_exception() | operation_timeout_exception()

  @type cancel_transaction_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | transaction_committed_exception()
          | transaction_commit_in_progress_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type commit_transaction_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_data_cells_filter_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_l_f_tag_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_lake_formation_identity_center_configuration_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_lake_formation_opt_in_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_data_cells_filter_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_l_f_tag_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_lake_formation_identity_center_configuration_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_lake_formation_opt_in_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_objects_on_cancel_errors() ::
          resource_not_ready_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | transaction_committed_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type deregister_resource_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type describe_lake_formation_identity_center_configuration_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type describe_resource_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type describe_transaction_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type extend_transaction_errors() ::
          invalid_input_exception()
          | transaction_committed_exception()
          | transaction_commit_in_progress_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_cells_filter_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_lake_principal_errors() ::
          access_denied_exception() | internal_service_exception() | operation_timeout_exception()

  @type get_data_lake_settings_errors() ::
          invalid_input_exception() | internal_service_exception() | entity_not_found_exception()

  @type get_effective_permissions_for_path_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_l_f_tag_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_query_state_errors() ::
          access_denied_exception() | invalid_input_exception() | internal_service_exception()

  @type get_query_statistics_errors() ::
          statistics_not_ready_yet_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | throttled_exception()
          | internal_service_exception()
          | expired_exception()

  @type get_resource_l_f_tags_errors() ::
          glue_encryption_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_table_objects_errors() ::
          resource_not_ready_exception()
          | invalid_input_exception()
          | transaction_committed_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_temporary_glue_partition_credentials_errors() ::
          permission_type_mismatch_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_temporary_glue_table_credentials_errors() ::
          permission_type_mismatch_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_work_unit_results_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | throttled_exception()
          | internal_service_exception()
          | expired_exception()

  @type get_work_units_errors() ::
          work_units_not_ready_yet_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | expired_exception()

  @type grant_permissions_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | entity_not_found_exception()

  @type list_data_cells_filter_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type list_l_f_tags_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_lake_formation_opt_ins_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type list_permissions_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type list_resources_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type list_table_storage_optimizers_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type list_transactions_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type put_data_lake_settings_errors() ::
          invalid_input_exception() | internal_service_exception()

  @type register_resource_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type remove_l_f_tags_from_resource_errors() ::
          glue_encryption_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type revoke_permissions_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | entity_not_found_exception()

  @type search_databases_by_l_f_tags_errors() ::
          glue_encryption_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type search_tables_by_l_f_tags_errors() ::
          glue_encryption_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_query_planning_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | throttled_exception()
          | internal_service_exception()

  @type start_transaction_errors() :: internal_service_exception() | operation_timeout_exception()

  @type update_data_cells_filter_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_l_f_tag_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_lake_formation_identity_center_configuration_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_resource_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_table_objects_errors() ::
          resource_not_ready_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | transaction_committed_exception()
          | transaction_commit_in_progress_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_table_storage_optimizer_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  def metadata do
    %{
      api_version: "2017-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lakeformation",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "LakeFormation",
      signature_version: "v4",
      signing_name: "lakeformation",
      target_prefix: nil
    }
  end

  @doc """
  Attaches one or more LF-tags to an existing resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20AddLFTagsToResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec add_l_f_tags_to_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, add_l_f_tags_to_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_l_f_tags_to_resource_errors()}
  def add_l_f_tags_to_resource(%Client{} = client, options \\ []) do
    url_path = "/AddLFTagsToResource"

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
  Allows a caller to assume an IAM role decorated as the SAML user specified in
  the SAML assertion included in the request. This decoration allows Lake
  Formation to enforce access policies against the SAML users and groups. This
  API operation requires SAML federation setup in the caller’s account as it can
  only be called with valid SAML assertions. Lake Formation does not scope down
  the permission of the assumed role. All permissions attached to the role via
  the SAML federation setup will be included in the role session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20AssumeDecoratedRoleWithSAML&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec assume_decorated_role_with_saml(AWS.Client.t(), Keyword.t()) ::
          {:ok, assume_decorated_role_with_saml_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_decorated_role_with_saml_errors()}
  def assume_decorated_role_with_saml(%Client{} = client, options \\ []) do
    url_path = "/AssumeDecoratedRoleWithSAML"

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
  Batch operation to grant permissions to the principal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20BatchGrantPermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec batch_grant_permissions(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_grant_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_grant_permissions_errors()}
  def batch_grant_permissions(%Client{} = client, options \\ []) do
    url_path = "/BatchGrantPermissions"

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
  Batch operation to revoke permissions from the principal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20BatchRevokePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec batch_revoke_permissions(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_revoke_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_revoke_permissions_errors()}
  def batch_revoke_permissions(%Client{} = client, options \\ []) do
    url_path = "/BatchRevokePermissions"

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
  Attempts to cancel the specified transaction. Returns an exception if the
  transaction was previously committed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20CancelTransaction&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec cancel_transaction(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_transaction_errors()}
  def cancel_transaction(%Client{} = client, options \\ []) do
    url_path = "/CancelTransaction"

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
  Attempts to commit the specified transaction. Returns an exception if the
  transaction was previously aborted. This API action is idempotent if called
  multiple times for the same transaction.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20CommitTransaction&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec commit_transaction(AWS.Client.t(), Keyword.t()) ::
          {:ok, commit_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, commit_transaction_errors()}
  def commit_transaction(%Client{} = client, options \\ []) do
    url_path = "/CommitTransaction"

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
  Creates a data cell filter to allow one to grant access to certain columns on
  certain rows.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20CreateDataCellsFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_data_cells_filter(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_cells_filter_errors()}
  def create_data_cells_filter(%Client{} = client, options \\ []) do
    url_path = "/CreateDataCellsFilter"

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
  Creates an LF-tag with the specified name and values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20CreateLFTag&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_l_f_tag(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_l_f_tag_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_l_f_tag_errors()}
  def create_l_f_tag(%Client{} = client, options \\ []) do
    url_path = "/CreateLFTag"

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
  Creates an IAM Identity Center connection with Lake Formation to allow IAM
  Identity Center users and groups to access Data Catalog resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20CreateLakeFormationIdentityCenterConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_lake_formation_identity_center_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_lake_formation_identity_center_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lake_formation_identity_center_configuration_errors()}
  def create_lake_formation_identity_center_configuration(%Client{} = client, options \\ []) do
    url_path = "/CreateLakeFormationIdentityCenterConfiguration"

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
  Enforce Lake Formation permissions for the given databases, tables, and
  principals.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20CreateLakeFormationOptIn&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_lake_formation_opt_in(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_lake_formation_opt_in_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lake_formation_opt_in_errors()}
  def create_lake_formation_opt_in(%Client{} = client, options \\ []) do
    url_path = "/CreateLakeFormationOptIn"

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
  Deletes a data cell filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20DeleteDataCellsFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_data_cells_filter(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_cells_filter_errors()}
  def delete_data_cells_filter(%Client{} = client, options \\ []) do
    url_path = "/DeleteDataCellsFilter"

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
  Deletes the specified LF-tag given a key name. If the input parameter tag key
  was not found, then the operation will throw an exception. When you delete an
  LF-tag, the `LFTagPolicy` attached to the LF-tag becomes invalid. If the
  deleted LF-tag was still assigned to any resource, the tag policy attach to
  the deleted LF-tag will no longer be applied to the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20DeleteLFTag&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_l_f_tag(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_l_f_tag_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_l_f_tag_errors()}
  def delete_l_f_tag(%Client{} = client, options \\ []) do
    url_path = "/DeleteLFTag"

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
  Deletes an IAM Identity Center connection with Lake Formation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20DeleteLakeFormationIdentityCenterConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_lake_formation_identity_center_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_lake_formation_identity_center_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lake_formation_identity_center_configuration_errors()}
  def delete_lake_formation_identity_center_configuration(%Client{} = client, options \\ []) do
    url_path = "/DeleteLakeFormationIdentityCenterConfiguration"

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
  Remove the Lake Formation permissions enforcement of the given databases,
  tables, and principals.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20DeleteLakeFormationOptIn&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_lake_formation_opt_in(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_lake_formation_opt_in_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lake_formation_opt_in_errors()}
  def delete_lake_formation_opt_in(%Client{} = client, options \\ []) do
    url_path = "/DeleteLakeFormationOptIn"

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
  For a specific governed table, provides a list of Amazon S3 objects that will be
  written during the current transaction and that can be automatically deleted
  if the transaction is canceled. Without this call, no Amazon S3 objects are
  automatically deleted when a transaction cancels.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20DeleteObjectsOnCancel&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_objects_on_cancel(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_objects_on_cancel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_objects_on_cancel_errors()}
  def delete_objects_on_cancel(%Client{} = client, options \\ []) do
    url_path = "/DeleteObjectsOnCancel"

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
  Deregisters the resource as managed by the Data Catalog.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20DeregisterResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec deregister_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, deregister_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_resource_errors()}
  def deregister_resource(%Client{} = client, options \\ []) do
    url_path = "/DeregisterResource"

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
  Retrieves the instance ARN and application ARN for the connection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20DescribeLakeFormationIdentityCenterConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_lake_formation_identity_center_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_lake_formation_identity_center_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_lake_formation_identity_center_configuration_errors()}
  def describe_lake_formation_identity_center_configuration(%Client{} = client, options \\ []) do
    url_path = "/DescribeLakeFormationIdentityCenterConfiguration"

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
  Retrieves the current data access role for the given resource registered in Lake
  Formation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20DescribeResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_resource_errors()}
  def describe_resource(%Client{} = client, options \\ []) do
    url_path = "/DescribeResource"

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
  Returns the details of a single transaction.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20DescribeTransaction&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_transaction(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_transaction_errors()}
  def describe_transaction(%Client{} = client, options \\ []) do
    url_path = "/DescribeTransaction"

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
  Indicates to the service that the specified transaction is still active and
  should not be treated as idle and aborted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20ExtendTransaction&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec extend_transaction(AWS.Client.t(), Keyword.t()) ::
          {:ok, extend_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, extend_transaction_errors()}
  def extend_transaction(%Client{} = client, options \\ []) do
    url_path = "/ExtendTransaction"

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
  Returns a data cells filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetDataCellsFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_data_cells_filter(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_cells_filter_errors()}
  def get_data_cells_filter(%Client{} = client, options \\ []) do
    url_path = "/GetDataCellsFilter"

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
  Returns the identity of the invoking principal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetDataLakePrincipal&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_data_lake_principal(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_data_lake_principal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_lake_principal_errors()}
  def get_data_lake_principal(%Client{} = client, options \\ []) do
    url_path = "/GetDataLakePrincipal"

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
  Retrieves the list of the data lake administrators of a Lake Formation-managed
  data lake.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetDataLakeSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_data_lake_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_data_lake_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_lake_settings_errors()}
  def get_data_lake_settings(%Client{} = client, options \\ []) do
    url_path = "/GetDataLakeSettings"

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
  Returns the Lake Formation permissions for a specified table or database
  resource located at a path in Amazon S3. `GetEffectivePermissionsForPath` will
  not return databases and tables if the catalog is encrypted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetEffectivePermissionsForPath&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_effective_permissions_for_path(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_effective_permissions_for_path_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_effective_permissions_for_path_errors()}
  def get_effective_permissions_for_path(%Client{} = client, options \\ []) do
    url_path = "/GetEffectivePermissionsForPath"

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
  Returns an LF-tag definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetLFTag&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_l_f_tag(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_l_f_tag_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_l_f_tag_errors()}
  def get_l_f_tag(%Client{} = client, options \\ []) do
    url_path = "/GetLFTag"

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
  Returns the state of a query previously submitted. Clients are expected to poll
  `GetQueryState` to monitor the current state of the planning before retrieving
  the work units. A query state is only visible to the principal that made the
  initial call to `StartQueryPlanning`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetQueryState&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_query_state(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_query_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_query_state_errors()}
  def get_query_state(%Client{} = client, options \\ []) do
    url_path = "/GetQueryState"

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
      metadata() |> Map.put_new(:host_prefix, "query-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves statistics on the planning and execution of a query.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetQueryStatistics&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_query_statistics(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_query_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_query_statistics_errors()}
  def get_query_statistics(%Client{} = client, options \\ []) do
    url_path = "/GetQueryStatistics"

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
      metadata() |> Map.put_new(:host_prefix, "query-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns the LF-tags applied to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetResourceLFTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_resource_l_f_tags(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_resource_l_f_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_l_f_tags_errors()}
  def get_resource_l_f_tags(%Client{} = client, options \\ []) do
    url_path = "/GetResourceLFTags"

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
  Returns the set of Amazon S3 objects that make up the specified governed table.
  A transaction ID or timestamp can be specified for time-travel queries.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetTableObjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_table_objects(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_table_objects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_table_objects_errors()}
  def get_table_objects(%Client{} = client, options \\ []) do
    url_path = "/GetTableObjects"

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
  This API is identical to `GetTemporaryTableCredentials` except that this is used
  when the target Data Catalog resource is of type Partition. Lake Formation
  restricts the permission of the vended credentials with the same scope down
  policy which restricts access to a single Amazon S3 prefix.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetTemporaryGluePartitionCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_temporary_glue_partition_credentials(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_temporary_glue_partition_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_temporary_glue_partition_credentials_errors()}
  def get_temporary_glue_partition_credentials(%Client{} = client, options \\ []) do
    url_path = "/GetTemporaryGluePartitionCredentials"

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
  Allows a caller in a secure environment to assume a role with permission to
  access Amazon S3. In order to vend such credentials, Lake Formation assumes
  the role associated with a registered location, for example an Amazon S3
  bucket, with a scope down policy which restricts the access to a single
  prefix.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetTemporaryGlueTableCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_temporary_glue_table_credentials(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_temporary_glue_table_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_temporary_glue_table_credentials_errors()}
  def get_temporary_glue_table_credentials(%Client{} = client, options \\ []) do
    url_path = "/GetTemporaryGlueTableCredentials"

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
  Returns the work units resulting from the query. Work units can be executed in
  any order and in parallel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetWorkUnitResults&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_work_unit_results(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_work_unit_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_work_unit_results_errors()}
  def get_work_unit_results(%Client{} = client, options \\ []) do
    url_path = "/GetWorkUnitResults"

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
      metadata() |> Map.put_new(:host_prefix, "data-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves the work units generated by the `StartQueryPlanning` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GetWorkUnits&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_work_units(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_work_units_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_work_units_errors()}
  def get_work_units(%Client{} = client, options \\ []) do
    url_path = "/GetWorkUnits"

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
      metadata() |> Map.put_new(:host_prefix, "query-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Grants permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20GrantPermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec grant_permissions(AWS.Client.t(), Keyword.t()) ::
          {:ok, grant_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, grant_permissions_errors()}
  def grant_permissions(%Client{} = client, options \\ []) do
    url_path = "/GrantPermissions"

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
  Lists all the data cell filters on a table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20ListDataCellsFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_data_cells_filter(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_cells_filter_errors()}
  def list_data_cells_filter(%Client{} = client, options \\ []) do
    url_path = "/ListDataCellsFilter"

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
  Lists LF-tags that the requester has permission to view.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20ListLFTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_l_f_tags(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_l_f_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_l_f_tags_errors()}
  def list_l_f_tags(%Client{} = client, options \\ []) do
    url_path = "/ListLFTags"

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
  Retrieve the current list of resources and principals that are opt in to enforce
  Lake Formation permissions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20ListLakeFormationOptIns&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_lake_formation_opt_ins(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_lake_formation_opt_ins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lake_formation_opt_ins_errors()}
  def list_lake_formation_opt_ins(%Client{} = client, options \\ []) do
    url_path = "/ListLakeFormationOptIns"

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
  Returns a list of the principal permissions on the resource, filtered by the
  permissions of the caller. For example, if you are granted an ALTER
  permission, you are able to see only the principal permissions for ALTER. This
  operation returns only those permissions that have been explicitly granted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20ListPermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_permissions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permissions_errors()}
  def list_permissions(%Client{} = client, options \\ []) do
    url_path = "/ListPermissions"

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
  Lists the resources registered to be managed by the Data Catalog.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20ListResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resources_errors()}
  def list_resources(%Client{} = client, options \\ []) do
    url_path = "/ListResources"

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
  Returns the configuration of all storage optimizers associated with a specified
  table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20ListTableStorageOptimizers&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_table_storage_optimizers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_table_storage_optimizers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_table_storage_optimizers_errors()}
  def list_table_storage_optimizers(%Client{} = client, options \\ []) do
    url_path = "/ListTableStorageOptimizers"

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
  Returns metadata about transactions and their status. To prevent the response
  from growing indefinitely, only uncommitted transactions and those available
  for time-travel queries are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20ListTransactions&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_transactions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_transactions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_transactions_errors()}
  def list_transactions(%Client{} = client, options \\ []) do
    url_path = "/ListTransactions"

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
  Sets the list of data lake administrators who have admin privileges on all
  resources managed by Lake Formation. For more information on admin privileges,
  see [Granting Lake Formation
  Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20PutDataLakeSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec put_data_lake_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_data_lake_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_data_lake_settings_errors()}
  def put_data_lake_settings(%Client{} = client, options \\ []) do
    url_path = "/PutDataLakeSettings"

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
  Registers the resource as managed by the Data Catalog. To add or update data,
  Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a
  role that you know has permission to do this, or choose the
  AWSServiceRoleForLakeFormationDataAccess service-linked role. When you
  register the first Amazon S3 path, the service-linked role and a new inline
  policy are created on your behalf. Lake Formation adds the first path to the
  inline policy and attaches it to the service-linked role. When you register
  subsequent paths, Lake Formation adds the path to the existing policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20RegisterResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec register_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_resource_errors()}
  def register_resource(%Client{} = client, options \\ []) do
    url_path = "/RegisterResource"

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
  Removes an LF-tag from the resource. Only database, table, or tableWithColumns
  resource are allowed. To tag columns, use the column inclusion list in
  `tableWithColumns` to specify column input.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20RemoveLFTagsFromResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec remove_l_f_tags_from_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, remove_l_f_tags_from_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_l_f_tags_from_resource_errors()}
  def remove_l_f_tags_from_resource(%Client{} = client, options \\ []) do
    url_path = "/RemoveLFTagsFromResource"

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
  Revokes permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20RevokePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec revoke_permissions(AWS.Client.t(), Keyword.t()) ::
          {:ok, revoke_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_permissions_errors()}
  def revoke_permissions(%Client{} = client, options \\ []) do
    url_path = "/RevokePermissions"

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
  This operation allows a search on `DATABASE` resources by `TagCondition`. This
  operation is used by admins who want to grant user permissions on certain
  `TagConditions`. Before making a grant, the admin can use
  `SearchDatabasesByTags` to find all resources where the given `TagConditions`
  are valid to verify whether the returned resources can be shared.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20SearchDatabasesByLFTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec search_databases_by_l_f_tags(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_databases_by_l_f_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_databases_by_l_f_tags_errors()}
  def search_databases_by_l_f_tags(%Client{} = client, options \\ []) do
    url_path = "/SearchDatabasesByLFTags"

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
  This operation allows a search on `TABLE` resources by `LFTag`s. This will be
  used by admins who want to grant user permissions on certain LF-tags. Before
  making a grant, the admin can use `SearchTablesByLFTags` to find all resources
  where the given `LFTag`s are valid to verify whether the returned resources
  can be shared.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20SearchTablesByLFTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec search_tables_by_l_f_tags(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_tables_by_l_f_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_tables_by_l_f_tags_errors()}
  def search_tables_by_l_f_tags(%Client{} = client, options \\ []) do
    url_path = "/SearchTablesByLFTags"

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
  Submits a request to process a query statement.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20StartQueryPlanning&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_query_planning(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_query_planning_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_query_planning_errors()}
  def start_query_planning(%Client{} = client, options \\ []) do
    url_path = "/StartQueryPlanning"

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
      metadata() |> Map.put_new(:host_prefix, "query-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts a new transaction and returns its transaction ID. Transaction IDs are
  opaque objects that you can use to identify a transaction.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20StartTransaction&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_transaction(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_transaction_errors()}
  def start_transaction(%Client{} = client, options \\ []) do
    url_path = "/StartTransaction"

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
  Updates a data cell filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20UpdateDataCellsFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_data_cells_filter(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_cells_filter_errors()}
  def update_data_cells_filter(%Client{} = client, options \\ []) do
    url_path = "/UpdateDataCellsFilter"

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
  Updates the list of possible values for the specified LF-tag key. If the LF-tag
  does not exist, the operation throws an EntityNotFoundException. The values in
  the delete key values will be deleted from list of possible values. If any
  value in the delete key values is attached to a resource, then API errors out
  with a 400 Exception - "Update not allowed". Untag the attribute before
  deleting the LF-tag key's value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20UpdateLFTag&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_l_f_tag(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_l_f_tag_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_l_f_tag_errors()}
  def update_l_f_tag(%Client{} = client, options \\ []) do
    url_path = "/UpdateLFTag"

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
  Updates the IAM Identity Center connection parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20UpdateLakeFormationIdentityCenterConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_lake_formation_identity_center_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_lake_formation_identity_center_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_lake_formation_identity_center_configuration_errors()}
  def update_lake_formation_identity_center_configuration(%Client{} = client, options \\ []) do
    url_path = "/UpdateLakeFormationIdentityCenterConfiguration"

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
  Updates the data access role used for vending access to the given (registered)
  resource in Lake Formation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20UpdateResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_errors()}
  def update_resource(%Client{} = client, options \\ []) do
    url_path = "/UpdateResource"

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
  Updates the manifest of Amazon S3 objects that make up the specified governed
  table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20UpdateTableObjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_table_objects(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_table_objects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_table_objects_errors()}
  def update_table_objects(%Client{} = client, options \\ []) do
    url_path = "/UpdateTableObjects"

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
  Updates the configuration of the storage optimizers for a table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lakeformation%20UpdateTableStorageOptimizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_table_storage_optimizer(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_table_storage_optimizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_table_storage_optimizer_errors()}
  def update_table_storage_optimizer(%Client{} = client, options \\ []) do
    url_path = "/UpdateTableStorageOptimizer"

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
end
