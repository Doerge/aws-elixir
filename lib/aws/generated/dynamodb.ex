# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DynamoDB do
  @moduledoc """
  Amazon DynamoDB Amazon DynamoDB is a fully managed NoSQL database service that
  provides fast and predictable performance with seamless scalability. DynamoDB
  lets you offload the administrative burdens of operating and scaling a
  distributed database, so that you don't have to worry about hardware
  provisioning, setup and configuration, replication, software patching, or
  cluster scaling.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      table_description() :: %{
        "ArchivalSummary" => archival_summary(),
        "AttributeDefinitions" => list(attribute_definition()()),
        "BillingModeSummary" => billing_mode_summary(),
        "CreationDateTime" => non_neg_integer(),
        "DeletionProtectionEnabled" => boolean(),
        "GlobalSecondaryIndexes" => list(global_secondary_index_description()()),
        "GlobalTableVersion" => String.t(),
        "ItemCount" => float(),
        "KeySchema" => list(key_schema_element()()),
        "LatestStreamArn" => String.t(),
        "LatestStreamLabel" => String.t(),
        "LocalSecondaryIndexes" => list(local_secondary_index_description()()),
        "OnDemandThroughput" => on_demand_throughput(),
        "ProvisionedThroughput" => provisioned_throughput_description(),
        "Replicas" => list(replica_description()()),
        "RestoreSummary" => restore_summary(),
        "SSEDescription" => sse_description(),
        "StreamSpecification" => stream_specification(),
        "TableArn" => String.t(),
        "TableClassSummary" => table_class_summary(),
        "TableId" => String.t(),
        "TableName" => String.t(),
        "TableSizeBytes" => float(),
        "TableStatus" => list(any())
      }
      
  """
  @type table_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transact_write_items_output() :: %{
        "ConsumedCapacity" => list(consumed_capacity()()),
        "ItemCollectionMetrics" => map()
      }
      
  """
  @type transact_write_items_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_settings_description() :: %{
        "RegionName" => String.t(),
        "ReplicaBillingModeSummary" => billing_mode_summary(),
        "ReplicaGlobalSecondaryIndexSettings" => list(replica_global_secondary_index_settings_description()()),
        "ReplicaProvisionedReadCapacityAutoScalingSettings" => auto_scaling_settings_description(),
        "ReplicaProvisionedReadCapacityUnits" => float(),
        "ReplicaProvisionedWriteCapacityAutoScalingSettings" => auto_scaling_settings_description(),
        "ReplicaProvisionedWriteCapacityUnits" => float(),
        "ReplicaStatus" => list(any()),
        "ReplicaTableClassSummary" => table_class_summary()
      }
      
  """
  @type replica_settings_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sse_description() :: %{
        "InaccessibleEncryptionDateTime" => non_neg_integer(),
        "KMSMasterKeyArn" => String.t(),
        "SSEType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type sse_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_table_global_secondary_index_settings_update() :: %{
        "IndexName" => String.t(),
        "ProvisionedWriteCapacityAutoScalingSettingsUpdate" => auto_scaling_settings_update(),
        "ProvisionedWriteCapacityUnits" => float()
      }
      
  """
  @type global_table_global_secondary_index_settings_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transact_write_items_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("ReturnConsumedCapacity") => list(any()),
        optional("ReturnItemCollectionMetrics") => list(any()),
        required("TransactItems") => list(transact_write_item()())
      }
      
  """
  @type transact_write_items_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      local_secondary_index() :: %{
        "IndexName" => String.t(),
        "KeySchema" => list(key_schema_element()()),
        "Projection" => projection()
      }
      
  """
  @type local_secondary_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_table_output() :: %{
        "TableDescription" => table_description()
      }
      
  """
  @type create_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      local_secondary_index_info() :: %{
        "IndexName" => String.t(),
        "KeySchema" => list(key_schema_element()()),
        "Projection" => projection()
      }
      
  """
  @type local_secondary_index_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transact_write_item() :: %{
        "ConditionCheck" => condition_check(),
        "Delete" => delete(),
        "Put" => put(),
        "Update" => update()
      }
      
  """
  @type transact_write_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_limits_output() :: %{
        "AccountMaxReadCapacityUnits" => float(),
        "AccountMaxWriteCapacityUnits" => float(),
        "TableMaxReadCapacityUnits" => float(),
        "TableMaxWriteCapacityUnits" => float()
      }
      
  """
  @type describe_limits_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_to_live_specification() :: %{
        "AttributeName" => String.t(),
        "Enabled" => boolean()
      }
      
  """
  @type time_to_live_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expected_attribute_value() :: %{
        "AttributeValueList" => list(list()()),
        "ComparisonOperator" => list(any()),
        "Exists" => boolean(),
        "Value" => list()
      }
      
  """
  @type expected_attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      keys_and_attributes() :: %{
        "AttributesToGet" => list(String.t()()),
        "ConsistentRead" => boolean(),
        "ExpressionAttributeNames" => map(),
        "Keys" => list(map()()),
        "ProjectionExpression" => String.t()
      }
      
  """
  @type keys_and_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      point_in_time_recovery_description() :: %{
        "EarliestRestorableDateTime" => non_neg_integer(),
        "LatestRestorableDateTime" => non_neg_integer(),
        "PointInTimeRecoveryStatus" => list(any())
      }
      
  """
  @type point_in_time_recovery_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_execute_statement_output() :: %{
        "ConsumedCapacity" => list(consumed_capacity()()),
        "Responses" => list(batch_statement_response()())
      }
      
  """
  @type batch_execute_statement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_export_output() :: %{
        "ExportDescription" => export_description()
      }
      
  """
  @type describe_export_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      item_collection_size_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type item_collection_size_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_definition() :: %{
        "AttributeName" => String.t(),
        "AttributeType" => list(any())
      }
      
  """
  @type attribute_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_time_to_live_output() :: %{
        "TimeToLiveSpecification" => time_to_live_specification()
      }
      
  """
  @type update_time_to_live_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_group_member_action() :: %{
        "GlobalSecondaryIndexes" => list(replica_global_secondary_index()()),
        "KMSMasterKeyId" => String.t(),
        "OnDemandThroughputOverride" => on_demand_throughput_override(),
        "ProvisionedThroughputOverride" => provisioned_throughput_override(),
        "RegionName" => String.t(),
        "TableClassOverride" => list(any())
      }
      
  """
  @type create_replication_group_member_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type table_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_imports_input() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer(),
        optional("TableArn") => String.t()
      }
      
  """
  @type list_imports_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_output() :: %{
        "Policy" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type get_resource_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_demand_throughput() :: %{
        "MaxReadRequestUnits" => float(),
        "MaxWriteRequestUnits" => float()
      }
      
  """
  @type on_demand_throughput() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      point_in_time_recovery_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type point_in_time_recovery_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_item_output() :: %{
        "ConsumedCapacity" => consumed_capacity(),
        "Item" => map()
      }
      
  """
  @type get_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_global_table_input() :: %{
        required("GlobalTableName") => String.t(),
        required("ReplicationGroup") => list(replica()())
      }
      
  """
  @type create_global_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_item_input() :: %{
        optional("ReturnConsumedCapacity") => list(any()),
        required("RequestItems") => map()
      }
      
  """
  @type batch_get_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_data_stream_destination() :: %{
        "ApproximateCreationDateTimePrecision" => list(any()),
        "DestinationStatus" => list(any()),
        "DestinationStatusDescription" => String.t(),
        "StreamArn" => String.t()
      }
      
  """
  @type kinesis_data_stream_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_transaction_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("ReturnConsumedCapacity") => list(any()),
        required("TransactStatements") => list(parameterized_statement()())
      }
      
  """
  @type execute_transaction_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_global_tables_output() :: %{
        "GlobalTables" => list(global_table()()),
        "LastEvaluatedGlobalTableName" => String.t()
      }
      
  """
  @type list_global_tables_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replica_action() :: %{
        "RegionName" => String.t()
      }
      
  """
  @type delete_replica_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete() :: %{
        "ConditionExpression" => String.t(),
        "ExpressionAttributeNames" => map(),
        "ExpressionAttributeValues" => map(),
        "Key" => map(),
        "ReturnValuesOnConditionCheckFailure" => list(any()),
        "TableName" => String.t()
      }
      
  """
  @type delete() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_continuous_backups_output() :: %{
        "ContinuousBackupsDescription" => continuous_backups_description()
      }
      
  """
  @type update_continuous_backups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      billing_mode_summary() :: %{
        "BillingMode" => list(any()),
        "LastUpdateToPayPerRequestDateTime" => non_neg_integer()
      }
      
  """
  @type billing_mode_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backups_input() :: %{
        optional("BackupType") => list(any()),
        optional("ExclusiveStartBackupArn") => String.t(),
        optional("Limit") => integer(),
        optional("TableName") => String.t(),
        optional("TimeRangeLowerBound") => non_neg_integer(),
        optional("TimeRangeUpperBound") => non_neg_integer()
      }
      
  """
  @type list_backups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_global_secondary_index_auto_scaling_update() :: %{
        "IndexName" => String.t(),
        "ProvisionedReadCapacityAutoScalingUpdate" => auto_scaling_settings_update()
      }
      
  """
  @type replica_global_secondary_index_auto_scaling_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_auto_scaling_description() :: %{
        "GlobalSecondaryIndexes" => list(replica_global_secondary_index_auto_scaling_description()()),
        "RegionName" => String.t(),
        "ReplicaProvisionedReadCapacityAutoScalingSettings" => auto_scaling_settings_description(),
        "ReplicaProvisionedWriteCapacityAutoScalingSettings" => auto_scaling_settings_description(),
        "ReplicaStatus" => list(any())
      }
      
  """
  @type replica_auto_scaling_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_settings_update() :: %{
        "RegionName" => String.t(),
        "ReplicaGlobalSecondaryIndexSettingsUpdate" => list(replica_global_secondary_index_settings_update()()),
        "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate" => auto_scaling_settings_update(),
        "ReplicaProvisionedReadCapacityUnits" => float(),
        "ReplicaTableClass" => list(any())
      }
      
  """
  @type replica_settings_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_table() :: %{
        "GlobalTableName" => String.t(),
        "ReplicationGroup" => list(replica()())
      }
      
  """
  @type global_table() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_write_item_output() :: %{
        "ConsumedCapacity" => list(consumed_capacity()()),
        "ItemCollectionMetrics" => map(),
        "UnprocessedItems" => map()
      }
      
  """
  @type batch_write_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_table_input() :: %{
        optional("BillingMode") => list(any()),
        optional("DeletionProtectionEnabled") => boolean(),
        optional("GlobalSecondaryIndexes") => list(global_secondary_index()()),
        optional("LocalSecondaryIndexes") => list(local_secondary_index()()),
        optional("OnDemandThroughput") => on_demand_throughput(),
        optional("ProvisionedThroughput") => provisioned_throughput(),
        optional("ResourcePolicy") => String.t(),
        optional("SSESpecification") => sse_specification(),
        optional("StreamSpecification") => stream_specification(),
        optional("TableClass") => list(any()),
        optional("Tags") => list(tag()()),
        required("AttributeDefinitions") => list(attribute_definition()()),
        required("KeySchema") => list(key_schema_element()()),
        required("TableName") => String.t()
      }
      
  """
  @type create_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      write_request() :: %{
        "DeleteRequest" => delete_request(),
        "PutRequest" => put_request()
      }
      
  """
  @type write_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_summary() :: %{
        "RestoreDateTime" => non_neg_integer(),
        "RestoreInProgress" => boolean(),
        "SourceBackupArn" => String.t(),
        "SourceTableArn" => String.t()
      }
      
  """
  @type restore_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_kinesis_streaming_configuration() :: %{
        "ApproximateCreationDateTimePrecision" => list(any())
      }
      
  """
  @type enable_kinesis_streaming_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_endpoint_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_endpoint_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_global_table_output() :: %{
        "GlobalTableDescription" => global_table_description()
      }
      
  """
  @type describe_global_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_creation_parameters() :: %{
        "AttributeDefinitions" => list(attribute_definition()()),
        "BillingMode" => list(any()),
        "GlobalSecondaryIndexes" => list(global_secondary_index()()),
        "KeySchema" => list(key_schema_element()()),
        "OnDemandThroughput" => on_demand_throughput(),
        "ProvisionedThroughput" => provisioned_throughput(),
        "SSESpecification" => sse_specification(),
        "TableName" => String.t()
      }
      
  """
  @type table_creation_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_output() :: %{
        "ConsumedCapacity" => consumed_capacity(),
        "Items" => list(map()()),
        "LastEvaluatedKey" => map(),
        "NextToken" => String.t()
      }
      
  """
  @type execute_statement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoints_response() :: %{
        "Endpoints" => list(endpoint()())
      }
      
  """
  @type describe_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_summary() :: %{
        "BackupArn" => String.t(),
        "BackupCreationDateTime" => non_neg_integer(),
        "BackupExpiryDateTime" => non_neg_integer(),
        "BackupName" => String.t(),
        "BackupSizeBytes" => float(),
        "BackupStatus" => list(any()),
        "BackupType" => list(any()),
        "TableArn" => String.t(),
        "TableId" => String.t(),
        "TableName" => String.t()
      }
      
  """
  @type backup_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_kinesis_streaming_destination_input() :: %{
        required("TableName") => String.t()
      }
      
  """
  @type describe_kinesis_streaming_destination_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_settings_description() :: %{
        "AutoScalingDisabled" => boolean(),
        "AutoScalingRoleArn" => String.t(),
        "MaximumUnits" => float(),
        "MinimumUnits" => float(),
        "ScalingPolicies" => list(auto_scaling_policy_description()())
      }
      
  """
  @type auto_scaling_settings_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contributor_insights_output() :: %{
        "ContributorInsightsStatus" => list(any()),
        "IndexName" => String.t(),
        "TableName" => String.t()
      }
      
  """
  @type update_contributor_insights_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_output() :: %{
        "RevisionId" => String.t()
      }
      
  """
  @type put_resource_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_global_table_settings_input() :: %{
        optional("GlobalTableBillingMode") => list(any()),
        optional("GlobalTableGlobalSecondaryIndexSettingsUpdate") => list(global_table_global_secondary_index_settings_update()()),
        optional("GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate") => auto_scaling_settings_update(),
        optional("GlobalTableProvisionedWriteCapacityUnits") => float(),
        optional("ReplicaSettingsUpdate") => list(replica_settings_update()()),
        required("GlobalTableName") => String.t()
      }
      
  """
  @type update_global_table_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scan_input() :: %{
        optional("AttributesToGet") => list(String.t()()),
        optional("ConditionalOperator") => list(any()),
        optional("ConsistentRead") => boolean(),
        optional("ExclusiveStartKey") => map(),
        optional("ExpressionAttributeNames") => map(),
        optional("ExpressionAttributeValues") => map(),
        optional("FilterExpression") => String.t(),
        optional("IndexName") => String.t(),
        optional("Limit") => integer(),
        optional("ProjectionExpression") => String.t(),
        optional("ReturnConsumedCapacity") => list(any()),
        optional("ScanFilter") => map(),
        optional("Segment") => integer(),
        optional("Select") => list(any()),
        optional("TotalSegments") => integer(),
        required("TableName") => String.t()
      }
      
  """
  @type scan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_summary() :: %{
        "CloudWatchLogGroupArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "ImportArn" => String.t(),
        "ImportStatus" => list(any()),
        "InputFormat" => list(any()),
        "S3BucketSource" => s3_bucket_source(),
        "StartTime" => non_neg_integer(),
        "TableArn" => String.t()
      }
      
  """
  @type import_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_class_summary() :: %{
        "LastUpdateDateTime" => non_neg_integer(),
        "TableClass" => list(any())
      }
      
  """
  @type table_class_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_output() :: %{
        "Table" => table_description()
      }
      
  """
  @type describe_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_schema_element() :: %{
        "AttributeName" => String.t(),
        "KeyType" => list(any())
      }
      
  """
  @type key_schema_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transaction_canceled_exception() :: %{
        "CancellationReasons" => list(cancellation_reason()()),
        "Message" => String.t()
      }
      
  """
  @type transaction_canceled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_demand_throughput_override() :: %{
        "MaxReadRequestUnits" => float()
      }
      
  """
  @type on_demand_throughput_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_replica_auto_scaling_output() :: %{
        "TableAutoScalingDescription" => table_auto_scaling_description()
      }
      
  """
  @type update_table_replica_auto_scaling_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_import_output() :: %{
        "ImportTableDescription" => import_table_description()
      }
      
  """
  @type describe_import_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_input() :: %{
        optional("ExpectedRevisionId") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replica_action() :: %{
        "RegionName" => String.t()
      }
      
  """
  @type create_replica_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameterized_statement() :: %{
        "Parameters" => list(list()()),
        "ReturnValuesOnConditionCheckFailure" => list(any()),
        "Statement" => String.t()
      }
      
  """
  @type parameterized_statement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_of_resource_output() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_of_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_output() :: %{
        "ConsumedCapacity" => consumed_capacity(),
        "Count" => integer(),
        "Items" => list(map()()),
        "LastEvaluatedKey" => map(),
        "ScannedCount" => integer()
      }
      
  """
  @type query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity() :: %{
        "CapacityUnits" => float(),
        "ReadCapacityUnits" => float(),
        "WriteCapacityUnits" => float()
      }
      
  """
  @type capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_write_item_input() :: %{
        optional("ReturnConsumedCapacity") => list(any()),
        optional("ReturnItemCollectionMetrics") => list(any()),
        required("RequestItems") => map()
      }
      
  """
  @type batch_write_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_kinesis_streaming_destination_output() :: %{
        "DestinationStatus" => list(any()),
        "StreamArn" => String.t(),
        "TableName" => String.t(),
        "UpdateKinesisStreamingConfiguration" => update_kinesis_streaming_configuration()
      }
      
  """
  @type update_kinesis_streaming_destination_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_global_table_input() :: %{
        required("GlobalTableName") => String.t(),
        required("ReplicaUpdates") => list(replica_update()())
      }
      
  """
  @type update_global_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_input() :: %{
        optional("ConsistentRead") => boolean(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("Parameters") => list(list()()),
        optional("ReturnConsumedCapacity") => list(any()),
        optional("ReturnValuesOnConditionCheckFailure") => list(any()),
        required("Statement") => String.t()
      }
      
  """
  @type execute_statement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tables_input() :: %{
        optional("ExclusiveStartTableName") => String.t(),
        optional("Limit") => integer()
      }
      
  """
  @type list_tables_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_global_table_settings_input() :: %{
        required("GlobalTableName") => String.t()
      }
      
  """
  @type describe_global_table_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_execute_statement_input() :: %{
        optional("ReturnConsumedCapacity") => list(any()),
        required("Statements") => list(batch_statement_request()())
      }
      
  """
  @type batch_execute_statement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_replica_auto_scaling_input() :: %{
        optional("GlobalSecondaryIndexUpdates") => list(global_secondary_index_auto_scaling_update()()),
        optional("ProvisionedWriteCapacityAutoScalingUpdate") => auto_scaling_settings_update(),
        optional("ReplicaUpdates") => list(replica_auto_scaling_update()()),
        required("TableName") => String.t()
      }
      
  """
  @type update_table_replica_auto_scaling_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streaming_destination_input() :: %{
        optional("EnableKinesisStreamingConfiguration") => enable_kinesis_streaming_configuration(),
        required("StreamArn") => String.t(),
        required("TableName") => String.t()
      }
      
  """
  @type kinesis_streaming_destination_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_import_input() :: %{
        required("ImportArn") => String.t()
      }
      
  """
  @type describe_import_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_auto_scaling_update() :: %{
        "RegionName" => String.t(),
        "ReplicaGlobalSecondaryIndexUpdates" => list(replica_global_secondary_index_auto_scaling_update()()),
        "ReplicaProvisionedReadCapacityAutoScalingUpdate" => auto_scaling_settings_update()
      }
      
  """
  @type replica_auto_scaling_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type replica_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_to_point_in_time_output() :: %{
        "TableDescription" => table_description()
      }
      
  """
  @type restore_table_to_point_in_time_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      csv_options() :: %{
        "Delimiter" => String.t(),
        "HeaderList" => list(String.t()())
      }
      
  """
  @type csv_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      projection() :: %{
        "NonKeyAttributes" => list(String.t()()),
        "ProjectionType" => list(any())
      }
      
  """
  @type projection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_global_secondary_index() :: %{
        "IndexName" => String.t(),
        "OnDemandThroughputOverride" => on_demand_throughput_override(),
        "ProvisionedThroughputOverride" => provisioned_throughput_override()
      }
      
  """
  @type replica_global_secondary_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type provisioned_throughput_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_item_output() :: %{
        "ConsumedCapacity" => list(consumed_capacity()()),
        "Responses" => map(),
        "UnprocessedKeys" => map()
      }
      
  """
  @type batch_get_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backup_input() :: %{
        required("BackupArn") => String.t()
      }
      
  """
  @type describe_backup_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_table_details() :: %{
        "BillingMode" => list(any()),
        "ItemCount" => float(),
        "KeySchema" => list(key_schema_element()()),
        "OnDemandThroughput" => on_demand_throughput(),
        "ProvisionedThroughput" => provisioned_throughput(),
        "TableArn" => String.t(),
        "TableCreationDateTime" => non_neg_integer(),
        "TableId" => String.t(),
        "TableName" => String.t(),
        "TableSizeBytes" => float()
      }
      
  """
  @type source_table_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_secondary_index_auto_scaling_update() :: %{
        "IndexName" => String.t(),
        "ProvisionedWriteCapacityAutoScalingUpdate" => auto_scaling_settings_update()
      }
      
  """
  @type global_secondary_index_auto_scaling_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update() :: %{
        "ConditionExpression" => String.t(),
        "ExpressionAttributeNames" => map(),
        "ExpressionAttributeValues" => map(),
        "Key" => map(),
        "ReturnValuesOnConditionCheckFailure" => list(any()),
        "TableName" => String.t(),
        "UpdateExpression" => String.t()
      }
      
  """
  @type update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contributor_insights_output() :: %{
        "ContributorInsightsRuleList" => list(String.t()()),
        "ContributorInsightsStatus" => list(any()),
        "FailureException" => failure_exception(),
        "IndexName" => String.t(),
        "LastUpdateDateTime" => non_neg_integer(),
        "TableName" => String.t()
      }
      
  """
  @type describe_contributor_insights_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoints_request() :: %{}
      
  """
  @type describe_endpoints_request() :: %{}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_input() :: %{
        required("TableName") => String.t()
      }
      
  """
  @type describe_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_input() :: %{
        required("BackupArn") => String.t()
      }
      
  """
  @type delete_backup_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      consumed_capacity() :: %{
        "CapacityUnits" => float(),
        "GlobalSecondaryIndexes" => map(),
        "LocalSecondaryIndexes" => map(),
        "ReadCapacityUnits" => float(),
        "Table" => capacity(),
        "TableName" => String.t(),
        "WriteCapacityUnits" => float()
      }
      
  """
  @type consumed_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type backup_not_found_exception() :: %{String.t() => any()}

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
      
      delete_table_input() :: %{
        required("TableName") => String.t()
      }
      
  """
  @type delete_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backup_output() :: %{
        "BackupDescription" => backup_description()
      }
      
  """
  @type describe_backup_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_global_secondary_index_action() :: %{
        "IndexName" => String.t(),
        "KeySchema" => list(key_schema_element()()),
        "OnDemandThroughput" => on_demand_throughput(),
        "Projection" => projection(),
        "ProvisionedThroughput" => provisioned_throughput()
      }
      
  """
  @type create_global_secondary_index_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      local_secondary_index_description() :: %{
        "IndexArn" => String.t(),
        "IndexName" => String.t(),
        "IndexSizeBytes" => float(),
        "ItemCount" => float(),
        "KeySchema" => list(key_schema_element()()),
        "Projection" => projection()
      }
      
  """
  @type local_secondary_index_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_item_output() :: %{
        "Attributes" => map(),
        "ConsumedCapacity" => consumed_capacity(),
        "ItemCollectionMetrics" => item_collection_metrics()
      }
      
  """
  @type delete_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_global_secondary_index_settings_description() :: %{
        "IndexName" => String.t(),
        "IndexStatus" => list(any()),
        "ProvisionedReadCapacityAutoScalingSettings" => auto_scaling_settings_description(),
        "ProvisionedReadCapacityUnits" => float(),
        "ProvisionedWriteCapacityAutoScalingSettings" => auto_scaling_settings_description(),
        "ProvisionedWriteCapacityUnits" => float()
      }
      
  """
  @type replica_global_secondary_index_settings_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continuous_backups_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type continuous_backups_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_input() :: %{
        optional("ConfirmRemoveSelfResourceAccess") => boolean(),
        optional("ExpectedRevisionId") => String.t(),
        required("Policy") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type put_resource_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_update() :: %{
        "Create" => create_replica_action(),
        "Delete" => delete_replica_action()
      }
      
  """
  @type replica_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_table_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type global_table_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_statement_error() :: %{
        "Code" => list(any()),
        "Item" => map(),
        "Message" => String.t()
      }
      
  """
  @type batch_statement_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_policy_description() :: %{
        "PolicyName" => String.t(),
        "TargetTrackingScalingPolicyConfiguration" => auto_scaling_target_tracking_scaling_policy_configuration_description()
      }
      
  """
  @type auto_scaling_policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_request() :: %{
        "Key" => map()
      }
      
  """
  @type delete_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_continuous_backups_input() :: %{
        required("TableName") => String.t()
      }
      
  """
  @type describe_continuous_backups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_statement_response() :: %{
        "Error" => batch_statement_error(),
        "Item" => map(),
        "TableName" => String.t()
      }
      
  """
  @type batch_statement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_policy_update() :: %{
        "PolicyName" => String.t(),
        "TargetTrackingScalingPolicyConfiguration" => auto_scaling_target_tracking_scaling_policy_configuration_update()
      }
      
  """
  @type auto_scaling_policy_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_summary() :: %{
        "ExportArn" => String.t(),
        "ExportStatus" => list(any()),
        "ExportType" => list(any())
      }
      
  """
  @type export_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      item_collection_metrics() :: %{
        "ItemCollectionKey" => map(),
        "SizeEstimateRangeGB" => list(float()())
      }
      
  """
  @type item_collection_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_global_table_settings_output() :: %{
        "GlobalTableName" => String.t(),
        "ReplicaSettings" => list(replica_settings_description()())
      }
      
  """
  @type describe_global_table_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_replication_group_member_action() :: %{
        "GlobalSecondaryIndexes" => list(replica_global_secondary_index()()),
        "KMSMasterKeyId" => String.t(),
        "OnDemandThroughputOverride" => on_demand_throughput_override(),
        "ProvisionedThroughputOverride" => provisioned_throughput_override(),
        "RegionName" => String.t(),
        "TableClassOverride" => list(any())
      }
      
  """
  @type update_replication_group_member_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_specification() :: %{
        "StreamEnabled" => boolean(),
        "StreamViewType" => list(any())
      }
      
  """
  @type stream_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_export_input() :: %{
        required("ExportArn") => String.t()
      }
      
  """
  @type describe_export_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput_description() :: %{
        "LastDecreaseDateTime" => non_neg_integer(),
        "LastIncreaseDateTime" => non_neg_integer(),
        "NumberOfDecreasesToday" => float(),
        "ReadCapacityUnits" => float(),
        "WriteCapacityUnits" => float()
      }
      
  """
  @type provisioned_throughput_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backup_input() :: %{
        required("BackupName") => String.t(),
        required("TableName") => String.t()
      }
      
  """
  @type create_backup_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_item_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicate_item_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transact_get_items_output() :: %{
        "ConsumedCapacity" => list(consumed_capacity()()),
        "Responses" => list(item_response()())
      }
      
  """
  @type transact_get_items_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_time_to_live_output() :: %{
        "TimeToLiveDescription" => time_to_live_description()
      }
      
  """
  @type describe_time_to_live_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contributor_insights_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TableName") => String.t()
      }
      
  """
  @type list_contributor_insights_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      point_in_time_recovery_specification() :: %{
        "PointInTimeRecoveryEnabled" => boolean()
      }
      
  """
  @type point_in_time_recovery_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_to_live_description() :: %{
        "AttributeName" => String.t(),
        "TimeToLiveStatus" => list(any())
      }
      
  """
  @type time_to_live_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_global_secondary_index_auto_scaling_description() :: %{
        "IndexName" => String.t(),
        "IndexStatus" => list(any()),
        "ProvisionedReadCapacityAutoScalingSettings" => auto_scaling_settings_description(),
        "ProvisionedWriteCapacityAutoScalingSettings" => auto_scaling_settings_description()
      }
      
  """
  @type replica_global_secondary_index_auto_scaling_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streaming_destination_output() :: %{
        optional("DestinationStatus") => list(any()),
        optional("EnableKinesisStreamingConfiguration") => enable_kinesis_streaming_configuration(),
        optional("StreamArn") => String.t(),
        optional("TableName") => String.t()
      }
      
  """
  @type kinesis_streaming_destination_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition() :: %{
        "AttributeValueList" => list(list()()),
        "ComparisonOperator" => list(any())
      }
      
  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transact_get_items_input() :: %{
        optional("ReturnConsumedCapacity") => list(any()),
        required("TransactItems") => list(transact_get_item()())
      }
      
  """
  @type transact_get_items_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_table_input() :: %{
        optional("ClientToken") => String.t(),
        optional("InputCompressionType") => list(any()),
        optional("InputFormatOptions") => input_format_options(),
        required("InputFormat") => list(any()),
        required("S3BucketSource") => s3_bucket_source(),
        required("TableCreationParameters") => table_creation_parameters()
      }
      
  """
  @type import_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transaction_conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type transaction_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_global_table_input() :: %{
        required("GlobalTableName") => String.t()
      }
      
  """
  @type describe_global_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_global_secondary_index_settings_update() :: %{
        "IndexName" => String.t(),
        "ProvisionedReadCapacityAutoScalingSettingsUpdate" => auto_scaling_settings_update(),
        "ProvisionedReadCapacityUnits" => float()
      }
      
  """
  @type replica_global_secondary_index_settings_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_item_input() :: %{
        optional("ConditionExpression") => String.t(),
        optional("ConditionalOperator") => list(any()),
        optional("Expected") => map(),
        optional("ExpressionAttributeNames") => map(),
        optional("ExpressionAttributeValues") => map(),
        optional("ReturnConsumedCapacity") => list(any()),
        optional("ReturnItemCollectionMetrics") => list(any()),
        optional("ReturnValues") => list(any()),
        optional("ReturnValuesOnConditionCheckFailure") => list(any()),
        required("Item") => map(),
        required("TableName") => String.t()
      }
      
  """
  @type put_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_of_resource_input() :: %{
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_of_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_replica_auto_scaling_input() :: %{
        required("TableName") => String.t()
      }
      
  """
  @type describe_table_replica_auto_scaling_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_table_to_point_in_time_input() :: %{
        optional("ClientToken") => String.t(),
        optional("ExportFormat") => list(any()),
        optional("ExportTime") => non_neg_integer(),
        optional("ExportType") => list(any()),
        optional("IncrementalExportSpecification") => incremental_export_specification(),
        optional("S3BucketOwner") => String.t(),
        optional("S3Prefix") => String.t(),
        optional("S3SseAlgorithm") => list(any()),
        optional("S3SseKmsKeyId") => String.t(),
        required("S3Bucket") => String.t(),
        required("TableArn") => String.t()
      }
      
  """
  @type export_table_to_point_in_time_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_transaction_output() :: %{
        "ConsumedCapacity" => list(consumed_capacity()()),
        "Responses" => list(item_response()())
      }
      
  """
  @type execute_transaction_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transact_get_item() :: %{
        "Get" => get()
      }
      
  """
  @type transact_get_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_table_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type global_table_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t(),
        "CachePeriodInMinutes" => float()
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_item_output() :: %{
        "Attributes" => map(),
        "ConsumedCapacity" => consumed_capacity(),
        "ItemCollectionMetrics" => item_collection_metrics()
      }
      
  """
  @type update_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contributor_insights_input() :: %{
        optional("IndexName") => String.t(),
        required("TableName") => String.t()
      }
      
  """
  @type describe_contributor_insights_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_description() :: %{
        "BackupDetails" => backup_details(),
        "SourceTableDetails" => source_table_details(),
        "SourceTableFeatureDetails" => source_table_feature_details()
      }
      
  """
  @type backup_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_kinesis_streaming_destination_output() :: %{
        "KinesisDataStreamDestinations" => list(kinesis_data_stream_destination()()),
        "TableName" => String.t()
      }
      
  """
  @type describe_kinesis_streaming_destination_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type backup_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conditional_check_failed_exception() :: %{
        "Item" => map(),
        "message" => String.t()
      }
      
  """
  @type conditional_check_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_limits_input() :: %{}
      
  """
  @type describe_limits_input() :: %{}

  @typedoc """

  ## Example:
      
      global_secondary_index_update() :: %{
        "Create" => create_global_secondary_index_action(),
        "Delete" => delete_global_secondary_index_action(),
        "Update" => update_global_secondary_index_action()
      }
      
  """
  @type global_secondary_index_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backup_output() :: %{
        "BackupDetails" => backup_details()
      }
      
  """
  @type create_backup_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_exports_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TableArn") => String.t()
      }
      
  """
  @type list_exports_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_details() :: %{
        "BackupArn" => String.t(),
        "BackupCreationDateTime" => non_neg_integer(),
        "BackupExpiryDateTime" => non_neg_integer(),
        "BackupName" => String.t(),
        "BackupSizeBytes" => float(),
        "BackupStatus" => list(any()),
        "BackupType" => list(any())
      }
      
  """
  @type backup_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_format_options() :: %{
        "Csv" => csv_options()
      }
      
  """
  @type input_format_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type import_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_exports_output() :: %{
        "ExportSummaries" => list(export_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_exports_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_output() :: %{
        "RevisionId" => String.t()
      }
      
  """
  @type delete_resource_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_settings_update() :: %{
        "AutoScalingDisabled" => boolean(),
        "AutoScalingRoleArn" => String.t(),
        "MaximumUnits" => float(),
        "MinimumUnits" => float(),
        "ScalingPolicyUpdate" => auto_scaling_policy_update()
      }
      
  """
  @type auto_scaling_settings_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_global_table_output() :: %{
        "GlobalTableDescription" => global_table_description()
      }
      
  """
  @type create_global_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_global_tables_input() :: %{
        optional("ExclusiveStartGlobalTableName") => String.t(),
        optional("Limit") => integer(),
        optional("RegionName") => String.t()
      }
      
  """
  @type list_global_tables_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput() :: %{
        "ReadCapacityUnits" => float(),
        "WriteCapacityUnits" => float()
      }
      
  """
  @type provisioned_throughput() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_secondary_index_description() :: %{
        "Backfilling" => boolean(),
        "IndexArn" => String.t(),
        "IndexName" => String.t(),
        "IndexSizeBytes" => float(),
        "IndexStatus" => list(any()),
        "ItemCount" => float(),
        "KeySchema" => list(key_schema_element()()),
        "OnDemandThroughput" => on_demand_throughput(),
        "Projection" => projection(),
        "ProvisionedThroughput" => provisioned_throughput_description()
      }
      
  """
  @type global_secondary_index_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_secondary_index_info() :: %{
        "IndexName" => String.t(),
        "KeySchema" => list(key_schema_element()()),
        "OnDemandThroughput" => on_demand_throughput(),
        "Projection" => projection(),
        "ProvisionedThroughput" => provisioned_throughput()
      }
      
  """
  @type global_secondary_index_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_request() :: %{
        "Item" => map()
      }
      
  """
  @type put_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_item_input() :: %{
        optional("ConditionExpression") => String.t(),
        optional("ConditionalOperator") => list(any()),
        optional("Expected") => map(),
        optional("ExpressionAttributeNames") => map(),
        optional("ExpressionAttributeValues") => map(),
        optional("ReturnConsumedCapacity") => list(any()),
        optional("ReturnItemCollectionMetrics") => list(any()),
        optional("ReturnValues") => list(any()),
        optional("ReturnValuesOnConditionCheckFailure") => list(any()),
        required("Key") => map(),
        required("TableName") => String.t()
      }
      
  """
  @type delete_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_global_secondary_index_description() :: %{
        "IndexName" => String.t(),
        "OnDemandThroughputOverride" => on_demand_throughput_override(),
        "ProvisionedThroughputOverride" => provisioned_throughput_override()
      }
      
  """
  @type replica_global_secondary_index_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_target_tracking_scaling_policy_configuration_description() :: %{
        "DisableScaleIn" => boolean(),
        "ScaleInCooldown" => integer(),
        "ScaleOutCooldown" => integer(),
        "TargetValue" => float()
      }
      
  """
  @type auto_scaling_target_tracking_scaling_policy_configuration_description() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      query_input() :: %{
        optional("AttributesToGet") => list(String.t()()),
        optional("ConditionalOperator") => list(any()),
        optional("ConsistentRead") => boolean(),
        optional("ExclusiveStartKey") => map(),
        optional("ExpressionAttributeNames") => map(),
        optional("ExpressionAttributeValues") => map(),
        optional("FilterExpression") => String.t(),
        optional("IndexName") => String.t(),
        optional("KeyConditionExpression") => String.t(),
        optional("KeyConditions") => map(),
        optional("Limit") => integer(),
        optional("ProjectionExpression") => String.t(),
        optional("QueryFilter") => map(),
        optional("ReturnConsumedCapacity") => list(any()),
        optional("ScanIndexForward") => boolean(),
        optional("Select") => list(any()),
        required("TableName") => String.t()
      }
      
  """
  @type query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_global_table_output() :: %{
        "GlobalTableDescription" => global_table_description()
      }
      
  """
  @type update_global_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_restore_time_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_restore_time_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sse_specification() :: %{
        "Enabled" => boolean(),
        "KMSMasterKeyId" => String.t(),
        "SSEType" => list(any())
      }
      
  """
  @type sse_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_continuous_backups_output() :: %{
        "ContinuousBackupsDescription" => continuous_backups_description()
      }
      
  """
  @type describe_continuous_backups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_item_input() :: %{
        optional("AttributeUpdates") => map(),
        optional("ConditionExpression") => String.t(),
        optional("ConditionalOperator") => list(any()),
        optional("Expected") => map(),
        optional("ExpressionAttributeNames") => map(),
        optional("ExpressionAttributeValues") => map(),
        optional("ReturnConsumedCapacity") => list(any()),
        optional("ReturnItemCollectionMetrics") => list(any()),
        optional("ReturnValues") => list(any()),
        optional("ReturnValuesOnConditionCheckFailure") => list(any()),
        optional("UpdateExpression") => String.t(),
        required("Key") => map(),
        required("TableName") => String.t()
      }
      
  """
  @type update_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_input() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_resource_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_table_description() :: %{
        "CreationDateTime" => non_neg_integer(),
        "GlobalTableArn" => String.t(),
        "GlobalTableName" => String.t(),
        "GlobalTableStatus" => list(any()),
        "ReplicationGroup" => list(replica_description()())
      }
      
  """
  @type global_table_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continuous_backups_description() :: %{
        "ContinuousBackupsStatus" => list(any()),
        "PointInTimeRecoveryDescription" => point_in_time_recovery_description()
      }
      
  """
  @type continuous_backups_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_secondary_index() :: %{
        "IndexName" => String.t(),
        "KeySchema" => list(key_schema_element()()),
        "OnDemandThroughput" => on_demand_throughput(),
        "Projection" => projection(),
        "ProvisionedThroughput" => provisioned_throughput()
      }
      
  """
  @type global_secondary_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_to_point_in_time_input() :: %{
        optional("BillingModeOverride") => list(any()),
        optional("GlobalSecondaryIndexOverride") => list(global_secondary_index()()),
        optional("LocalSecondaryIndexOverride") => list(local_secondary_index()()),
        optional("OnDemandThroughputOverride") => on_demand_throughput(),
        optional("ProvisionedThroughputOverride") => provisioned_throughput(),
        optional("RestoreDateTime") => non_neg_integer(),
        optional("SSESpecificationOverride") => sse_specification(),
        optional("SourceTableArn") => String.t(),
        optional("SourceTableName") => String.t(),
        optional("UseLatestRestorableTime") => boolean(),
        required("TargetTableName") => String.t()
      }
      
  """
  @type restore_table_to_point_in_time_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type request_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_from_backup_input() :: %{
        optional("BillingModeOverride") => list(any()),
        optional("GlobalSecondaryIndexOverride") => list(global_secondary_index()()),
        optional("LocalSecondaryIndexOverride") => list(local_secondary_index()()),
        optional("OnDemandThroughputOverride") => on_demand_throughput(),
        optional("ProvisionedThroughputOverride") => provisioned_throughput(),
        optional("SSESpecificationOverride") => sse_specification(),
        required("BackupArn") => String.t(),
        required("TargetTableName") => String.t()
      }
      
  """
  @type restore_table_from_backup_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancellation_reason() :: %{
        "Code" => String.t(),
        "Item" => map(),
        "Message" => String.t()
      }
      
  """
  @type cancellation_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_table_feature_details() :: %{
        "GlobalSecondaryIndexes" => list(global_secondary_index_info()()),
        "LocalSecondaryIndexes" => list(local_secondary_index_info()()),
        "SSEDescription" => sse_description(),
        "StreamDescription" => stream_specification(),
        "TimeToLiveDescription" => time_to_live_description()
      }
      
  """
  @type source_table_feature_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type import_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      item_response() :: %{
        "Item" => map()
      }
      
  """
  @type item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_from_backup_output() :: %{
        "TableDescription" => table_description()
      }
      
  """
  @type restore_table_from_backup_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_exception() :: %{
        "ExceptionDescription" => String.t(),
        "ExceptionName" => String.t()
      }
      
  """
  @type failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_description() :: %{
        "GlobalSecondaryIndexes" => list(replica_global_secondary_index_description()()),
        "KMSMasterKeyId" => String.t(),
        "OnDemandThroughputOverride" => on_demand_throughput_override(),
        "ProvisionedThroughputOverride" => provisioned_throughput_override(),
        "RegionName" => String.t(),
        "ReplicaInaccessibleDateTime" => non_neg_integer(),
        "ReplicaStatus" => list(any()),
        "ReplicaStatusDescription" => String.t(),
        "ReplicaStatusPercentProgress" => String.t(),
        "ReplicaTableClassSummary" => table_class_summary()
      }
      
  """
  @type replica_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scan_output() :: %{
        "ConsumedCapacity" => consumed_capacity(),
        "Count" => integer(),
        "Items" => list(map()()),
        "LastEvaluatedKey" => map(),
        "ScannedCount" => integer()
      }
      
  """
  @type scan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_group_member_action() :: %{
        "RegionName" => String.t()
      }
      
  """
  @type delete_replication_group_member_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_group_update() :: %{
        "Create" => create_replication_group_member_action(),
        "Delete" => delete_replication_group_member_action(),
        "Update" => update_replication_group_member_action()
      }
      
  """
  @type replication_group_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transaction_in_progress_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type transaction_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contributor_insights_output() :: %{
        "ContributorInsightsSummaries" => list(contributor_insights_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_contributor_insights_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_description() :: %{
        "BilledSizeBytes" => float(),
        "ClientToken" => String.t(),
        "EndTime" => non_neg_integer(),
        "ExportArn" => String.t(),
        "ExportFormat" => list(any()),
        "ExportManifest" => String.t(),
        "ExportStatus" => list(any()),
        "ExportTime" => non_neg_integer(),
        "ExportType" => list(any()),
        "FailureCode" => String.t(),
        "FailureMessage" => String.t(),
        "IncrementalExportSpecification" => incremental_export_specification(),
        "ItemCount" => float(),
        "S3Bucket" => String.t(),
        "S3BucketOwner" => String.t(),
        "S3Prefix" => String.t(),
        "S3SseAlgorithm" => list(any()),
        "S3SseKmsKeyId" => String.t(),
        "StartTime" => non_neg_integer(),
        "TableArn" => String.t(),
        "TableId" => String.t()
      }
      
  """
  @type export_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_global_secondary_index_action() :: %{
        "IndexName" => String.t(),
        "OnDemandThroughput" => on_demand_throughput(),
        "ProvisionedThroughput" => provisioned_throughput()
      }
      
  """
  @type update_global_secondary_index_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica() :: %{
        "RegionName" => String.t()
      }
      
  """
  @type replica() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contributor_insights_summary() :: %{
        "ContributorInsightsStatus" => list(any()),
        "IndexName" => String.t(),
        "TableName" => String.t()
      }
      
  """
  @type contributor_insights_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_item_input() :: %{
        optional("AttributesToGet") => list(String.t()()),
        optional("ConsistentRead") => boolean(),
        optional("ExpressionAttributeNames") => map(),
        optional("ProjectionExpression") => String.t(),
        optional("ReturnConsumedCapacity") => list(any()),
        required("Key") => map(),
        required("TableName") => String.t()
      }
      
  """
  @type get_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_time_to_live_input() :: %{
        required("TableName") => String.t()
      }
      
  """
  @type describe_time_to_live_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_target_tracking_scaling_policy_configuration_update() :: %{
        "DisableScaleIn" => boolean(),
        "ScaleInCooldown" => integer(),
        "ScaleOutCooldown" => integer(),
        "TargetValue" => float()
      }
      
  """
  @type auto_scaling_target_tracking_scaling_policy_configuration_update() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      update_continuous_backups_input() :: %{
        required("PointInTimeRecoverySpecification") => point_in_time_recovery_specification(),
        required("TableName") => String.t()
      }
      
  """
  @type update_continuous_backups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      archival_summary() :: %{
        "ArchivalBackupArn" => String.t(),
        "ArchivalDateTime" => non_neg_integer(),
        "ArchivalReason" => String.t()
      }
      
  """
  @type archival_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tables_output() :: %{
        "LastEvaluatedTableName" => String.t(),
        "TableNames" => list(String.t()())
      }
      
  """
  @type list_tables_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_export_time_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_export_time_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_value_update() :: %{
        "Action" => list(any()),
        "Value" => list()
      }
      
  """
  @type attribute_value_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_table_output() :: %{
        "ImportTableDescription" => import_table_description()
      }
      
  """
  @type import_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_item_output() :: %{
        "Attributes" => map(),
        "ConsumedCapacity" => consumed_capacity(),
        "ItemCollectionMetrics" => item_collection_metrics()
      }
      
  """
  @type put_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_global_table_settings_output() :: %{
        "GlobalTableName" => String.t(),
        "ReplicaSettings" => list(replica_settings_description()())
      }
      
  """
  @type update_global_table_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type table_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incremental_export_specification() :: %{
        "ExportFromTime" => non_neg_integer(),
        "ExportToTime" => non_neg_integer(),
        "ExportViewType" => list(any())
      }
      
  """
  @type incremental_export_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_table_description() :: %{
        "ClientToken" => String.t(),
        "CloudWatchLogGroupArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "ErrorCount" => float(),
        "FailureCode" => String.t(),
        "FailureMessage" => String.t(),
        "ImportArn" => String.t(),
        "ImportStatus" => list(any()),
        "ImportedItemCount" => float(),
        "InputCompressionType" => list(any()),
        "InputFormat" => list(any()),
        "InputFormatOptions" => input_format_options(),
        "ProcessedItemCount" => float(),
        "ProcessedSizeBytes" => float(),
        "S3BucketSource" => s3_bucket_source(),
        "StartTime" => non_neg_integer(),
        "TableArn" => String.t(),
        "TableCreationParameters" => table_creation_parameters(),
        "TableId" => String.t()
      }
      
  """
  @type import_table_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_table_output() :: %{
        "TableDescription" => table_description()
      }
      
  """
  @type delete_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      index_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type index_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_input() :: %{
        optional("AttributeDefinitions") => list(attribute_definition()()),
        optional("BillingMode") => list(any()),
        optional("DeletionProtectionEnabled") => boolean(),
        optional("GlobalSecondaryIndexUpdates") => list(global_secondary_index_update()()),
        optional("OnDemandThroughput") => on_demand_throughput(),
        optional("ProvisionedThroughput") => provisioned_throughput(),
        optional("ReplicaUpdates") => list(replication_group_update()()),
        optional("SSESpecification") => sse_specification(),
        optional("StreamSpecification") => stream_specification(),
        optional("TableClass") => list(any()),
        required("TableName") => String.t()
      }
      
  """
  @type update_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put() :: %{
        "ConditionExpression" => String.t(),
        "ExpressionAttributeNames" => map(),
        "ExpressionAttributeValues" => map(),
        "Item" => map(),
        "ReturnValuesOnConditionCheckFailure" => list(any()),
        "TableName" => String.t()
      }
      
  """
  @type put() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_statement_request() :: %{
        "ConsistentRead" => boolean(),
        "Parameters" => list(list()()),
        "ReturnValuesOnConditionCheckFailure" => list(any()),
        "Statement" => String.t()
      }
      
  """
  @type batch_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type replica_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_output() :: %{
        "BackupDescription" => backup_description()
      }
      
  """
  @type delete_backup_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_kinesis_streaming_configuration() :: %{
        "ApproximateCreationDateTimePrecision" => list(any())
      }
      
  """
  @type update_kinesis_streaming_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_output() :: %{
        "TableDescription" => table_description()
      }
      
  """
  @type update_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_bucket_source() :: %{
        "S3Bucket" => String.t(),
        "S3BucketOwner" => String.t(),
        "S3KeyPrefix" => String.t()
      }
      
  """
  @type s3_bucket_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backups_output() :: %{
        "BackupSummaries" => list(backup_summary()()),
        "LastEvaluatedBackupArn" => String.t()
      }
      
  """
  @type list_backups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contributor_insights_input() :: %{
        optional("IndexName") => String.t(),
        required("ContributorInsightsAction") => list(any()),
        required("TableName") => String.t()
      }
      
  """
  @type update_contributor_insights_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_replica_auto_scaling_output() :: %{
        "TableAutoScalingDescription" => table_auto_scaling_description()
      }
      
  """
  @type describe_table_replica_auto_scaling_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type export_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_time_to_live_input() :: %{
        required("TableName") => String.t(),
        required("TimeToLiveSpecification") => time_to_live_specification()
      }
      
  """
  @type update_time_to_live_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get() :: %{
        "ExpressionAttributeNames" => map(),
        "Key" => map(),
        "ProjectionExpression" => String.t(),
        "TableName" => String.t()
      }
      
  """
  @type get() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_table_to_point_in_time_output() :: %{
        "ExportDescription" => export_description()
      }
      
  """
  @type export_table_to_point_in_time_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_kinesis_streaming_destination_input() :: %{
        optional("UpdateKinesisStreamingConfiguration") => update_kinesis_streaming_configuration(),
        required("StreamArn") => String.t(),
        required("TableName") => String.t()
      }
      
  """
  @type update_kinesis_streaming_destination_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type export_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_global_secondary_index_action() :: %{
        "IndexName" => String.t()
      }
      
  """
  @type delete_global_secondary_index_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput_override() :: %{
        "ReadCapacityUnits" => float()
      }
      
  """
  @type provisioned_throughput_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_auto_scaling_description() :: %{
        "Replicas" => list(replica_auto_scaling_description()()),
        "TableName" => String.t(),
        "TableStatus" => list(any())
      }
      
  """
  @type table_auto_scaling_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_imports_output() :: %{
        "ImportSummaryList" => list(import_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_imports_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type table_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition_check() :: %{
        "ConditionExpression" => String.t(),
        "ExpressionAttributeNames" => map(),
        "ExpressionAttributeValues" => map(),
        "Key" => map(),
        "ReturnValuesOnConditionCheckFailure" => list(any()),
        "TableName" => String.t()
      }
      
  """
  @type condition_check() :: %{String.t() => any()}

  @type batch_execute_statement_errors() :: request_limit_exceeded() | internal_server_error()

  @type batch_get_item_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_endpoint_exception()

  @type batch_write_item_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_endpoint_exception()
          | item_collection_size_limit_exceeded_exception()

  @type create_backup_errors() ::
          table_not_found_exception()
          | table_in_use_exception()
          | limit_exceeded_exception()
          | internal_server_error()
          | backup_in_use_exception()
          | continuous_backups_unavailable_exception()
          | invalid_endpoint_exception()

  @type create_global_table_errors() ::
          table_not_found_exception()
          | limit_exceeded_exception()
          | internal_server_error()
          | global_table_already_exists_exception()
          | invalid_endpoint_exception()

  @type create_table_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type delete_backup_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | backup_in_use_exception()
          | backup_not_found_exception()
          | invalid_endpoint_exception()

  @type delete_item_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | conditional_check_failed_exception()
          | transaction_conflict_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_endpoint_exception()
          | item_collection_size_limit_exceeded_exception()

  @type delete_resource_policy_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | policy_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type delete_table_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type describe_backup_errors() ::
          internal_server_error() | backup_not_found_exception() | invalid_endpoint_exception()

  @type describe_continuous_backups_errors() ::
          table_not_found_exception() | internal_server_error() | invalid_endpoint_exception()

  @type describe_contributor_insights_errors() ::
          internal_server_error() | resource_not_found_exception()

  @type describe_export_errors() ::
          export_not_found_exception() | limit_exceeded_exception() | internal_server_error()

  @type describe_global_table_errors() ::
          internal_server_error()
          | global_table_not_found_exception()
          | invalid_endpoint_exception()

  @type describe_global_table_settings_errors() ::
          internal_server_error()
          | global_table_not_found_exception()
          | invalid_endpoint_exception()

  @type describe_import_errors() :: import_not_found_exception()

  @type describe_kinesis_streaming_destination_errors() ::
          internal_server_error() | resource_not_found_exception() | invalid_endpoint_exception()

  @type describe_limits_errors() :: internal_server_error() | invalid_endpoint_exception()

  @type describe_table_errors() ::
          internal_server_error() | resource_not_found_exception() | invalid_endpoint_exception()

  @type describe_table_replica_auto_scaling_errors() ::
          internal_server_error() | resource_not_found_exception()

  @type describe_time_to_live_errors() ::
          internal_server_error() | resource_not_found_exception() | invalid_endpoint_exception()

  @type disable_kinesis_streaming_destination_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type enable_kinesis_streaming_destination_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type execute_statement_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | conditional_check_failed_exception()
          | transaction_conflict_exception()
          | duplicate_item_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | item_collection_size_limit_exceeded_exception()

  @type execute_transaction_errors() ::
          transaction_in_progress_exception()
          | request_limit_exceeded()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | transaction_canceled_exception()

  @type export_table_to_point_in_time_errors() ::
          table_not_found_exception()
          | export_conflict_exception()
          | invalid_export_time_exception()
          | limit_exceeded_exception()
          | internal_server_error()
          | point_in_time_recovery_unavailable_exception()

  @type get_item_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_endpoint_exception()

  @type get_resource_policy_errors() ::
          internal_server_error()
          | resource_not_found_exception()
          | policy_not_found_exception()
          | invalid_endpoint_exception()

  @type import_table_errors() ::
          limit_exceeded_exception() | import_conflict_exception() | resource_in_use_exception()

  @type list_backups_errors() :: internal_server_error() | invalid_endpoint_exception()

  @type list_contributor_insights_errors() ::
          internal_server_error() | resource_not_found_exception()

  @type list_exports_errors() :: limit_exceeded_exception() | internal_server_error()

  @type list_global_tables_errors() :: internal_server_error() | invalid_endpoint_exception()

  @type list_imports_errors() :: limit_exceeded_exception()

  @type list_tables_errors() :: internal_server_error() | invalid_endpoint_exception()

  @type list_tags_of_resource_errors() ::
          internal_server_error() | resource_not_found_exception() | invalid_endpoint_exception()

  @type put_item_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | conditional_check_failed_exception()
          | transaction_conflict_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_endpoint_exception()
          | item_collection_size_limit_exceeded_exception()

  @type put_resource_policy_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | policy_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type query_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_endpoint_exception()

  @type restore_table_from_backup_errors() ::
          table_in_use_exception()
          | limit_exceeded_exception()
          | internal_server_error()
          | backup_in_use_exception()
          | backup_not_found_exception()
          | invalid_endpoint_exception()
          | table_already_exists_exception()

  @type restore_table_to_point_in_time_errors() ::
          table_not_found_exception()
          | table_in_use_exception()
          | limit_exceeded_exception()
          | invalid_restore_time_exception()
          | internal_server_error()
          | invalid_endpoint_exception()
          | point_in_time_recovery_unavailable_exception()
          | table_already_exists_exception()

  @type scan_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_endpoint_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type transact_get_items_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | transaction_canceled_exception()
          | invalid_endpoint_exception()

  @type transact_write_items_errors() ::
          transaction_in_progress_exception()
          | request_limit_exceeded()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | transaction_canceled_exception()
          | invalid_endpoint_exception()

  @type untag_resource_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type update_continuous_backups_errors() ::
          table_not_found_exception()
          | internal_server_error()
          | continuous_backups_unavailable_exception()
          | invalid_endpoint_exception()

  @type update_contributor_insights_errors() ::
          internal_server_error() | resource_not_found_exception()

  @type update_global_table_errors() ::
          table_not_found_exception()
          | replica_not_found_exception()
          | internal_server_error()
          | global_table_not_found_exception()
          | replica_already_exists_exception()
          | invalid_endpoint_exception()

  @type update_global_table_settings_errors() ::
          replica_not_found_exception()
          | index_not_found_exception()
          | limit_exceeded_exception()
          | internal_server_error()
          | global_table_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type update_item_errors() ::
          request_limit_exceeded()
          | internal_server_error()
          | conditional_check_failed_exception()
          | transaction_conflict_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_endpoint_exception()
          | item_collection_size_limit_exceeded_exception()

  @type update_kinesis_streaming_destination_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type update_table_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  @type update_table_replica_auto_scaling_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_time_to_live_errors() ::
          limit_exceeded_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | invalid_endpoint_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2012-08-10",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "dynamodb",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "DynamoDB",
      signature_version: "v4",
      signing_name: "dynamodb",
      target_prefix: "DynamoDB_20120810"
    }
  end

  @doc """
  This operation allows you to perform batch reads or writes on data stored in
  DynamoDB, using PartiQL. Each read statement in a `BatchExecuteStatement` must
  specify an equality condition on all key attributes. This enforces that each
  `SELECT` statement in a batch returns at most a single item. The entire batch
  must consist of either read statements or write statements, you cannot mix
  both in one batch.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20BatchExecuteStatement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_execute_statement_input`)
    %{
      optional("ReturnConsumedCapacity") => list(any()),
      required("Statements") => list(batch_statement_request()())
    }
  """

  @spec batch_execute_statement(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_execute_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_execute_statement_errors()}

  def batch_execute_statement(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchExecuteStatement", input, options)
  end

  @doc """
  The `BatchGetItem` operation returns the attributes of one or more items from
  one or more tables. You identify requested items by primary key. A single
  operation can retrieve up to 16 MB of data, which can contain as many as 100
  items. `BatchGetItem` returns a partial result if the response size limit is
  exceeded, the table's provisioned throughput is exceeded, more than 1MB per
  partition is requested, or an internal processing failure occurs. If a partial
  result is returned, the operation returns a value for `UnprocessedKeys`. You
  can use this value to retry the operation starting with the next item to get.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20BatchGetItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_get_item_input`)
    %{
      optional("ReturnConsumedCapacity") => list(any()),
      required("RequestItems") => map()
    }
  """

  @spec batch_get_item(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_get_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_item_errors()}

  def batch_get_item(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetItem", input, options)
  end

  @doc """
  The `BatchWriteItem` operation puts or deletes multiple items in one or more
  tables. A single call to `BatchWriteItem` can transmit up to 16MB of data over
  the network, consisting of up to 25 item put or delete operations. While
  individual items can be up to 400 KB once stored, it's important to note that
  an item's representation might be greater than 400KB while being sent in
  DynamoDB's JSON format for the API call. For more details on this distinction,
  see [Naming Rules and Data
  Types](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html).
  `BatchWriteItem` cannot update items. If you perform a `BatchWriteItem`
  operation on an existing item, that item's values will be overwritten by the
  operation and it will appear like it was updated. To update items, we
  recommend you use the `UpdateItem` action. The individual `PutItem` and
  `DeleteItem` operations specified in `BatchWriteItem` are atomic; however
  `BatchWriteItem` as a whole is not. If any requested operations fail because
  the table's provisioned throughput is exceeded or an internal processing
  failure occurs, the failed operations are returned in the `UnprocessedItems`
  response parameter. You can investigate and optionally resend the requests.
  Typically, you would call `BatchWriteItem` in a loop. Each iteration would
  check for unprocessed items and submit a new `BatchWriteItem` request with
  those unprocessed items until all items have been processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20BatchWriteItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_write_item_input`)
    %{
      optional("ReturnConsumedCapacity") => list(any()),
      optional("ReturnItemCollectionMetrics") => list(any()),
      required("RequestItems") => map()
    }
  """

  @spec batch_write_item(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_write_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_write_item_errors()}

  def batch_write_item(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchWriteItem", input, options)
  end

  @doc """
  Creates a backup for an existing table. Each time you create an on-demand
  backup, the entire table data is backed up. There is no limit to the number of
  on-demand backups that can be taken.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20CreateBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_backup_input`)
    %{
      required("BackupName") => String.t(),
      required("TableName") => String.t()
    }
  """

  @spec create_backup(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_backup_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backup_errors()}

  def create_backup(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBackup", input, options)
  end

  @doc """
  Creates a global table from an existing table. A global table creates a
  replication relationship between two or more DynamoDB tables with the same
  table name in the provided Regions. This documentation is for version
  2017.11.29 (Legacy) of global tables, which should be avoided for new global
  tables. Customers should use [Global Tables version 2019.11.21
  (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html)
  when possible, because it provides greater flexibility, higher efficiency, and
  consumes less write capacity than 2017.11.29 (Legacy). To determine which
  version you're using, see [Determining the global table version you are
  using](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
  To update existing global tables from version 2017.11.29 (Legacy) to version
  2019.11.21 (Current), see [Upgrading global
  tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20CreateGlobalTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_global_table_input`)
    %{
      required("GlobalTableName") => String.t(),
      required("ReplicationGroup") => list(replica()())
    }
  """

  @spec create_global_table(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_global_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_global_table_errors()}

  def create_global_table(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGlobalTable", input, options)
  end

  @doc """
  The `CreateTable` operation adds a new table to your account. In an Amazon Web
  Services account, table names must be unique within each Region. That is, you
  can have two tables with same name if you create the tables in different
  Regions. `CreateTable` is an asynchronous operation. Upon receiving a
  `CreateTable` request, DynamoDB immediately returns a response with a
  `TableStatus` of `CREATING`. After the table is created, DynamoDB sets the
  `TableStatus` to `ACTIVE`. You can perform read and write operations only on
  an `ACTIVE` table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20CreateTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_table_input`)
    %{
      optional("BillingMode") => list(any()),
      optional("DeletionProtectionEnabled") => boolean(),
      optional("GlobalSecondaryIndexes") => list(global_secondary_index()()),
      optional("LocalSecondaryIndexes") => list(local_secondary_index()()),
      optional("OnDemandThroughput") => on_demand_throughput(),
      optional("ProvisionedThroughput") => provisioned_throughput(),
      optional("ResourcePolicy") => String.t(),
      optional("SSESpecification") => sse_specification(),
      optional("StreamSpecification") => stream_specification(),
      optional("TableClass") => list(any()),
      optional("Tags") => list(tag()()),
      required("AttributeDefinitions") => list(attribute_definition()()),
      required("KeySchema") => list(key_schema_element()()),
      required("TableName") => String.t()
    }
  """

  @spec create_table(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_table_errors()}

  def create_table(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTable", input, options)
  end

  @doc """
  Deletes an existing backup of a table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DeleteBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_backup_input`)
    %{
      required("BackupArn") => String.t()
    }
  """

  @spec delete_backup(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_backup_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_errors()}

  def delete_backup(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBackup", input, options)
  end

  @doc """
  Deletes a single item in a table by primary key. You can perform a conditional
  delete operation that deletes the item if it exists, or if it has an expected
  attribute value. In addition to deleting an item, you can also return the
  item's attribute values in the same operation, using the `ReturnValues`
  parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DeleteItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_item_input`)
    %{
      optional("ConditionExpression") => String.t(),
      optional("ConditionalOperator") => list(any()),
      optional("Expected") => map(),
      optional("ExpressionAttributeNames") => map(),
      optional("ExpressionAttributeValues") => map(),
      optional("ReturnConsumedCapacity") => list(any()),
      optional("ReturnItemCollectionMetrics") => list(any()),
      optional("ReturnValues") => list(any()),
      optional("ReturnValuesOnConditionCheckFailure") => list(any()),
      required("Key") => map(),
      required("TableName") => String.t()
    }
  """

  @spec delete_item(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_item_errors()}

  def delete_item(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteItem", input, options)
  end

  @doc """
  Deletes the resource-based policy attached to the resource, which can be a table
  or stream. `DeleteResourcePolicy` is an idempotent operation; running it
  multiple times on the same resource *doesn't* result in an error response,
  unless you specify an `ExpectedRevisionId`, which will then return a
  `PolicyNotFoundException`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DeleteResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_resource_policy_input`)
    %{
      optional("ExpectedRevisionId") => String.t(),
      required("ResourceArn") => String.t()
    }
  """

  @spec delete_resource_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}

  def delete_resource_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  The `DeleteTable` operation deletes a table and all of its items. After a
  `DeleteTable` request, the specified table is in the `DELETING` state until
  DynamoDB completes the deletion. If the table is in the `ACTIVE` state, you
  can delete it. If a table is in `CREATING` or `UPDATING` states, then DynamoDB
  returns a `ResourceInUseException`. If the specified table does not exist,
  DynamoDB returns a `ResourceNotFoundException`. If table is already in the
  `DELETING` state, no error is returned. For global tables, this operation only
  applies to global tables using Version 2019.11.21 (Current version).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DeleteTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_table_input`)
    %{
      required("TableName") => String.t()
    }
  """

  @spec delete_table(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_table_errors()}

  def delete_table(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTable", input, options)
  end

  @doc """
  Describes an existing backup of a table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_backup_input`)
    %{
      required("BackupArn") => String.t()
    }
  """

  @spec describe_backup(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_backup_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_backup_errors()}

  def describe_backup(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBackup", input, options)
  end

  @doc """
  Checks the status of continuous backups and point in time recovery on the
  specified table. Continuous backups are `ENABLED` on all tables at table
  creation. If point in time recovery is enabled, `PointInTimeRecoveryStatus`
  will be set to ENABLED. After continuous backups and point in time recovery
  are enabled, you can restore to any point in time within
  `EarliestRestorableDateTime` and `LatestRestorableDateTime`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeContinuousBackups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_continuous_backups_input`)
    %{
      required("TableName") => String.t()
    }
  """

  @spec describe_continuous_backups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_continuous_backups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_continuous_backups_errors()}

  def describe_continuous_backups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeContinuousBackups", input, options)
  end

  @doc """
  Returns information about contributor insights for a given table or global
  secondary index.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeContributorInsights&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_contributor_insights_input`)
    %{
      optional("IndexName") => String.t(),
      required("TableName") => String.t()
    }
  """

  @spec describe_contributor_insights(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_contributor_insights_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_contributor_insights_errors()}

  def describe_contributor_insights(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeContributorInsights", input, options)
  end

  @doc """
  Returns the regional endpoint information. For more information on policy
  permissions, please see [Internetwork traffic
  privacy](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/inter-network-traffic-privacy.html#inter-network-traffic-DescribeEndpoints).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_endpoints_request`)
    %{
      
    }
  """

  @spec describe_endpoints(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def describe_endpoints(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEndpoints", input, options)
  end

  @doc """
  Describes an existing table export.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeExport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_export_input`)
    %{
      required("ExportArn") => String.t()
    }
  """

  @spec describe_export(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_export_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_export_errors()}

  def describe_export(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeExport", input, options)
  end

  @doc """
  Returns information about the specified global table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeGlobalTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_global_table_input`)
    %{
      required("GlobalTableName") => String.t()
    }
  """

  @spec describe_global_table(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_global_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_global_table_errors()}

  def describe_global_table(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGlobalTable", input, options)
  end

  @doc """
  Describes Region-specific settings for a global table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeGlobalTableSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_global_table_settings_input`)
    %{
      required("GlobalTableName") => String.t()
    }
  """

  @spec describe_global_table_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_global_table_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_global_table_settings_errors()}

  def describe_global_table_settings(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGlobalTableSettings", input, options)
  end

  @doc """
  Represents the properties of the import.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeImport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_import_input`)
    %{
      required("ImportArn") => String.t()
    }
  """

  @spec describe_import(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_import_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_import_errors()}

  def describe_import(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeImport", input, options)
  end

  @doc """
  Returns information about the status of Kinesis streaming.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeKinesisStreamingDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_kinesis_streaming_destination_input`)
    %{
      required("TableName") => String.t()
    }
  """

  @spec describe_kinesis_streaming_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_kinesis_streaming_destination_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_kinesis_streaming_destination_errors()}

  def describe_kinesis_streaming_destination(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeKinesisStreamingDestination", input, options)
  end

  @doc """
  Returns the current provisioned-capacity quotas for your Amazon Web Services
  account in a Region, both for the Region as a whole and for any one DynamoDB
  table that you create there. When you establish an Amazon Web Services
  account, the account has initial quotas on the maximum read capacity units and
  write capacity units that you can provision across all of your DynamoDB tables
  in a given Region. Also, there are per-table quotas that apply when you create
  a table there. For more information, see [Service, Account, and Table
  Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
  page in the *Amazon DynamoDB Developer Guide*. Although you can increase these
  quotas by filing a case at [Amazon Web Services Support
  Center](https://console.aws.amazon.com/support/home#/), obtaining the increase
  is not instantaneous. The `DescribeLimits` action lets you write code to
  compare the capacity you are currently using to those quotas imposed by your
  account so that you have enough time to apply for an increase before you hit a
  quota.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeLimits&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_limits_input`)
    %{
      
    }
  """

  @spec describe_limits(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_limits_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_limits_errors()}

  def describe_limits(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLimits", input, options)
  end

  @doc """
  Returns information about the table, including the current status of the table,
  when it was created, the primary key schema, and any indexes on the table. For
  global tables, this operation only applies to global tables using Version
  2019.11.21 (Current version).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_table_input`)
    %{
      required("TableName") => String.t()
    }
  """

  @spec describe_table(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_table_errors()}

  def describe_table(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTable", input, options)
  end

  @doc """
  Describes auto scaling settings across replicas of the global table at once.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeTableReplicaAutoScaling&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_table_replica_auto_scaling_input`)
    %{
      required("TableName") => String.t()
    }
  """

  @spec describe_table_replica_auto_scaling(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_table_replica_auto_scaling_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_table_replica_auto_scaling_errors()}

  def describe_table_replica_auto_scaling(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTableReplicaAutoScaling", input, options)
  end

  @doc """
  Gives a description of the Time to Live (TTL) status on the specified table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DescribeTimeToLive&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_time_to_live_input`)
    %{
      required("TableName") => String.t()
    }
  """

  @spec describe_time_to_live(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_time_to_live_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_time_to_live_errors()}

  def describe_time_to_live(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTimeToLive", input, options)
  end

  @doc """
  Stops replication from the DynamoDB table to the Kinesis data stream. This is
  done without deleting either of the resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20DisableKinesisStreamingDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:kinesis_streaming_destination_input`)
    %{
      optional("EnableKinesisStreamingConfiguration") => enable_kinesis_streaming_configuration(),
      required("StreamArn") => String.t(),
      required("TableName") => String.t()
    }
  """

  @spec disable_kinesis_streaming_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, kinesis_streaming_destination_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_kinesis_streaming_destination_errors()}

  def disable_kinesis_streaming_destination(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableKinesisStreamingDestination", input, options)
  end

  @doc """
  Starts table data replication to the specified Kinesis data stream at a
  timestamp chosen during the enable workflow. If this operation doesn't return
  results immediately, use DescribeKinesisStreamingDestination to check if
  streaming to the Kinesis data stream is ACTIVE.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20EnableKinesisStreamingDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:kinesis_streaming_destination_input`)
    %{
      optional("EnableKinesisStreamingConfiguration") => enable_kinesis_streaming_configuration(),
      required("StreamArn") => String.t(),
      required("TableName") => String.t()
    }
  """

  @spec enable_kinesis_streaming_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, kinesis_streaming_destination_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_kinesis_streaming_destination_errors()}

  def enable_kinesis_streaming_destination(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableKinesisStreamingDestination", input, options)
  end

  @doc """
  This operation allows you to perform reads and singleton writes on data stored
  in DynamoDB, using PartiQL. For PartiQL reads (`SELECT` statement), if the
  total number of processed items exceeds the maximum dataset size limit of 1
  MB, the read stops and results are returned to the user as a
  `LastEvaluatedKey` value to continue the read in a subsequent operation. If
  the filter criteria in `WHERE` clause does not match any data, the read will
  return an empty result set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ExecuteStatement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:execute_statement_input`)
    %{
      optional("ConsistentRead") => boolean(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("Parameters") => list(list()()),
      optional("ReturnConsumedCapacity") => list(any()),
      optional("ReturnValuesOnConditionCheckFailure") => list(any()),
      required("Statement") => String.t()
    }
  """

  @spec execute_statement(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, execute_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_statement_errors()}

  def execute_statement(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExecuteStatement", input, options)
  end

  @doc """
  This operation allows you to perform transactional reads or writes on data
  stored in DynamoDB, using PartiQL.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ExecuteTransaction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:execute_transaction_input`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("ReturnConsumedCapacity") => list(any()),
      required("TransactStatements") => list(parameterized_statement()())
    }
  """

  @spec execute_transaction(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, execute_transaction_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_transaction_errors()}

  def execute_transaction(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExecuteTransaction", input, options)
  end

  @doc """
  Exports table data to an S3 bucket. The table must have point in time recovery
  enabled, and you can export data from any time within the point in time
  recovery window.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ExportTableToPointInTime&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:export_table_to_point_in_time_input`)
    %{
      optional("ClientToken") => String.t(),
      optional("ExportFormat") => list(any()),
      optional("ExportTime") => non_neg_integer(),
      optional("ExportType") => list(any()),
      optional("IncrementalExportSpecification") => incremental_export_specification(),
      optional("S3BucketOwner") => String.t(),
      optional("S3Prefix") => String.t(),
      optional("S3SseAlgorithm") => list(any()),
      optional("S3SseKmsKeyId") => String.t(),
      required("S3Bucket") => String.t(),
      required("TableArn") => String.t()
    }
  """

  @spec export_table_to_point_in_time(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, export_table_to_point_in_time_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_table_to_point_in_time_errors()}

  def export_table_to_point_in_time(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportTableToPointInTime", input, options)
  end

  @doc """
  The `GetItem` operation returns a set of attributes for the item with the given
  primary key. If there is no matching item, `GetItem` does not return any data
  and there will be no `Item` element in the response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20GetItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_item_input`)
    %{
      optional("AttributesToGet") => list(String.t()()),
      optional("ConsistentRead") => boolean(),
      optional("ExpressionAttributeNames") => map(),
      optional("ProjectionExpression") => String.t(),
      optional("ReturnConsumedCapacity") => list(any()),
      required("Key") => map(),
      required("TableName") => String.t()
    }
  """

  @spec get_item(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_item_errors()}

  def get_item(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetItem", input, options)
  end

  @doc """
  Returns the resource-based policy document attached to the resource, which can
  be a table or stream, in JSON format. `GetResourcePolicy` follows an [
  *eventually consistent*
  ](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html)
  model. The following list describes the outcomes when you issue the
  `GetResourcePolicy` request immediately after issuing another request:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20GetResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_resource_policy_input`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec get_resource_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}

  def get_resource_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Imports table data from an S3 bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ImportTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:import_table_input`)
    %{
      optional("ClientToken") => String.t(),
      optional("InputCompressionType") => list(any()),
      optional("InputFormatOptions") => input_format_options(),
      required("InputFormat") => list(any()),
      required("S3BucketSource") => s3_bucket_source(),
      required("TableCreationParameters") => table_creation_parameters()
    }
  """

  @spec import_table(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, import_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_table_errors()}

  def import_table(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportTable", input, options)
  end

  @doc """
  List DynamoDB backups that are associated with an Amazon Web Services account
  and weren't made with Amazon Web Services Backup. To list these backups for a
  given table, specify `TableName`. `ListBackups` returns a paginated list of
  results with at most 1 MB worth of items in a page. You can also specify a
  maximum number of entries to be returned in a page. In the request, start time
  is inclusive, but end time is exclusive. Note that these boundaries are for
  the time at which the original backup was requested.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ListBackups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_backups_input`)
    %{
      optional("BackupType") => list(any()),
      optional("ExclusiveStartBackupArn") => String.t(),
      optional("Limit") => integer(),
      optional("TableName") => String.t(),
      optional("TimeRangeLowerBound") => non_neg_integer(),
      optional("TimeRangeUpperBound") => non_neg_integer()
    }
  """

  @spec list_backups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_backups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backups_errors()}

  def list_backups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBackups", input, options)
  end

  @doc """
  Returns a list of ContributorInsightsSummary for a table and all its global
  secondary indexes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ListContributorInsights&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_contributor_insights_input`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("TableName") => String.t()
    }
  """

  @spec list_contributor_insights(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_contributor_insights_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contributor_insights_errors()}

  def list_contributor_insights(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListContributorInsights", input, options)
  end

  @doc """
  Lists completed exports within the past 90 days.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ListExports&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_exports_input`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("TableArn") => String.t()
    }
  """

  @spec list_exports(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_exports_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_exports_errors()}

  def list_exports(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListExports", input, options)
  end

  @doc """
  Lists all global tables that have a replica in the specified Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ListGlobalTables&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_global_tables_input`)
    %{
      optional("ExclusiveStartGlobalTableName") => String.t(),
      optional("Limit") => integer(),
      optional("RegionName") => String.t()
    }
  """

  @spec list_global_tables(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_global_tables_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_global_tables_errors()}

  def list_global_tables(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGlobalTables", input, options)
  end

  @doc """
  Lists completed imports within the past 90 days.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ListImports&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_imports_input`)
    %{
      optional("NextToken") => String.t(),
      optional("PageSize") => integer(),
      optional("TableArn") => String.t()
    }
  """

  @spec list_imports(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_imports_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_imports_errors()}

  def list_imports(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListImports", input, options)
  end

  @doc """
  Returns an array of table names associated with the current account and
  endpoint. The output from `ListTables` is paginated, with each page returning
  a maximum of 100 table names.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ListTables&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tables_input`)
    %{
      optional("ExclusiveStartTableName") => String.t(),
      optional("Limit") => integer()
    }
  """

  @spec list_tables(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tables_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tables_errors()}

  def list_tables(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTables", input, options)
  end

  @doc """
  List all tags on an Amazon DynamoDB resource. You can call ListTagsOfResource up
  to 10 times per second, per account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20ListTagsOfResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_of_resource_input`)
    %{
      optional("NextToken") => String.t(),
      required("ResourceArn") => String.t()
    }
  """

  @spec list_tags_of_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_of_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_of_resource_errors()}

  def list_tags_of_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsOfResource", input, options)
  end

  @doc """
  Creates a new item, or replaces an old item with a new item. If an item that has
  the same primary key as the new item already exists in the specified table,
  the new item completely replaces the existing item. You can perform a
  conditional put operation (add a new item if one with the specified primary
  key doesn't exist), or replace an existing item if it has certain attribute
  values. You can return the item's attribute values in the same operation,
  using the `ReturnValues` parameter. When you add an item, the primary key
  attributes are the only required attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20PutItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_item_input`)
    %{
      optional("ConditionExpression") => String.t(),
      optional("ConditionalOperator") => list(any()),
      optional("Expected") => map(),
      optional("ExpressionAttributeNames") => map(),
      optional("ExpressionAttributeValues") => map(),
      optional("ReturnConsumedCapacity") => list(any()),
      optional("ReturnItemCollectionMetrics") => list(any()),
      optional("ReturnValues") => list(any()),
      optional("ReturnValuesOnConditionCheckFailure") => list(any()),
      required("Item") => map(),
      required("TableName") => String.t()
    }
  """

  @spec put_item(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_item_errors()}

  def put_item(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutItem", input, options)
  end

  @doc """
  Attaches a resource-based policy document to the resource, which can be a table
  or stream. When you attach a resource-based policy using this API, the policy
  application is [ *eventually consistent*
  ](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html).
  `PutResourcePolicy` is an idempotent operation; running it multiple times on
  the same resource using the same policy document will return the same revision
  ID. If you specify an `ExpectedRevisionId` that doesn't match the current
  policy's `RevisionId`, the `PolicyNotFoundException` will be returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20PutResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_resource_policy_input`)
    %{
      optional("ConfirmRemoveSelfResourceAccess") => boolean(),
      optional("ExpectedRevisionId") => String.t(),
      required("Policy") => String.t(),
      required("ResourceArn") => String.t()
    }
  """

  @spec put_resource_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}

  def put_resource_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  You must provide the name of the partition key attribute and a single value for
  that attribute. `Query` returns all items with that partition key value.
  Optionally, you can provide a sort key attribute and use a comparison operator
  to refine the search results. Use the `KeyConditionExpression` parameter to
  provide a specific value for the partition key. The `Query` operation will
  return all of the items from the table or index with that partition key value.
  You can optionally narrow the scope of the `Query` operation by specifying a
  sort key value and a comparison operator in `KeyConditionExpression`. To
  further refine the `Query` results, you can optionally provide a
  `FilterExpression`. A `FilterExpression` determines which items within the
  results should be returned to you. All of the other results are discarded.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20Query&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:query_input`)
    %{
      optional("AttributesToGet") => list(String.t()()),
      optional("ConditionalOperator") => list(any()),
      optional("ConsistentRead") => boolean(),
      optional("ExclusiveStartKey") => map(),
      optional("ExpressionAttributeNames") => map(),
      optional("ExpressionAttributeValues") => map(),
      optional("FilterExpression") => String.t(),
      optional("IndexName") => String.t(),
      optional("KeyConditionExpression") => String.t(),
      optional("KeyConditions") => map(),
      optional("Limit") => integer(),
      optional("ProjectionExpression") => String.t(),
      optional("QueryFilter") => map(),
      optional("ReturnConsumedCapacity") => list(any()),
      optional("ScanIndexForward") => boolean(),
      optional("Select") => list(any()),
      required("TableName") => String.t()
    }
  """

  @spec query(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, query_errors()}

  def query(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "Query", input, options)
  end

  @doc """
  Creates a new table from an existing backup. Any number of users can execute up
  to 50 concurrent restores (any type of restore) in a given account. You can
  call `RestoreTableFromBackup` at a maximum rate of 10 times per second.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20RestoreTableFromBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:restore_table_from_backup_input`)
    %{
      optional("BillingModeOverride") => list(any()),
      optional("GlobalSecondaryIndexOverride") => list(global_secondary_index()()),
      optional("LocalSecondaryIndexOverride") => list(local_secondary_index()()),
      optional("OnDemandThroughputOverride") => on_demand_throughput(),
      optional("ProvisionedThroughputOverride") => provisioned_throughput(),
      optional("SSESpecificationOverride") => sse_specification(),
      required("BackupArn") => String.t(),
      required("TargetTableName") => String.t()
    }
  """

  @spec restore_table_from_backup(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, restore_table_from_backup_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_table_from_backup_errors()}

  def restore_table_from_backup(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreTableFromBackup", input, options)
  end

  @doc """
  Restores the specified table to the specified point in time within
  `EarliestRestorableDateTime` and `LatestRestorableDateTime`. You can restore
  your table to any point in time during the last 35 days. Any number of users
  can execute up to 50 concurrent restores (any type of restore) in a given
  account. When you restore using point in time recovery, DynamoDB restores your
  table data to the state based on the selected date and time
  (day:hour:minute:second) to a new table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20RestoreTableToPointInTime&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:restore_table_to_point_in_time_input`)
    %{
      optional("BillingModeOverride") => list(any()),
      optional("GlobalSecondaryIndexOverride") => list(global_secondary_index()()),
      optional("LocalSecondaryIndexOverride") => list(local_secondary_index()()),
      optional("OnDemandThroughputOverride") => on_demand_throughput(),
      optional("ProvisionedThroughputOverride") => provisioned_throughput(),
      optional("RestoreDateTime") => non_neg_integer(),
      optional("SSESpecificationOverride") => sse_specification(),
      optional("SourceTableArn") => String.t(),
      optional("SourceTableName") => String.t(),
      optional("UseLatestRestorableTime") => boolean(),
      required("TargetTableName") => String.t()
    }
  """

  @spec restore_table_to_point_in_time(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, restore_table_to_point_in_time_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_table_to_point_in_time_errors()}

  def restore_table_to_point_in_time(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreTableToPointInTime", input, options)
  end

  @doc """
  The `Scan` operation returns one or more items and item attributes by accessing
  every item in a table or a secondary index. To have DynamoDB return fewer
  items, you can provide a `FilterExpression` operation. If the total size of
  scanned items exceeds the maximum dataset size limit of 1 MB, the scan
  completes and results are returned to the user. The `LastEvaluatedKey` value
  is also returned and the requestor can use the `LastEvaluatedKey` to continue
  the scan in a subsequent operation. Each scan response also includes number of
  items that were scanned (ScannedCount) as part of the request. If using a
  `FilterExpression`, a scan result can result in no items meeting the criteria
  and the `Count` will result in zero. If you did not use a `FilterExpression`
  in the scan request, then `Count` is the same as `ScannedCount`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20Scan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:scan_input`)
    %{
      optional("AttributesToGet") => list(String.t()()),
      optional("ConditionalOperator") => list(any()),
      optional("ConsistentRead") => boolean(),
      optional("ExclusiveStartKey") => map(),
      optional("ExpressionAttributeNames") => map(),
      optional("ExpressionAttributeValues") => map(),
      optional("FilterExpression") => String.t(),
      optional("IndexName") => String.t(),
      optional("Limit") => integer(),
      optional("ProjectionExpression") => String.t(),
      optional("ReturnConsumedCapacity") => list(any()),
      optional("ScanFilter") => map(),
      optional("Segment") => integer(),
      optional("Select") => list(any()),
      optional("TotalSegments") => integer(),
      required("TableName") => String.t()
    }
  """

  @spec scan(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, scan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, scan_errors()}

  def scan(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "Scan", input, options)
  end

  @doc """
  Associate a set of tags with an Amazon DynamoDB resource. You can then activate
  these user-defined tags so that they appear on the Billing and Cost Management
  console for cost allocation tracking. You can call TagResource up to five
  times per second, per account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_input`)
    %{
      required("ResourceArn") => String.t(),
      required("Tags") => list(tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  `TransactGetItems` is a synchronous operation that atomically retrieves multiple
  items from one or more tables (but not from indexes) in a single account and
  Region. A `TransactGetItems` call can contain up to 100 `TransactGetItem`
  objects, each of which contains a `Get` structure that specifies an item to
  retrieve from a table in the account and Region. A call to `TransactGetItems`
  cannot retrieve items from tables in more than one Amazon Web Services account
  or Region. The aggregate size of the items in the transaction cannot exceed 4
  MB. DynamoDB rejects the entire `TransactGetItems` request if any of the
  following is true:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20TransactGetItems&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:transact_get_items_input`)
    %{
      optional("ReturnConsumedCapacity") => list(any()),
      required("TransactItems") => list(transact_get_item()())
    }
  """

  @spec transact_get_items(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, transact_get_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, transact_get_items_errors()}

  def transact_get_items(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TransactGetItems", input, options)
  end

  @doc """
  `TransactWriteItems` is a synchronous write operation that groups up to 100
  action requests. These actions can target items in different tables, but not
  in different Amazon Web Services accounts or Regions, and no two actions can
  target the same item. For example, you cannot both `ConditionCheck` and
  `Update` the same item. The aggregate size of the items in the transaction
  cannot exceed 4 MB. The actions are completed atomically so that either all of
  them succeed, or all of them fail. They are defined by the following objects:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20TransactWriteItems&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:transact_write_items_input`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("ReturnConsumedCapacity") => list(any()),
      optional("ReturnItemCollectionMetrics") => list(any()),
      required("TransactItems") => list(transact_write_item()())
    }
  """

  @spec transact_write_items(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, transact_write_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, transact_write_items_errors()}

  def transact_write_items(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TransactWriteItems", input, options)
  end

  @doc """
  Removes the association of tags from an Amazon DynamoDB resource. You can call
  `UntagResource` up to five times per second, per account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_input`)
    %{
      required("ResourceArn") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  `UpdateContinuousBackups` enables or disables point in time recovery for the
  specified table. A successful `UpdateContinuousBackups` call returns the
  current `ContinuousBackupsDescription`. Continuous backups are `ENABLED` on
  all tables at table creation. If point in time recovery is enabled,
  `PointInTimeRecoveryStatus` will be set to ENABLED. Once continuous backups
  and point in time recovery are enabled, you can restore to any point in time
  within `EarliestRestorableDateTime` and `LatestRestorableDateTime`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UpdateContinuousBackups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_continuous_backups_input`)
    %{
      required("PointInTimeRecoverySpecification") => point_in_time_recovery_specification(),
      required("TableName") => String.t()
    }
  """

  @spec update_continuous_backups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_continuous_backups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_continuous_backups_errors()}

  def update_continuous_backups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateContinuousBackups", input, options)
  end

  @doc """
  Updates the status for contributor insights for a specific table or index.
  CloudWatch Contributor Insights for DynamoDB graphs display the partition key
  and (if applicable) sort key of frequently accessed items and frequently
  throttled items in plaintext. If you require the use of Amazon Web Services
  Key Management Service (KMS) to encrypt this table’s partition key and sort
  key data with an Amazon Web Services managed key or customer managed key, you
  should not enable CloudWatch Contributor Insights for DynamoDB for this table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UpdateContributorInsights&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_contributor_insights_input`)
    %{
      optional("IndexName") => String.t(),
      required("ContributorInsightsAction") => list(any()),
      required("TableName") => String.t()
    }
  """

  @spec update_contributor_insights(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_contributor_insights_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contributor_insights_errors()}

  def update_contributor_insights(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateContributorInsights", input, options)
  end

  @doc """
  Adds or removes replicas in the specified global table. The global table must
  already exist to be able to use this operation. Any replica to be added must
  be empty, have the same name as the global table, have the same key schema,
  have DynamoDB Streams enabled, and have the same provisioned and maximum write
  capacity units. This documentation is for version 2017.11.29 (Legacy) of
  global tables, which should be avoided for new global tables. Customers should
  use [Global Tables version 2019.11.21
  (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html)
  when possible, because it provides greater flexibility, higher efficiency, and
  consumes less write capacity than 2017.11.29 (Legacy). To determine which
  version you're using, see [Determining the global table version you are
  using](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
  To update existing global tables from version 2017.11.29 (Legacy) to version
  2019.11.21 (Current), see [Upgrading global
  tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).
  For global tables, this operation only applies to global tables using Version
  2019.11.21 (Current version). If you are using global tables [Version
  2019.11.21](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html)
  you can use
  [UpdateTable](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_UpdateTable.html)
  instead. Although you can use `UpdateGlobalTable` to add replicas and remove
  replicas in a single request, for simplicity we recommend that you issue
  separate requests for adding or removing replicas.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UpdateGlobalTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_global_table_input`)
    %{
      required("GlobalTableName") => String.t(),
      required("ReplicaUpdates") => list(replica_update()())
    }
  """

  @spec update_global_table(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_global_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_global_table_errors()}

  def update_global_table(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGlobalTable", input, options)
  end

  @doc """
  Updates settings for a global table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UpdateGlobalTableSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_global_table_settings_input`)
    %{
      optional("GlobalTableBillingMode") => list(any()),
      optional("GlobalTableGlobalSecondaryIndexSettingsUpdate") => list(global_table_global_secondary_index_settings_update()()),
      optional("GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate") => auto_scaling_settings_update(),
      optional("GlobalTableProvisionedWriteCapacityUnits") => float(),
      optional("ReplicaSettingsUpdate") => list(replica_settings_update()()),
      required("GlobalTableName") => String.t()
    }
  """

  @spec update_global_table_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_global_table_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_global_table_settings_errors()}

  def update_global_table_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGlobalTableSettings", input, options)
  end

  @doc """
  Edits an existing item's attributes, or adds a new item to the table if it does
  not already exist. You can put, delete, or add attribute values. You can also
  perform a conditional update on an existing item (insert a new attribute
  name-value pair if it doesn't exist, or replace an existing name-value pair if
  it has certain expected attribute values).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UpdateItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_item_input`)
    %{
      optional("AttributeUpdates") => map(),
      optional("ConditionExpression") => String.t(),
      optional("ConditionalOperator") => list(any()),
      optional("Expected") => map(),
      optional("ExpressionAttributeNames") => map(),
      optional("ExpressionAttributeValues") => map(),
      optional("ReturnConsumedCapacity") => list(any()),
      optional("ReturnItemCollectionMetrics") => list(any()),
      optional("ReturnValues") => list(any()),
      optional("ReturnValuesOnConditionCheckFailure") => list(any()),
      optional("UpdateExpression") => String.t(),
      required("Key") => map(),
      required("TableName") => String.t()
    }
  """

  @spec update_item(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_item_errors()}

  def update_item(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateItem", input, options)
  end

  @doc """
  The command to update the Kinesis stream destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UpdateKinesisStreamingDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_kinesis_streaming_destination_input`)
    %{
      optional("UpdateKinesisStreamingConfiguration") => update_kinesis_streaming_configuration(),
      required("StreamArn") => String.t(),
      required("TableName") => String.t()
    }
  """

  @spec update_kinesis_streaming_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_kinesis_streaming_destination_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_kinesis_streaming_destination_errors()}

  def update_kinesis_streaming_destination(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateKinesisStreamingDestination", input, options)
  end

  @doc """
  Modifies the provisioned throughput settings, global secondary indexes, or
  DynamoDB Streams settings for a given table. For global tables, this operation
  only applies to global tables using Version 2019.11.21 (Current version).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UpdateTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_table_input`)
    %{
      optional("AttributeDefinitions") => list(attribute_definition()()),
      optional("BillingMode") => list(any()),
      optional("DeletionProtectionEnabled") => boolean(),
      optional("GlobalSecondaryIndexUpdates") => list(global_secondary_index_update()()),
      optional("OnDemandThroughput") => on_demand_throughput(),
      optional("ProvisionedThroughput") => provisioned_throughput(),
      optional("ReplicaUpdates") => list(replication_group_update()()),
      optional("SSESpecification") => sse_specification(),
      optional("StreamSpecification") => stream_specification(),
      optional("TableClass") => list(any()),
      required("TableName") => String.t()
    }
  """

  @spec update_table(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_table_errors()}

  def update_table(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTable", input, options)
  end

  @doc """
  Updates auto scaling settings on your global tables at once.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UpdateTableReplicaAutoScaling&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_table_replica_auto_scaling_input`)
    %{
      optional("GlobalSecondaryIndexUpdates") => list(global_secondary_index_auto_scaling_update()()),
      optional("ProvisionedWriteCapacityAutoScalingUpdate") => auto_scaling_settings_update(),
      optional("ReplicaUpdates") => list(replica_auto_scaling_update()()),
      required("TableName") => String.t()
    }
  """

  @spec update_table_replica_auto_scaling(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_table_replica_auto_scaling_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_table_replica_auto_scaling_errors()}

  def update_table_replica_auto_scaling(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTableReplicaAutoScaling", input, options)
  end

  @doc """
  The `UpdateTimeToLive` method enables or disables Time to Live (TTL) for the
  specified table. A successful `UpdateTimeToLive` call returns the current
  `TimeToLiveSpecification`. It can take up to one hour for the change to fully
  process. Any additional `UpdateTimeToLive` calls for the same table during
  this one hour duration result in a `ValidationException`. TTL compares the
  current time in epoch time format to the time stored in the TTL attribute of
  an item. If the epoch time value stored in the attribute is less than the
  current time, the item is marked as expired and subsequently deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dynamodb%20UpdateTimeToLive&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_time_to_live_input`)
    %{
      required("TableName") => String.t(),
      required("TimeToLiveSpecification") => time_to_live_specification()
    }
  """

  @spec update_time_to_live(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_time_to_live_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_time_to_live_errors()}

  def update_time_to_live(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTimeToLive", input, options)
  end
end
