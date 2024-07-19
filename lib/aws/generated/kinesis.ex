# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kinesis do
  @moduledoc """
  Amazon Kinesis Data Streams Service API Reference
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      kms_disabled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_shards_output() :: %{
        "NextToken" => String.t(),
        "Shards" => list(shard()())
      }
      
  """
  @type list_shards_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      consumer_description() :: %{
        "ConsumerARN" => String.t(),
        "ConsumerCreationTimestamp" => non_neg_integer(),
        "ConsumerName" => String.t(),
        "ConsumerStatus" => list(any()),
        "StreamARN" => String.t()
      }
      
  """
  @type consumer_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record() :: %{
        "ApproximateArrivalTimestamp" => non_neg_integer(),
        "Data" => binary(),
        "EncryptionType" => list(any()),
        "PartitionKey" => String.t(),
        "SequenceNumber" => String.t()
      }
      
  """
  @type record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_limits_output() :: %{
        "OnDemandStreamCount" => integer(),
        "OnDemandStreamCountLimit" => integer(),
        "OpenShardCount" => integer(),
        "ShardLimit" => integer()
      }
      
  """
  @type describe_limits_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_failure_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_enhanced_monitoring_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("ShardLevelMetrics") => list(list(any())())
      }
      
  """
  @type enable_enhanced_monitoring_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_shards_input() :: %{
        optional("ExclusiveStartShardId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ShardFilter") => shard_filter(),
        optional("StreamARN") => String.t(),
        optional("StreamCreationTimestamp") => non_neg_integer(),
        optional("StreamName") => String.t()
      }
      
  """
  @type list_shards_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_opt_in_required() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_opt_in_required() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stream_consumers_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StreamCreationTimestamp") => non_neg_integer(),
        required("StreamARN") => String.t()
      }
      
  """
  @type list_stream_consumers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_output() :: %{
        "Policy" => String.t()
      }
      
  """
  @type get_resource_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      starting_position() :: %{
        "SequenceNumber" => String.t(),
        "Timestamp" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type starting_position() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_shard_count_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("ScalingType") => list(any()),
        required("TargetShardCount") => integer()
      }
      
  """
  @type update_shard_count_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_stream_output() :: %{
        "HasMoreTags" => boolean(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_description() :: %{
        "EncryptionType" => list(any()),
        "EnhancedMonitoring" => list(enhanced_metrics()()),
        "HasMoreShards" => boolean(),
        "KeyId" => String.t(),
        "RetentionPeriodHours" => integer(),
        "Shards" => list(shard()()),
        "StreamARN" => String.t(),
        "StreamCreationTimestamp" => non_neg_integer(),
        "StreamModeDetails" => stream_mode_details(),
        "StreamName" => String.t(),
        "StreamStatus" => list(any())
      }
      
  """
  @type stream_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decrease_stream_retention_period_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("RetentionPeriodHours") => integer()
      }
      
  """
  @type decrease_stream_retention_period_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_description_summary() :: %{
        "ConsumerCount" => integer(),
        "EncryptionType" => list(any()),
        "EnhancedMonitoring" => list(enhanced_metrics()()),
        "KeyId" => String.t(),
        "OpenShardCount" => integer(),
        "RetentionPeriodHours" => integer(),
        "StreamARN" => String.t(),
        "StreamCreationTimestamp" => non_neg_integer(),
        "StreamModeDetails" => stream_mode_details(),
        "StreamName" => String.t(),
        "StreamStatus" => list(any())
      }
      
  """
  @type stream_description_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_stream_consumer_input() :: %{
        optional("ConsumerARN") => String.t(),
        optional("ConsumerName") => String.t(),
        optional("StreamARN") => String.t()
      }
      
  """
  @type deregister_stream_consumer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      increase_stream_retention_period_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("RetentionPeriodHours") => integer()
      }
      
  """
  @type increase_stream_retention_period_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stream_input() :: %{
        optional("EnforceConsumerDeletion") => boolean(),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }
      
  """
  @type delete_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_input() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type delete_resource_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_records_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("Records") => list(put_records_request_entry()())
      }
      
  """
  @type put_records_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_records_output() :: %{
        "ChildShards" => list(child_shard()()),
        "MillisBehindLatest" => float(),
        "NextShardIterator" => String.t(),
        "Records" => list(record()())
      }
      
  """
  @type get_records_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_stream_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type add_tags_to_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streams_output() :: %{
        "HasMoreStreams" => boolean(),
        "NextToken" => String.t(),
        "StreamNames" => list(String.t()()),
        "StreamSummaries" => list(stream_summary()())
      }
      
  """
  @type list_streams_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_next_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type expired_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_stream_consumer_output() :: %{
        "Consumer" => consumer()
      }
      
  """
  @type register_stream_consumer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hash_key_range() :: %{
        "EndingHashKey" => String.t(),
        "StartingHashKey" => String.t()
      }
      
  """
  @type hash_key_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type provisioned_throughput_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_records_result_entry() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "SequenceNumber" => String.t(),
        "ShardId" => String.t()
      }
      
  """
  @type put_records_result_entry() :: %{String.t() => any()}

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
      
      put_resource_policy_input() :: %{
        required("Policy") => String.t(),
        required("ResourceARN") => String.t()
      }
      
  """
  @type put_resource_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_stream_consumer_input() :: %{
        required("ConsumerName") => String.t(),
        required("StreamARN") => String.t()
      }
      
  """
  @type register_stream_consumer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_shard_iterator_input() :: %{
        optional("StartingSequenceNumber") => String.t(),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        optional("Timestamp") => non_neg_integer(),
        required("ShardId") => String.t(),
        required("ShardIteratorType") => list(any())
      }
      
  """
  @type get_shard_iterator_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stream_consumer_input() :: %{
        optional("ConsumerARN") => String.t(),
        optional("ConsumerName") => String.t(),
        optional("StreamARN") => String.t()
      }
      
  """
  @type describe_stream_consumer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_stream_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type remove_tags_from_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      merge_shards_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("AdjacentShardToMerge") => String.t(),
        required("ShardToMerge") => String.t()
      }
      
  """
  @type merge_shards_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_shard_iterator_output() :: %{
        "ShardIterator" => String.t()
      }
      
  """
  @type get_shard_iterator_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_iterator_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type expired_iterator_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stream_summary_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }
      
  """
  @type describe_stream_summary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stream_consumers_output() :: %{
        "Consumers" => list(consumer()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_stream_consumers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_limits_input() :: %{}
      
  """
  @type describe_limits_input() :: %{}

  @typedoc """

  ## Example:
      
      kms_access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_output() :: %{
        "EncryptionType" => list(any()),
        "SequenceNumber" => String.t(),
        "ShardId" => String.t()
      }
      
  """
  @type put_record_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streams_input() :: %{
        optional("ExclusiveStartStreamName") => String.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shard() :: %{
        "AdjacentParentShardId" => String.t(),
        "HashKeyRange" => hash_key_range(),
        "ParentShardId" => String.t(),
        "SequenceNumberRange" => sequence_number_range(),
        "ShardId" => String.t()
      }
      
  """
  @type shard() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribe_to_shard_input() :: %{
        required("ConsumerARN") => String.t(),
        required("ShardId") => String.t(),
        required("StartingPosition") => starting_position()
      }
      
  """
  @type subscribe_to_shard_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stream_output() :: %{
        "StreamDescription" => stream_description()
      }
      
  """
  @type describe_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_stream_encryption_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("EncryptionType") => list(any()),
        required("KeyId") => String.t()
      }
      
  """
  @type stop_stream_encryption_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_records_input() :: %{
        optional("Limit") => integer(),
        optional("StreamARN") => String.t(),
        required("ShardIterator") => String.t()
      }
      
  """
  @type get_records_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_mode_details() :: %{
        "StreamMode" => list(any())
      }
      
  """
  @type stream_mode_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_stream_input() :: %{
        optional("ExclusiveStartTagKey") => String.t(),
        optional("Limit") => integer(),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }
      
  """
  @type list_tags_for_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enhanced_monitoring_output() :: %{
        "CurrentShardLevelMetrics" => list(list(any())()),
        "DesiredShardLevelMetrics" => list(list(any())()),
        "StreamARN" => String.t(),
        "StreamName" => String.t()
      }
      
  """
  @type enhanced_monitoring_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_input() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type get_resource_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stream_mode_input() :: %{
        required("StreamARN") => String.t(),
        required("StreamModeDetails") => stream_mode_details()
      }
      
  """
  @type update_stream_mode_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sequence_number_range() :: %{
        "EndingSequenceNumber" => String.t(),
        "StartingSequenceNumber" => String.t()
      }
      
  """
  @type sequence_number_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribe_to_shard_event() :: %{
        "ChildShards" => list(child_shard()()),
        "ContinuationSequenceNumber" => String.t(),
        "MillisBehindLatest" => float(),
        "Records" => list(record()())
      }
      
  """
  @type subscribe_to_shard_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      child_shard() :: %{
        "HashKeyRange" => hash_key_range(),
        "ParentShards" => list(String.t()()),
        "ShardId" => String.t()
      }
      
  """
  @type child_shard() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_summary() :: %{
        "StreamARN" => String.t(),
        "StreamCreationTimestamp" => non_neg_integer(),
        "StreamModeDetails" => stream_mode_details(),
        "StreamName" => String.t(),
        "StreamStatus" => list(any())
      }
      
  """
  @type stream_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shard_filter() :: %{
        "ShardId" => String.t(),
        "Timestamp" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type shard_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      consumer() :: %{
        "ConsumerARN" => String.t(),
        "ConsumerCreationTimestamp" => non_neg_integer(),
        "ConsumerName" => String.t(),
        "ConsumerStatus" => list(any())
      }
      
  """
  @type consumer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stream_input() :: %{
        optional("ShardCount") => integer(),
        optional("StreamModeDetails") => stream_mode_details(),
        required("StreamName") => String.t()
      }
      
  """
  @type create_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_records_request_entry() :: %{
        "Data" => binary(),
        "ExplicitHashKey" => String.t(),
        "PartitionKey" => String.t()
      }
      
  """
  @type put_records_request_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_stream_encryption_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("EncryptionType") => list(any()),
        required("KeyId") => String.t()
      }
      
  """
  @type start_stream_encryption_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_enhanced_monitoring_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("ShardLevelMetrics") => list(list(any())())
      }
      
  """
  @type disable_enhanced_monitoring_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_shard_count_output() :: %{
        "CurrentShardCount" => integer(),
        "StreamARN" => String.t(),
        "StreamName" => String.t(),
        "TargetShardCount" => integer()
      }
      
  """
  @type update_shard_count_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stream_consumer_output() :: %{
        "ConsumerDescription" => consumer_description()
      }
      
  """
  @type describe_stream_consumer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enhanced_metrics() :: %{
        "ShardLevelMetrics" => list(list(any())())
      }
      
  """
  @type enhanced_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      split_shard_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("NewStartingHashKey") => String.t(),
        required("ShardToSplit") => String.t()
      }
      
  """
  @type split_shard_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_input() :: %{
        optional("ExplicitHashKey") => String.t(),
        optional("SequenceNumberForOrdering") => String.t(),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("Data") => binary(),
        required("PartitionKey") => String.t()
      }
      
  """
  @type put_record_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_invalid_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stream_input() :: %{
        optional("ExclusiveStartShardId") => String.t(),
        optional("Limit") => integer(),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }
      
  """
  @type describe_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribe_to_shard_output() :: %{
        "EventStream" => list()
      }
      
  """
  @type subscribe_to_shard_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_records_output() :: %{
        "EncryptionType" => list(any()),
        "FailedRecordCount" => integer(),
        "Records" => list(put_records_result_entry()())
      }
      
  """
  @type put_records_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stream_summary_output() :: %{
        "StreamDescriptionSummary" => stream_description_summary()
      }
      
  """
  @type describe_stream_summary_output() :: %{String.t() => any()}

  @type add_tags_to_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_stream_errors() ::
          limit_exceeded_exception() | invalid_argument_exception() | resource_in_use_exception()

  @type decrease_stream_retention_period_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_resource_policy_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type deregister_stream_consumer_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()

  @type describe_limits_errors() :: limit_exceeded_exception()

  @type describe_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type describe_stream_consumer_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()

  @type describe_stream_summary_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disable_enhanced_monitoring_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type enable_enhanced_monitoring_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type get_records_errors() ::
          kms_invalid_state_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | expired_iterator_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | kms_disabled_exception()

  @type get_resource_policy_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_shard_iterator_errors() ::
          invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type increase_stream_retention_period_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type list_shards_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | expired_next_token_exception()
          | resource_in_use_exception()

  @type list_stream_consumers_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | expired_next_token_exception()
          | resource_in_use_exception()

  @type list_streams_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | expired_next_token_exception()

  @type list_tags_for_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type merge_shards_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type put_record_errors() ::
          kms_invalid_state_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | kms_disabled_exception()

  @type put_records_errors() ::
          kms_invalid_state_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | kms_disabled_exception()

  @type put_resource_policy_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type register_stream_consumer_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type remove_tags_from_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type split_shard_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type start_stream_encryption_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | kms_disabled_exception()

  @type stop_stream_encryption_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type subscribe_to_shard_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_shard_count_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_stream_mode_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2013-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesis",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Kinesis",
      signature_version: "v4",
      signing_name: "kinesis",
      target_prefix: "Kinesis_20131202"
    }
  end

  @doc """
  Adds or updates tags for the specified Kinesis data stream. You can assign up to
  50 tags to a data stream. When invoking this API, you must use either the
  `StreamARN` or the `StreamName` parameter, or both. It is recommended that you
  use the `StreamARN` input parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20AddTagsToStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:add_tags_to_stream_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("Tags") => map()
    }
  """

  @spec add_tags_to_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_to_stream_errors()}

  def add_tags_to_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTagsToStream", input, options)
  end

  @doc """
  Creates a Kinesis data stream. A stream captures and transports data records
  that are continuously emitted from different data sources or *producers*.
  Scale-out within a stream is explicitly supported by means of shards, which
  are uniquely identified groups of data records in a stream. You can create
  your data stream using either on-demand or provisioned capacity mode. Data
  streams with an on-demand mode require no capacity planning and automatically
  scale to handle gigabytes of write and read throughput per minute. With the
  on-demand mode, Kinesis Data Streams automatically manages the shards in order
  to provide the necessary throughput. For the data streams with a provisioned
  mode, you must specify the number of shards for the data stream. Each shard
  can support reads up to five transactions per second, up to a maximum data
  read total of 2 MiB per second. Each shard can support writes up to 1,000
  records per second, up to a maximum data write total of 1 MiB per second. If
  the amount of data input increases or decreases, you can add or remove shards.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20CreateStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_stream_input`)
    %{
      optional("ShardCount") => integer(),
      optional("StreamModeDetails") => stream_mode_details(),
      required("StreamName") => String.t()
    }
  """

  @spec create_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stream_errors()}

  def create_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStream", input, options)
  end

  @doc """
  Decreases the Kinesis data stream's retention period, which is the length of
  time data records are accessible after they are added to the stream. The
  minimum value of a stream's retention period is 24 hours. When invoking this
  API, you must use either the `StreamARN` or the `StreamName` parameter, or
  both. It is recommended that you use the `StreamARN` input parameter when you
  invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20DecreaseStreamRetentionPeriod&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:decrease_stream_retention_period_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("RetentionPeriodHours") => integer()
    }
  """

  @spec decrease_stream_retention_period(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, decrease_stream_retention_period_errors()}

  def decrease_stream_retention_period(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DecreaseStreamRetentionPeriod", input, options)
  end

  @doc """
  Delete a policy for the specified data stream or consumer. Request patterns can
  be one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20DeleteResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_resource_policy_input`)
    %{
      required("ResourceARN") => String.t()
    }
  """

  @spec delete_resource_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}

  def delete_resource_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a Kinesis data stream and all its shards and data. You must shut down
  any applications that are operating on the stream before you delete the
  stream. If an application attempts to operate on a deleted stream, it receives
  the exception `ResourceNotFoundException`. When invoking this API, you must
  use either the `StreamARN` or the `StreamName` parameter, or both. It is
  recommended that you use the `StreamARN` input parameter when you invoke this
  API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20DeleteStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_stream_input`)
    %{
      optional("EnforceConsumerDeletion") => boolean(),
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t()
    }
  """

  @spec delete_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stream_errors()}

  def delete_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteStream", input, options)
  end

  @doc """
  To deregister a consumer, provide its ARN. Alternatively, you can provide the
  ARN of the data stream and the name you gave the consumer when you registered
  it. You may also provide all three parameters, as long as they don't conflict
  with each other. If you don't know the name or ARN of the consumer that you
  want to deregister, you can use the `ListStreamConsumers` operation to get a
  list of the descriptions of all the consumers that are currently registered
  with a given data stream. The description of a consumer contains its name and
  ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20DeregisterStreamConsumer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deregister_stream_consumer_input`)
    %{
      optional("ConsumerARN") => String.t(),
      optional("ConsumerName") => String.t(),
      optional("StreamARN") => String.t()
    }
  """

  @spec deregister_stream_consumer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_stream_consumer_errors()}

  def deregister_stream_consumer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterStreamConsumer", input, options)
  end

  @doc """
  Describes the shard limits and usage for the account. If you update your account
  limits, the old limits might be returned for a few minutes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20DescribeLimits&this_doc_guide=API%2520Reference)

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
  Describes the specified Kinesis data stream. This API has been revised. It's
  highly recommended that you use the `DescribeStreamSummary` API to get a
  summarized description of the specified Kinesis data stream and the
  `ListShards` API to list the shards in a specified data stream and obtain
  information about each shard.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20DescribeStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_stream_input`)
    %{
      optional("ExclusiveStartShardId") => String.t(),
      optional("Limit") => integer(),
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t()
    }
  """

  @spec describe_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_stream_errors()}

  def describe_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStream", input, options)
  end

  @doc """
  To get the description of a registered consumer, provide the ARN of the
  consumer. Alternatively, you can provide the ARN of the data stream and the
  name you gave the consumer when you registered it. You may also provide all
  three parameters, as long as they don't conflict with each other. If you don't
  know the name or ARN of the consumer that you want to describe, you can use
  the `ListStreamConsumers` operation to get a list of the descriptions of all
  the consumers that are currently registered with a given data stream. This
  operation has a limit of 20 transactions per second per stream.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20DescribeStreamConsumer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_stream_consumer_input`)
    %{
      optional("ConsumerARN") => String.t(),
      optional("ConsumerName") => String.t(),
      optional("StreamARN") => String.t()
    }
  """

  @spec describe_stream_consumer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_stream_consumer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_stream_consumer_errors()}

  def describe_stream_consumer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStreamConsumer", input, options)
  end

  @doc """
  Provides a summarized description of the specified Kinesis data stream without
  the shard list. When invoking this API, you must use either the `StreamARN` or
  the `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20DescribeStreamSummary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_stream_summary_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t()
    }
  """

  @spec describe_stream_summary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_stream_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_stream_summary_errors()}

  def describe_stream_summary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStreamSummary", input, options)
  end

  @doc """
  Disables enhanced monitoring.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20DisableEnhancedMonitoring&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disable_enhanced_monitoring_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("ShardLevelMetrics") => list(list(any())())
    }
  """

  @spec disable_enhanced_monitoring(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, enhanced_monitoring_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_enhanced_monitoring_errors()}

  def disable_enhanced_monitoring(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableEnhancedMonitoring", input, options)
  end

  @doc """
  Enables enhanced Kinesis data stream monitoring for shard-level metrics.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20EnableEnhancedMonitoring&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:enable_enhanced_monitoring_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("ShardLevelMetrics") => list(list(any())())
    }
  """

  @spec enable_enhanced_monitoring(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, enhanced_monitoring_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_enhanced_monitoring_errors()}

  def enable_enhanced_monitoring(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableEnhancedMonitoring", input, options)
  end

  @doc """
  Gets data records from a Kinesis data stream's shard. When invoking this API,
  you must use either the `StreamARN` or the `StreamName` parameter, or both. It
  is recommended that you use the `StreamARN` input parameter when you invoke
  this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20GetRecords&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_records_input`)
    %{
      optional("Limit") => integer(),
      optional("StreamARN") => String.t(),
      required("ShardIterator") => String.t()
    }
  """

  @spec get_records(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_records_errors()}

  def get_records(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRecords", input, options)
  end

  @doc """
  Returns a policy attached to the specified data stream or consumer. Request
  patterns can be one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20GetResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_resource_policy_input`)
    %{
      required("ResourceARN") => String.t()
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
  Gets an Amazon Kinesis shard iterator. A shard iterator expires 5 minutes after
  it is returned to the requester. When invoking this API, you must use either
  the `StreamARN` or the `StreamName` parameter, or both. It is recommended that
  you use the `StreamARN` input parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20GetShardIterator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_shard_iterator_input`)
    %{
      optional("StartingSequenceNumber") => String.t(),
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      optional("Timestamp") => non_neg_integer(),
      required("ShardId") => String.t(),
      required("ShardIteratorType") => list(any())
    }
  """

  @spec get_shard_iterator(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_shard_iterator_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_shard_iterator_errors()}

  def get_shard_iterator(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetShardIterator", input, options)
  end

  @doc """
  Increases the Kinesis data stream's retention period, which is the length of
  time data records are accessible after they are added to the stream. The
  maximum value of a stream's retention period is 8760 hours (365 days). When
  invoking this API, you must use either the `StreamARN` or the `StreamName`
  parameter, or both. It is recommended that you use the `StreamARN` input
  parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20IncreaseStreamRetentionPeriod&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:increase_stream_retention_period_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("RetentionPeriodHours") => integer()
    }
  """

  @spec increase_stream_retention_period(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, increase_stream_retention_period_errors()}

  def increase_stream_retention_period(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "IncreaseStreamRetentionPeriod", input, options)
  end

  @doc """
  Lists the shards in a stream and provides information about each shard. This
  operation has a limit of 1000 transactions per second per data stream. When
  invoking this API, you must use either the `StreamARN` or the `StreamName`
  parameter, or both. It is recommended that you use the `StreamARN` input
  parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20ListShards&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_shards_input`)
    %{
      optional("ExclusiveStartShardId") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("ShardFilter") => shard_filter(),
      optional("StreamARN") => String.t(),
      optional("StreamCreationTimestamp") => non_neg_integer(),
      optional("StreamName") => String.t()
    }
  """

  @spec list_shards(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_shards_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_shards_errors()}

  def list_shards(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListShards", input, options)
  end

  @doc """
  Lists the consumers registered to receive data from a stream using enhanced
  fan-out, and provides information about each consumer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20ListStreamConsumers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_stream_consumers_input`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("StreamCreationTimestamp") => non_neg_integer(),
      required("StreamARN") => String.t()
    }
  """

  @spec list_stream_consumers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_stream_consumers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stream_consumers_errors()}

  def list_stream_consumers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListStreamConsumers", input, options)
  end

  @doc """
  Lists your Kinesis data streams. The number of streams may be too large to
  return from a single call to `ListStreams`. You can limit the number of
  returned streams using the `Limit` parameter. If you do not specify a value
  for the `Limit` parameter, Kinesis Data Streams uses the default limit, which
  is currently 100.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20ListStreams&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_streams_input`)
    %{
      optional("ExclusiveStartStreamName") => String.t(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_streams(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streams_errors()}

  def list_streams(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListStreams", input, options)
  end

  @doc """
  Lists the tags for the specified Kinesis data stream. This operation has a limit
  of five transactions per second per account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20ListTagsForStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_stream_input`)
    %{
      optional("ExclusiveStartTagKey") => String.t(),
      optional("Limit") => integer(),
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t()
    }
  """

  @spec list_tags_for_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_stream_errors()}

  def list_tags_for_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForStream", input, options)
  end

  @doc """
  Merges two adjacent shards in a Kinesis data stream and combines them into a
  single shard to reduce the stream's capacity to ingest and transport data.
  This API is only supported for the data streams with the provisioned capacity
  mode. Two shards are considered adjacent if the union of the hash key ranges
  for the two shards form a contiguous set with no gaps. For example, if you
  have two shards, one with a hash key range of 276...381 and the other with a
  hash key range of 382...454, then you could merge these two shards into a
  single shard that would have a hash key range of 276...454. After the merge,
  the single child shard receives data for all hash key values covered by the
  two parent shards. When invoking this API, you must use either the `StreamARN`
  or the `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20MergeShards&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:merge_shards_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("AdjacentShardToMerge") => String.t(),
      required("ShardToMerge") => String.t()
    }
  """

  @spec merge_shards(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, merge_shards_errors()}

  def merge_shards(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "MergeShards", input, options)
  end

  @doc """
  Writes a single data record into an Amazon Kinesis data stream. Call `PutRecord`
  to send data into the stream for real-time ingestion and subsequent
  processing, one record at a time. Each shard can support writes up to 1,000
  records per second, up to a maximum data write total of 1 MiB per second. When
  invoking this API, you must use either the `StreamARN` or the `StreamName`
  parameter, or both. It is recommended that you use the `StreamARN` input
  parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20PutRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_record_input`)
    %{
      optional("ExplicitHashKey") => String.t(),
      optional("SequenceNumberForOrdering") => String.t(),
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("Data") => binary(),
      required("PartitionKey") => String.t()
    }
  """

  @spec put_record(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_record_errors()}

  def put_record(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRecord", input, options)
  end

  @doc """
  Writes multiple data records into a Kinesis data stream in a single call (also
  referred to as a `PutRecords` request). Use this operation to send data into
  the stream for data ingestion and processing. When invoking this API, you must
  use either the `StreamARN` or the `StreamName` parameter, or both. It is
  recommended that you use the `StreamARN` input parameter when you invoke this
  API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20PutRecords&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_records_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("Records") => list(put_records_request_entry()())
    }
  """

  @spec put_records(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_records_errors()}

  def put_records(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRecords", input, options)
  end

  @doc """
  Attaches a resource-based policy to a data stream or registered consumer. If you
  are using an identity other than the root user of the Amazon Web Services
  account that owns the resource, the calling identity must have the
  `PutResourcePolicy` permissions on the specified Kinesis Data Streams resource
  and belong to the owner's account in order to use this operation. If you don't
  have `PutResourcePolicy` permissions, Amazon Kinesis Data Streams returns a
  `403 Access Denied error`. If you receive a `ResourceNotFoundException`, check
  to see if you passed a valid stream or consumer resource. Request patterns can
  be one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20PutResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_resource_policy_input`)
    %{
      required("Policy") => String.t(),
      required("ResourceARN") => String.t()
    }
  """

  @spec put_resource_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}

  def put_resource_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Registers a consumer with a Kinesis data stream. When you use this operation,
  the consumer you register can then call `SubscribeToShard` to receive data
  from the stream using enhanced fan-out, at a rate of up to 2 MiB per second
  for every shard you subscribe to. This rate is unaffected by the total number
  of consumers that read from the same stream. You can register up to 20
  consumers per stream. A given consumer can only be registered with one stream
  at a time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20RegisterStreamConsumer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_stream_consumer_input`)
    %{
      required("ConsumerName") => String.t(),
      required("StreamARN") => String.t()
    }
  """

  @spec register_stream_consumer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, register_stream_consumer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_stream_consumer_errors()}

  def register_stream_consumer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterStreamConsumer", input, options)
  end

  @doc """
  Removes tags from the specified Kinesis data stream. Removed tags are deleted
  and cannot be recovered after this operation successfully completes. When
  invoking this API, you must use either the `StreamARN` or the `StreamName`
  parameter, or both. It is recommended that you use the `StreamARN` input
  parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20RemoveTagsFromStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:remove_tags_from_stream_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec remove_tags_from_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_from_stream_errors()}

  def remove_tags_from_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTagsFromStream", input, options)
  end

  @doc """
  Splits a shard into two new shards in the Kinesis data stream, to increase the
  stream's capacity to ingest and transport data. `SplitShard` is called when
  there is a need to increase the overall capacity of a stream because of an
  expected increase in the volume of data records being ingested. This API is
  only supported for the data streams with the provisioned capacity mode. When
  invoking this API, you must use either the `StreamARN` or the `StreamName`
  parameter, or both. It is recommended that you use the `StreamARN` input
  parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20SplitShard&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:split_shard_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("NewStartingHashKey") => String.t(),
      required("ShardToSplit") => String.t()
    }
  """

  @spec split_shard(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, split_shard_errors()}

  def split_shard(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SplitShard", input, options)
  end

  @doc """
  Enables or updates server-side encryption using an Amazon Web Services KMS key
  for a specified stream. When invoking this API, you must use either the
  `StreamARN` or the `StreamName` parameter, or both. It is recommended that you
  use the `StreamARN` input parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20StartStreamEncryption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_stream_encryption_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("EncryptionType") => list(any()),
      required("KeyId") => String.t()
    }
  """

  @spec start_stream_encryption(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_stream_encryption_errors()}

  def start_stream_encryption(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartStreamEncryption", input, options)
  end

  @doc """
  Disables server-side encryption for a specified stream. When invoking this API,
  you must use either the `StreamARN` or the `StreamName` parameter, or both. It
  is recommended that you use the `StreamARN` input parameter when you invoke
  this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20StopStreamEncryption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_stream_encryption_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("EncryptionType") => list(any()),
      required("KeyId") => String.t()
    }
  """

  @spec stop_stream_encryption(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_stream_encryption_errors()}

  def stop_stream_encryption(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopStreamEncryption", input, options)
  end

  @doc """
  This operation establishes an HTTP/2 connection between the consumer you specify
  in the `ConsumerARN` parameter and the shard you specify in the `ShardId`
  parameter. After the connection is successfully established, Kinesis Data
  Streams pushes records from the shard to the consumer over this connection.
  Before you call this operation, call `RegisterStreamConsumer` to register the
  consumer with Kinesis Data Streams. When the `SubscribeToShard` call succeeds,
  your consumer starts receiving events of type `SubscribeToShardEvent` over the
  HTTP/2 connection for up to 5 minutes, after which time you need to call
  `SubscribeToShard` again to renew the subscription if you want to continue to
  receive records.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20SubscribeToShard&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:subscribe_to_shard_input`)
    %{
      required("ConsumerARN") => String.t(),
      required("ShardId") => String.t(),
      required("StartingPosition") => starting_position()
    }
  """

  @spec subscribe_to_shard(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, subscribe_to_shard_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, subscribe_to_shard_errors()}

  def subscribe_to_shard(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SubscribeToShard", input, options)
  end

  @doc """
  Updates the shard count of the specified stream to the specified number of
  shards. This API is only supported for the data streams with the provisioned
  capacity mode. When invoking this API, you must use either the `StreamARN` or
  the `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20UpdateShardCount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_shard_count_input`)
    %{
      optional("StreamARN") => String.t(),
      optional("StreamName") => String.t(),
      required("ScalingType") => list(any()),
      required("TargetShardCount") => integer()
    }
  """

  @spec update_shard_count(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_shard_count_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_shard_count_errors()}

  def update_shard_count(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateShardCount", input, options)
  end

  @doc """
  Updates the capacity mode of the data stream. Currently, in Kinesis Data
  Streams, you can choose between an **on-demand** capacity mode and a
  **provisioned** capacity mode for your data stream.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesis%20UpdateStreamMode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_stream_mode_input`)
    %{
      required("StreamARN") => String.t(),
      required("StreamModeDetails") => stream_mode_details()
    }
  """

  @spec update_stream_mode(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_stream_mode_errors()}

  def update_stream_mode(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateStreamMode", input, options)
  end
end
