# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Rekognition do
  @moduledoc """
  This is the API Reference for [Amazon Rekognition
  Image](https://docs.aws.amazon.com/rekognition/latest/dg/images.html), [Amazon
  Rekognition Custom
  Labels](https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/what-is.html),
  [Amazon Rekognition Stored
  Video](https://docs.aws.amazon.com/rekognition/latest/dg/video.html), [Amazon
  Rekognition Streaming
  Video](https://docs.aws.amazon.com/rekognition/latest/dg/streaming-video.html).
  It provides descriptions of actions, data types, common parameters, and common
  errors. **Amazon Rekognition Image**
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_face_liveness_session_request_settings() :: %{
        "AuditImagesLimit" => integer(),
        "OutputConfig" => liveness_output_config()
      }
      
  """
  @type create_face_liveness_session_request_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      video() :: %{
        "S3Object" => s3_object()
      }
      
  """
  @type video() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      searched_user() :: %{
        "UserId" => String.t()
      }
      
  """
  @type searched_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dataset_entries_request() :: %{
        required("Changes") => dataset_changes(),
        required("DatasetArn") => String.t()
      }
      
  """
  @type update_dataset_entries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_labels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DatasetArn") => String.t()
      }
      
  """
  @type list_dataset_labels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_media_analysis_job_response() :: %{
        "CompletionTimestamp" => non_neg_integer(),
        "CreationTimestamp" => non_neg_integer(),
        "FailureDetails" => media_analysis_job_failure_details(),
        "Input" => media_analysis_input(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "KmsKeyId" => String.t(),
        "ManifestSummary" => media_analysis_manifest_summary(),
        "OperationsConfig" => media_analysis_operations_config(),
        "OutputConfig" => media_analysis_output_config(),
        "Results" => media_analysis_results(),
        "Status" => list(any())
      }
      
  """
  @type get_media_analysis_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compared_source_image_face() :: %{
        "BoundingBox" => bounding_box(),
        "Confidence" => float()
      }
      
  """
  @type compared_source_image_face() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      segment_type_info() :: %{
        "ModelVersion" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type segment_type_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recognize_celebrities_request() :: %{
        required("Image") => image()
      }
      
  """
  @type recognize_celebrities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_label_detection_request_metadata() :: %{
        "AggregateBy" => list(any()),
        "SortBy" => list(any())
      }
      
  """
  @type get_label_detection_request_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_text_response() :: %{
        "TextDetections" => list(text_detection()()),
        "TextModelVersion" => String.t()
      }
      
  """
  @type detect_text_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_protective_equipment_response() :: %{
        "Persons" => list(protective_equipment_person()()),
        "ProtectiveEquipmentModelVersion" => String.t(),
        "Summary" => protective_equipment_summary()
      }
      
  """
  @type detect_protective_equipment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_description() :: %{
        "AutoUpdate" => list(any()),
        "CreationTimestamp" => non_neg_integer(),
        "Datasets" => list(dataset_metadata()()),
        "Feature" => list(any()),
        "ProjectArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type project_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dataset_entries_response() :: %{}
      
  """
  @type update_dataset_entries_response() :: %{}

  @typedoc """

  ## Example:
      
      start_shot_detection_filter() :: %{
        "MinSegmentConfidence" => float()
      }
      
  """
  @type start_shot_detection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_faces_request() :: %{
        required("CollectionId") => String.t(),
        required("FaceIds") => list(String.t()())
      }
      
  """
  @type delete_faces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stream_processor_response() :: %{
        "StreamProcessorArn" => String.t()
      }
      
  """
  @type create_stream_processor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_face_search_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_face_search_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_labels_image_properties_settings() :: %{
        "MaxDominantColors" => integer()
      }
      
  """
  @type detect_labels_image_properties_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customization_feature_content_moderation_config() :: %{
        "ConfidenceThreshold" => float()
      }
      
  """
  @type customization_feature_content_moderation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_users_response() :: %{
        "FaceModelVersion" => String.t(),
        "SearchedFace" => searched_face(),
        "SearchedUser" => searched_user(),
        "UserMatches" => list(user_match()())
      }
      
  """
  @type search_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matched_user() :: %{
        "UserId" => String.t(),
        "UserStatus" => list(any())
      }
      
  """
  @type matched_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_faces_response() :: %{
        "FaceMatches" => list(face_match()()),
        "FaceModelVersion" => String.t(),
        "SearchedFaceId" => String.t()
      }
      
  """
  @type search_faces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_label_detection_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Features") => list(list(any())()),
        optional("JobTag") => String.t(),
        optional("MinConfidence") => float(),
        optional("NotificationChannel") => notification_channel(),
        optional("Settings") => label_detection_settings(),
        required("Video") => video()
      }
      
  """
  @type start_label_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_response() :: %{}
      
  """
  @type delete_dataset_response() :: %{}

  @typedoc """

  ## Example:
      
      list_dataset_labels_response() :: %{
        "DatasetLabelDescriptions" => list(dataset_label_description()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_dataset_labels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_source() :: %{
        "DatasetArn" => String.t(),
        "GroundTruthManifest" => ground_truth_manifest()
      }
      
  """
  @type dataset_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_data_result() :: %{
        "Input" => training_data(),
        "Output" => training_data(),
        "Validation" => validation_data()
      }
      
  """
  @type training_data_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unindexed_face() :: %{
        "FaceDetail" => face_detail(),
        "Reasons" => list(list(any())())
      }
      
  """
  @type unindexed_face() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      geometry() :: %{
        "BoundingBox" => bounding_box(),
        "Polygon" => list(point()())
      }
      
  """
  @type geometry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_description() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "DatasetStats" => dataset_stats(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "StatusMessageCode" => list(any())
      }
      
  """
  @type dataset_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_analysis_job_failure_details() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type media_analysis_job_failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      stream_processor() :: %{
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type stream_processor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_analysis_operations_config() :: %{
        "DetectModerationLabels" => media_analysis_detect_moderation_labels_config()
      }
      
  """
  @type media_analysis_operations_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_media_analysis_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("KmsKeyId") => String.t(),
        required("Input") => media_analysis_input(),
        required("OperationsConfig") => media_analysis_operations_config(),
        required("OutputConfig") => media_analysis_output_config()
      }
      
  """
  @type start_media_analysis_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      index_faces_request() :: %{
        optional("DetectionAttributes") => list(list(any())()),
        optional("ExternalImageId") => String.t(),
        optional("MaxFaces") => integer(),
        optional("QualityFilter") => list(any()),
        required("CollectionId") => String.t(),
        required("Image") => image()
      }
      
  """
  @type index_faces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      person_match() :: %{
        "FaceMatches" => list(face_match()()),
        "Person" => person_detail(),
        "Timestamp" => float()
      }
      
  """
  @type person_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_projects_response() :: %{
        "NextToken" => String.t(),
        "ProjectDescriptions" => list(project_description()())
      }
      
  """
  @type describe_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_faces_response() :: %{
        "DeletedFaces" => list(String.t()()),
        "UnsuccessfulFaceDeletions" => list(unsuccessful_face_deletion()())
      }
      
  """
  @type delete_faces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_faces_response() :: %{
        "FaceDetails" => list(face_detail()()),
        "OrientationCorrection" => list(any())
      }
      
  """
  @type detect_faces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stream_processor_response() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "DataSharingPreference" => stream_processor_data_sharing_preference(),
        "Input" => stream_processor_input(),
        "KmsKeyId" => String.t(),
        "LastUpdateTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "NotificationChannel" => stream_processor_notification_channel(),
        "Output" => stream_processor_output(),
        "RegionsOfInterest" => list(region_of_interest()()),
        "RoleArn" => String.t(),
        "Settings" => stream_processor_settings(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "StreamProcessorArn" => String.t()
      }
      
  """
  @type describe_stream_processor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_processing_start_selector() :: %{
        "KVSStreamStartSelector" => kinesis_video_stream_start_selector()
      }
      
  """
  @type stream_processing_start_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      smile() :: %{
        "Confidence" => float(),
        "Value" => boolean()
      }
      
  """
  @type smile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connected_home_settings() :: %{
        "Labels" => list(String.t()()),
        "MinConfidence" => float()
      }
      
  """
  @type connected_home_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_celebrity_info_response() :: %{
        "KnownGender" => known_gender(),
        "Name" => String.t(),
        "Urls" => list(String.t()())
      }
      
  """
  @type get_celebrity_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_project_version_request() :: %{
        required("ProjectVersionArn") => String.t()
      }
      
  """
  @type stop_project_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_analysis_output_config() :: %{
        "S3Bucket" => String.t(),
        "S3KeyPrefix" => String.t()
      }
      
  """
  @type media_analysis_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      person_detail() :: %{
        "BoundingBox" => bounding_box(),
        "Face" => face_detail(),
        "Index" => float()
      }
      
  """
  @type person_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_content_moderation_request_metadata() :: %{
        "AggregateBy" => list(any()),
        "SortBy" => list(any())
      }
      
  """
  @type get_content_moderation_request_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_face_search_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        required("JobId") => String.t()
      }
      
  """
  @type get_face_search_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_stream_processor_response() :: %{
        "SessionId" => String.t()
      }
      
  """
  @type start_stream_processor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_faces_response() :: %{
        "AssociatedFaces" => list(associated_face()()),
        "UnsuccessfulFaceAssociations" => list(unsuccessful_face_association()()),
        "UserStatus" => list(any())
      }
      
  """
  @type associate_faces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsuccessful_face_deletion() :: %{
        "FaceId" => String.t(),
        "Reasons" => list(list(any())()),
        "UserId" => String.t()
      }
      
  """
  @type unsuccessful_face_deletion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_face_detection_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_face_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protective_equipment_person() :: %{
        "BodyParts" => list(protective_equipment_body_part()()),
        "BoundingBox" => bounding_box(),
        "Confidence" => float(),
        "Id" => integer()
      }
      
  """
  @type protective_equipment_person() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eye_direction() :: %{
        "Confidence" => float(),
        "Pitch" => float(),
        "Yaw" => float()
      }
      
  """
  @type eye_direction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_text_detection_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Filters") => start_text_detection_filters(),
        optional("JobTag") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        required("Video") => video()
      }
      
  """
  @type start_text_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_content_moderation_request() :: %{
        optional("AggregateBy") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        required("JobId") => String.t()
      }
      
  """
  @type get_content_moderation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_object() :: %{
        "Bucket" => String.t(),
        "Name" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connected_home_settings_for_update() :: %{
        "Labels" => list(String.t()()),
        "MinConfidence" => float()
      }
      
  """
  @type connected_home_settings_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_analysis_manifest_summary() :: %{
        "S3Object" => s3_object()
      }
      
  """
  @type media_analysis_manifest_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_moderation_labels_response() :: %{
        "ContentTypes" => list(content_type()()),
        "HumanLoopActivationOutput" => human_loop_activation_output(),
        "ModerationLabels" => list(moderation_label()()),
        "ModerationModelVersion" => String.t(),
        "ProjectVersion" => String.t()
      }
      
  """
  @type detect_moderation_labels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_too_large_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type image_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_faces_request() :: %{
        optional("FaceMatchThreshold") => float(),
        optional("MaxFaces") => integer(),
        required("CollectionId") => String.t(),
        required("FaceId") => String.t()
      }
      
  """
  @type search_faces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_project_version_response() :: %{
        "Status" => list(any())
      }
      
  """
  @type start_project_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_faces_response() :: %{
        "DisassociatedFaces" => list(disassociated_face()()),
        "UnsuccessfulFaceDisassociations" => list(unsuccessful_face_disassociation()()),
        "UserStatus" => list(any())
      }
      
  """
  @type disassociate_faces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_processor_output() :: %{
        "KinesisDataStream" => kinesis_data_stream(),
        "S3Destination" => s3_destination()
      }
      
  """
  @type stream_processor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_data() :: %{
        "Assets" => list(asset()())
      }
      
  """
  @type training_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_version_response() :: %{
        "ProjectVersionArn" => String.t()
      }
      
  """
  @type create_project_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detection_filter() :: %{
        "MinBoundingBoxHeight" => float(),
        "MinBoundingBoxWidth" => float(),
        "MinConfidence" => float()
      }
      
  """
  @type detection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_label_description() :: %{
        "LabelName" => String.t(),
        "LabelStats" => dataset_label_stats()
      }
      
  """
  @type dataset_label_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      known_gender() :: %{
        "Type" => list(any())
      }
      
  """
  @type known_gender() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      segment_detection() :: %{
        "DurationFrames" => float(),
        "DurationMillis" => float(),
        "DurationSMPTE" => String.t(),
        "EndFrameNumber" => float(),
        "EndTimecodeSMPTE" => String.t(),
        "EndTimestampMillis" => float(),
        "ShotSegment" => shot_segment(),
        "StartFrameNumber" => float(),
        "StartTimecodeSMPTE" => String.t(),
        "StartTimestampMillis" => float(),
        "TechnicalCueSegment" => technical_cue_segment(),
        "Type" => list(any())
      }
      
  """
  @type segment_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      searched_face() :: %{
        "FaceId" => String.t()
      }
      
  """
  @type searched_face() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_faces_request() :: %{
        optional("FaceIds") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("UserId") => String.t(),
        required("CollectionId") => String.t()
      }
      
  """
  @type list_faces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_text_request() :: %{
        optional("Filters") => detect_text_filters(),
        required("Image") => image()
      }
      
  """
  @type detect_text_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_label_detection_response() :: %{
        "GetRequestMetadata" => get_label_detection_request_metadata(),
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "JobTag" => String.t(),
        "LabelModelVersion" => String.t(),
        "Labels" => list(label_detection()()),
        "NextToken" => String.t(),
        "StatusMessage" => String.t(),
        "Video" => video(),
        "VideoMetadata" => video_metadata()
      }
      
  """
  @type get_label_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      moderation_label() :: %{
        "Confidence" => float(),
        "Name" => String.t(),
        "ParentName" => String.t(),
        "TaxonomyLevel" => integer()
      }
      
  """
  @type moderation_label() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_collections_response() :: %{
        "CollectionIds" => list(String.t()()),
        "FaceModelVersions" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_collections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associated_face() :: %{
        "FaceId" => String.t()
      }
      
  """
  @type associated_face() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_project_policy_response() :: %{
        "PolicyRevisionId" => String.t()
      }
      
  """
  @type put_project_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compare_faces_request() :: %{
        optional("QualityFilter") => list(any()),
        optional("SimilarityThreshold") => float(),
        required("SourceImage") => image(),
        required("TargetImage") => image()
      }
      
  """
  @type compare_faces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      region_of_interest() :: %{
        "BoundingBox" => bounding_box(),
        "Polygon" => list(point()())
      }
      
  """
  @type region_of_interest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      distribute_dataset_entries_request() :: %{
        required("Datasets") => list(distribute_dataset()())
      }
      
  """
  @type distribute_dataset_entries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_projects_request() :: %{
        optional("Features") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProjectNames") => list(String.t()())
      }
      
  """
  @type describe_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      content_type() :: %{
        "Confidence" => float(),
        "Name" => String.t()
      }
      
  """
  @type content_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      emotion() :: %{
        "Confidence" => float(),
        "Type" => list(any())
      }
      
  """
  @type emotion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      testing_data() :: %{
        "Assets" => list(asset()()),
        "AutoCreate" => boolean()
      }
      
  """
  @type testing_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_face_liveness_session_results_request() :: %{
        required("SessionId") => String.t()
      }
      
  """
  @type get_face_liveness_session_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_channel() :: %{
        "RoleArn" => String.t(),
        "SNSTopicArn" => String.t()
      }
      
  """
  @type notification_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_celebrity_recognition_response() :: %{
        "Celebrities" => list(celebrity_recognition()()),
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "JobTag" => String.t(),
        "NextToken" => String.t(),
        "StatusMessage" => String.t(),
        "Video" => video(),
        "VideoMetadata" => video_metadata()
      }
      
  """
  @type get_celebrity_recognition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      point() :: %{
        "X" => float(),
        "Y" => float()
      }
      
  """
  @type point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_response() :: %{
        "DatasetArn" => String.t()
      }
      
  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stream_processor_response() :: %{}
      
  """
  @type update_stream_processor_response() :: %{}

  @typedoc """

  ## Example:
      
      human_loop_activation_output() :: %{
        "HumanLoopActivationConditionsEvaluationResults" => String.t(),
        "HumanLoopActivationReasons" => list(String.t()()),
        "HumanLoopArn" => String.t()
      }
      
  """
  @type human_loop_activation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eye_open() :: %{
        "Confidence" => float(),
        "Value" => boolean()
      }
      
  """
  @type eye_open() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput_exceeded_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type provisioned_throughput_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_policy_revision_id_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_policy_revision_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_face_detection_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("FaceAttributes") => list(any()),
        optional("JobTag") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        required("Video") => video()
      }
      
  """
  @type start_face_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_response() :: %{
        "ProjectArn" => String.t()
      }
      
  """
  @type create_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      landmark() :: %{
        "Type" => list(any()),
        "X" => float(),
        "Y" => float()
      }
      
  """
  @type landmark() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_stream_processor_response() :: %{}
      
  """
  @type stop_stream_processor_response() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dominant_color() :: %{
        "Blue" => integer(),
        "CSSColor" => String.t(),
        "Green" => integer(),
        "HexCode" => String.t(),
        "PixelPercent" => float(),
        "Red" => integer(),
        "SimplifiedColor" => String.t()
      }
      
  """
  @type dominant_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset() :: %{
        "GroundTruthManifest" => ground_truth_manifest()
      }
      
  """
  @type asset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_changes() :: %{
        "GroundTruth" => binary()
      }
      
  """
  @type dataset_changes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_faces_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("UserMatchThreshold") => float(),
        required("CollectionId") => String.t(),
        required("FaceIds") => list(String.t()()),
        required("UserId") => String.t()
      }
      
  """
  @type associate_faces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_collections_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_collections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_collection_request() :: %{
        required("CollectionId") => String.t()
      }
      
  """
  @type delete_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_media_analysis_jobs_response() :: %{
        "MediaAnalysisJobs" => list(media_analysis_job_description()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_media_analysis_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      face_occluded() :: %{
        "Confidence" => float(),
        "Value" => boolean()
      }
      
  """
  @type face_occluded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_processor_settings_for_update() :: %{
        "ConnectedHomeForUpdate" => connected_home_settings_for_update()
      }
      
  """
  @type stream_processor_settings_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_labels_image_properties() :: %{
        "Background" => detect_labels_image_background(),
        "DominantColors" => list(dominant_color()()),
        "Foreground" => detect_labels_image_foreground(),
        "Quality" => detect_labels_image_quality()
      }
      
  """
  @type detect_labels_image_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      searched_face_details() :: %{
        "FaceDetail" => face_detail()
      }
      
  """
  @type searched_face_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ground_truth_manifest() :: %{
        "S3Object" => s3_object()
      }
      
  """
  @type ground_truth_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_category() :: %{
        "Name" => String.t()
      }
      
  """
  @type label_category() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_text_detection_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("JobId") => String.t()
      }
      
  """
  @type get_text_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_labels_request() :: %{
        optional("Features") => list(list(any())()),
        optional("MaxLabels") => integer(),
        optional("MinConfidence") => float(),
        optional("Settings") => detect_labels_settings(),
        required("Image") => image()
      }
      
  """
  @type detect_labels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_project_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ProjectArn") => String.t()
      }
      
  """
  @type list_project_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stream_processors_response() :: %{
        "NextToken" => String.t(),
        "StreamProcessors" => list(stream_processor()())
      }
      
  """
  @type list_stream_processors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stream_processors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_stream_processors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mouth_open() :: %{
        "Confidence" => float(),
        "Value" => boolean()
      }
      
  """
  @type mouth_open() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_technical_cue_detection_filter() :: %{
        "BlackFrame" => black_frame(),
        "MinSegmentConfidence" => float()
      }
      
  """
  @type start_technical_cue_detection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_policy_response() :: %{}
      
  """
  @type delete_project_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      start_segment_detection_filters() :: %{
        "ShotFilter" => start_shot_detection_filter(),
        "TechnicalCueFilter" => start_technical_cue_detection_filter()
      }
      
  """
  @type start_segment_detection_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_custom_labels_request() :: %{
        optional("MaxResults") => integer(),
        optional("MinConfidence") => float(),
        required("Image") => image(),
        required("ProjectVersionArn") => String.t()
      }
      
  """
  @type detect_custom_labels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_response() :: %{
        "NextToken" => String.t(),
        "Users" => list(user()())
      }
      
  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_collection_request() :: %{
        required("CollectionId") => String.t()
      }
      
  """
  @type describe_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_face_detection_response() :: %{
        "Faces" => list(face_detection()()),
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "JobTag" => String.t(),
        "NextToken" => String.t(),
        "StatusMessage" => String.t(),
        "Video" => video(),
        "VideoMetadata" => video_metadata()
      }
      
  """
  @type get_face_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_stats() :: %{
        "ErrorEntries" => integer(),
        "LabeledEntries" => integer(),
        "TotalEntries" => integer(),
        "TotalLabels" => integer()
      }
      
  """
  @type dataset_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_detection() :: %{
        "DurationMillis" => float(),
        "EndTimestampMillis" => float(),
        "Label" => label(),
        "StartTimestampMillis" => float(),
        "Timestamp" => float()
      }
      
  """
  @type label_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_text_filters() :: %{
        "RegionsOfInterest" => list(region_of_interest()()),
        "WordFilter" => detection_filter()
      }
      
  """
  @type detect_text_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_entries_request() :: %{
        optional("ContainsLabels") => list(String.t()()),
        optional("HasErrors") => boolean(),
        optional("Labeled") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SourceRefContains") => String.t(),
        required("DatasetArn") => String.t()
      }
      
  """
  @type list_dataset_entries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_custom_labels_response() :: %{
        "CustomLabels" => list(custom_label()())
      }
      
  """
  @type detect_custom_labels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_faces_by_image_request() :: %{
        optional("FaceMatchThreshold") => float(),
        optional("MaxFaces") => integer(),
        optional("QualityFilter") => list(any()),
        required("CollectionId") => String.t(),
        required("Image") => image()
      }
      
  """
  @type search_faces_by_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_users_by_image_request() :: %{
        optional("MaxUsers") => integer(),
        optional("QualityFilter") => list(any()),
        optional("UserMatchThreshold") => float(),
        required("CollectionId") => String.t(),
        required("Image") => image()
      }
      
  """
  @type search_users_by_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_celebrity_recognition_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobTag") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        required("Video") => video()
      }
      
  """
  @type start_celebrity_recognition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_collection_request() :: %{
        optional("Tags") => map(),
        required("CollectionId") => String.t()
      }
      
  """
  @type create_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compare_faces_match() :: %{
        "Face" => compared_face(),
        "Similarity" => float()
      }
      
  """
  @type compare_faces_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_video_stream_start_selector() :: %{
        "FragmentNumber" => String.t(),
        "ProducerTimestamp" => float()
      }
      
  """
  @type kinesis_video_stream_start_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_version_description() :: %{
        "BaseModelVersion" => String.t(),
        "BillableTrainingTimeInSeconds" => float(),
        "CreationTimestamp" => non_neg_integer(),
        "EvaluationResult" => evaluation_result(),
        "Feature" => list(any()),
        "FeatureConfig" => customization_feature_config(),
        "KmsKeyId" => String.t(),
        "ManifestSummary" => ground_truth_manifest(),
        "MaxInferenceUnits" => integer(),
        "MinInferenceUnits" => integer(),
        "OutputConfig" => output_config(),
        "ProjectVersionArn" => String.t(),
        "SourceProjectVersionArn" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "TestingDataResult" => testing_data_result(),
        "TrainingDataResult" => training_data_result(),
        "TrainingEndTimestamp" => non_neg_integer(),
        "VersionDescription" => String.t()
      }
      
  """
  @type project_version_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_person_tracking_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_person_tracking_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_label_stats() :: %{
        "BoundingBoxCount" => integer(),
        "EntryCount" => integer()
      }
      
  """
  @type dataset_label_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      content_moderation_detection() :: %{
        "ContentTypes" => list(content_type()()),
        "DurationMillis" => float(),
        "EndTimestampMillis" => float(),
        "ModerationLabel" => moderation_label(),
        "StartTimestampMillis" => float(),
        "Timestamp" => float()
      }
      
  """
  @type content_moderation_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_analysis_results() :: %{
        "ModelVersions" => media_analysis_model_versions(),
        "S3Object" => s3_object()
      }
      
  """
  @type media_analysis_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_label_detection_request() :: %{
        optional("AggregateBy") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        required("JobId") => String.t()
      }
      
  """
  @type get_label_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_protective_equipment_request() :: %{
        optional("SummarizationAttributes") => protective_equipment_summarization_attributes(),
        required("Image") => image()
      }
      
  """
  @type detect_protective_equipment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_users_request() :: %{
        optional("FaceId") => String.t(),
        optional("MaxUsers") => integer(),
        optional("UserId") => String.t(),
        optional("UserMatchThreshold") => float(),
        required("CollectionId") => String.t()
      }
      
  """
  @type search_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_users_by_image_response() :: %{
        "FaceModelVersion" => String.t(),
        "SearchedFace" => searched_face_details(),
        "UnsearchedFaces" => list(unsearched_face()()),
        "UserMatches" => list(user_match()())
      }
      
  """
  @type search_users_by_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      face_detail() :: %{
        "AgeRange" => age_range(),
        "Beard" => beard(),
        "BoundingBox" => bounding_box(),
        "Confidence" => float(),
        "Emotions" => list(emotion()()),
        "EyeDirection" => eye_direction(),
        "Eyeglasses" => eyeglasses(),
        "EyesOpen" => eye_open(),
        "FaceOccluded" => face_occluded(),
        "Gender" => gender(),
        "Landmarks" => list(landmark()()),
        "MouthOpen" => mouth_open(),
        "Mustache" => mustache(),
        "Pose" => pose(),
        "Quality" => image_quality(),
        "Smile" => smile(),
        "Sunglasses" => sunglasses()
      }
      
  """
  @type face_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      black_frame() :: %{
        "MaxPixelThreshold" => float(),
        "MinCoveragePercentage" => float()
      }
      
  """
  @type black_frame() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_labels_response() :: %{
        "ImageProperties" => detect_labels_image_properties(),
        "LabelModelVersion" => String.t(),
        "Labels" => list(label()()),
        "OrientationCorrection" => list(any())
      }
      
  """
  @type detect_labels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      testing_data_result() :: %{
        "Input" => testing_data(),
        "Output" => testing_data(),
        "Validation" => validation_data()
      }
      
  """
  @type testing_data_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsearched_face() :: %{
        "FaceDetails" => face_detail(),
        "Reasons" => list(list(any())())
      }
      
  """
  @type unsearched_face() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      face() :: %{
        "BoundingBox" => bounding_box(),
        "Confidence" => float(),
        "ExternalImageId" => String.t(),
        "FaceId" => String.t(),
        "ImageId" => String.t(),
        "IndexFacesModelVersion" => String.t(),
        "UserId" => String.t()
      }
      
  """
  @type face() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_project_policies_response() :: %{
        "NextToken" => String.t(),
        "ProjectPolicies" => list(project_policy()())
      }
      
  """
  @type list_project_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_version_request() :: %{
        optional("FeatureConfig") => customization_feature_config(),
        optional("KmsKeyId") => String.t(),
        optional("Tags") => map(),
        optional("TestingData") => testing_data(),
        optional("TrainingData") => training_data(),
        optional("VersionDescription") => String.t(),
        required("OutputConfig") => output_config(),
        required("ProjectArn") => String.t(),
        required("VersionName") => String.t()
      }
      
  """
  @type create_project_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      beard() :: %{
        "Confidence" => float(),
        "Value" => boolean()
      }
      
  """
  @type beard() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      distribute_dataset_entries_response() :: %{}
      
  """
  @type distribute_dataset_entries_response() :: %{}

  @typedoc """

  ## Example:
      
      protective_equipment_summarization_attributes() :: %{
        "MinConfidence" => float(),
        "RequiredEquipmentTypes" => list(list(any())())
      }
      
  """
  @type protective_equipment_summarization_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("CollectionId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination() :: %{
        "Bucket" => String.t(),
        "KeyPrefix" => String.t()
      }
      
  """
  @type s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_segment_detection_response() :: %{
        "AudioMetadata" => list(audio_metadata()()),
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "JobTag" => String.t(),
        "NextToken" => String.t(),
        "Segments" => list(segment_detection()()),
        "SelectedSegmentTypes" => list(segment_type_info()()),
        "StatusMessage" => String.t(),
        "Video" => video(),
        "VideoMetadata" => list(video_metadata()())
      }
      
  """
  @type get_segment_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_label() :: %{
        "Confidence" => float(),
        "Geometry" => geometry(),
        "Name" => String.t()
      }
      
  """
  @type custom_label() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      celebrity() :: %{
        "Face" => compared_face(),
        "Id" => String.t(),
        "KnownGender" => known_gender(),
        "MatchConfidence" => float(),
        "Name" => String.t(),
        "Urls" => list(String.t()())
      }
      
  """
  @type celebrity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_response() :: %{}
      
  """
  @type delete_user_response() :: %{}

  @typedoc """

  ## Example:
      
      get_celebrity_recognition_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        required("JobId") => String.t()
      }
      
  """
  @type get_celebrity_recognition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      celebrity_recognition() :: %{
        "Celebrity" => celebrity_detail(),
        "Timestamp" => float()
      }
      
  """
  @type celebrity_recognition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recognize_celebrities_response() :: %{
        "CelebrityFaces" => list(celebrity()()),
        "OrientationCorrection" => list(any()),
        "UnrecognizedFaces" => list(compared_face()())
      }
      
  """
  @type recognize_celebrities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      face_search_settings() :: %{
        "CollectionId" => String.t(),
        "FaceMatchThreshold" => float()
      }
      
  """
  @type face_search_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_face_liveness_session_response() :: %{
        "SessionId" => String.t()
      }
      
  """
  @type create_face_liveness_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_processor_data_sharing_preference() :: %{
        "OptIn" => boolean()
      }
      
  """
  @type stream_processor_data_sharing_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_collection_response() :: %{
        "CollectionARN" => String.t(),
        "CreationTimestamp" => non_neg_integer(),
        "FaceCount" => float(),
        "FaceModelVersion" => String.t(),
        "UserCount" => float()
      }
      
  """
  @type describe_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_processor_settings() :: %{
        "ConnectedHome" => connected_home_settings(),
        "FaceSearch" => face_search_settings()
      }
      
  """
  @type stream_processor_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_collection_response() :: %{
        "CollectionArn" => String.t(),
        "FaceModelVersion" => String.t(),
        "StatusCode" => integer()
      }
      
  """
  @type create_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      age_range() :: %{
        "High" => integer(),
        "Low" => integer()
      }
      
  """
  @type age_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_data_attributes() :: %{
        "ContentClassifiers" => list(list(any())())
      }
      
  """
  @type human_loop_data_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protective_equipment_body_part() :: %{
        "Confidence" => float(),
        "EquipmentDetections" => list(equipment_detection()()),
        "Name" => list(any())
      }
      
  """
  @type protective_equipment_body_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_response() :: %{
        "Status" => list(any())
      }
      
  """
  @type delete_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_project_policy_request() :: %{
        optional("PolicyRevisionId") => String.t(),
        required("PolicyDocument") => String.t(),
        required("PolicyName") => String.t(),
        required("ProjectArn") => String.t()
      }
      
  """
  @type put_project_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bounding_box() :: %{
        "Height" => float(),
        "Left" => float(),
        "Top" => float(),
        "Width" => float()
      }
      
  """
  @type bounding_box() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stream_processor_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_stream_processor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsuccessful_face_disassociation() :: %{
        "FaceId" => String.t(),
        "Reasons" => list(list(any())()),
        "UserId" => String.t()
      }
      
  """
  @type unsuccessful_face_disassociation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_stream_processor_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type stop_stream_processor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      face_match() :: %{
        "Face" => face(),
        "Similarity" => float()
      }
      
  """
  @type face_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_analysis_job_description() :: %{
        "CompletionTimestamp" => non_neg_integer(),
        "CreationTimestamp" => non_neg_integer(),
        "FailureDetails" => media_analysis_job_failure_details(),
        "Input" => media_analysis_input(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "KmsKeyId" => String.t(),
        "ManifestSummary" => media_analysis_manifest_summary(),
        "OperationsConfig" => media_analysis_operations_config(),
        "OutputConfig" => media_analysis_output_config(),
        "Results" => media_analysis_results(),
        "Status" => list(any())
      }
      
  """
  @type media_analysis_job_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_text_detection_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_text_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_detection_settings() :: %{
        "GeneralLabels" => general_labels_settings()
      }
      
  """
  @type label_detection_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_processor_input() :: %{
        "KinesisVideoStream" => kinesis_video_stream()
      }
      
  """
  @type stream_processor_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_person_tracking_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "JobTag" => String.t(),
        "NextToken" => String.t(),
        "Persons" => list(person_detection()()),
        "StatusMessage" => String.t(),
        "Video" => video(),
        "VideoMetadata" => video_metadata()
      }
      
  """
  @type get_person_tracking_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_project_version_response() :: %{
        "ProjectVersionArn" => String.t()
      }
      
  """
  @type copy_project_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image() :: %{
        "Bytes" => binary(),
        "S3Object" => s3_object()
      }
      
  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_media_analysis_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_media_analysis_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_content_moderation_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobTag") => String.t(),
        optional("MinConfidence") => float(),
        optional("NotificationChannel") => notification_channel(),
        required("Video") => video()
      }
      
  """
  @type start_content_moderation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      covers_body_part() :: %{
        "Confidence" => float(),
        "Value" => boolean()
      }
      
  """
  @type covers_body_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "BoundingBox" => bounding_box(),
        "Confidence" => float(),
        "DominantColors" => list(dominant_color()())
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_quality() :: %{
        "Brightness" => float(),
        "Sharpness" => float()
      }
      
  """
  @type image_quality() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_faces_response() :: %{
        "FaceModelVersion" => String.t(),
        "Faces" => list(face()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_faces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_policy_request() :: %{
        optional("PolicyRevisionId") => String.t(),
        required("PolicyName") => String.t(),
        required("ProjectArn") => String.t()
      }
      
  """
  @type delete_project_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stream_processor_request() :: %{
        optional("DataSharingPreference") => stream_processor_data_sharing_preference(),
        optional("KmsKeyId") => String.t(),
        optional("NotificationChannel") => stream_processor_notification_channel(),
        optional("RegionsOfInterest") => list(region_of_interest()()),
        optional("Tags") => map(),
        required("Input") => stream_processor_input(),
        required("Name") => String.t(),
        required("Output") => stream_processor_output(),
        required("RoleArn") => String.t(),
        required("Settings") => stream_processor_settings()
      }
      
  """
  @type create_stream_processor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      index_faces_response() :: %{
        "FaceModelVersion" => String.t(),
        "FaceRecords" => list(face_record()()),
        "OrientationCorrection" => list(any()),
        "UnindexedFaces" => list(unindexed_face()())
      }
      
  """
  @type index_faces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_media_analysis_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type get_media_analysis_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      technical_cue_segment() :: %{
        "Confidence" => float(),
        "Type" => list(any())
      }
      
  """
  @type technical_cue_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_config() :: %{
        "S3Bucket" => String.t(),
        "S3KeyPrefix" => String.t()
      }
      
  """
  @type output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      video_metadata() :: %{
        "Codec" => String.t(),
        "ColorRange" => list(any()),
        "DurationMillis" => float(),
        "Format" => String.t(),
        "FrameHeight" => float(),
        "FrameRate" => float(),
        "FrameWidth" => float()
      }
      
  """
  @type video_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_moderation_labels_request() :: %{
        optional("HumanLoopConfig") => human_loop_config(),
        optional("MinConfidence") => float(),
        optional("ProjectVersion") => String.t(),
        required("Image") => image()
      }
      
  """
  @type detect_moderation_labels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eyeglasses() :: %{
        "Confidence" => float(),
        "Value" => boolean()
      }
      
  """
  @type eyeglasses() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_content_moderation_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_content_moderation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_segment_detection_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_segment_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsuccessful_face_association() :: %{
        "Confidence" => float(),
        "FaceId" => String.t(),
        "Reasons" => list(list(any())()),
        "UserId" => String.t()
      }
      
  """
  @type unsuccessful_face_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_faces_request() :: %{
        optional("Attributes") => list(list(any())()),
        required("Image") => image()
      }
      
  """
  @type detect_faces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_response() :: %{
        "DatasetDescription" => dataset_description()
      }
      
  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      person_detection() :: %{
        "Person" => person_detail(),
        "Timestamp" => float()
      }
      
  """
  @type person_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_person_tracking_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobTag") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        required("Video") => video()
      }
      
  """
  @type start_person_tracking_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      distribute_dataset() :: %{
        "Arn" => String.t()
      }
      
  """
  @type distribute_dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_image_format_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_image_format_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_request() :: %{
        optional("DatasetSource") => dataset_source(),
        optional("Tags") => map(),
        required("DatasetType") => list(any()),
        required("ProjectArn") => String.t()
      }
      
  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      face_detection() :: %{
        "Face" => face_detail(),
        "Timestamp" => float()
      }
      
  """
  @type face_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audit_image() :: %{
        "BoundingBox" => bounding_box(),
        "Bytes" => binary(),
        "S3Object" => s3_object()
      }
      
  """
  @type audit_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_celebrity_recognition_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_celebrity_recognition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_segment_detection_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("JobId") => String.t()
      }
      
  """
  @type get_segment_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shot_segment() :: %{
        "Confidence" => float(),
        "Index" => float()
      }
      
  """
  @type shot_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_face_liveness_session_results_response() :: %{
        "AuditImages" => list(audit_image()()),
        "Confidence" => float(),
        "ReferenceImage" => audit_image(),
        "SessionId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type get_face_liveness_session_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stream_processor_response() :: %{}
      
  """
  @type delete_stream_processor_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociated_face() :: %{
        "FaceId" => String.t()
      }
      
  """
  @type disassociated_face() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        "UserId" => String.t(),
        "UserStatus" => list(any())
      }
      
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_detection() :: %{
        "Confidence" => float(),
        "DetectedText" => String.t(),
        "Geometry" => geometry(),
        "Id" => integer(),
        "ParentId" => integer(),
        "Type" => list(any())
      }
      
  """
  @type text_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_detection_result() :: %{
        "TextDetection" => text_detection(),
        "Timestamp" => float()
      }
      
  """
  @type text_detection_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_request() :: %{
        optional("AutoUpdate") => list(any()),
        optional("Feature") => list(any()),
        optional("Tags") => map(),
        required("ProjectName") => String.t()
      }
      
  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_policy_document_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type malformed_policy_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_not_found_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type session_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customization_feature_config() :: %{
        "ContentModeration" => customization_feature_content_moderation_config()
      }
      
  """
  @type customization_feature_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stream_processor_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type describe_stream_processor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pose() :: %{
        "Pitch" => float(),
        "Roll" => float(),
        "Yaw" => float()
      }
      
  """
  @type pose() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stream_processor_request() :: %{
        optional("DataSharingPreferenceForUpdate") => stream_processor_data_sharing_preference(),
        optional("ParametersToDelete") => list(list(any())()),
        optional("RegionsOfInterestForUpdate") => list(region_of_interest()()),
        optional("SettingsForUpdate") => stream_processor_settings_for_update(),
        required("Name") => String.t()
      }
      
  """
  @type update_stream_processor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_stream_processor_request() :: %{
        optional("StartSelector") => stream_processing_start_selector(),
        optional("StopSelector") => stream_processing_stop_selector(),
        required("Name") => String.t()
      }
      
  """
  @type start_stream_processor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_project_version_request() :: %{
        optional("KmsKeyId") => String.t(),
        optional("Tags") => map(),
        required("DestinationProjectArn") => String.t(),
        required("OutputConfig") => output_config(),
        required("SourceProjectArn") => String.t(),
        required("SourceProjectVersionArn") => String.t(),
        required("VersionName") => String.t()
      }
      
  """
  @type copy_project_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      equipment_detection() :: %{
        "BoundingBox" => bounding_box(),
        "Confidence" => float(),
        "CoversBodyPart" => covers_body_part(),
        "Type" => list(any())
      }
      
  """
  @type equipment_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("CollectionId") => String.t()
      }
      
  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      general_labels_settings() :: %{
        "LabelCategoryExclusionFilters" => list(String.t()()),
        "LabelCategoryInclusionFilters" => list(String.t()()),
        "LabelExclusionFilters" => list(String.t()()),
        "LabelInclusionFilters" => list(String.t()())
      }
      
  """
  @type general_labels_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_analysis_input() :: %{
        "S3Object" => s3_object()
      }
      
  """
  @type media_analysis_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_processor_notification_channel() :: %{
        "SNSTopicArn" => String.t()
      }
      
  """
  @type stream_processor_notification_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_media_analysis_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_media_analysis_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_analysis_detect_moderation_labels_config() :: %{
        "MinConfidence" => float(),
        "ProjectVersion" => String.t()
      }
      
  """
  @type media_analysis_detect_moderation_labels_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_manifest_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_manifest_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      video_too_large_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type video_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_quota_exceeded_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ResourceType" => String.t(),
        "ServiceCode" => String.t()
      }
      
  """
  @type human_loop_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_faces_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("CollectionId") => String.t(),
        required("FaceIds") => list(String.t()()),
        required("UserId") => String.t()
      }
      
  """
  @type disassociate_faces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_text_detection_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "JobTag" => String.t(),
        "NextToken" => String.t(),
        "StatusMessage" => String.t(),
        "TextDetections" => list(text_detection_result()()),
        "TextModelVersion" => String.t(),
        "Video" => video(),
        "VideoMetadata" => video_metadata()
      }
      
  """
  @type get_text_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_celebrity_info_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type get_celebrity_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protective_equipment_summary() :: %{
        "PersonsIndeterminate" => list(integer()()),
        "PersonsWithRequiredEquipment" => list(integer()()),
        "PersonsWithoutRequiredEquipment" => list(integer()())
      }
      
  """
  @type protective_equipment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_text_detection_filters() :: %{
        "RegionsOfInterest" => list(region_of_interest()()),
        "WordFilter" => detection_filter()
      }
      
  """
  @type start_text_detection_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_segment_detection_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Filters") => start_segment_detection_filters(),
        optional("JobTag") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        required("SegmentTypes") => list(list(any())()),
        required("Video") => video()
      }
      
  """
  @type start_segment_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result() :: %{
        "F1Score" => float(),
        "Summary" => summary()
      }
      
  """
  @type evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_match() :: %{
        "Similarity" => float(),
        "User" => matched_user()
      }
      
  """
  @type user_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_request() :: %{
        required("DatasetArn") => String.t()
      }
      
  """
  @type describe_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_request() :: %{
        required("DatasetArn") => String.t()
      }
      
  """
  @type delete_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_labels_image_quality() :: %{
        "Brightness" => float(),
        "Contrast" => float(),
        "Sharpness" => float()
      }
      
  """
  @type detect_labels_image_quality() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_project_versions_response() :: %{
        "NextToken" => String.t(),
        "ProjectVersionDescriptions" => list(project_version_description()())
      }
      
  """
  @type describe_project_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_labels_settings() :: %{
        "GeneralLabels" => general_labels_settings(),
        "ImageProperties" => detect_labels_image_properties_settings()
      }
      
  """
  @type detect_labels_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      liveness_output_config() :: %{
        "S3Bucket" => String.t(),
        "S3KeyPrefix" => String.t()
      }
      
  """
  @type liveness_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      face_record() :: %{
        "Face" => face(),
        "FaceDetail" => face_detail()
      }
      
  """
  @type face_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_label_detection_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_label_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parent() :: %{
        "Name" => String.t()
      }
      
  """
  @type parent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_data() :: %{
        "Assets" => list(asset()())
      }
      
  """
  @type validation_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_project_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("VersionNames") => list(String.t()()),
        required("ProjectArn") => String.t()
      }
      
  """
  @type describe_project_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_labels_image_foreground() :: %{
        "DominantColors" => list(dominant_color()()),
        "Quality" => detect_labels_image_quality()
      }
      
  """
  @type detect_labels_image_foreground() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_object_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_s3_object_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_analysis_model_versions() :: %{
        "Moderation" => String.t()
      }
      
  """
  @type media_analysis_model_versions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_request() :: %{
        required("ProjectArn") => String.t()
      }
      
  """
  @type delete_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_data_stream() :: %{
        "Arn" => String.t()
      }
      
  """
  @type kinesis_data_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_alias() :: %{
        "Name" => String.t()
      }
      
  """
  @type label_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mustache() :: %{
        "Confidence" => float(),
        "Value" => boolean()
      }
      
  """
  @type mustache() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sunglasses() :: %{
        "Confidence" => float(),
        "Value" => boolean()
      }
      
  """
  @type sunglasses() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_config() :: %{
        "DataAttributes" => human_loop_data_attributes(),
        "FlowDefinitionArn" => String.t(),
        "HumanLoopName" => String.t()
      }
      
  """
  @type human_loop_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_face_search_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("FaceMatchThreshold") => float(),
        optional("JobTag") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        required("CollectionId") => String.t(),
        required("Video") => video()
      }
      
  """
  @type start_face_search_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_ready_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type resource_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_collection_response() :: %{
        "StatusCode" => integer()
      }
      
  """
  @type delete_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_content_moderation_response() :: %{
        "GetRequestMetadata" => get_content_moderation_request_metadata(),
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "JobTag" => String.t(),
        "ModerationLabels" => list(content_moderation_detection()()),
        "ModerationModelVersion" => String.t(),
        "NextToken" => String.t(),
        "StatusMessage" => String.t(),
        "Video" => video(),
        "VideoMetadata" => video_metadata()
      }
      
  """
  @type get_content_moderation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{}
      
  """
  @type create_user_response() :: %{}

  @typedoc """

  ## Example:
      
      compare_faces_response() :: %{
        "FaceMatches" => list(compare_faces_match()()),
        "SourceImageFace" => compared_source_image_face(),
        "SourceImageOrientationCorrection" => list(any()),
        "TargetImageOrientationCorrection" => list(any()),
        "UnmatchedFaces" => list(compared_face()())
      }
      
  """
  @type compare_faces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_policy() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "PolicyDocument" => String.t(),
        "PolicyName" => String.t(),
        "PolicyRevisionId" => String.t(),
        "ProjectArn" => String.t()
      }
      
  """
  @type project_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_faces_by_image_response() :: %{
        "FaceMatches" => list(face_match()()),
        "FaceModelVersion" => String.t(),
        "SearchedFaceBoundingBox" => bounding_box(),
        "SearchedFaceConfidence" => float()
      }
      
  """
  @type search_faces_by_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_entries_response() :: %{
        "DatasetEntries" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_dataset_entries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      summary() :: %{
        "S3Object" => s3_object()
      }
      
  """
  @type summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_video_stream() :: %{
        "Arn" => String.t()
      }
      
  """
  @type kinesis_video_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_metadata() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "DatasetArn" => String.t(),
        "DatasetType" => list(any()),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "StatusMessageCode" => list(any())
      }
      
  """
  @type dataset_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_labels_image_background() :: %{
        "DominantColors" => list(dominant_color()()),
        "Quality" => detect_labels_image_quality()
      }
      
  """
  @type detect_labels_image_background() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      celebrity_detail() :: %{
        "BoundingBox" => bounding_box(),
        "Confidence" => float(),
        "Face" => face_detail(),
        "Id" => String.t(),
        "KnownGender" => known_gender(),
        "Name" => String.t(),
        "Urls" => list(String.t()())
      }
      
  """
  @type celebrity_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_processing_stop_selector() :: %{
        "MaxDurationInSeconds" => float()
      }
      
  """
  @type stream_processing_stop_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audio_metadata() :: %{
        "Codec" => String.t(),
        "DurationMillis" => float(),
        "NumberOfChannels" => float(),
        "SampleRate" => float()
      }
      
  """
  @type audio_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gender() :: %{
        "Confidence" => float(),
        "Value" => list(any())
      }
      
  """
  @type gender() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label() :: %{
        "Aliases" => list(label_alias()()),
        "Categories" => list(label_category()()),
        "Confidence" => float(),
        "Instances" => list(instance()()),
        "Name" => String.t(),
        "Parents" => list(parent()())
      }
      
  """
  @type label() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_face_search_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "JobTag" => String.t(),
        "NextToken" => String.t(),
        "Persons" => list(person_match()()),
        "StatusMessage" => String.t(),
        "Video" => video(),
        "VideoMetadata" => video_metadata()
      }
      
  """
  @type get_face_search_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_project_version_request() :: %{
        optional("MaxInferenceUnits") => integer(),
        required("MinInferenceUnits") => integer(),
        required("ProjectVersionArn") => String.t()
      }
      
  """
  @type start_project_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compared_face() :: %{
        "BoundingBox" => bounding_box(),
        "Confidence" => float(),
        "Emotions" => list(emotion()()),
        "Landmarks" => list(landmark()()),
        "Pose" => pose(),
        "Quality" => image_quality(),
        "Smile" => smile()
      }
      
  """
  @type compared_face() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_face_detection_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("JobId") => String.t()
      }
      
  """
  @type get_face_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_version_request() :: %{
        required("ProjectVersionArn") => String.t()
      }
      
  """
  @type delete_project_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_project_version_response() :: %{
        "Status" => list(any())
      }
      
  """
  @type stop_project_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("CollectionId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_face_liveness_session_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("Settings") => create_face_liveness_session_request_settings()
      }
      
  """
  @type create_face_liveness_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_pagination_token_exception() :: %{
        "Code" => String.t(),
        "Logref" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_pagination_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_version_response() :: %{
        "Status" => list(any())
      }
      
  """
  @type delete_project_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_person_tracking_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        required("JobId") => String.t()
      }
      
  """
  @type get_person_tracking_request() :: %{String.t() => any()}

  @type associate_faces_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | provisioned_throughput_exceeded_exception()

  @type compare_faces_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type copy_project_version_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type create_collection_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_quota_exceeded_exception()
          | provisioned_throughput_exceeded_exception()

  @type create_dataset_errors() ::
          invalid_s3_object_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type create_face_liveness_session_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()

  @type create_project_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type create_project_version_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type create_stream_processor_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_quota_exceeded_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type create_user_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | provisioned_throughput_exceeded_exception()

  @type delete_collection_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type delete_dataset_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type delete_faces_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type delete_project_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type delete_project_policy_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | invalid_policy_revision_id_exception()
          | provisioned_throughput_exceeded_exception()

  @type delete_project_version_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type delete_stream_processor_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type delete_user_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | provisioned_throughput_exceeded_exception()

  @type describe_collection_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type describe_dataset_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type describe_project_versions_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type describe_projects_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()

  @type describe_stream_processor_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type detect_custom_labels_errors() ::
          resource_not_ready_exception()
          | invalid_s3_object_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type detect_faces_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type detect_labels_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type detect_moderation_labels_errors() ::
          resource_not_ready_exception()
          | invalid_s3_object_exception()
          | human_loop_quota_exceeded_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type detect_protective_equipment_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type detect_text_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type disassociate_faces_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | provisioned_throughput_exceeded_exception()

  @type distribute_dataset_entries_errors() ::
          resource_not_ready_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_celebrity_info_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_celebrity_recognition_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_content_moderation_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_face_detection_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_face_liveness_session_results_errors() ::
          session_not_found_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()

  @type get_face_search_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_label_detection_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_media_analysis_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_person_tracking_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_segment_detection_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_text_detection_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type index_faces_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type list_collections_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type list_dataset_entries_errors() ::
          invalid_pagination_token_exception()
          | resource_not_ready_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type list_dataset_labels_errors() ::
          invalid_pagination_token_exception()
          | resource_not_ready_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type list_faces_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type list_media_analysis_jobs_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()

  @type list_project_policies_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type list_stream_processors_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type list_users_errors() ::
          invalid_pagination_token_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type put_project_policy_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | malformed_policy_document_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | invalid_policy_revision_id_exception()
          | provisioned_throughput_exceeded_exception()

  @type recognize_celebrities_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type search_faces_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type search_faces_by_image_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type search_users_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type search_users_by_image_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_image_format_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | image_too_large_exception()

  @type start_celebrity_recognition_errors() ::
          invalid_s3_object_exception()
          | video_too_large_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()

  @type start_content_moderation_errors() ::
          invalid_s3_object_exception()
          | video_too_large_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()

  @type start_face_detection_errors() ::
          invalid_s3_object_exception()
          | video_too_large_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()

  @type start_face_search_errors() ::
          invalid_s3_object_exception()
          | video_too_large_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type start_label_detection_errors() ::
          invalid_s3_object_exception()
          | video_too_large_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()

  @type start_media_analysis_job_errors() ::
          resource_not_ready_exception()
          | invalid_s3_object_exception()
          | invalid_manifest_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type start_person_tracking_errors() ::
          invalid_s3_object_exception()
          | video_too_large_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()

  @type start_project_version_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type start_segment_detection_errors() ::
          invalid_s3_object_exception()
          | video_too_large_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()

  @type start_stream_processor_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type start_text_detection_errors() ::
          invalid_s3_object_exception()
          | video_too_large_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()

  @type stop_project_version_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type stop_stream_processor_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type update_dataset_entries_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  @type update_stream_processor_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2016-06-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rekognition",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Rekognition",
      signature_version: "v4",
      signing_name: "rekognition",
      target_prefix: "RekognitionService"
    }
  end

  @doc """
  Associates one or more faces with an existing UserID. Takes an array of
  `FaceIds`. Each `FaceId` that are present in the `FaceIds` list is associated
  with the provided UserID. The maximum number of total `FaceIds` per UserID is
  100. The `UserMatchThreshold` parameter specifies the minimum user match
  confidence required for the face to be associated with a UserID that has at
  least one `FaceID` already associated. This ensures that the `FaceIds` are
  associated with the right UserID. The value ranges from 0-100 and default
  value is 75.
  """
  @spec associate_faces(AWS.Client.t(), associate_faces_request(), Keyword.t()) ::
          {:ok, associate_faces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_faces_errors()}
  def associate_faces(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateFaces", input, options)
  end

  @doc """
  Compares a face in the *source* input image with each of the 100 largest faces
  detected in the *target* input image. If the source image contains multiple
  faces, the service detects the largest face and compares it with each face
  detected in the target image.
  """
  @spec compare_faces(AWS.Client.t(), compare_faces_request(), Keyword.t()) ::
          {:ok, compare_faces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, compare_faces_errors()}
  def compare_faces(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CompareFaces", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Copies a
  version of an Amazon Rekognition Custom Labels model from a source project to
  a destination project. The source and destination projects can be in different
  AWS accounts but must be in the same AWS Region. You can't copy a model to
  another AWS service.
  """
  @spec copy_project_version(AWS.Client.t(), copy_project_version_request(), Keyword.t()) ::
          {:ok, copy_project_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_project_version_errors()}
  def copy_project_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopyProjectVersion", input, options)
  end

  @doc """
  Creates a collection in an AWS Region. You can add faces to the collection using
  the `IndexFaces` operation. For example, you might create collections, one for
  each of your application users. A user can then index faces using the
  `IndexFaces` operation and persist results in a specific collection. Then, a
  user can search the collection for faces in the user-specific container.
  """
  @spec create_collection(AWS.Client.t(), create_collection_request(), Keyword.t()) ::
          {:ok, create_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_collection_errors()}
  def create_collection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCollection", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Creates a new
  Amazon Rekognition Custom Labels dataset. You can create a dataset by using an
  Amazon Sagemaker format manifest file or by copying an existing Amazon
  Rekognition Custom Labels dataset.
  """
  @spec create_dataset(AWS.Client.t(), create_dataset_request(), Keyword.t()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataset_errors()}
  def create_dataset(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDataset", input, options)
  end

  @doc """
  This API operation initiates a Face Liveness session. It returns a `SessionId`,
  which you can use to start streaming Face Liveness video and get the results
  for a Face Liveness session. You can use the `OutputConfig` option in the
  Settings parameter to provide an Amazon S3 bucket location. The Amazon S3
  bucket stores reference images and audit images. If no Amazon S3 bucket is
  defined, raw bytes are sent instead.
  """
  @spec create_face_liveness_session(
          AWS.Client.t(),
          create_face_liveness_session_request(),
          Keyword.t()
        ) ::
          {:ok, create_face_liveness_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_face_liveness_session_errors()}
  def create_face_liveness_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFaceLivenessSession", input, options)
  end

  @doc """
  Creates a new Amazon Rekognition project. A project is a group of resources
  (datasets, model versions) that you use to create and manage a Amazon
  Rekognition Custom Labels Model or custom adapter. You can specify a feature
  to create the project with, if no feature is specified then Custom Labels is
  used by default. For adapters, you can also choose whether or not to have the
  project auto update by using the AutoUpdate argument. This operation requires
  permissions to perform the `rekognition:CreateProject` action.
  """
  @spec create_project(AWS.Client.t(), create_project_request(), Keyword.t()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProject", input, options)
  end

  @doc """
  Creates a new version of Amazon Rekognition project (like a Custom Labels model
  or a custom adapter) and begins training. Models and adapters are managed as
  part of a Rekognition project. The response from `CreateProjectVersion` is an
  Amazon Resource Name (ARN) for the project version. The FeatureConfig
  operation argument allows you to configure specific model or adapter settings.
  You can provide a description to the project version by using the
  VersionDescription argment. Training can take a while to complete. You can get
  the current status by calling `DescribeProjectVersions`. Training completed
  successfully if the value of the `Status` field is `TRAINING_COMPLETED`. Once
  training has successfully completed, call `DescribeProjectVersions` to get the
  training results and evaluate the model.
  """
  @spec create_project_version(AWS.Client.t(), create_project_version_request(), Keyword.t()) ::
          {:ok, create_project_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_version_errors()}
  def create_project_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProjectVersion", input, options)
  end

  @doc """
  Creates an Amazon Rekognition stream processor that you can use to detect and
  recognize faces or to detect labels in a streaming video. Amazon Rekognition
  Video is a consumer of live video from Amazon Kinesis Video Streams. There are
  two different settings for stream processors in Amazon Rekognition: detecting
  faces and detecting labels.
  """
  @spec create_stream_processor(AWS.Client.t(), create_stream_processor_request(), Keyword.t()) ::
          {:ok, create_stream_processor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stream_processor_errors()}
  def create_stream_processor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStreamProcessor", input, options)
  end

  @doc """
  Creates a new User within a collection specified by `CollectionId`. Takes
  `UserId` as a parameter, which is a user provided ID which should be unique
  within the collection. The provided `UserId` will alias the system generated
  UUID to make the `UserId` more user friendly.
  """
  @spec create_user(AWS.Client.t(), create_user_request(), Keyword.t()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
  Deletes the specified collection. Note that this operation removes all faces in
  the collection. For an example, see [Deleting a
  collection](https://docs.aws.amazon.com/rekognition/latest/dg/delete-collection-procedure.html).
  """
  @spec delete_collection(AWS.Client.t(), delete_collection_request(), Keyword.t()) ::
          {:ok, delete_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_collection_errors()}
  def delete_collection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCollection", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Deletes an
  existing Amazon Rekognition Custom Labels dataset. Deleting a dataset might
  take while. Use `DescribeDataset` to check the current status. The dataset is
  still deleting if the value of `Status` is `DELETE_IN_PROGRESS`. If you try to
  access the dataset after it is deleted, you get a `ResourceNotFoundException`
  exception.
  """
  @spec delete_dataset(AWS.Client.t(), delete_dataset_request(), Keyword.t()) ::
          {:ok, delete_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_errors()}
  def delete_dataset(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDataset", input, options)
  end

  @doc """
  Deletes faces from a collection. You specify a collection ID and an array of
  face IDs to remove from the collection.
  """
  @spec delete_faces(AWS.Client.t(), delete_faces_request(), Keyword.t()) ::
          {:ok, delete_faces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_faces_errors()}
  def delete_faces(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFaces", input, options)
  end

  @doc """
  Deletes a Amazon Rekognition project. To delete a project you must first delete
  all models or adapters associated with the project. To delete a model or
  adapter, see `DeleteProjectVersion`. `DeleteProject` is an asynchronous
  operation. To check if the project is deleted, call `DescribeProjects`. The
  project is deleted when the project no longer appears in the response. Be
  aware that deleting a given project will also delete any `ProjectPolicies`
  associated with that project.
  """
  @spec delete_project(AWS.Client.t(), delete_project_request(), Keyword.t()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProject", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Deletes an
  existing project policy.
  """
  @spec delete_project_policy(AWS.Client.t(), delete_project_policy_request(), Keyword.t()) ::
          {:ok, delete_project_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_policy_errors()}
  def delete_project_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProjectPolicy", input, options)
  end

  @doc """
  Deletes a Rekognition project model or project version, like a Amazon
  Rekognition Custom Labels model or a custom adapter. You can't delete a
  project version if it is running or if it is training. To check the status of
  a project version, use the Status field returned from
  `DescribeProjectVersions`. To stop a project version call
  `StopProjectVersion`. If the project version is training, wait until it
  finishes.
  """
  @spec delete_project_version(AWS.Client.t(), delete_project_version_request(), Keyword.t()) ::
          {:ok, delete_project_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_version_errors()}
  def delete_project_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProjectVersion", input, options)
  end

  @doc """
  Deletes the stream processor identified by `Name`. You assign the value for
  `Name` when you create the stream processor with `CreateStreamProcessor`. You
  might not be able to use the same name for a stream processor for a few
  seconds after calling `DeleteStreamProcessor`.
  """
  @spec delete_stream_processor(AWS.Client.t(), delete_stream_processor_request(), Keyword.t()) ::
          {:ok, delete_stream_processor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stream_processor_errors()}
  def delete_stream_processor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteStreamProcessor", input, options)
  end

  @doc """
  Deletes the specified UserID within the collection. Faces that are associated
  with the UserID are disassociated from the UserID before deleting the
  specified UserID. If the specified `Collection` or `UserID` is already deleted
  or not found, a `ResourceNotFoundException` will be thrown. If the action is
  successful with a 200 response, an empty HTTP body is returned.
  """
  @spec delete_user(AWS.Client.t(), delete_user_request(), Keyword.t()) ::
          {:ok, delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Describes the specified collection. You can use `DescribeCollection` to get
  information, such as the number of faces indexed into a collection and the
  version of the model used by the collection for face detection.
  """
  @spec describe_collection(AWS.Client.t(), describe_collection_request(), Keyword.t()) ::
          {:ok, describe_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_collection_errors()}
  def describe_collection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCollection", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Describes an
  Amazon Rekognition Custom Labels dataset. You can get information such as the
  current status of a dataset and statistics about the images and labels in a
  dataset.
  """
  @spec describe_dataset(AWS.Client.t(), describe_dataset_request(), Keyword.t()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dataset_errors()}
  def describe_dataset(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataset", input, options)
  end

  @doc """
  Lists and describes the versions of an Amazon Rekognition project. You can
  specify up to 10 model or adapter versions in `ProjectVersionArns`. If you
  don't specify a value, descriptions for all model/adapter versions in the
  project are returned.
  """
  @spec describe_project_versions(
          AWS.Client.t(),
          describe_project_versions_request(),
          Keyword.t()
        ) ::
          {:ok, describe_project_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_project_versions_errors()}
  def describe_project_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProjectVersions", input, options)
  end

  @doc """
  Gets information about your Rekognition projects.
  """
  @spec describe_projects(AWS.Client.t(), describe_projects_request(), Keyword.t()) ::
          {:ok, describe_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_projects_errors()}
  def describe_projects(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProjects", input, options)
  end

  @doc """
  Provides information about a stream processor created by
  `CreateStreamProcessor`. You can get information about the input and output
  streams, the input parameters for the face recognition being performed, and
  the current status of the stream processor.
  """
  @spec describe_stream_processor(
          AWS.Client.t(),
          describe_stream_processor_request(),
          Keyword.t()
        ) ::
          {:ok, describe_stream_processor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_stream_processor_errors()}
  def describe_stream_processor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStreamProcessor", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Detects custom
  labels in a supplied image by using an Amazon Rekognition Custom Labels model.
  """
  @spec detect_custom_labels(AWS.Client.t(), detect_custom_labels_request(), Keyword.t()) ::
          {:ok, detect_custom_labels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_custom_labels_errors()}
  def detect_custom_labels(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectCustomLabels", input, options)
  end

  @doc """
  Detects faces within an image that is provided as input. `DetectFaces` detects
  the 100 largest faces in the image. For each face detected, the operation
  returns face details. These details include a bounding box of the face, a
  confidence value (that the bounding box contains a face), and a fixed set of
  attributes such as facial landmarks (for example, coordinates of eye and
  mouth), pose, presence of facial occlusion, and so on.
  """
  @spec detect_faces(AWS.Client.t(), detect_faces_request(), Keyword.t()) ::
          {:ok, detect_faces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_faces_errors()}
  def detect_faces(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectFaces", input, options)
  end

  @doc """
  Detects instances of real-world entities within an image (JPEG or PNG) provided
  as input. This includes objects like flower, tree, and table; events like
  wedding, graduation, and birthday party; and concepts like landscape, evening,
  and nature. For an example, see Analyzing images stored in an Amazon S3 bucket
  in the Amazon Rekognition Developer Guide.
  """
  @spec detect_labels(AWS.Client.t(), detect_labels_request(), Keyword.t()) ::
          {:ok, detect_labels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_labels_errors()}
  def detect_labels(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectLabels", input, options)
  end

  @doc """
  Detects unsafe content in a specified JPEG or PNG format image. Use
  `DetectModerationLabels` to moderate images depending on your requirements.
  For example, you might want to filter images that contain nudity, but not
  images containing suggestive content. To filter images, use the labels
  returned by `DetectModerationLabels` to determine which types of content are
  appropriate.
  """
  @spec detect_moderation_labels(AWS.Client.t(), detect_moderation_labels_request(), Keyword.t()) ::
          {:ok, detect_moderation_labels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_moderation_labels_errors()}
  def detect_moderation_labels(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectModerationLabels", input, options)
  end

  @doc """
  Detects Personal Protective Equipment (PPE) worn by people detected in an image.
  Amazon Rekognition can detect the following types of PPE.
  """
  @spec detect_protective_equipment(
          AWS.Client.t(),
          detect_protective_equipment_request(),
          Keyword.t()
        ) ::
          {:ok, detect_protective_equipment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_protective_equipment_errors()}
  def detect_protective_equipment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectProtectiveEquipment", input, options)
  end

  @doc """
  Detects text in the input image and converts it into machine-readable text. Pass
  the input image as base64-encoded image bytes or as a reference to an image in
  an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition
  operations, you must pass it as a reference to an image in an Amazon S3
  bucket. For the AWS CLI, passing image bytes is not supported. The image must
  be either a .png or .jpeg formatted file.
  """
  @spec detect_text(AWS.Client.t(), detect_text_request(), Keyword.t()) ::
          {:ok, detect_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_text_errors()}
  def detect_text(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectText", input, options)
  end

  @doc """
  Removes the association between a `Face` supplied in an array of `FaceIds` and
  the User. If the User is not present already, then a `ResourceNotFound`
  exception is thrown. If successful, an array of faces that are disassociated
  from the User is returned. If a given face is already disassociated from the
  given UserID, it will be ignored and not be returned in the response. If a
  given face is already associated with a different User or not found in the
  collection it will be returned as part of `UnsuccessfulDisassociations`. You
  can remove 1 - 100 face IDs from a user at one time.
  """
  @spec disassociate_faces(AWS.Client.t(), disassociate_faces_request(), Keyword.t()) ::
          {:ok, disassociate_faces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_faces_errors()}
  def disassociate_faces(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateFaces", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Distributes the
  entries (images) in a training dataset across the training dataset and the
  test dataset for a project. `DistributeDatasetEntries` moves 20% of the
  training dataset images to the test dataset. An entry is a JSON Line that
  describes an image.
  """
  @spec distribute_dataset_entries(
          AWS.Client.t(),
          distribute_dataset_entries_request(),
          Keyword.t()
        ) ::
          {:ok, distribute_dataset_entries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, distribute_dataset_entries_errors()}
  def distribute_dataset_entries(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DistributeDatasetEntries", input, options)
  end

  @doc """
  Gets the name and additional information about a celebrity based on their Amazon
  Rekognition ID. The additional information is returned as an array of URLs. If
  there is no additional information about the celebrity, this list is empty.
  For more information, see Getting information about a celebrity in the Amazon
  Rekognition Developer Guide.
  """
  @spec get_celebrity_info(AWS.Client.t(), get_celebrity_info_request(), Keyword.t()) ::
          {:ok, get_celebrity_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_celebrity_info_errors()}
  def get_celebrity_info(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCelebrityInfo", input, options)
  end

  @doc """
  Gets the celebrity recognition results for a Amazon Rekognition Video analysis
  started by `StartCelebrityRecognition`. Celebrity recognition in a video is an
  asynchronous operation. Analysis is started by a call to
  `StartCelebrityRecognition` which returns a job identifier (`JobId`).
  """
  @spec get_celebrity_recognition(
          AWS.Client.t(),
          get_celebrity_recognition_request(),
          Keyword.t()
        ) ::
          {:ok, get_celebrity_recognition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_celebrity_recognition_errors()}
  def get_celebrity_recognition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCelebrityRecognition", input, options)
  end

  @doc """
  Gets the inappropriate, unwanted, or offensive content analysis results for a
  Amazon Rekognition Video analysis started by `StartContentModeration`. For a
  list of moderation labels in Amazon Rekognition, see [Using the image and
  video moderation
  APIs](https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api).
  Amazon Rekognition Video inappropriate or offensive content detection in a
  stored video is an asynchronous operation. You start analysis by calling
  `StartContentModeration` which returns a job identifier (`JobId`). When
  analysis finishes, Amazon Rekognition Video publishes a completion status to
  the Amazon Simple Notification Service topic registered in the initial call to
  `StartContentModeration`. To get the results of the content analysis, first
  check that the status value published to the Amazon SNS topic is `SUCCEEDED`.
  If so, call `GetContentModeration` and pass the job identifier (`JobId`) from
  the initial call to `StartContentModeration`.
  """
  @spec get_content_moderation(AWS.Client.t(), get_content_moderation_request(), Keyword.t()) ::
          {:ok, get_content_moderation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_content_moderation_errors()}
  def get_content_moderation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContentModeration", input, options)
  end

  @doc """
  Gets face detection results for a Amazon Rekognition Video analysis started by
  `StartFaceDetection`. Face detection with Amazon Rekognition Video is an
  asynchronous operation. You start face detection by calling
  `StartFaceDetection` which returns a job identifier (`JobId`). When the face
  detection operation finishes, Amazon Rekognition Video publishes a completion
  status to the Amazon Simple Notification Service topic registered in the
  initial call to `StartFaceDetection`. To get the results of the face detection
  operation, first check that the status value published to the Amazon SNS topic
  is `SUCCEEDED`. If so, call `GetFaceDetection` and pass the job identifier
  (`JobId`) from the initial call to `StartFaceDetection`.
  """
  @spec get_face_detection(AWS.Client.t(), get_face_detection_request(), Keyword.t()) ::
          {:ok, get_face_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_face_detection_errors()}
  def get_face_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFaceDetection", input, options)
  end

  @doc """
  Retrieves the results of a specific Face Liveness session. It requires the
  `sessionId` as input, which was created using `CreateFaceLivenessSession`.
  Returns the corresponding Face Liveness confidence score, a reference image
  that includes a face bounding box, and audit images that also contain face
  bounding boxes. The Face Liveness confidence score ranges from 0 to 100.
  """
  @spec get_face_liveness_session_results(
          AWS.Client.t(),
          get_face_liveness_session_results_request(),
          Keyword.t()
        ) ::
          {:ok, get_face_liveness_session_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_face_liveness_session_results_errors()}
  def get_face_liveness_session_results(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFaceLivenessSessionResults", input, options)
  end

  @doc """
  Gets the face search results for Amazon Rekognition Video face search started by
  `StartFaceSearch`. The search returns faces in a collection that match the
  faces of persons detected in a video. It also includes the time(s) that faces
  are matched in the video. Face search in a video is an asynchronous operation.
  You start face search by calling to `StartFaceSearch` which returns a job
  identifier (`JobId`). When the search operation finishes, Amazon Rekognition
  Video publishes a completion status to the Amazon Simple Notification Service
  topic registered in the initial call to `StartFaceSearch`. To get the search
  results, first check that the status value published to the Amazon SNS topic
  is `SUCCEEDED`. If so, call `GetFaceSearch` and pass the job identifier
  (`JobId`) from the initial call to `StartFaceSearch`.
  """
  @spec get_face_search(AWS.Client.t(), get_face_search_request(), Keyword.t()) ::
          {:ok, get_face_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_face_search_errors()}
  def get_face_search(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFaceSearch", input, options)
  end

  @doc """
  Gets the label detection results of a Amazon Rekognition Video analysis started
  by `StartLabelDetection`. The label detection operation is started by a call
  to `StartLabelDetection` which returns a job identifier (`JobId`). When the
  label detection operation finishes, Amazon Rekognition publishes a completion
  status to the Amazon Simple Notification Service topic registered in the
  initial call to `StartlabelDetection`.
  """
  @spec get_label_detection(AWS.Client.t(), get_label_detection_request(), Keyword.t()) ::
          {:ok, get_label_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_label_detection_errors()}
  def get_label_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLabelDetection", input, options)
  end

  @doc """
  Retrieves the results for a given media analysis job. Takes a `JobId` returned
  by StartMediaAnalysisJob.
  """
  @spec get_media_analysis_job(AWS.Client.t(), get_media_analysis_job_request(), Keyword.t()) ::
          {:ok, get_media_analysis_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_media_analysis_job_errors()}
  def get_media_analysis_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMediaAnalysisJob", input, options)
  end

  @doc """
  Gets the path tracking results of a Amazon Rekognition Video analysis started by
  `StartPersonTracking`. The person path tracking operation is started by a call
  to `StartPersonTracking` which returns a job identifier (`JobId`). When the
  operation finishes, Amazon Rekognition Video publishes a completion status to
  the Amazon Simple Notification Service topic registered in the initial call to
  `StartPersonTracking`.
  """
  @spec get_person_tracking(AWS.Client.t(), get_person_tracking_request(), Keyword.t()) ::
          {:ok, get_person_tracking_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_person_tracking_errors()}
  def get_person_tracking(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPersonTracking", input, options)
  end

  @doc """
  Gets the segment detection results of a Amazon Rekognition Video analysis
  started by `StartSegmentDetection`. Segment detection with Amazon Rekognition
  Video is an asynchronous operation. You start segment detection by calling
  `StartSegmentDetection` which returns a job identifier (`JobId`). When the
  segment detection operation finishes, Amazon Rekognition publishes a
  completion status to the Amazon Simple Notification Service topic registered
  in the initial call to `StartSegmentDetection`. To get the results of the
  segment detection operation, first check that the status value published to
  the Amazon SNS topic is `SUCCEEDED`. if so, call `GetSegmentDetection` and
  pass the job identifier (`JobId`) from the initial call of
  `StartSegmentDetection`.
  """
  @spec get_segment_detection(AWS.Client.t(), get_segment_detection_request(), Keyword.t()) ::
          {:ok, get_segment_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_segment_detection_errors()}
  def get_segment_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSegmentDetection", input, options)
  end

  @doc """
  Gets the text detection results of a Amazon Rekognition Video analysis started
  by `StartTextDetection`. Text detection with Amazon Rekognition Video is an
  asynchronous operation. You start text detection by calling
  `StartTextDetection` which returns a job identifier (`JobId`) When the text
  detection operation finishes, Amazon Rekognition publishes a completion status
  to the Amazon Simple Notification Service topic registered in the initial call
  to `StartTextDetection`. To get the results of the text detection operation,
  first check that the status value published to the Amazon SNS topic is
  `SUCCEEDED`. if so, call `GetTextDetection` and pass the job identifier
  (`JobId`) from the initial call of `StartLabelDetection`.
  """
  @spec get_text_detection(AWS.Client.t(), get_text_detection_request(), Keyword.t()) ::
          {:ok, get_text_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_text_detection_errors()}
  def get_text_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTextDetection", input, options)
  end

  @doc """
  Detects faces in the input image and adds them to the specified collection.
  Amazon Rekognition doesn't save the actual faces that are detected. Instead,
  the underlying detection algorithm first detects the faces in the input image.
  For each face, the algorithm extracts facial features into a feature vector,
  and stores it in the backend database. Amazon Rekognition uses feature vectors
  when it performs face match and search operations using the `SearchFaces` and
  `SearchFacesByImage` operations.
  """
  @spec index_faces(AWS.Client.t(), index_faces_request(), Keyword.t()) ::
          {:ok, index_faces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, index_faces_errors()}
  def index_faces(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "IndexFaces", input, options)
  end

  @doc """
  Returns list of collection IDs in your account. If the result is truncated, the
  response also provides a `NextToken` that you can use in the subsequent
  request to fetch the next set of collection IDs. For an example, see Listing
  collections in the Amazon Rekognition Developer Guide.
  """
  @spec list_collections(AWS.Client.t(), list_collections_request(), Keyword.t()) ::
          {:ok, list_collections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collections_errors()}
  def list_collections(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCollections", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Lists the
  entries (images) within a dataset. An entry is a JSON Line that contains the
  information for a single image, including the image location, assigned labels,
  and object location bounding boxes. For more information, see [Creating a
  manifest
  file](https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/md-manifest-files.html).
  """
  @spec list_dataset_entries(AWS.Client.t(), list_dataset_entries_request(), Keyword.t()) ::
          {:ok, list_dataset_entries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dataset_entries_errors()}
  def list_dataset_entries(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatasetEntries", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Lists the
  labels in a dataset. Amazon Rekognition Custom Labels uses labels to describe
  images. For more information, see [Labeling
  images](https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/md-labeling-images.html).
  """
  @spec list_dataset_labels(AWS.Client.t(), list_dataset_labels_request(), Keyword.t()) ::
          {:ok, list_dataset_labels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dataset_labels_errors()}
  def list_dataset_labels(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatasetLabels", input, options)
  end

  @doc """
  Returns metadata for faces in the specified collection. This metadata includes
  information such as the bounding box coordinates, the confidence (that the
  bounding box contains a face), and face ID. For an example, see Listing Faces
  in a Collection in the Amazon Rekognition Developer Guide.
  """
  @spec list_faces(AWS.Client.t(), list_faces_request(), Keyword.t()) ::
          {:ok, list_faces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_faces_errors()}
  def list_faces(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFaces", input, options)
  end

  @doc """
  Returns a list of media analysis jobs. Results are sorted by `CreationTimestamp`
  in descending order.
  """
  @spec list_media_analysis_jobs(AWS.Client.t(), list_media_analysis_jobs_request(), Keyword.t()) ::
          {:ok, list_media_analysis_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_media_analysis_jobs_errors()}
  def list_media_analysis_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMediaAnalysisJobs", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Gets a list of
  the project policies attached to a project.
  """
  @spec list_project_policies(AWS.Client.t(), list_project_policies_request(), Keyword.t()) ::
          {:ok, list_project_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_project_policies_errors()}
  def list_project_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProjectPolicies", input, options)
  end

  @doc """
  Gets a list of stream processors that you have created with
  `CreateStreamProcessor`.
  """
  @spec list_stream_processors(AWS.Client.t(), list_stream_processors_request(), Keyword.t()) ::
          {:ok, list_stream_processors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stream_processors_errors()}
  def list_stream_processors(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListStreamProcessors", input, options)
  end

  @doc """
  Returns a list of tags in an Amazon Rekognition collection, stream processor, or
  Custom Labels model.
  """
  @spec list_tags_for_resource(AWS.Client.t(), list_tags_for_resource_request(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Returns metadata of the User such as `UserID` in the specified collection.
  Anonymous User (to reserve faces without any identity) is not returned as part
  of this request. The results are sorted by system generated primary key ID. If
  the response is truncated, `NextToken` is returned in the response that can be
  used in the subsequent request to retrieve the next set of identities.
  """
  @spec list_users(AWS.Client.t(), list_users_request(), Keyword.t()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUsers", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Attaches a
  project policy to a Amazon Rekognition Custom Labels project in a trusting AWS
  account. A project policy specifies that a trusted AWS account can copy a
  model version from a trusting AWS account to a project in the trusted AWS
  account. To copy a model version you use the `CopyProjectVersion` operation.
  Only applies to Custom Labels projects.
  """
  @spec put_project_policy(AWS.Client.t(), put_project_policy_request(), Keyword.t()) ::
          {:ok, put_project_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_project_policy_errors()}
  def put_project_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutProjectPolicy", input, options)
  end

  @doc """
  Returns an array of celebrities recognized in the input image. For more
  information, see Recognizing celebrities in the Amazon Rekognition Developer
  Guide. `RecognizeCelebrities` returns the 64 largest faces in the image. It
  lists the recognized celebrities in the `CelebrityFaces` array and any
  unrecognized faces in the `UnrecognizedFaces` array. `RecognizeCelebrities`
  doesn't return celebrities whose faces aren't among the largest 64 faces in
  the image.
  """
  @spec recognize_celebrities(AWS.Client.t(), recognize_celebrities_request(), Keyword.t()) ::
          {:ok, recognize_celebrities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, recognize_celebrities_errors()}
  def recognize_celebrities(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RecognizeCelebrities", input, options)
  end

  @doc """
  For a given input face ID, searches for matching faces in the collection the
  face belongs to. You get a face ID when you add a face to the collection using
  the `IndexFaces` operation. The operation compares the features of the input
  face with faces in the specified collection. You can also search faces without
  indexing faces by using the `SearchFacesByImage` operation.
  """
  @spec search_faces(AWS.Client.t(), search_faces_request(), Keyword.t()) ::
          {:ok, search_faces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_faces_errors()}
  def search_faces(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchFaces", input, options)
  end

  @doc """
  For a given input image, first detects the largest face in the image, and then
  searches the specified collection for matching faces. The operation compares
  the features of the input face with faces in the specified collection. To
  search for all faces in an input image, you might first call the `IndexFaces`
  operation, and then use the face IDs returned in subsequent calls to the
  `SearchFaces` operation. You can also call the `DetectFaces` operation and use
  the bounding boxes in the response to make face crops, which then you can pass
  in to the `SearchFacesByImage` operation.
  """
  @spec search_faces_by_image(AWS.Client.t(), search_faces_by_image_request(), Keyword.t()) ::
          {:ok, search_faces_by_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_faces_by_image_errors()}
  def search_faces_by_image(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchFacesByImage", input, options)
  end

  @doc """
  Searches for UserIDs within a collection based on a `FaceId` or `UserId`. This
  API can be used to find the closest UserID (with a highest similarity) to
  associate a face. The request must be provided with either `FaceId` or
  `UserId`. The operation returns an array of UserID that match the `FaceId` or
  `UserId`, ordered by similarity score with the highest similarity first.
  """
  @spec search_users(AWS.Client.t(), search_users_request(), Keyword.t()) ::
          {:ok, search_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_users_errors()}
  def search_users(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchUsers", input, options)
  end

  @doc """
  Searches for UserIDs using a supplied image. It first detects the largest face
  in the image, and then searches a specified collection for matching UserIDs.
  The operation returns an array of UserIDs that match the face in the supplied
  image, ordered by similarity score with the highest similarity first. It also
  returns a bounding box for the face found in the input image.
  """
  @spec search_users_by_image(AWS.Client.t(), search_users_by_image_request(), Keyword.t()) ::
          {:ok, search_users_by_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_users_by_image_errors()}
  def search_users_by_image(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchUsersByImage", input, options)
  end

  @doc """
  Starts asynchronous recognition of celebrities in a stored video. Amazon
  Rekognition Video can detect celebrities in a video must be stored in an
  Amazon S3 bucket. Use `Video` to specify the bucket name and the filename of
  the video. `StartCelebrityRecognition` returns a job identifier (`JobId`)
  which you use to get the results of the analysis. When celebrity recognition
  analysis is finished, Amazon Rekognition Video publishes a completion status
  to the Amazon Simple Notification Service topic that you specify in
  `NotificationChannel`. To get the results of the celebrity recognition
  analysis, first check that the status value published to the Amazon SNS topic
  is `SUCCEEDED`. If so, call `GetCelebrityRecognition` and pass the job
  identifier (`JobId`) from the initial call to `StartCelebrityRecognition`.
  """
  @spec start_celebrity_recognition(
          AWS.Client.t(),
          start_celebrity_recognition_request(),
          Keyword.t()
        ) ::
          {:ok, start_celebrity_recognition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_celebrity_recognition_errors()}
  def start_celebrity_recognition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartCelebrityRecognition", input, options)
  end

  @doc """
  Starts asynchronous detection of inappropriate, unwanted, or offensive content
  in a stored video. For a list of moderation labels in Amazon Rekognition, see
  [Using the image and video moderation
  APIs](https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api).
  Amazon Rekognition Video can moderate content in a video stored in an Amazon
  S3 bucket. Use `Video` to specify the bucket name and the filename of the
  video. `StartContentModeration` returns a job identifier (`JobId`) which you
  use to get the results of the analysis. When content analysis is finished,
  Amazon Rekognition Video publishes a completion status to the Amazon Simple
  Notification Service topic that you specify in `NotificationChannel`.
  """
  @spec start_content_moderation(AWS.Client.t(), start_content_moderation_request(), Keyword.t()) ::
          {:ok, start_content_moderation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_content_moderation_errors()}
  def start_content_moderation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartContentModeration", input, options)
  end

  @doc """
  Starts asynchronous detection of faces in a stored video. Amazon Rekognition
  Video can detect faces in a video stored in an Amazon S3 bucket. Use `Video`
  to specify the bucket name and the filename of the video. `StartFaceDetection`
  returns a job identifier (`JobId`) that you use to get the results of the
  operation. When face detection is finished, Amazon Rekognition Video publishes
  a completion status to the Amazon Simple Notification Service topic that you
  specify in `NotificationChannel`. To get the results of the face detection
  operation, first check that the status value published to the Amazon SNS topic
  is `SUCCEEDED`. If so, call `GetFaceDetection` and pass the job identifier
  (`JobId`) from the initial call to `StartFaceDetection`.
  """
  @spec start_face_detection(AWS.Client.t(), start_face_detection_request(), Keyword.t()) ::
          {:ok, start_face_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_face_detection_errors()}
  def start_face_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartFaceDetection", input, options)
  end

  @doc """
  Starts the asynchronous search for faces in a collection that match the faces of
  persons detected in a stored video.
  """
  @spec start_face_search(AWS.Client.t(), start_face_search_request(), Keyword.t()) ::
          {:ok, start_face_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_face_search_errors()}
  def start_face_search(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartFaceSearch", input, options)
  end

  @doc """
  Starts asynchronous detection of labels in a stored video. Amazon Rekognition
  Video can detect labels in a video. Labels are instances of real-world
  entities. This includes objects like flower, tree, and table; events like
  wedding, graduation, and birthday party; concepts like landscape, evening, and
  nature; and activities like a person getting out of a car or a person skiing.
  """
  @spec start_label_detection(AWS.Client.t(), start_label_detection_request(), Keyword.t()) ::
          {:ok, start_label_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_label_detection_errors()}
  def start_label_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartLabelDetection", input, options)
  end

  @doc """
  Initiates a new media analysis job. Accepts a manifest file in an Amazon S3
  bucket. The output is a manifest file and a summary of the manifest stored in
  the Amazon S3 bucket.
  """
  @spec start_media_analysis_job(AWS.Client.t(), start_media_analysis_job_request(), Keyword.t()) ::
          {:ok, start_media_analysis_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_media_analysis_job_errors()}
  def start_media_analysis_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartMediaAnalysisJob", input, options)
  end

  @doc """
  Starts the asynchronous tracking of a person's path in a stored video. Amazon
  Rekognition Video can track the path of people in a video stored in an Amazon
  S3 bucket. Use `Video` to specify the bucket name and the filename of the
  video. `StartPersonTracking` returns a job identifier (`JobId`) which you use
  to get the results of the operation. When label detection is finished, Amazon
  Rekognition publishes a completion status to the Amazon Simple Notification
  Service topic that you specify in `NotificationChannel`.
  """
  @spec start_person_tracking(AWS.Client.t(), start_person_tracking_request(), Keyword.t()) ::
          {:ok, start_person_tracking_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_person_tracking_errors()}
  def start_person_tracking(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartPersonTracking", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Starts the
  running of the version of a model. Starting a model takes a while to complete.
  To check the current state of the model, use `DescribeProjectVersions`.
  """
  @spec start_project_version(AWS.Client.t(), start_project_version_request(), Keyword.t()) ::
          {:ok, start_project_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_project_version_errors()}
  def start_project_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartProjectVersion", input, options)
  end

  @doc """
  Starts asynchronous detection of segment detection in a stored video. Amazon
  Rekognition Video can detect segments in a video stored in an Amazon S3
  bucket. Use `Video` to specify the bucket name and the filename of the video.
  `StartSegmentDetection` returns a job identifier (`JobId`) which you use to
  get the results of the operation. When segment detection is finished, Amazon
  Rekognition Video publishes a completion status to the Amazon Simple
  Notification Service topic that you specify in `NotificationChannel`.
  """
  @spec start_segment_detection(AWS.Client.t(), start_segment_detection_request(), Keyword.t()) ::
          {:ok, start_segment_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_segment_detection_errors()}
  def start_segment_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartSegmentDetection", input, options)
  end

  @doc """
  Starts processing a stream processor. You create a stream processor by calling
  `CreateStreamProcessor`. To tell `StartStreamProcessor` which stream processor
  to start, use the value of the `Name` field specified in the call to
  `CreateStreamProcessor`.
  """
  @spec start_stream_processor(AWS.Client.t(), start_stream_processor_request(), Keyword.t()) ::
          {:ok, start_stream_processor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_stream_processor_errors()}
  def start_stream_processor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartStreamProcessor", input, options)
  end

  @doc """
  Starts asynchronous detection of text in a stored video. Amazon Rekognition
  Video can detect text in a video stored in an Amazon S3 bucket. Use `Video` to
  specify the bucket name and the filename of the video. `StartTextDetection`
  returns a job identifier (`JobId`) which you use to get the results of the
  operation. When text detection is finished, Amazon Rekognition Video publishes
  a completion status to the Amazon Simple Notification Service topic that you
  specify in `NotificationChannel`.
  """
  @spec start_text_detection(AWS.Client.t(), start_text_detection_request(), Keyword.t()) ::
          {:ok, start_text_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_text_detection_errors()}
  def start_text_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTextDetection", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Stops a running
  model. The operation might take a while to complete. To check the current
  status, call `DescribeProjectVersions`. Only applies to Custom Labels
  projects.
  """
  @spec stop_project_version(AWS.Client.t(), stop_project_version_request(), Keyword.t()) ::
          {:ok, stop_project_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_project_version_errors()}
  def stop_project_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopProjectVersion", input, options)
  end

  @doc """
  Stops a running stream processor that was created by `CreateStreamProcessor`.
  """
  @spec stop_stream_processor(AWS.Client.t(), stop_stream_processor_request(), Keyword.t()) ::
          {:ok, stop_stream_processor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_stream_processor_errors()}
  def stop_stream_processor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopStreamProcessor", input, options)
  end

  @doc """
  Adds one or more key-value tags to an Amazon Rekognition collection, stream
  processor, or Custom Labels model. For more information, see [Tagging AWS
  Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from an Amazon Rekognition collection, stream
  processor, or Custom Labels model.
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  This operation applies only to Amazon Rekognition Custom Labels. Adds or updates
  one or more entries (images) in a dataset. An entry is a JSON Line which
  contains the information for a single image, including the image location,
  assigned labels, and object location bounding boxes. For more information, see
  Image-Level labels in manifest files and Object localization in manifest files
  in the *Amazon Rekognition Custom Labels Developer Guide*.
  """
  @spec update_dataset_entries(AWS.Client.t(), update_dataset_entries_request(), Keyword.t()) ::
          {:ok, update_dataset_entries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dataset_entries_errors()}
  def update_dataset_entries(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDatasetEntries", input, options)
  end

  @doc """
  Allows you to update a stream processor. You can change some settings and
  regions of interest and delete certain parameters.
  """
  @spec update_stream_processor(AWS.Client.t(), update_stream_processor_request(), Keyword.t()) ::
          {:ok, update_stream_processor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_stream_processor_errors()}
  def update_stream_processor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateStreamProcessor", input, options)
  end
end
