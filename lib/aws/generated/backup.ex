# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Backup do
  @moduledoc """
  Backup
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_restore_testing_plans_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_restore_testing_plans_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_job() :: %{
        "CompletionTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "ReportDestination" => report_destination(),
        "ReportJobId" => String.t(),
        "ReportPlanArn" => String.t(),
        "ReportTemplate" => String.t(),
        "Status" => String.t(),
        "StatusMessage" => String.t()
      }
      
  """
  @type report_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recovery_point_member() :: %{
        "BackupVaultName" => String.t(),
        "RecoveryPointArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type recovery_point_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_parameter_value_exception() :: %{
        "Code" => String.t(),
        "Context" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type missing_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_plan_output() :: %{
        "BackupPlanArn" => String.t(),
        "BackupPlanId" => String.t(),
        "DeletionDate" => non_neg_integer(),
        "VersionId" => String.t()
      }
      
  """
  @type delete_backup_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_plan_input() :: %{
        "AdvancedBackupSettings" => list(advanced_backup_setting()()),
        "BackupPlanName" => String.t(),
        "Rules" => list(backup_rule_input()())
      }
      
  """
  @type backup_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_plans_list_member() :: %{
        "AdvancedBackupSettings" => list(advanced_backup_setting()()),
        "BackupPlanArn" => String.t(),
        "BackupPlanId" => String.t(),
        "BackupPlanName" => String.t(),
        "CreationDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "DeletionDate" => non_neg_integer(),
        "LastExecutionDate" => non_neg_integer(),
        "VersionId" => String.t()
      }
      
  """
  @type backup_plans_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_restore_job_metadata_input() :: %{}
      
  """
  @type get_restore_job_metadata_input() :: %{}

  @typedoc """

  ## Example:
      
      get_restore_testing_plan_input() :: %{}
      
  """
  @type get_restore_testing_plan_input() :: %{}

  @typedoc """

  ## Example:
      
      describe_recovery_point_input() :: %{
        optional("BackupVaultAccountId") => String.t()
      }
      
  """
  @type describe_recovery_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_vaults_output() :: %{
        "BackupVaultList" => list(backup_vault_list_member()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_backup_vaults_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_recovery_point_lifecycle_input() :: %{
        optional("Lifecycle") => lifecycle()
      }
      
  """
  @type update_recovery_point_lifecycle_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recovery_point_creator() :: %{
        "BackupPlanArn" => String.t(),
        "BackupPlanId" => String.t(),
        "BackupPlanVersion" => String.t(),
        "BackupRuleId" => String.t()
      }
      
  """
  @type recovery_point_creator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_backup_job_input() :: %{
        optional("BackupOptions") => map(),
        optional("CompleteWindowMinutes") => float(),
        optional("IdempotencyToken") => String.t(),
        optional("Lifecycle") => lifecycle(),
        optional("RecoveryPointTags") => map(),
        optional("StartWindowMinutes") => float(),
        required("BackupVaultName") => String.t(),
        required("IamRoleArn") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type start_backup_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_job() :: %{
        "AccountId" => String.t(),
        "BackupSizeInBytes" => float(),
        "ChildJobsInState" => map(),
        "CompletionDate" => non_neg_integer(),
        "CompositeMemberIdentifier" => String.t(),
        "CopyJobId" => String.t(),
        "CreatedBy" => recovery_point_creator(),
        "CreationDate" => non_neg_integer(),
        "DestinationBackupVaultArn" => String.t(),
        "DestinationRecoveryPointArn" => String.t(),
        "IamRoleArn" => String.t(),
        "IsParent" => boolean(),
        "MessageCategory" => String.t(),
        "NumberOfChildJobs" => float(),
        "ParentJobId" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t(),
        "SourceBackupVaultArn" => String.t(),
        "SourceRecoveryPointArn" => String.t(),
        "State" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type copy_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_protected_resources_by_backup_vault_output() :: %{
        "NextToken" => String.t(),
        "Results" => list(protected_resource()())
      }
      
  """
  @type list_protected_resources_by_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_report_plan_output() :: %{
        "CreationTime" => non_neg_integer(),
        "ReportPlanArn" => String.t(),
        "ReportPlanName" => String.t()
      }
      
  """
  @type create_report_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_restore_testing_selection_input() :: %{
        optional("CreatorRequestId") => [String.t()],
        required("RestoreTestingSelection") => restore_testing_selection_for_create()
      }
      
  """
  @type create_restore_testing_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_region_settings_output() :: %{
        "ResourceTypeManagementPreference" => map(),
        "ResourceTypeOptInPreference" => map()
      }
      
  """
  @type describe_region_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_restore_testing_plan_input() :: %{}
      
  """
  @type delete_restore_testing_plan_input() :: %{}

  @typedoc """

  ## Example:
      
      create_backup_plan_output() :: %{
        "AdvancedBackupSettings" => list(advanced_backup_setting()()),
        "BackupPlanArn" => String.t(),
        "BackupPlanId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "VersionId" => String.t()
      }
      
  """
  @type create_backup_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_restore_job_input() :: %{
        optional("CopySourceTagsToRestoredResource") => boolean(),
        optional("IamRoleArn") => String.t(),
        optional("IdempotencyToken") => String.t(),
        optional("ResourceType") => String.t(),
        required("Metadata") => map(),
        required("RecoveryPointArn") => String.t()
      }
      
  """
  @type start_restore_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_plan() :: %{
        "AdvancedBackupSettings" => list(advanced_backup_setting()()),
        "BackupPlanName" => String.t(),
        "Rules" => list(backup_rule()())
      }
      
  """
  @type backup_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recovery_point_by_backup_vault() :: %{
        "BackupSizeInBytes" => float(),
        "BackupVaultArn" => String.t(),
        "BackupVaultName" => String.t(),
        "CalculatedLifecycle" => calculated_lifecycle(),
        "CompletionDate" => non_neg_integer(),
        "CompositeMemberIdentifier" => String.t(),
        "CreatedBy" => recovery_point_creator(),
        "CreationDate" => non_neg_integer(),
        "EncryptionKeyArn" => String.t(),
        "IamRoleArn" => String.t(),
        "IsEncrypted" => boolean(),
        "IsParent" => boolean(),
        "LastRestoreTime" => non_neg_integer(),
        "Lifecycle" => lifecycle(),
        "ParentRecoveryPointArn" => String.t(),
        "RecoveryPointArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t(),
        "SourceBackupVaultArn" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "VaultType" => list(any())
      }
      
  """
  @type recovery_point_by_backup_vault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_testing_selection_for_list() :: %{
        "CreationTime" => [non_neg_integer()],
        "IamRoleArn" => [String.t()],
        "ProtectedResourceType" => [String.t()],
        "RestoreTestingPlanName" => [String.t()],
        "RestoreTestingSelectionName" => [String.t()],
        "ValidationWindowHours" => integer()
      }
      
  """
  @type restore_testing_selection_for_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_report_jobs_output() :: %{
        "NextToken" => String.t(),
        "ReportJobs" => list(report_job()())
      }
      
  """
  @type list_report_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_plan_input() :: %{
        optional("VersionId") => String.t()
      }
      
  """
  @type get_backup_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_report_job_output() :: %{
        "ReportJobId" => String.t()
      }
      
  """
  @type start_report_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_plan_templates_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_backup_plan_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_restore_job_metadata_output() :: %{
        "Metadata" => map(),
        "RestoreJobId" => String.t()
      }
      
  """
  @type get_restore_job_metadata_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_plan_from_json_output() :: %{
        "BackupPlan" => backup_plan()
      }
      
  """
  @type get_backup_plan_from_json_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "Arn" => String.t(),
        "Code" => String.t(),
        "Context" => String.t(),
        "CreatorRequestId" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_testing_plan_for_list() :: %{
        "CreationTime" => [non_neg_integer()],
        "LastExecutionTime" => [non_neg_integer()],
        "LastUpdateTime" => [non_neg_integer()],
        "RestoreTestingPlanArn" => [String.t()],
        "RestoreTestingPlanName" => [String.t()],
        "ScheduleExpression" => [String.t()],
        "ScheduleExpressionTimezone" => [String.t()],
        "StartWindowHours" => integer()
      }
      
  """
  @type restore_testing_plan_for_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_testing_plan_for_update() :: %{
        "RecoveryPointSelection" => restore_testing_recovery_point_selection(),
        "ScheduleExpression" => [String.t()],
        "ScheduleExpressionTimezone" => [String.t()],
        "StartWindowHours" => integer()
      }
      
  """
  @type restore_testing_plan_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_plan() :: %{
        "CreationTime" => non_neg_integer(),
        "DeploymentStatus" => String.t(),
        "LastAttemptedExecutionTime" => non_neg_integer(),
        "LastSuccessfulExecutionTime" => non_neg_integer(),
        "ReportDeliveryChannel" => report_delivery_channel(),
        "ReportPlanArn" => String.t(),
        "ReportPlanDescription" => String.t(),
        "ReportPlanName" => String.t(),
        "ReportSetting" => report_setting()
      }
      
  """
  @type report_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_destination() :: %{
        "S3BucketName" => String.t(),
        "S3Keys" => list(String.t()())
      }
      
  """
  @type report_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_global_settings_input() :: %{}
      
  """
  @type describe_global_settings_input() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_recovery_point_input() :: %{}
      
  """
  @type disassociate_recovery_point_input() :: %{}

  @typedoc """

  ## Example:
      
      protected_resource() :: %{
        "LastBackupTime" => non_neg_integer(),
        "LastBackupVaultArn" => String.t(),
        "LastRecoveryPointArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type protected_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_backup_job_input() :: %{}
      
  """
  @type stop_backup_job_input() :: %{}

  @typedoc """

  ## Example:
      
      create_backup_vault_input() :: %{
        optional("BackupVaultTags") => map(),
        optional("CreatorRequestId") => String.t(),
        optional("EncryptionKeyArn") => String.t()
      }
      
  """
  @type create_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_plan_output() :: %{
        "AdvancedBackupSettings" => list(advanced_backup_setting()()),
        "BackupPlan" => backup_plan(),
        "BackupPlanArn" => String.t(),
        "BackupPlanId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "DeletionDate" => non_neg_integer(),
        "LastExecutionDate" => non_neg_integer(),
        "VersionId" => String.t()
      }
      
  """
  @type get_backup_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_framework_input() :: %{}
      
  """
  @type describe_framework_input() :: %{}

  @typedoc """

  ## Example:
      
      list_backup_plans_output() :: %{
        "BackupPlansList" => list(backup_plans_list_member()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_backup_plans_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_selections_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_backup_selections_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_job_summary() :: %{
        "AccountId" => String.t(),
        "Count" => integer(),
        "EndTime" => non_neg_integer(),
        "Region" => String.t(),
        "ResourceType" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type restore_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backup_vault_output() :: %{
        "BackupVaultArn" => String.t(),
        "BackupVaultName" => String.t(),
        "CreationDate" => non_neg_integer()
      }
      
  """
  @type create_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_restore_testing_plan_output() :: %{
        "RestoreTestingPlan" => restore_testing_plan_for_get()
      }
      
  """
  @type get_restore_testing_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition_parameter() :: %{
        "ConditionKey" => String.t(),
        "ConditionValue" => String.t()
      }
      
  """
  @type condition_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_legal_hold_input() :: %{
        optional("IdempotencyToken") => String.t(),
        optional("RecoveryPointSelection") => recovery_point_selection(),
        optional("Tags") => map(),
        required("Description") => String.t(),
        required("Title") => String.t()
      }
      
  """
  @type create_legal_hold_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_selection_input() :: %{}
      
  """
  @type delete_backup_selection_input() :: %{}

  @typedoc """

  ## Example:
      
      restore_jobs_list_member() :: %{
        "AccountId" => String.t(),
        "BackupSizeInBytes" => float(),
        "CompletionDate" => non_neg_integer(),
        "CreatedBy" => restore_job_creator(),
        "CreatedResourceArn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "DeletionStatus" => list(any()),
        "DeletionStatusMessage" => String.t(),
        "ExpectedCompletionTimeMinutes" => float(),
        "IamRoleArn" => String.t(),
        "PercentDone" => String.t(),
        "RecoveryPointArn" => String.t(),
        "RecoveryPointCreationDate" => non_neg_integer(),
        "ResourceType" => String.t(),
        "RestoreJobId" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "ValidationStatus" => list(any()),
        "ValidationStatusMessage" => String.t()
      }
      
  """
  @type restore_jobs_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_restore_testing_plans_output() :: %{
        "NextToken" => [String.t()],
        "RestoreTestingPlans" => list(restore_testing_plan_for_list()())
      }
      
  """
  @type list_restore_testing_plans_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_report_jobs_input() :: %{
        optional("ByCreationAfter") => non_neg_integer(),
        optional("ByCreationBefore") => non_neg_integer(),
        optional("ByReportPlanName") => String.t(),
        optional("ByStatus") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_report_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backup_vault_output() :: %{
        "BackupVaultArn" => String.t(),
        "BackupVaultName" => String.t(),
        "CreationDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "EncryptionKeyArn" => String.t(),
        "LockDate" => non_neg_integer(),
        "Locked" => boolean(),
        "MaxRetentionDays" => float(),
        "MinRetentionDays" => float(),
        "NumberOfRecoveryPoints" => float(),
        "VaultType" => list(any())
      }
      
  """
  @type describe_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_restore_testing_selections_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_restore_testing_selections_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_job_summaries_input() :: %{
        optional("AccountId") => String.t(),
        optional("AggregationPeriod") => list(any()),
        optional("MaxResults") => integer(),
        optional("MessageCategory") => String.t(),
        optional("NextToken") => String.t(),
        optional("ResourceType") => String.t(),
        optional("State") => list(any())
      }
      
  """
  @type list_backup_job_summaries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_backup_vault_notifications_input() :: %{
        required("BackupVaultEvents") => list(list(any())()),
        required("SNSTopicArn") => String.t()
      }
      
  """
  @type put_backup_vault_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_protected_resource_input() :: %{}
      
  """
  @type describe_protected_resource_input() :: %{}

  @typedoc """

  ## Example:
      
      cancel_legal_hold_output() :: %{}
      
  """
  @type cancel_legal_hold_output() :: %{}

  @typedoc """

  ## Example:
      
      control_scope() :: %{
        "ComplianceResourceIds" => list(String.t()()),
        "ComplianceResourceTypes" => list(String.t()()),
        "Tags" => map()
      }
      
  """
  @type control_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_legal_hold_output() :: %{
        "CancelDescription" => String.t(),
        "CancellationDate" => non_neg_integer(),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "LegalHoldArn" => String.t(),
        "LegalHoldId" => String.t(),
        "RecoveryPointSelection" => recovery_point_selection(),
        "RetainRecordUntil" => non_neg_integer(),
        "Status" => list(any()),
        "Title" => String.t()
      }
      
  """
  @type get_legal_hold_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      framework_control() :: %{
        "ControlInputParameters" => list(control_input_parameter()()),
        "ControlName" => String.t(),
        "ControlScope" => control_scope()
      }
      
  """
  @type framework_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_jobs_output() :: %{
        "BackupJobs" => list(backup_job()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_backup_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_plan_from_template_input() :: %{}
      
  """
  @type get_backup_plan_from_template_input() :: %{}

  @typedoc """

  ## Example:
      
      export_backup_plan_template_output() :: %{
        "BackupPlanTemplateJson" => String.t()
      }
      
  """
  @type export_backup_plan_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backup_plan_input() :: %{
        required("BackupPlan") => backup_plan_input()
      }
      
  """
  @type update_backup_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_report_plans_output() :: %{
        "NextToken" => String.t(),
        "ReportPlans" => list(report_plan()())
      }
      
  """
  @type list_report_plans_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_selection() :: %{
        "Conditions" => conditions(),
        "IamRoleArn" => String.t(),
        "ListOfTags" => list(condition()()),
        "NotResources" => list(String.t()()),
        "Resources" => list(String.t()()),
        "SelectionName" => String.t()
      }
      
  """
  @type backup_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_region_settings_input() :: %{
        optional("ResourceTypeManagementPreference") => map(),
        optional("ResourceTypeOptInPreference") => map()
      }
      
  """
  @type update_region_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_legal_holds_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_legal_holds_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle() :: %{
        "DeleteAfterDays" => float(),
        "MoveToColdStorageAfterDays" => float(),
        "OptInToArchiveForSupportedResources" => boolean()
      }
      
  """
  @type lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recovery_points_by_legal_hold_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_recovery_points_by_legal_hold_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backup_selection_output() :: %{
        "BackupPlanId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "SelectionId" => String.t()
      }
      
  """
  @type create_backup_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_restore_testing_selection_input() :: %{}
      
  """
  @type get_restore_testing_selection_input() :: %{}

  @typedoc """

  ## Example:
      
      protected_resource_conditions() :: %{
        "StringEquals" => list(key_value()()),
        "StringNotEquals" => list(key_value()())
      }
      
  """
  @type protected_resource_conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_input_parameter() :: %{
        "ParameterName" => String.t(),
        "ParameterValue" => String.t()
      }
      
  """
  @type control_input_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      calculated_lifecycle() :: %{
        "DeleteAt" => non_neg_integer(),
        "MoveToColdStorageAt" => non_neg_integer()
      }
      
  """
  @type calculated_lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_action() :: %{
        "DestinationBackupVaultArn" => String.t(),
        "Lifecycle" => lifecycle()
      }
      
  """
  @type copy_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_framework_input() :: %{
        optional("FrameworkControls") => list(framework_control()()),
        optional("FrameworkDescription") => String.t(),
        optional("IdempotencyToken") => String.t()
      }
      
  """
  @type update_framework_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_restore_testing_inferred_metadata_input() :: %{
        optional("BackupVaultAccountId") => [String.t()],
        required("BackupVaultName") => [String.t()],
        required("RecoveryPointArn") => [String.t()]
      }
      
  """
  @type get_restore_testing_inferred_metadata_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_vault_access_policy_input() :: %{}
      
  """
  @type get_backup_vault_access_policy_input() :: %{}

  @typedoc """

  ## Example:
      
      list_report_plans_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_report_plans_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backup_selection_input() :: %{
        optional("CreatorRequestId") => String.t(),
        required("BackupSelection") => backup_selection()
      }
      
  """
  @type create_backup_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Code" => String.t(),
        "Context" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_backup_vault_access_policy_input() :: %{
        optional("Policy") => String.t()
      }
      
  """
  @type put_backup_vault_access_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Code" => String.t(),
        "Context" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_restore_jobs_output() :: %{
        "NextToken" => String.t(),
        "RestoreJobs" => list(restore_jobs_list_member()())
      }
      
  """
  @type list_restore_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_restore_job_output() :: %{
        "RestoreJobId" => String.t()
      }
      
  """
  @type start_restore_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_job_summary() :: %{
        "AccountId" => String.t(),
        "Count" => integer(),
        "EndTime" => non_neg_integer(),
        "MessageCategory" => String.t(),
        "Region" => String.t(),
        "ResourceType" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type copy_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_restore_testing_selection_input() :: %{}
      
  """
  @type delete_restore_testing_selection_input() :: %{}

  @typedoc """

  ## Example:
      
      list_recovery_points_by_resource_output() :: %{
        "NextToken" => String.t(),
        "RecoveryPoints" => list(recovery_point_by_resource()())
      }
      
  """
  @type list_recovery_points_by_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Code" => String.t(),
        "Context" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_selections_output() :: %{
        "BackupSelectionsList" => list(backup_selections_list_member()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_backup_selections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_testing_plan_for_get() :: %{
        "CreationTime" => [non_neg_integer()],
        "CreatorRequestId" => [String.t()],
        "LastExecutionTime" => [non_neg_integer()],
        "LastUpdateTime" => [non_neg_integer()],
        "RecoveryPointSelection" => restore_testing_recovery_point_selection(),
        "RestoreTestingPlanArn" => [String.t()],
        "RestoreTestingPlanName" => [String.t()],
        "ScheduleExpression" => [String.t()],
        "ScheduleExpressionTimezone" => [String.t()],
        "StartWindowHours" => integer()
      }
      
  """
  @type restore_testing_plan_for_get() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_restore_testing_selection_output() :: %{
        "CreationTime" => [non_neg_integer()],
        "RestoreTestingPlanArn" => [String.t()],
        "RestoreTestingPlanName" => [String.t()],
        "RestoreTestingSelectionName" => [String.t()],
        "UpdateTime" => [non_neg_integer()]
      }
      
  """
  @type update_restore_testing_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_restore_job_output() :: %{
        "AccountId" => String.t(),
        "BackupSizeInBytes" => float(),
        "CompletionDate" => non_neg_integer(),
        "CreatedBy" => restore_job_creator(),
        "CreatedResourceArn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "DeletionStatus" => list(any()),
        "DeletionStatusMessage" => String.t(),
        "ExpectedCompletionTimeMinutes" => float(),
        "IamRoleArn" => String.t(),
        "PercentDone" => String.t(),
        "RecoveryPointArn" => String.t(),
        "RecoveryPointCreationDate" => non_neg_integer(),
        "ResourceType" => String.t(),
        "RestoreJobId" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "ValidationStatus" => list(any()),
        "ValidationStatusMessage" => String.t()
      }
      
  """
  @type describe_restore_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_testing_selection_for_update() :: %{
        "IamRoleArn" => [String.t()],
        "ProtectedResourceArns" => list(String.t()()),
        "ProtectedResourceConditions" => protected_resource_conditions(),
        "RestoreMetadataOverrides" => map(),
        "ValidationWindowHours" => integer()
      }
      
  """
  @type restore_testing_selection_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_copy_job_output() :: %{
        "CopyJobId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "IsParent" => boolean()
      }
      
  """
  @type start_copy_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_restore_job_summaries_input() :: %{
        optional("AccountId") => String.t(),
        optional("AggregationPeriod") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceType") => String.t(),
        optional("State") => list(any())
      }
      
  """
  @type list_restore_job_summaries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_recovery_point_from_parent_input() :: %{}
      
  """
  @type disassociate_recovery_point_from_parent_input() :: %{}

  @typedoc """

  ## Example:
      
      describe_backup_job_output() :: %{
        "AccountId" => String.t(),
        "BackupJobId" => String.t(),
        "BackupOptions" => map(),
        "BackupSizeInBytes" => float(),
        "BackupType" => String.t(),
        "BackupVaultArn" => String.t(),
        "BackupVaultName" => String.t(),
        "BytesTransferred" => float(),
        "ChildJobsInState" => map(),
        "CompletionDate" => non_neg_integer(),
        "CreatedBy" => recovery_point_creator(),
        "CreationDate" => non_neg_integer(),
        "ExpectedCompletionDate" => non_neg_integer(),
        "IamRoleArn" => String.t(),
        "InitiationDate" => non_neg_integer(),
        "IsParent" => boolean(),
        "MessageCategory" => String.t(),
        "NumberOfChildJobs" => float(),
        "ParentJobId" => String.t(),
        "PercentDone" => String.t(),
        "RecoveryPointArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t(),
        "StartBy" => non_neg_integer(),
        "State" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type describe_backup_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_selections_list_member() :: %{
        "BackupPlanId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "IamRoleArn" => String.t(),
        "SelectionId" => String.t(),
        "SelectionName" => String.t()
      }
      
  """
  @type backup_selections_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_framework_output() :: %{
        "FrameworkArn" => String.t(),
        "FrameworkName" => String.t()
      }
      
  """
  @type create_framework_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_copy_job_summaries_output() :: %{
        "AggregationPeriod" => String.t(),
        "CopyJobSummaries" => list(copy_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_copy_job_summaries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_global_settings_output() :: %{
        "GlobalSettings" => map(),
        "LastUpdateTime" => non_neg_integer()
      }
      
  """
  @type describe_global_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_supported_resource_types_output() :: %{
        "ResourceTypes" => list(String.t()())
      }
      
  """
  @type get_supported_resource_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "Code" => String.t(),
        "Context" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_testing_recovery_point_selection() :: %{
        "Algorithm" => list(any()),
        "ExcludeVaults" => list(String.t()()),
        "IncludeVaults" => list(String.t()()),
        "RecoveryPointTypes" => list(list(any())()),
        "SelectionWindowDays" => integer()
      }
      
  """
  @type restore_testing_recovery_point_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependency_failure_exception() :: %{
        "Code" => String.t(),
        "Context" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type dependency_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_restore_testing_selection_output() :: %{
        "CreationTime" => [non_neg_integer()],
        "RestoreTestingPlanArn" => [String.t()],
        "RestoreTestingPlanName" => [String.t()],
        "RestoreTestingSelectionName" => [String.t()]
      }
      
  """
  @type create_restore_testing_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_report_job_output() :: %{
        "ReportJob" => report_job()
      }
      
  """
  @type describe_report_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_restore_testing_inferred_metadata_output() :: %{
        "InferredMetadata" => map()
      }
      
  """
  @type get_restore_testing_inferred_metadata_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_vault_notifications_output() :: %{
        "BackupVaultArn" => String.t(),
        "BackupVaultEvents" => list(list(any())()),
        "BackupVaultName" => String.t(),
        "SNSTopicArn" => String.t()
      }
      
  """
  @type get_backup_vault_notifications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      advanced_backup_setting() :: %{
        "BackupOptions" => map(),
        "ResourceType" => String.t()
      }
      
  """
  @type advanced_backup_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recovery_point_selection() :: %{
        "DateRange" => date_range(),
        "ResourceIdentifiers" => list(String.t()()),
        "VaultNames" => list(String.t()())
      }
      
  """
  @type recovery_point_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conditions() :: %{
        "StringEquals" => list(condition_parameter()()),
        "StringLike" => list(condition_parameter()()),
        "StringNotEquals" => list(condition_parameter()()),
        "StringNotLike" => list(condition_parameter()())
      }
      
  """
  @type conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_restore_testing_plan_input() :: %{
        required("RestoreTestingPlan") => restore_testing_plan_for_update()
      }
      
  """
  @type update_restore_testing_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_vault_input() :: %{}
      
  """
  @type delete_backup_vault_input() :: %{}

  @typedoc """

  ## Example:
      
      get_backup_vault_access_policy_output() :: %{
        "BackupVaultArn" => String.t(),
        "BackupVaultName" => String.t(),
        "Policy" => String.t()
      }
      
  """
  @type get_backup_vault_access_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_restore_testing_selection_output() :: %{
        "RestoreTestingSelection" => restore_testing_selection_for_get()
      }
      
  """
  @type get_restore_testing_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_delivery_channel() :: %{
        "Formats" => list(String.t()()),
        "S3BucketName" => String.t(),
        "S3KeyPrefix" => String.t()
      }
      
  """
  @type report_delivery_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_protected_resources_output() :: %{
        "NextToken" => String.t(),
        "Results" => list(protected_resource()())
      }
      
  """
  @type list_protected_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Code" => String.t(),
        "Context" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_framework_input() :: %{}
      
  """
  @type delete_framework_input() :: %{}

  @typedoc """

  ## Example:
      
      delete_backup_vault_notifications_input() :: %{}
      
  """
  @type delete_backup_vault_notifications_input() :: %{}

  @typedoc """

  ## Example:
      
      condition() :: %{
        "ConditionKey" => String.t(),
        "ConditionType" => list(any()),
        "ConditionValue" => String.t()
      }
      
  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_state_exception() :: %{
        "Code" => String.t(),
        "Context" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type invalid_resource_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_plan_versions_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_backup_plan_versions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_restore_jobs_input() :: %{
        optional("ByAccountId") => String.t(),
        optional("ByCompleteAfter") => non_neg_integer(),
        optional("ByCompleteBefore") => non_neg_integer(),
        optional("ByCreatedAfter") => non_neg_integer(),
        optional("ByCreatedBefore") => non_neg_integer(),
        optional("ByResourceType") => String.t(),
        optional("ByRestoreTestingPlanArn") => String.t(),
        optional("ByStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_restore_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_selection_input() :: %{}
      
  """
  @type get_backup_selection_input() :: %{}

  @typedoc """

  ## Example:
      
      get_backup_selection_output() :: %{
        "BackupPlanId" => String.t(),
        "BackupSelection" => backup_selection(),
        "CreationDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "SelectionId" => String.t()
      }
      
  """
  @type get_backup_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recovery_point_by_resource() :: %{
        "BackupSizeBytes" => float(),
        "BackupVaultName" => String.t(),
        "CreationDate" => non_neg_integer(),
        "EncryptionKeyArn" => String.t(),
        "IsParent" => boolean(),
        "ParentRecoveryPointArn" => String.t(),
        "RecoveryPointArn" => String.t(),
        "ResourceName" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "VaultType" => list(any())
      }
      
  """
  @type recovery_point_by_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_setting() :: %{
        "Accounts" => list(String.t()()),
        "FrameworkArns" => list(String.t()()),
        "NumberOfFrameworks" => integer(),
        "OrganizationUnits" => list(String.t()()),
        "Regions" => list(String.t()()),
        "ReportTemplate" => String.t()
      }
      
  """
  @type report_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recovery_points_by_backup_vault_input() :: %{
        optional("BackupVaultAccountId") => String.t(),
        optional("ByBackupPlanId") => String.t(),
        optional("ByCreatedAfter") => non_neg_integer(),
        optional("ByCreatedBefore") => non_neg_integer(),
        optional("ByParentRecoveryPointArn") => String.t(),
        optional("ByResourceArn") => String.t(),
        optional("ByResourceType") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_recovery_points_by_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      framework() :: %{
        "CreationTime" => non_neg_integer(),
        "DeploymentStatus" => String.t(),
        "FrameworkArn" => String.t(),
        "FrameworkDescription" => String.t(),
        "FrameworkName" => String.t(),
        "NumberOfControls" => integer()
      }
      
  """
  @type framework() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_testing_selection_for_create() :: %{
        "IamRoleArn" => [String.t()],
        "ProtectedResourceArns" => list(String.t()()),
        "ProtectedResourceConditions" => protected_resource_conditions(),
        "ProtectedResourceType" => [String.t()],
        "RestoreMetadataOverrides" => map(),
        "RestoreTestingSelectionName" => [String.t()],
        "ValidationWindowHours" => integer()
      }
      
  """
  @type restore_testing_selection_for_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_frameworks_output() :: %{
        "Frameworks" => list(framework()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_frameworks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_vault_list_member() :: %{
        "BackupVaultArn" => String.t(),
        "BackupVaultName" => String.t(),
        "CreationDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "EncryptionKeyArn" => String.t(),
        "LockDate" => non_neg_integer(),
        "Locked" => boolean(),
        "MaxRetentionDays" => float(),
        "MinRetentionDays" => float(),
        "NumberOfRecoveryPoints" => float()
      }
      
  """
  @type backup_vault_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_copy_job_input() :: %{}
      
  """
  @type describe_copy_job_input() :: %{}

  @typedoc """

  ## Example:
      
      list_copy_job_summaries_input() :: %{
        optional("AccountId") => String.t(),
        optional("AggregationPeriod") => list(any()),
        optional("MaxResults") => integer(),
        optional("MessageCategory") => String.t(),
        optional("NextToken") => String.t(),
        optional("ResourceType") => String.t(),
        optional("State") => list(any())
      }
      
  """
  @type list_copy_job_summaries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_legal_holds_output() :: %{
        "LegalHolds" => list(legal_hold()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_legal_holds_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_vault_access_policy_input() :: %{}
      
  """
  @type delete_backup_vault_access_policy_input() :: %{}

  @typedoc """

  ## Example:
      
      backup_rule() :: %{
        "CompletionWindowMinutes" => float(),
        "CopyActions" => list(copy_action()()),
        "EnableContinuousBackup" => boolean(),
        "Lifecycle" => lifecycle(),
        "RecoveryPointTags" => map(),
        "RuleId" => String.t(),
        "RuleName" => String.t(),
        "ScheduleExpression" => String.t(),
        "ScheduleExpressionTimezone" => String.t(),
        "StartWindowMinutes" => float(),
        "TargetBackupVaultName" => String.t()
      }
      
  """
  @type backup_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_plan_from_template_output() :: %{
        "BackupPlanDocument" => backup_plan()
      }
      
  """
  @type get_backup_plan_from_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_report_plan_input() :: %{
        optional("IdempotencyToken") => String.t(),
        optional("ReportDeliveryChannel") => report_delivery_channel(),
        optional("ReportPlanDescription") => String.t(),
        optional("ReportSetting") => report_setting()
      }
      
  """
  @type update_report_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("TagKeyList") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_report_plan_input() :: %{}
      
  """
  @type describe_report_plan_input() :: %{}

  @typedoc """

  ## Example:
      
      list_recovery_points_by_resource_input() :: %{
        optional("ManagedByAWSBackupOnly") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_recovery_points_by_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recovery_points_by_legal_hold_output() :: %{
        "NextToken" => String.t(),
        "RecoveryPoints" => list(recovery_point_member()())
      }
      
  """
  @type list_recovery_points_by_legal_hold_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_legal_hold_output() :: %{
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "LegalHoldArn" => String.t(),
        "LegalHoldId" => String.t(),
        "RecoveryPointSelection" => recovery_point_selection(),
        "Status" => list(any()),
        "Title" => String.t()
      }
      
  """
  @type create_legal_hold_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_global_settings_input() :: %{
        optional("GlobalSettings") => map()
      }
      
  """
  @type update_global_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_copy_jobs_input() :: %{
        optional("ByAccountId") => String.t(),
        optional("ByCompleteAfter") => non_neg_integer(),
        optional("ByCompleteBefore") => non_neg_integer(),
        optional("ByCreatedAfter") => non_neg_integer(),
        optional("ByCreatedBefore") => non_neg_integer(),
        optional("ByDestinationVaultArn") => String.t(),
        optional("ByMessageCategory") => String.t(),
        optional("ByParentJobId") => String.t(),
        optional("ByResourceArn") => String.t(),
        optional("ByResourceType") => String.t(),
        optional("ByState") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_copy_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recovery_point_restore_metadata_input() :: %{
        optional("BackupVaultAccountId") => String.t()
      }
      
  """
  @type get_recovery_point_restore_metadata_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_jobs_input() :: %{
        optional("ByAccountId") => String.t(),
        optional("ByBackupVaultName") => String.t(),
        optional("ByCompleteAfter") => non_neg_integer(),
        optional("ByCompleteBefore") => non_neg_integer(),
        optional("ByCreatedAfter") => non_neg_integer(),
        optional("ByCreatedBefore") => non_neg_integer(),
        optional("ByMessageCategory") => String.t(),
        optional("ByParentJobId") => String.t(),
        optional("ByResourceArn") => String.t(),
        optional("ByResourceType") => String.t(),
        optional("ByState") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_backup_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_copy_job_input() :: %{
        optional("IdempotencyToken") => String.t(),
        optional("Lifecycle") => lifecycle(),
        required("DestinationBackupVaultArn") => String.t(),
        required("IamRoleArn") => String.t(),
        required("RecoveryPointArn") => String.t(),
        required("SourceBackupVaultName") => String.t()
      }
      
  """
  @type start_copy_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_report_plan_input() :: %{}
      
  """
  @type delete_report_plan_input() :: %{}

  @typedoc """

  ## Example:
      
      start_backup_job_output() :: %{
        "BackupJobId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "IsParent" => boolean(),
        "RecoveryPointArn" => String.t()
      }
      
  """
  @type start_backup_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_restore_jobs_by_protected_resource_output() :: %{
        "NextToken" => String.t(),
        "RestoreJobs" => list(restore_jobs_list_member()())
      }
      
  """
  @type list_restore_jobs_by_protected_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_vault_notifications_input() :: %{}
      
  """
  @type get_backup_vault_notifications_input() :: %{}

  @typedoc """

  ## Example:
      
      create_framework_input() :: %{
        optional("FrameworkDescription") => String.t(),
        optional("FrameworkTags") => map(),
        optional("IdempotencyToken") => String.t(),
        required("FrameworkControls") => list(framework_control()()),
        required("FrameworkName") => String.t()
      }
      
  """
  @type create_framework_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backup_plan_input() :: %{
        optional("BackupPlanTags") => map(),
        optional("CreatorRequestId") => String.t(),
        required("BackupPlan") => backup_plan_input()
      }
      
  """
  @type create_backup_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backup_vault_input() :: %{
        optional("BackupVaultAccountId") => String.t()
      }
      
  """
  @type describe_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_copy_jobs_output() :: %{
        "CopyJobs" => list(copy_job()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_copy_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_vaults_input() :: %{
        optional("ByShared") => boolean(),
        optional("ByVaultType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_backup_vaults_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_protected_resources_by_backup_vault_input() :: %{
        optional("BackupVaultAccountId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_protected_resources_by_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Code" => String.t(),
        "Context" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_job_summary() :: %{
        "AccountId" => String.t(),
        "Count" => integer(),
        "EndTime" => non_neg_integer(),
        "MessageCategory" => String.t(),
        "Region" => String.t(),
        "ResourceType" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type backup_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_protected_resource_output() :: %{
        "LastBackupTime" => non_neg_integer(),
        "LastBackupVaultArn" => String.t(),
        "LastRecoveryPointArn" => String.t(),
        "LatestRestoreExecutionTimeMinutes" => float(),
        "LatestRestoreJobCreationDate" => non_neg_integer(),
        "LatestRestoreRecoveryPointCreationDate" => non_neg_integer(),
        "ResourceArn" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type describe_protected_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_job_creator() :: %{
        "RestoreTestingPlanArn" => String.t()
      }
      
  """
  @type restore_job_creator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_logically_air_gapped_backup_vault_output() :: %{
        "BackupVaultArn" => String.t(),
        "BackupVaultName" => String.t(),
        "CreationDate" => non_neg_integer(),
        "VaultState" => list(any())
      }
      
  """
  @type create_logically_air_gapped_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_rule_input() :: %{
        "CompletionWindowMinutes" => float(),
        "CopyActions" => list(copy_action()()),
        "EnableContinuousBackup" => boolean(),
        "Lifecycle" => lifecycle(),
        "RecoveryPointTags" => map(),
        "RuleName" => String.t(),
        "ScheduleExpression" => String.t(),
        "ScheduleExpressionTimezone" => String.t(),
        "StartWindowMinutes" => float(),
        "TargetBackupVaultName" => String.t()
      }
      
  """
  @type backup_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_testing_plan_for_create() :: %{
        "RecoveryPointSelection" => restore_testing_recovery_point_selection(),
        "RestoreTestingPlanName" => [String.t()],
        "ScheduleExpression" => [String.t()],
        "ScheduleExpressionTimezone" => [String.t()],
        "StartWindowHours" => integer()
      }
      
  """
  @type restore_testing_plan_for_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      legal_hold() :: %{
        "CancellationDate" => non_neg_integer(),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "LegalHoldArn" => String.t(),
        "LegalHoldId" => String.t(),
        "Status" => list(any()),
        "Title" => String.t()
      }
      
  """
  @type legal_hold() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_plan_versions_output() :: %{
        "BackupPlanVersionsList" => list(backup_plans_list_member()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_backup_plan_versions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_framework_output() :: %{
        "CreationTime" => non_neg_integer(),
        "FrameworkArn" => String.t(),
        "FrameworkName" => String.t()
      }
      
  """
  @type update_framework_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_frameworks_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_frameworks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_plan_templates_list_member() :: %{
        "BackupPlanTemplateId" => String.t(),
        "BackupPlanTemplateName" => String.t()
      }
      
  """
  @type backup_plan_templates_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_job_summaries_output() :: %{
        "AggregationPeriod" => String.t(),
        "BackupJobSummaries" => list(backup_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_backup_job_summaries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recovery_points_by_backup_vault_output() :: %{
        "NextToken" => String.t(),
        "RecoveryPoints" => list(recovery_point_by_backup_vault()())
      }
      
  """
  @type list_recovery_points_by_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_value() :: %{
        "Key" => [String.t()],
        "Value" => [String.t()]
      }
      
  """
  @type key_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_report_job_input() :: %{
        optional("IdempotencyToken") => String.t()
      }
      
  """
  @type start_report_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_report_plan_input() :: %{
        optional("IdempotencyToken") => String.t(),
        optional("ReportPlanDescription") => String.t(),
        optional("ReportPlanTags") => map(),
        required("ReportDeliveryChannel") => report_delivery_channel(),
        required("ReportPlanName") => String.t(),
        required("ReportSetting") => report_setting()
      }
      
  """
  @type create_report_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_job() :: %{
        "AccountId" => String.t(),
        "BackupJobId" => String.t(),
        "BackupOptions" => map(),
        "BackupSizeInBytes" => float(),
        "BackupType" => String.t(),
        "BackupVaultArn" => String.t(),
        "BackupVaultName" => String.t(),
        "BytesTransferred" => float(),
        "CompletionDate" => non_neg_integer(),
        "CreatedBy" => recovery_point_creator(),
        "CreationDate" => non_neg_integer(),
        "ExpectedCompletionDate" => non_neg_integer(),
        "IamRoleArn" => String.t(),
        "InitiationDate" => non_neg_integer(),
        "IsParent" => boolean(),
        "MessageCategory" => String.t(),
        "ParentJobId" => String.t(),
        "PercentDone" => String.t(),
        "RecoveryPointArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t(),
        "StartBy" => non_neg_integer(),
        "State" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type backup_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_plan_input() :: %{}
      
  """
  @type delete_backup_plan_input() :: %{}

  @typedoc """

  ## Example:
      
      describe_region_settings_input() :: %{}
      
  """
  @type describe_region_settings_input() :: %{}

  @typedoc """

  ## Example:
      
      list_restore_jobs_by_protected_resource_input() :: %{
        optional("ByRecoveryPointCreationDateAfter") => non_neg_integer(),
        optional("ByRecoveryPointCreationDateBefore") => non_neg_integer(),
        optional("ByStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_restore_jobs_by_protected_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backup_plan_from_json_input() :: %{
        required("BackupPlanTemplateJson") => String.t()
      }
      
  """
  @type get_backup_plan_from_json_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_restore_job_summaries_output() :: %{
        "AggregationPeriod" => String.t(),
        "NextToken" => String.t(),
        "RestoreJobSummaries" => list(restore_job_summary()())
      }
      
  """
  @type list_restore_job_summaries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_framework_output() :: %{
        "CreationTime" => non_neg_integer(),
        "DeploymentStatus" => String.t(),
        "FrameworkArn" => String.t(),
        "FrameworkControls" => list(framework_control()()),
        "FrameworkDescription" => String.t(),
        "FrameworkName" => String.t(),
        "FrameworkStatus" => String.t(),
        "IdempotencyToken" => String.t()
      }
      
  """
  @type describe_framework_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_report_job_input() :: %{}
      
  """
  @type describe_report_job_input() :: %{}

  @typedoc """

  ## Example:
      
      export_backup_plan_template_input() :: %{}
      
  """
  @type export_backup_plan_template_input() :: %{}

  @typedoc """

  ## Example:
      
      update_restore_testing_plan_output() :: %{
        "CreationTime" => [non_neg_integer()],
        "RestoreTestingPlanArn" => [String.t()],
        "RestoreTestingPlanName" => [String.t()],
        "UpdateTime" => [non_neg_integer()]
      }
      
  """
  @type update_restore_testing_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      date_range() :: %{
        "FromDate" => non_neg_integer(),
        "ToDate" => non_neg_integer()
      }
      
  """
  @type date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_recovery_point_lifecycle_output() :: %{
        "BackupVaultArn" => String.t(),
        "CalculatedLifecycle" => calculated_lifecycle(),
        "Lifecycle" => lifecycle(),
        "RecoveryPointArn" => String.t()
      }
      
  """
  @type update_recovery_point_lifecycle_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_restore_testing_selections_output() :: %{
        "NextToken" => [String.t()],
        "RestoreTestingSelections" => list(restore_testing_selection_for_list()())
      }
      
  """
  @type list_restore_testing_selections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recovery_point_output() :: %{
        "BackupSizeInBytes" => float(),
        "BackupVaultArn" => String.t(),
        "BackupVaultName" => String.t(),
        "CalculatedLifecycle" => calculated_lifecycle(),
        "CompletionDate" => non_neg_integer(),
        "CompositeMemberIdentifier" => String.t(),
        "CreatedBy" => recovery_point_creator(),
        "CreationDate" => non_neg_integer(),
        "EncryptionKeyArn" => String.t(),
        "IamRoleArn" => String.t(),
        "IsEncrypted" => boolean(),
        "IsParent" => boolean(),
        "LastRestoreTime" => non_neg_integer(),
        "Lifecycle" => lifecycle(),
        "ParentRecoveryPointArn" => String.t(),
        "RecoveryPointArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t(),
        "SourceBackupVaultArn" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "StorageClass" => list(any()),
        "VaultType" => list(any())
      }
      
  """
  @type describe_recovery_point_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_copy_job_output() :: %{
        "CopyJob" => copy_job()
      }
      
  """
  @type describe_copy_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_legal_hold_input() :: %{
        optional("RetainRecordInDays") => float(),
        required("CancelDescription") => String.t()
      }
      
  """
  @type cancel_legal_hold_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_output() :: %{
        "NextToken" => String.t(),
        "Tags" => map()
      }
      
  """
  @type list_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_restore_testing_plan_input() :: %{
        optional("CreatorRequestId") => [String.t()],
        optional("Tags") => map(),
        required("RestoreTestingPlan") => restore_testing_plan_for_create()
      }
      
  """
  @type create_restore_testing_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_legal_hold_input() :: %{}
      
  """
  @type get_legal_hold_input() :: %{}

  @typedoc """

  ## Example:
      
      restore_testing_selection_for_get() :: %{
        "CreationTime" => [non_neg_integer()],
        "CreatorRequestId" => [String.t()],
        "IamRoleArn" => [String.t()],
        "ProtectedResourceArns" => list(String.t()()),
        "ProtectedResourceConditions" => protected_resource_conditions(),
        "ProtectedResourceType" => [String.t()],
        "RestoreMetadataOverrides" => map(),
        "RestoreTestingPlanName" => [String.t()],
        "RestoreTestingSelectionName" => [String.t()],
        "ValidationWindowHours" => integer()
      }
      
  """
  @type restore_testing_selection_for_get() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recovery_point_restore_metadata_output() :: %{
        "BackupVaultArn" => String.t(),
        "RecoveryPointArn" => String.t(),
        "ResourceType" => String.t(),
        "RestoreMetadata" => map()
      }
      
  """
  @type get_recovery_point_restore_metadata_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_restore_testing_plan_output() :: %{
        "CreationTime" => [non_neg_integer()],
        "RestoreTestingPlanArn" => [String.t()],
        "RestoreTestingPlanName" => [String.t()]
      }
      
  """
  @type create_restore_testing_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_vault_lock_configuration_input() :: %{}
      
  """
  @type delete_backup_vault_lock_configuration_input() :: %{}

  @typedoc """

  ## Example:
      
      list_protected_resources_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_protected_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_recovery_point_input() :: %{}
      
  """
  @type delete_recovery_point_input() :: %{}

  @typedoc """

  ## Example:
      
      update_report_plan_output() :: %{
        "CreationTime" => non_neg_integer(),
        "ReportPlanArn" => String.t(),
        "ReportPlanName" => String.t()
      }
      
  """
  @type update_report_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_plan_templates_output() :: %{
        "BackupPlanTemplatesList" => list(backup_plan_templates_list_member()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_backup_plan_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backup_plans_input() :: %{
        optional("IncludeDeleted") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_backup_plans_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backup_job_input() :: %{}
      
  """
  @type describe_backup_job_input() :: %{}

  @typedoc """

  ## Example:
      
      create_logically_air_gapped_backup_vault_input() :: %{
        optional("BackupVaultTags") => map(),
        optional("CreatorRequestId") => String.t(),
        required("MaxRetentionDays") => float(),
        required("MinRetentionDays") => float()
      }
      
  """
  @type create_logically_air_gapped_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_report_plan_output() :: %{
        "ReportPlan" => report_plan()
      }
      
  """
  @type describe_report_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_restore_testing_selection_input() :: %{
        required("RestoreTestingSelection") => restore_testing_selection_for_update()
      }
      
  """
  @type update_restore_testing_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_backup_vault_lock_configuration_input() :: %{
        optional("ChangeableForDays") => float(),
        optional("MaxRetentionDays") => float(),
        optional("MinRetentionDays") => float()
      }
      
  """
  @type put_backup_vault_lock_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_restore_job_input() :: %{}
      
  """
  @type describe_restore_job_input() :: %{}

  @typedoc """

  ## Example:
      
      update_backup_plan_output() :: %{
        "AdvancedBackupSettings" => list(advanced_backup_setting()()),
        "BackupPlanArn" => String.t(),
        "BackupPlanId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "VersionId" => String.t()
      }
      
  """
  @type update_backup_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_restore_validation_result_input() :: %{
        optional("ValidationStatusMessage") => String.t(),
        required("ValidationStatus") => list(any())
      }
      
  """
  @type put_restore_validation_result_input() :: %{String.t() => any()}

  @type cancel_legal_hold_errors() ::
          invalid_resource_state_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type create_backup_plan_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | already_exists_exception()
          | missing_parameter_value_exception()

  @type create_backup_selection_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | already_exists_exception()
          | missing_parameter_value_exception()

  @type create_backup_vault_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | already_exists_exception()
          | missing_parameter_value_exception()

  @type create_framework_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | already_exists_exception()
          | missing_parameter_value_exception()

  @type create_legal_hold_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_parameter_value_exception()

  @type create_logically_air_gapped_backup_vault_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | already_exists_exception()
          | missing_parameter_value_exception()

  @type create_report_plan_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | already_exists_exception()
          | missing_parameter_value_exception()

  @type create_restore_testing_plan_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | conflict_exception()
          | already_exists_exception()
          | missing_parameter_value_exception()

  @type create_restore_testing_selection_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | already_exists_exception()
          | missing_parameter_value_exception()

  @type delete_backup_plan_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_backup_selection_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_backup_vault_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_backup_vault_access_policy_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_backup_vault_lock_configuration_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_backup_vault_notifications_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_framework_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | missing_parameter_value_exception()

  @type delete_recovery_point_errors() ::
          invalid_resource_state_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_report_plan_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | missing_parameter_value_exception()

  @type delete_restore_testing_plan_errors() ::
          service_unavailable_exception() | invalid_request_exception()

  @type delete_restore_testing_selection_errors() ::
          service_unavailable_exception() | resource_not_found_exception()

  @type describe_backup_job_errors() ::
          service_unavailable_exception()
          | dependency_failure_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_backup_vault_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_copy_job_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_framework_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_global_settings_errors() ::
          service_unavailable_exception() | invalid_request_exception()

  @type describe_protected_resource_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_recovery_point_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_region_settings_errors() :: service_unavailable_exception()

  @type describe_report_job_errors() ::
          service_unavailable_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_report_plan_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_restore_job_errors() ::
          service_unavailable_exception()
          | dependency_failure_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type disassociate_recovery_point_errors() ::
          invalid_resource_state_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type disassociate_recovery_point_from_parent_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type export_backup_plan_template_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_backup_plan_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_backup_plan_from_json_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | missing_parameter_value_exception()

  @type get_backup_plan_from_template_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_backup_selection_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_backup_vault_access_policy_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_backup_vault_notifications_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_legal_hold_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_recovery_point_restore_metadata_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_restore_job_metadata_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_restore_testing_inferred_metadata_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_restore_testing_plan_errors() ::
          service_unavailable_exception() | resource_not_found_exception()

  @type get_restore_testing_selection_errors() ::
          service_unavailable_exception() | resource_not_found_exception()

  @type get_supported_resource_types_errors() :: service_unavailable_exception()

  @type list_backup_job_summaries_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_backup_jobs_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_backup_plan_templates_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_backup_plan_versions_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_backup_plans_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_backup_selections_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_backup_vaults_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_copy_job_summaries_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_copy_jobs_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_frameworks_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_legal_holds_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_protected_resources_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_protected_resources_by_backup_vault_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type list_recovery_points_by_backup_vault_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_recovery_points_by_legal_hold_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_parameter_value_exception()

  @type list_recovery_points_by_resource_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_report_jobs_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type list_report_plans_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_restore_job_summaries_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_restore_jobs_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_restore_jobs_by_protected_resource_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_restore_testing_plans_errors() ::
          service_unavailable_exception() | invalid_parameter_value_exception()

  @type list_restore_testing_selections_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type list_tags_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type put_backup_vault_access_policy_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type put_backup_vault_lock_configuration_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type put_backup_vault_notifications_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type put_restore_validation_result_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type start_backup_job_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type start_copy_job_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type start_report_job_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type start_restore_job_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type stop_backup_job_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type untag_resource_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type update_backup_plan_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type update_framework_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | already_exists_exception()
          | missing_parameter_value_exception()

  @type update_global_settings_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | missing_parameter_value_exception()

  @type update_recovery_point_lifecycle_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type update_region_settings_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_parameter_value_exception()

  @type update_report_plan_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | missing_parameter_value_exception()

  @type update_restore_testing_plan_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | missing_parameter_value_exception()

  @type update_restore_testing_selection_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | missing_parameter_value_exception()

  def metadata do
    %{
      api_version: "2018-11-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "backup",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Backup",
      signature_version: "v4",
      signing_name: "backup",
      target_prefix: nil
    }
  end

  @doc """
  This action removes the specified legal hold on a recovery point. This action
  can only be performed by a user with sufficient permissions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CancelLegalHold&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:legal_hold_id` (`t:string` required) Legal hold ID required to remove the
    specified legal hold on a recovery point.
  * `:cancel_description` (`t:string` required) String describing the reason for
    removing the legal hold.

  ## Keyword parameters:
  * `:retain_record_in_days` (`t:long`) The integer amount in days specifying
    amount of days after this API operation to remove legal hold.
  """
  @spec cancel_legal_hold(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_legal_hold_errors()}
  def cancel_legal_hold(%Client{} = client, legal_hold_id, cancel_description, options \\ [])
      when is_binary(cancel_description) do
    url_path = "/legal-holds/#{AWS.Util.encode_uri(legal_hold_id)}"

    # Validate optional parameters
    optional_params = [retain_record_in_days: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"cancelDescription", cancel_description}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :retain_record_in_days) do
        [{"retainRecordInDays", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:retain_record_in_days])

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
      201
    )
  end

  @doc """
  Creates a backup plan using a backup plan name and backup rules. A backup plan
  is a document that contains information that Backup uses to schedule tasks
  that create recovery points for resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CreateBackupPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_backup_plan(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_backup_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backup_plan_errors()}
  def create_backup_plan(%Client{} = client, options \\ []) do
    url_path = "/backup/plans"

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
  Creates a JSON document that specifies a set of resources to assign to a backup
  plan. For examples, see [Assigning resources
  programmatically](https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CreateBackupSelection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_id` (`t:string` required) Uniquely identifies the backup plan to
    be associated with the selection of resources.
  """
  @spec create_backup_selection(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_backup_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backup_selection_errors()}
  def create_backup_selection(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections"

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
  Creates a logical container where backups are stored. A `CreateBackupVault`
  request includes a name, optionally one or more resource tags, an encryption
  key, and a request ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CreateBackupVault&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of letters, numbers, and hyphens.
  """
  @spec create_backup_vault(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backup_vault_errors()}
  def create_backup_vault(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"

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
  Creates a framework with one or more controls. A framework is a collection of
  controls that you can use to evaluate your backup practices. By using
  pre-built customizable controls to define your policies, you can evaluate
  whether your backup practices comply with your policies and which resources
  are not yet in compliance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CreateFramework&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_framework(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_framework_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_framework_errors()}
  def create_framework(%Client{} = client, options \\ []) do
    url_path = "/audit/frameworks"

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
  This action creates a legal hold on a recovery point (backup). A legal hold is a
  restraint on altering or deleting a backup until an authorized user cancels
  the legal hold. Any actions to delete or disassociate a recovery point will
  fail with an error if one or more active legal holds are on the recovery
  point.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CreateLegalHold&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_legal_hold(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_legal_hold_errors()}
  def create_legal_hold(%Client{} = client, options \\ []) do
    url_path = "/legal-holds"

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
  This request creates a logical container to where backups may be copied. This
  request includes a name, the Region, the maximum number of retention days, the
  minimum number of retention days, and optionally can include tags and a
  creator request ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CreateLogicallyAirGappedBackupVault&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) This is the name of the vault that
    is being created.
  """
  @spec create_logically_air_gapped_backup_vault(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_logically_air_gapped_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_logically_air_gapped_backup_vault_errors()}
  def create_logically_air_gapped_backup_vault(
        %Client{} = client,
        backup_vault_name,
        options \\ []
      ) do
    url_path = "/logically-air-gapped-backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"

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
  Creates a report plan. A report plan is a document that contains information
  about the contents of the report and where Backup will deliver it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CreateReportPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_report_plan(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_report_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_report_plan_errors()}
  def create_report_plan(%Client{} = client, options \\ []) do
    url_path = "/audit/report-plans"

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
  This is the first of two steps to create a restore testing plan; once this
  request is successful, finish the procedure with request
  CreateRestoreTestingSelection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CreateRestoreTestingPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_restore_testing_plan(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_restore_testing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_restore_testing_plan_errors()}
  def create_restore_testing_plan(%Client{} = client, options \\ []) do
    url_path = "/restore-testing/plans"

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
  This request can be sent after CreateRestoreTestingPlan request returns
  successfully. This is the second part of creating a resource testing plan, and
  it must be completed sequentially. This consists of
  `RestoreTestingSelectionName`, `ProtectedResourceType`, and one of the
  following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20CreateRestoreTestingSelection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_testing_plan_name` (`t:string` required) Input the restore testing
    plan name that was returned from the related CreateRestoreTestingPlan
    request.
  """
  @spec create_restore_testing_selection(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_restore_testing_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_restore_testing_selection_errors()}
  def create_restore_testing_selection(
        %Client{} = client,
        restore_testing_plan_name,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections"

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
  Deletes a backup plan. A backup plan can only be deleted after all associated
  selections of resources have been deleted. Deleting a backup plan deletes the
  current version of a backup plan. Previous versions, if any, will still exist.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteBackupPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_id` (`t:string` required) Uniquely identifies a backup plan.
  """
  @spec delete_backup_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_backup_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_plan_errors()}
  def delete_backup_plan(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}"

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
  Deletes the resource selection associated with a backup plan that is specified
  by the `SelectionId`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteBackupSelection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_id` (`t:string` required) Uniquely identifies a backup plan.
  * `:selection_id` (`t:string` required) Uniquely identifies the body of a
    request to assign a set of resources to a backup plan.
  """
  @spec delete_backup_selection(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_selection_errors()}
  def delete_backup_selection(%Client{} = client, backup_plan_id, selection_id, options \\ []) do
    url_path =
      "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections/#{AWS.Util.encode_uri(selection_id)}"

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
  Deletes the backup vault identified by its name. A vault can be deleted only if
  it is empty.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteBackupVault&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  """
  @spec delete_backup_vault(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_vault_errors()}
  def delete_backup_vault(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"

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
  Deletes the policy document that manages permissions on a backup vault.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteBackupVaultAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  """
  @spec delete_backup_vault_access_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_vault_access_policy_errors()}
  def delete_backup_vault_access_policy(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/access-policy"

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
  Deletes Backup Vault Lock from a backup vault specified by a backup vault name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteBackupVaultLockConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of the backup vault from
    which to delete Backup Vault Lock.
  """
  @spec delete_backup_vault_lock_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_vault_lock_configuration_errors()}
  def delete_backup_vault_lock_configuration(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/vault-lock"

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
  Deletes event notifications for the specified backup vault.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteBackupVaultNotifications&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Region where they are
    created. They consist of lowercase letters, numbers, and hyphens.
  """
  @spec delete_backup_vault_notifications(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_vault_notifications_errors()}
  def delete_backup_vault_notifications(%Client{} = client, backup_vault_name, options \\ []) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/notification-configuration"

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
  Deletes the framework specified by a framework name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteFramework&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:framework_name` (`t:string` required) The unique name of a framework.
  """
  @spec delete_framework(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_framework_errors()}
  def delete_framework(%Client{} = client, framework_name, options \\ []) do
    url_path = "/audit/frameworks/#{AWS.Util.encode_uri(framework_name)}"

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
  Deletes the recovery point specified by a recovery point ID. If the recovery
  point ID belongs to a continuous backup, calling this endpoint deletes the
  existing continuous backup and stops future continuous backup.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteRecoveryPoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  * `:recovery_point_arn` (`t:string` required) An Amazon Resource Name (ARN) that
    uniquely identifies a recovery point; for example,
    arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
  """
  @spec delete_recovery_point(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_recovery_point_errors()}
  def delete_recovery_point(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}"

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
  Deletes the report plan specified by a report plan name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteReportPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:report_plan_name` (`t:string` required) The unique name of a report plan.
  """
  @spec delete_report_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_report_plan_errors()}
  def delete_report_plan(%Client{} = client, report_plan_name, options \\ []) do
    url_path = "/audit/report-plans/#{AWS.Util.encode_uri(report_plan_name)}"

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
  This request deletes the specified restore testing plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteRestoreTestingPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_testing_plan_name` (`t:string` required) Required unique name of the
    restore testing plan you wish to delete.
  """
  @spec delete_restore_testing_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_restore_testing_plan_errors()}
  def delete_restore_testing_plan(%Client{} = client, restore_testing_plan_name, options \\ []) do
    url_path = "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}"

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
  Input the Restore Testing Plan name and Restore Testing Selection name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DeleteRestoreTestingSelection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_testing_plan_name` (`t:string` required) Required unique name of the
    restore testing plan that contains the restore testing selection you wish to
    delete.
  * `:restore_testing_selection_name` (`t:string` required) Required unique name
    of the restore testing selection you wish to delete.
  """
  @spec delete_restore_testing_selection(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_restore_testing_selection_errors()}
  def delete_restore_testing_selection(
        %Client{} = client,
        restore_testing_plan_name,
        restore_testing_selection_name,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections/#{AWS.Util.encode_uri(restore_testing_selection_name)}"

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
  Returns backup job details for the specified `BackupJobId`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeBackupJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_job_id` (`t:string` required) Uniquely identifies a request to Backup
    to back up a resource.
  """
  @spec describe_backup_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_backup_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_backup_job_errors()}
  def describe_backup_job(%Client{} = client, backup_job_id, options \\ []) do
    url_path = "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}"

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
  Returns metadata about a backup vault specified by its name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeBackupVault&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.

  ## Keyword parameters:
  * `:backup_vault_account_id` (`t:string`) This is the account ID of the
    specified backup vault.
  """
  @spec describe_backup_vault(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_backup_vault_errors()}
  def describe_backup_vault(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"

    # Validate optional parameters
    optional_params = [backup_vault_account_id: nil]

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
      if opt_val = Keyword.get(options, :backup_vault_account_id) do
        [{"backupVaultAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:backup_vault_account_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata associated with creating a copy of a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeCopyJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:copy_job_id` (`t:string` required) Uniquely identifies a copy job.
  """
  @spec describe_copy_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_copy_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_copy_job_errors()}
  def describe_copy_job(%Client{} = client, copy_job_id, options \\ []) do
    url_path = "/copy-jobs/#{AWS.Util.encode_uri(copy_job_id)}"

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
  Returns the framework details for the specified `FrameworkName`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeFramework&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:framework_name` (`t:string` required) The unique name of a framework.
  """
  @spec describe_framework(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_framework_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_framework_errors()}
  def describe_framework(%Client{} = client, framework_name, options \\ []) do
    url_path = "/audit/frameworks/#{AWS.Util.encode_uri(framework_name)}"

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
  Describes whether the Amazon Web Services account is opted in to cross-account
  backup. Returns an error if the account is not a member of an Organizations
  organization. Example: `describe-global-settings --region us-west-2`

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeGlobalSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_global_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_global_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_global_settings_errors()}
  def describe_global_settings(%Client{} = client, options \\ []) do
    url_path = "/global-settings"

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
  Returns information about a saved resource, including the last time it was
  backed up, its Amazon Resource Name (ARN), and the Amazon Web Services service
  type of the saved resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeProtectedResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) An Amazon Resource Name (ARN) that
    uniquely identifies a resource. The format of the ARN depends on the
    resource type.
  """
  @spec describe_protected_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_protected_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_protected_resource_errors()}
  def describe_protected_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}"

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
  Returns metadata associated with a recovery point, including ID, status,
  encryption, and lifecycle.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeRecoveryPoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  * `:recovery_point_arn` (`t:string` required) An Amazon Resource Name (ARN) that
    uniquely identifies a recovery point; for example,
    arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.

  ## Keyword parameters:
  * `:backup_vault_account_id` (`t:string`) This is the account ID of the
    specified backup vault.
  """
  @spec describe_recovery_point(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_recovery_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_recovery_point_errors()}
  def describe_recovery_point(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}"

    # Validate optional parameters
    optional_params = [backup_vault_account_id: nil]

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
      if opt_val = Keyword.get(options, :backup_vault_account_id) do
        [{"backupVaultAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:backup_vault_account_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the current service opt-in settings for the Region. If service opt-in is
  enabled for a service, Backup tries to protect that service's resources in
  this Region, when the resource is included in an on-demand backup or scheduled
  backup plan. Otherwise, Backup does not try to protect that service's
  resources in this Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeRegionSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_region_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_region_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_region_settings_errors()}
  def describe_region_settings(%Client{} = client, options \\ []) do
    url_path = "/account-settings"

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
  Returns the details associated with creating a report as specified by its
  `ReportJobId`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeReportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:report_job_id` (`t:string` required) The identifier of the report job. A
    unique, randomly generated, Unicode, UTF-8 encoded string that is at most
    1,024 bytes long. The report job ID cannot be edited.
  """
  @spec describe_report_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_report_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_report_job_errors()}
  def describe_report_job(%Client{} = client, report_job_id, options \\ []) do
    url_path = "/audit/report-jobs/#{AWS.Util.encode_uri(report_job_id)}"

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
  Returns a list of all report plans for an Amazon Web Services account and Amazon
  Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeReportPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:report_plan_name` (`t:string` required) The unique name of a report plan.
  """
  @spec describe_report_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_report_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_report_plan_errors()}
  def describe_report_plan(%Client{} = client, report_plan_name, options \\ []) do
    url_path = "/audit/report-plans/#{AWS.Util.encode_uri(report_plan_name)}"

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
  Returns metadata associated with a restore job that is specified by a job ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DescribeRestoreJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_job_id` (`t:string` required) Uniquely identifies the job that
    restores a recovery point.
  """
  @spec describe_restore_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_restore_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_restore_job_errors()}
  def describe_restore_job(%Client{} = client, restore_job_id, options \\ []) do
    url_path = "/restore-jobs/#{AWS.Util.encode_uri(restore_job_id)}"

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
  Deletes the specified continuous backup recovery point from Backup and releases
  control of that continuous backup to the source service, such as Amazon RDS.
  The source service will continue to create and retain continuous backups using
  the lifecycle that you specified in your original backup plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DisassociateRecoveryPoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The unique name of an Backup vault.
  * `:recovery_point_arn` (`t:string` required) An Amazon Resource Name (ARN) that
    uniquely identifies an Backup recovery point.
  """
  @spec disassociate_recovery_point(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_recovery_point_errors()}
  def disassociate_recovery_point(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}/disassociate"

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
  This action to a specific child (nested) recovery point removes the relationship
  between the specified recovery point and its parent (composite) recovery
  point.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20DisassociateRecoveryPointFromParent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) This is the name of a logical
    container where the child (nested) recovery point is stored. Backup vaults
    are identified by names that are unique to the account used to create them
    and the Amazon Web Services Region where they are created. They consist of
    lowercase letters, numbers, and hyphens.
  * `:recovery_point_arn` (`t:string` required) This is the Amazon Resource Name
    (ARN) that uniquely identifies the child (nested) recovery point; for
    example,
    arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
  """
  @spec disassociate_recovery_point_from_parent(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_recovery_point_from_parent_errors()}
  def disassociate_recovery_point_from_parent(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}/parentAssociation"

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
  Returns the backup plan that is specified by the plan ID as a backup template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ExportBackupPlanTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_id` (`t:string` required) Uniquely identifies a backup plan.
  """
  @spec export_backup_plan_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, export_backup_plan_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_backup_plan_template_errors()}
  def export_backup_plan_template(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/toTemplate"

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
  Returns `BackupPlan` details for the specified `BackupPlanId`. The details are
  the body of a backup plan in JSON format, in addition to plan metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetBackupPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_id` (`t:string` required) Uniquely identifies a backup plan.

  ## Keyword parameters:
  * `:version_id` (`t:string`) Unique, randomly generated, Unicode, UTF-8 encoded
    strings that are at most 1,024 bytes long. Version IDs cannot be edited.
  """
  @spec get_backup_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_backup_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backup_plan_errors()}
  def get_backup_plan(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}"

    # Validate optional parameters
    optional_params = [version_id: nil]

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
      if opt_val = Keyword.get(options, :version_id) do
        [{"versionId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a valid JSON document specifying a backup plan or an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetBackupPlanFromJSON&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_backup_plan_from_json(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_backup_plan_from_json_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backup_plan_from_json_errors()}
  def get_backup_plan_from_json(%Client{} = client, options \\ []) do
    url_path = "/backup/template/json/toPlan"

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
  Returns the template specified by its `templateId` as a backup plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetBackupPlanFromTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_template_id` (`t:string` required) Uniquely identifies a stored
    backup plan template.
  """
  @spec get_backup_plan_from_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_backup_plan_from_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backup_plan_from_template_errors()}
  def get_backup_plan_from_template(%Client{} = client, backup_plan_template_id, options \\ []) do
    url_path = "/backup/template/plans/#{AWS.Util.encode_uri(backup_plan_template_id)}/toPlan"

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
  Returns selection metadata and a document in JSON format that specifies a list
  of resources that are associated with a backup plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetBackupSelection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_id` (`t:string` required) Uniquely identifies a backup plan.
  * `:selection_id` (`t:string` required) Uniquely identifies the body of a
    request to assign a set of resources to a backup plan.
  """
  @spec get_backup_selection(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_backup_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backup_selection_errors()}
  def get_backup_selection(%Client{} = client, backup_plan_id, selection_id, options \\ []) do
    url_path =
      "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections/#{AWS.Util.encode_uri(selection_id)}"

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
  Returns the access policy document that is associated with the named backup
  vault.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetBackupVaultAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  """
  @spec get_backup_vault_access_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_backup_vault_access_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backup_vault_access_policy_errors()}
  def get_backup_vault_access_policy(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/access-policy"

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
  Returns event notifications for the specified backup vault.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetBackupVaultNotifications&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  """
  @spec get_backup_vault_notifications(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_backup_vault_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backup_vault_notifications_errors()}
  def get_backup_vault_notifications(%Client{} = client, backup_vault_name, options \\ []) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/notification-configuration"

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
  This action returns details for a specified legal hold. The details are the body
  of a legal hold in JSON format, in addition to metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetLegalHold&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:legal_hold_id` (`t:string` required) This is the ID required to use
    GetLegalHold. This unique ID is associated with a specific legal hold.
  """
  @spec get_legal_hold(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_legal_hold_errors()}
  def get_legal_hold(%Client{} = client, legal_hold_id, options \\ []) do
    url_path = "/legal-holds/#{AWS.Util.encode_uri(legal_hold_id)}"

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
  Returns a set of metadata key-value pairs that were used to create the backup.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetRecoveryPointRestoreMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  * `:recovery_point_arn` (`t:string` required) An Amazon Resource Name (ARN) that
    uniquely identifies a recovery point; for example,
    arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.

  ## Keyword parameters:
  * `:backup_vault_account_id` (`t:string`) This is the account ID of the
    specified backup vault.
  """
  @spec get_recovery_point_restore_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_recovery_point_restore_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_recovery_point_restore_metadata_errors()}
  def get_recovery_point_restore_metadata(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}/restore-metadata"

    # Validate optional parameters
    optional_params = [backup_vault_account_id: nil]

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
      if opt_val = Keyword.get(options, :backup_vault_account_id) do
        [{"backupVaultAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:backup_vault_account_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This request returns the metadata for the specified restore job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetRestoreJobMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_job_id` (`t:string` required) This is a unique identifier of a
    restore job within Backup.
  """
  @spec get_restore_job_metadata(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_restore_job_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_restore_job_metadata_errors()}
  def get_restore_job_metadata(%Client{} = client, restore_job_id, options \\ []) do
    url_path = "/restore-jobs/#{AWS.Util.encode_uri(restore_job_id)}/metadata"

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
  This request returns the minimal required set of metadata needed to start a
  restore job with secure default settings. `BackupVaultName` and
  `RecoveryPointArn` are required parameters. `BackupVaultAccountId` is an
  optional parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetRestoreTestingInferredMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web ServicesRegion
    where they are created. They consist of letters, numbers, and hyphens.
  * `:recovery_point_arn` (`t:string` required) An Amazon Resource Name (ARN) that
    uniquely identifies a recovery point; for example,
    arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.

  ## Keyword parameters:
  * `:backup_vault_account_id` (`t:string`) This is the account ID of the
    specified backup vault.
  """
  @spec get_restore_testing_inferred_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_restore_testing_inferred_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_restore_testing_inferred_metadata_errors()}
  def get_restore_testing_inferred_metadata(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      )
      when is_binary(backup_vault_name) and is_binary(recovery_point_arn) do
    url_path = "/restore-testing/inferred-metadata"

    # Validate optional parameters
    optional_params = [backup_vault_account_id: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [
      {"BackupVaultName", backup_vault_name},
      {"RecoveryPointArn", recovery_point_arn}
    ]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :backup_vault_account_id) do
        [{"BackupVaultAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:backup_vault_account_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns `RestoreTestingPlan` details for the specified `RestoreTestingPlanName`.
  The details are the body of a restore testing plan in JSON format, in addition
  to plan metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetRestoreTestingPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_testing_plan_name` (`t:string` required) Required unique name of the
    restore testing plan.
  """
  @spec get_restore_testing_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_restore_testing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_restore_testing_plan_errors()}
  def get_restore_testing_plan(%Client{} = client, restore_testing_plan_name, options \\ []) do
    url_path = "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}"

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
  Returns RestoreTestingSelection, which displays resources and elements of the
  restore testing plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetRestoreTestingSelection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_testing_plan_name` (`t:string` required) Required unique name of the
    restore testing plan.
  * `:restore_testing_selection_name` (`t:string` required) Required unique name
    of the restore testing selection.
  """
  @spec get_restore_testing_selection(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_restore_testing_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_restore_testing_selection_errors()}
  def get_restore_testing_selection(
        %Client{} = client,
        restore_testing_plan_name,
        restore_testing_selection_name,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections/#{AWS.Util.encode_uri(restore_testing_selection_name)}"

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
  Returns the Amazon Web Services resource types supported by Backup.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20GetSupportedResourceTypes&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_supported_resource_types(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_supported_resource_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_supported_resource_types_errors()}
  def get_supported_resource_types(%Client{} = client, options \\ []) do
    url_path = "/supported-resource-types"

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
  This is a request for a summary of backup jobs created or running within the
  most recent 30 days. You can include parameters AccountID, State,
  ResourceType, MessageCategory, AggregationPeriod, MaxResults, or NextToken to
  filter results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListBackupJobSummaries&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:account_id` (`t:string`) Returns the job count for the specified account.
  * `:aggregation_period` (`t:enum["FOURTEEN_DAYS|ONE_DAY|SEVEN_DAYS"]`) This is
    the period that sets the boundaries for returned results.
  * `:max_results` (`t:integer`) This parameter sets the maximum number of items
    to be returned.
  * `:message_category` (`t:string`) This parameter returns the job count for the
    specified message category.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    resources. For example, if a request is made to return MaxResults number of
    resources, NextToken allows you to return more items in your list starting
    at the location pointed to by the next token.
  * `:resource_type` (`t:string`) Returns the job count for the specified resource
    type. Use request GetSupportedResourceTypes to obtain strings for supported
    resource types.
  * `:state`
    (`t:enum["ABORTED|ABORTING|AGGREGATE_ALL|ANY|COMPLETED|CREATED|EXPIRED|FAILED|PARTIAL|PENDING|RUNNING"]`)
    This parameter returns the job count for jobs with the specified state.
  """
  @spec list_backup_job_summaries(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_backup_job_summaries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backup_job_summaries_errors()}
  def list_backup_job_summaries(%Client{} = client, options \\ []) do
    url_path = "/audit/backup-job-summaries"

    # Validate optional parameters
    optional_params = [
      account_id: nil,
      aggregation_period: nil,
      max_results: nil,
      message_category: nil,
      next_token: nil,
      resource_type: nil,
      state: nil
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
      if opt_val = Keyword.get(options, :state) do
        [{"State", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :resource_type) do
        [{"ResourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :message_category) do
        [{"MessageCategory", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aggregation_period) do
        [{"AggregationPeriod", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :account_id) do
        [{"AccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :account_id,
        :aggregation_period,
        :max_results,
        :message_category,
        :next_token,
        :resource_type,
        :state
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing backup jobs for an authenticated account for the last
  30 days. For a longer period of time, consider using these [monitoring
  tools](https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListBackupJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:by_account_id` (`t:string`) The account ID to list the jobs from. Returns
    only backup jobs associated with the specified account ID.
  * `:by_backup_vault_name` (`t:string`) Returns only backup jobs that will be
    stored in the specified backup vault. Backup vaults are identified by names
    that are unique to the account used to create them and the Amazon Web
    Services Region where they are created. They consist of lowercase letters,
    numbers, and hyphens.
  * `:by_complete_after` (`t:timestamp`) Returns only backup jobs completed after
    a date expressed in Unix format and Coordinated Universal Time (UTC).
  * `:by_complete_before` (`t:timestamp`) Returns only backup jobs completed
    before a date expressed in Unix format and Coordinated Universal Time (UTC).
  * `:by_created_after` (`t:timestamp`) Returns only backup jobs that were created
    after the specified date.
  * `:by_created_before` (`t:timestamp`) Returns only backup jobs that were
    created before the specified date.
  * `:by_message_category` (`t:string`) This is an optional parameter that can be
    used to filter out jobs with a MessageCategory which matches the value you
    input.
  * `:by_parent_job_id` (`t:string`) This is a filter to list child (nested) jobs
    based on parent job ID.
  * `:by_resource_arn` (`t:string`) Returns only backup jobs that match the
    specified resource Amazon Resource Name (ARN).
  * `:by_resource_type` (`t:string`) Returns only backup jobs for the specified
    resources:
  * `:by_state`
    (`t:enum["ABORTED|ABORTING|COMPLETED|CREATED|EXPIRED|FAILED|PARTIAL|PENDING|RUNNING"]`)
    Returns only backup jobs that are in the specified state.
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_backup_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_backup_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backup_jobs_errors()}
  def list_backup_jobs(%Client{} = client, options \\ []) do
    url_path = "/backup-jobs"

    # Validate optional parameters
    optional_params = [
      by_account_id: nil,
      by_backup_vault_name: nil,
      by_complete_after: nil,
      by_complete_before: nil,
      by_created_after: nil,
      by_created_before: nil,
      by_message_category: nil,
      by_parent_job_id: nil,
      by_resource_arn: nil,
      by_resource_type: nil,
      by_state: nil,
      max_results: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :by_state) do
        [{"state", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_resource_type) do
        [{"resourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_resource_arn) do
        [{"resourceArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_parent_job_id) do
        [{"parentJobId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_message_category) do
        [{"messageCategory", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_created_before) do
        [{"createdBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_created_after) do
        [{"createdAfter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_complete_before) do
        [{"completeBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_complete_after) do
        [{"completeAfter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_backup_vault_name) do
        [{"backupVaultName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_account_id) do
        [{"accountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :by_account_id,
        :by_backup_vault_name,
        :by_complete_after,
        :by_complete_before,
        :by_created_after,
        :by_created_before,
        :by_message_category,
        :by_parent_job_id,
        :by_resource_arn,
        :by_resource_type,
        :by_state,
        :max_results,
        :next_token
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata of your saved backup plan templates, including the template ID,
  name, and the creation and deletion dates.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListBackupPlanTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_backup_plan_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_backup_plan_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backup_plan_templates_errors()}
  def list_backup_plan_templates(%Client{} = client, options \\ []) do
    url_path = "/backup/template/plans"

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
  Returns version metadata of your backup plans, including Amazon Resource Names
  (ARNs), backup plan IDs, creation and deletion dates, plan names, and version
  IDs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListBackupPlanVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_id` (`t:string` required) Uniquely identifies a backup plan.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_backup_plan_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_backup_plan_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backup_plan_versions_errors()}
  def list_backup_plan_versions(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/versions"

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
  Returns a list of all active backup plans for an authenticated account. The list
  contains information such as Amazon Resource Names (ARNs), plan IDs, creation
  and deletion dates, version IDs, plan names, and creator request IDs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListBackupPlans&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:include_deleted` (`t:boolean`) A Boolean value with a default value of FALSE
    that returns deleted backup plans when set to TRUE.
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_backup_plans(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_backup_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backup_plans_errors()}
  def list_backup_plans(%Client{} = client, options \\ []) do
    url_path = "/backup/plans"

    # Validate optional parameters
    optional_params = [include_deleted: nil, max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :include_deleted) do
        [{"includeDeleted", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_deleted, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an array containing metadata of the resources associated with the target
  backup plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListBackupSelections&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_id` (`t:string` required) Uniquely identifies a backup plan.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_backup_selections(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_backup_selections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backup_selections_errors()}
  def list_backup_selections(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections"

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
  Returns a list of recovery point storage containers along with information about
  them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListBackupVaults&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:by_shared` (`t:boolean`) This parameter will sort the list of vaults by
    shared vaults.
  * `:by_vault_type` (`t:enum["BACKUP_VAULT|LOGICALLY_AIR_GAPPED_BACKUP_VAULT"]`)
    This parameter will sort the list of vaults by vault type.
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_backup_vaults(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_backup_vaults_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backup_vaults_errors()}
  def list_backup_vaults(%Client{} = client, options \\ []) do
    url_path = "/backup-vaults"

    # Validate optional parameters
    optional_params = [by_shared: nil, by_vault_type: nil, max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :by_vault_type) do
        [{"vaultType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_shared) do
        [{"shared", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:by_shared, :by_vault_type, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This request obtains a list of copy jobs created or running within the the most
  recent 30 days. You can include parameters AccountID, State, ResourceType,
  MessageCategory, AggregationPeriod, MaxResults, or NextToken to filter
  results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListCopyJobSummaries&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:account_id` (`t:string`) Returns the job count for the specified account.
  * `:aggregation_period` (`t:enum["FOURTEEN_DAYS|ONE_DAY|SEVEN_DAYS"]`) This is
    the period that sets the boundaries for returned results.
  * `:max_results` (`t:integer`) This parameter sets the maximum number of items
    to be returned.
  * `:message_category` (`t:string`) This parameter returns the job count for the
    specified message category.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    resources. For example, if a request is made to return MaxResults number of
    resources, NextToken allows you to return more items in your list starting
    at the location pointed to by the next token.
  * `:resource_type` (`t:string`) Returns the job count for the specified resource
    type. Use request GetSupportedResourceTypes to obtain strings for supported
    resource types.
  * `:state`
    (`t:enum["ABORTED|ABORTING|AGGREGATE_ALL|ANY|COMPLETED|COMPLETING|CREATED|FAILED|FAILING|PARTIAL|RUNNING"]`)
    This parameter returns the job count for jobs with the specified state.
  """
  @spec list_copy_job_summaries(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_copy_job_summaries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_copy_job_summaries_errors()}
  def list_copy_job_summaries(%Client{} = client, options \\ []) do
    url_path = "/audit/copy-job-summaries"

    # Validate optional parameters
    optional_params = [
      account_id: nil,
      aggregation_period: nil,
      max_results: nil,
      message_category: nil,
      next_token: nil,
      resource_type: nil,
      state: nil
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
      if opt_val = Keyword.get(options, :state) do
        [{"State", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :resource_type) do
        [{"ResourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :message_category) do
        [{"MessageCategory", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aggregation_period) do
        [{"AggregationPeriod", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :account_id) do
        [{"AccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :account_id,
        :aggregation_period,
        :max_results,
        :message_category,
        :next_token,
        :resource_type,
        :state
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata about your copy jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListCopyJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:by_account_id` (`t:string`) The account ID to list the jobs from. Returns
    only copy jobs associated with the specified account ID.
  * `:by_complete_after` (`t:timestamp`) Returns only copy jobs completed after a
    date expressed in Unix format and Coordinated Universal Time (UTC).
  * `:by_complete_before` (`t:timestamp`) Returns only copy jobs completed before
    a date expressed in Unix format and Coordinated Universal Time (UTC).
  * `:by_created_after` (`t:timestamp`) Returns only copy jobs that were created
    after the specified date.
  * `:by_created_before` (`t:timestamp`) Returns only copy jobs that were created
    before the specified date.
  * `:by_destination_vault_arn` (`t:string`) An Amazon Resource Name (ARN) that
    uniquely identifies a source backup vault to copy from; for example,
    arn:aws:backup:us-east-1:123456789012:vault:aBackupVault.
  * `:by_message_category` (`t:string`) This is an optional parameter that can be
    used to filter out jobs with a MessageCategory which matches the value you
    input.
  * `:by_parent_job_id` (`t:string`) This is a filter to list child (nested) jobs
    based on parent job ID.
  * `:by_resource_arn` (`t:string`) Returns only copy jobs that match the
    specified resource Amazon Resource Name (ARN).
  * `:by_resource_type` (`t:string`) Returns only backup jobs for the specified
    resources:
  * `:by_state` (`t:enum["COMPLETED|CREATED|FAILED|PARTIAL|RUNNING"]`) Returns
    only copy jobs that are in the specified state.
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_copy_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_copy_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_copy_jobs_errors()}
  def list_copy_jobs(%Client{} = client, options \\ []) do
    url_path = "/copy-jobs"

    # Validate optional parameters
    optional_params = [
      by_account_id: nil,
      by_complete_after: nil,
      by_complete_before: nil,
      by_created_after: nil,
      by_created_before: nil,
      by_destination_vault_arn: nil,
      by_message_category: nil,
      by_parent_job_id: nil,
      by_resource_arn: nil,
      by_resource_type: nil,
      by_state: nil,
      max_results: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :by_state) do
        [{"state", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_resource_type) do
        [{"resourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_resource_arn) do
        [{"resourceArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_parent_job_id) do
        [{"parentJobId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_message_category) do
        [{"messageCategory", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_destination_vault_arn) do
        [{"destinationVaultArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_created_before) do
        [{"createdBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_created_after) do
        [{"createdAfter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_complete_before) do
        [{"completeBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_complete_after) do
        [{"completeAfter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_account_id) do
        [{"accountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :by_account_id,
        :by_complete_after,
        :by_complete_before,
        :by_created_after,
        :by_created_before,
        :by_destination_vault_arn,
        :by_message_category,
        :by_parent_job_id,
        :by_resource_arn,
        :by_resource_type,
        :by_state,
        :max_results,
        :next_token
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all frameworks for an Amazon Web Services account and Amazon
  Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListFrameworks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The number of desired results from 1 to 1000.
    Optional. If unspecified, the query will return 1 MB of data.
  * `:next_token` (`t:string`) An identifier that was returned from the previous
    call to this operation, which can be used to return the next set of items in
    the list.
  """
  @spec list_frameworks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_frameworks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_frameworks_errors()}
  def list_frameworks(%Client{} = client, options \\ []) do
    url_path = "/audit/frameworks"

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  This action returns metadata about active and previous legal holds.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListLegalHolds&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of resource list items to be
    returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    resources. For example, if a request is made to return MaxResults number of
    resources, NextToken allows you to return more items in your list starting
    at the location pointed to by the next token.
  """
  @spec list_legal_holds(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_legal_holds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_legal_holds_errors()}
  def list_legal_holds(%Client{} = client, options \\ []) do
    url_path = "/legal-holds"

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
  Returns an array of resources successfully backed up by Backup, including the
  time the resource was saved, an Amazon Resource Name (ARN) of the resource,
  and a resource type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListProtectedResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_protected_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_protected_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_protected_resources_errors()}
  def list_protected_resources(%Client{} = client, options \\ []) do
    url_path = "/resources"

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
  This request lists the protected resources corresponding to each backup vault.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListProtectedResourcesByBackupVault&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) This is the list of protected
    resources by backup vault within the vault(s) you specify by name.

  ## Keyword parameters:
  * `:backup_vault_account_id` (`t:string`) This is the list of protected
    resources by backup vault within the vault(s) you specify by account ID.
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_protected_resources_by_backup_vault(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_protected_resources_by_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_protected_resources_by_backup_vault_errors()}
  def list_protected_resources_by_backup_vault(
        %Client{} = client,
        backup_vault_name,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/resources"

    # Validate optional parameters
    optional_params = [backup_vault_account_id: nil, max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :backup_vault_account_id) do
        [{"backupVaultAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:backup_vault_account_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed information about the recovery points stored in a backup vault.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListRecoveryPointsByBackupVault&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.

  ## Keyword parameters:
  * `:backup_vault_account_id` (`t:string`) This parameter will sort the list of
    recovery points by account ID.
  * `:by_backup_plan_id` (`t:string`) Returns only recovery points that match the
    specified backup plan ID.
  * `:by_created_after` (`t:timestamp`) Returns only recovery points that were
    created after the specified timestamp.
  * `:by_created_before` (`t:timestamp`) Returns only recovery points that were
    created before the specified timestamp.
  * `:by_parent_recovery_point_arn` (`t:string`) This returns only recovery points
    that match the specified parent (composite) recovery point Amazon Resource
    Name (ARN).
  * `:by_resource_arn` (`t:string`) Returns only recovery points that match the
    specified resource Amazon Resource Name (ARN).
  * `:by_resource_type` (`t:string`) Returns only recovery points that match the
    specified resource type(s):
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_recovery_points_by_backup_vault(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_recovery_points_by_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recovery_points_by_backup_vault_errors()}
  def list_recovery_points_by_backup_vault(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points"

    # Validate optional parameters
    optional_params = [
      backup_vault_account_id: nil,
      by_backup_plan_id: nil,
      by_created_after: nil,
      by_created_before: nil,
      by_parent_recovery_point_arn: nil,
      by_resource_arn: nil,
      by_resource_type: nil,
      max_results: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :by_resource_type) do
        [{"resourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_resource_arn) do
        [{"resourceArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_parent_recovery_point_arn) do
        [{"parentRecoveryPointArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_created_before) do
        [{"createdBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_created_after) do
        [{"createdAfter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_backup_plan_id) do
        [{"backupPlanId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :backup_vault_account_id) do
        [{"backupVaultAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :backup_vault_account_id,
        :by_backup_plan_id,
        :by_created_after,
        :by_created_before,
        :by_parent_recovery_point_arn,
        :by_resource_arn,
        :by_resource_type,
        :max_results,
        :next_token
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This action returns recovery point ARNs (Amazon Resource Names) of the specified
  legal hold.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListRecoveryPointsByLegalHold&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:legal_hold_id` (`t:string` required) This is the ID of the legal hold.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) This is the maximum number of resource list items
    to be returned.
  * `:next_token` (`t:string`) This is the next item following a partial list of
    returned resources. For example, if a request is made to return MaxResults
    number of resources, NextToken allows you to return more items in your list
    starting at the location pointed to by the next token.
  """
  @spec list_recovery_points_by_legal_hold(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_recovery_points_by_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recovery_points_by_legal_hold_errors()}
  def list_recovery_points_by_legal_hold(%Client{} = client, legal_hold_id, options \\ []) do
    url_path = "/legal-holds/#{AWS.Util.encode_uri(legal_hold_id)}/recovery-points"

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
  Returns detailed information about all the recovery points of the type specified
  by a resource Amazon Resource Name (ARN).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListRecoveryPointsByResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) An ARN that uniquely identifies a
    resource. The format of the ARN depends on the resource type.

  ## Keyword parameters:
  * `:managed_by_aws_backup_only` (`t:boolean`) This attribute filters recovery
    points based on ownership.
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_recovery_points_by_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_recovery_points_by_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recovery_points_by_resource_errors()}
  def list_recovery_points_by_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/recovery-points"

    # Validate optional parameters
    optional_params = [managed_by_aws_backup_only: nil, max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :managed_by_aws_backup_only) do
        [{"managedByAWSBackupOnly", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:managed_by_aws_backup_only, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about your report jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListReportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:by_creation_after` (`t:timestamp`) Returns only report jobs that were
    created after the date and time specified in Unix format and Coordinated
    Universal Time (UTC). For example, the value 1516925490 represents Friday,
    January 26, 2018 12:11:30 AM.
  * `:by_creation_before` (`t:timestamp`) Returns only report jobs that were
    created before the date and time specified in Unix format and Coordinated
    Universal Time (UTC). For example, the value 1516925490 represents Friday,
    January 26, 2018 12:11:30 AM.
  * `:by_report_plan_name` (`t:string`) Returns only report jobs with the
    specified report plan name.
  * `:by_status` (`t:string`) Returns only report jobs that are in the specified
    status. The statuses are:
  * `:max_results` (`t:integer`) The number of desired results from 1 to 1000.
    Optional. If unspecified, the query will return 1 MB of data.
  * `:next_token` (`t:string`) An identifier that was returned from the previous
    call to this operation, which can be used to return the next set of items in
    the list.
  """
  @spec list_report_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_report_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_report_jobs_errors()}
  def list_report_jobs(%Client{} = client, options \\ []) do
    url_path = "/audit/report-jobs"

    # Validate optional parameters
    optional_params = [
      by_creation_after: nil,
      by_creation_before: nil,
      by_report_plan_name: nil,
      by_status: nil,
      max_results: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_status) do
        [{"Status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_report_plan_name) do
        [{"ReportPlanName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_creation_before) do
        [{"CreationBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_creation_after) do
        [{"CreationAfter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :by_creation_after,
        :by_creation_before,
        :by_report_plan_name,
        :by_status,
        :max_results,
        :next_token
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of your report plans. For detailed information about a single
  report plan, use `DescribeReportPlan`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListReportPlans&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The number of desired results from 1 to 1000.
    Optional. If unspecified, the query will return 1 MB of data.
  * `:next_token` (`t:string`) An identifier that was returned from the previous
    call to this operation, which can be used to return the next set of items in
    the list.
  """
  @spec list_report_plans(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_report_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_report_plans_errors()}
  def list_report_plans(%Client{} = client, options \\ []) do
    url_path = "/audit/report-plans"

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  This request obtains a summary of restore jobs created or running within the the
  most recent 30 days. You can include parameters AccountID, State,
  ResourceType, AggregationPeriod, MaxResults, or NextToken to filter results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListRestoreJobSummaries&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:account_id` (`t:string`) Returns the job count for the specified account.
  * `:aggregation_period` (`t:enum["FOURTEEN_DAYS|ONE_DAY|SEVEN_DAYS"]`) This is
    the period that sets the boundaries for returned results.
  * `:max_results` (`t:integer`) This parameter sets the maximum number of items
    to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    resources. For example, if a request is made to return MaxResults number of
    resources, NextToken allows you to return more items in your list starting
    at the location pointed to by the next token.
  * `:resource_type` (`t:string`) Returns the job count for the specified resource
    type. Use request GetSupportedResourceTypes to obtain strings for supported
    resource types.
  * `:state`
    (`t:enum["ABORTED|AGGREGATE_ALL|ANY|COMPLETED|CREATED|FAILED|PENDING|RUNNING"]`)
    This parameter returns the job count for jobs with the specified state.
  """
  @spec list_restore_job_summaries(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_restore_job_summaries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_restore_job_summaries_errors()}
  def list_restore_job_summaries(%Client{} = client, options \\ []) do
    url_path = "/audit/restore-job-summaries"

    # Validate optional parameters
    optional_params = [
      account_id: nil,
      aggregation_period: nil,
      max_results: nil,
      next_token: nil,
      resource_type: nil,
      state: nil
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
      if opt_val = Keyword.get(options, :state) do
        [{"State", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :resource_type) do
        [{"ResourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aggregation_period) do
        [{"AggregationPeriod", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :account_id) do
        [{"AccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :account_id,
        :aggregation_period,
        :max_results,
        :next_token,
        :resource_type,
        :state
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of jobs that Backup initiated to restore a saved resource,
  including details about the recovery process.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListRestoreJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:by_account_id` (`t:string`) The account ID to list the jobs from. Returns
    only restore jobs associated with the specified account ID.
  * `:by_complete_after` (`t:timestamp`) Returns only copy jobs completed after a
    date expressed in Unix format and Coordinated Universal Time (UTC).
  * `:by_complete_before` (`t:timestamp`) Returns only copy jobs completed before
    a date expressed in Unix format and Coordinated Universal Time (UTC).
  * `:by_created_after` (`t:timestamp`) Returns only restore jobs that were
    created after the specified date.
  * `:by_created_before` (`t:timestamp`) Returns only restore jobs that were
    created before the specified date.
  * `:by_resource_type` (`t:string`) Include this parameter to return only restore
    jobs for the specified resources:
  * `:by_restore_testing_plan_arn` (`t:string`) This returns only restore testing
    jobs that match the specified resource Amazon Resource Name (ARN).
  * `:by_status` (`t:enum["ABORTED|COMPLETED|FAILED|PENDING|RUNNING"]`) Returns
    only restore jobs associated with the specified job status.
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_restore_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_restore_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_restore_jobs_errors()}
  def list_restore_jobs(%Client{} = client, options \\ []) do
    url_path = "/restore-jobs"

    # Validate optional parameters
    optional_params = [
      by_account_id: nil,
      by_complete_after: nil,
      by_complete_before: nil,
      by_created_after: nil,
      by_created_before: nil,
      by_resource_type: nil,
      by_restore_testing_plan_arn: nil,
      by_status: nil,
      max_results: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :by_status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_restore_testing_plan_arn) do
        [{"restoreTestingPlanArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_resource_type) do
        [{"resourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_created_before) do
        [{"createdBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_created_after) do
        [{"createdAfter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_complete_before) do
        [{"completeBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_complete_after) do
        [{"completeAfter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_account_id) do
        [{"accountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :by_account_id,
        :by_complete_after,
        :by_complete_before,
        :by_created_after,
        :by_created_before,
        :by_resource_type,
        :by_restore_testing_plan_arn,
        :by_status,
        :max_results,
        :next_token
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This returns restore jobs that contain the specified protected resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListRestoreJobsByProtectedResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) Returns only restore jobs that match the
    specified resource Amazon Resource Name (ARN).

  ## Keyword parameters:
  * `:by_recovery_point_creation_date_after` (`t:timestamp`) Returns only restore
    jobs of recovery points that were created after the specified date.
  * `:by_recovery_point_creation_date_before` (`t:timestamp`) Returns only restore
    jobs of recovery points that were created before the specified date.
  * `:by_status` (`t:enum["ABORTED|COMPLETED|FAILED|PENDING|RUNNING"]`) Returns
    only restore jobs associated with the specified job status.
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request ismade to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_restore_jobs_by_protected_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_restore_jobs_by_protected_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_restore_jobs_by_protected_resource_errors()}
  def list_restore_jobs_by_protected_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/restore-jobs"

    # Validate optional parameters
    optional_params = [
      by_recovery_point_creation_date_after: nil,
      by_recovery_point_creation_date_before: nil,
      by_status: nil,
      max_results: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :by_status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_recovery_point_creation_date_before) do
        [{"recoveryPointCreationDateBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :by_recovery_point_creation_date_after) do
        [{"recoveryPointCreationDateAfter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :by_recovery_point_creation_date_after,
        :by_recovery_point_creation_date_before,
        :by_status,
        :max_results,
        :next_token
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of restore testing plans.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListRestoreTestingPlans&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the nexttoken.
  """
  @spec list_restore_testing_plans(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_restore_testing_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_restore_testing_plans_errors()}
  def list_restore_testing_plans(%Client{} = client, options \\ []) do
    url_path = "/restore-testing/plans"

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  Returns a list of restore testing selections. Can be filtered by `MaxResults`
  and `RestoreTestingPlanName`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListRestoreTestingSelections&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_testing_plan_name` (`t:string` required) Returns restore testing
    selections by the specified restore testing plan name.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the nexttoken.
  """
  @spec list_restore_testing_selections(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_restore_testing_selections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_restore_testing_selections_errors()}
  def list_restore_testing_selections(
        %Client{} = client,
        restore_testing_plan_name,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections"

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  Returns a list of key-value pairs assigned to a target recovery point, backup
  plan, or backup vault.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20ListTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) An Amazon Resource Name (ARN) that
    uniquely identifies a resource. The format of the ARN depends on the type of
    resource. Valid targets for ListTags are recovery points, backup plans, and
    backup vaults.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of items to be returned.
  * `:next_token` (`t:string`) The next item following a partial list of returned
    items. For example, if a request is made to return MaxResults number of
    items, NextToken allows you to return more items in your list starting at
    the location pointed to by the next token.
  """
  @spec list_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Sets a resource-based policy that is used to manage access permissions on the
  target backup vault. Requires a backup vault name and an access policy
  document in JSON format.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20PutBackupVaultAccessPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  """
  @spec put_backup_vault_access_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_backup_vault_access_policy_errors()}
  def put_backup_vault_access_policy(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/access-policy"

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
  Applies Backup Vault Lock to a backup vault, preventing attempts to delete any
  recovery point stored in or created in a backup vault. Vault Lock also
  prevents attempts to update the lifecycle policy that controls the retention
  period of any recovery point currently stored in a backup vault. If specified,
  Vault Lock enforces a minimum and maximum retention period for future backup
  and copy jobs that target a backup vault.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20PutBackupVaultLockConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The Backup Vault Lock configuration
    that specifies the name of the backup vault it protects.
  """
  @spec put_backup_vault_lock_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_backup_vault_lock_configuration_errors()}
  def put_backup_vault_lock_configuration(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/vault-lock"

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
  Turns on notifications on a backup vault for the specified topic and events.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20PutBackupVaultNotifications&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  """
  @spec put_backup_vault_notifications(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_backup_vault_notifications_errors()}
  def put_backup_vault_notifications(%Client{} = client, backup_vault_name, options \\ []) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/notification-configuration"

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
  This request allows you to send your independent self-run restore test
  validation results. `RestoreJobId` and `ValidationStatus` are required.
  Optionally, you can input a `ValidationStatusMessage`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20PutRestoreValidationResult&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_job_id` (`t:string` required) This is a unique identifier of a
    restore job within Backup.
  """
  @spec put_restore_validation_result(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_restore_validation_result_errors()}
  def put_restore_validation_result(%Client{} = client, restore_job_id, options \\ []) do
    url_path = "/restore-jobs/#{AWS.Util.encode_uri(restore_job_id)}/validations"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Starts an on-demand backup job for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20StartBackupJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_backup_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_backup_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_backup_job_errors()}
  def start_backup_job(%Client{} = client, options \\ []) do
    url_path = "/backup-jobs"

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
  Starts a job to create a one-time copy of the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20StartCopyJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_copy_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_copy_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_copy_job_errors()}
  def start_copy_job(%Client{} = client, options \\ []) do
    url_path = "/copy-jobs"

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
  Starts an on-demand report job for the specified report plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20StartReportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:report_plan_name` (`t:string` required) The unique name of a report plan.
  """
  @spec start_report_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_report_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_report_job_errors()}
  def start_report_job(%Client{} = client, report_plan_name, options \\ []) do
    url_path = "/audit/report-jobs/#{AWS.Util.encode_uri(report_plan_name)}"

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
  Recovers the saved resource identified by an Amazon Resource Name (ARN).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20StartRestoreJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_restore_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_restore_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_restore_job_errors()}
  def start_restore_job(%Client{} = client, options \\ []) do
    url_path = "/restore-jobs"

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
  Attempts to cancel a job to create a one-time backup of a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20StopBackupJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_job_id` (`t:string` required) Uniquely identifies a request to Backup
    to back up a resource.
  """
  @spec stop_backup_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_backup_job_errors()}
  def stop_backup_job(%Client{} = client, backup_job_id, options \\ []) do
    url_path = "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}"

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
  Assigns a set of key-value pairs to a recovery point, backup plan, or backup
  vault identified by an Amazon Resource Name (ARN).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) An ARN that uniquely identifies a
    resource. The format of the ARN depends on the type of the tagged resource.
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
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
  Removes a set of key-value pairs from a recovery point, backup plan, or backup
  vault identified by an Amazon Resource Name (ARN)

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) An ARN that uniquely identifies a
    resource. The format of the ARN depends on the type of the tagged resource.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/untag/#{AWS.Util.encode_uri(resource_arn)}"

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
  Updates an existing backup plan identified by its `backupPlanId` with the input
  document in JSON format. The new version is uniquely identified by a
  `VersionId`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20UpdateBackupPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_plan_id` (`t:string` required) Uniquely identifies a backup plan.
  """
  @spec update_backup_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_backup_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_backup_plan_errors()}
  def update_backup_plan(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}"

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
  Updates an existing framework identified by its `FrameworkName` with the input
  document in JSON format.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20UpdateFramework&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:framework_name` (`t:string` required) The unique name of a framework. This
    name is between 1 and 256 characters, starting with a letter, and consisting
    of letters (a-z, A-Z), numbers (0-9), and underscores (_).
  """
  @spec update_framework(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_framework_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_framework_errors()}
  def update_framework(%Client{} = client, framework_name, options \\ []) do
    url_path = "/audit/frameworks/#{AWS.Util.encode_uri(framework_name)}"

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
  Updates whether the Amazon Web Services account is opted in to cross-account
  backup. Returns an error if the account is not an Organizations management
  account. Use the `DescribeGlobalSettings` API to determine the current
  settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20UpdateGlobalSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_global_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_global_settings_errors()}
  def update_global_settings(%Client{} = client, options \\ []) do
    url_path = "/global-settings"

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
  Sets the transition lifecycle of a recovery point. The lifecycle defines when a
  protected resource is transitioned to cold storage and when it expires. Backup
  transitions and expires backups automatically according to the lifecycle that
  you define.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20UpdateRecoveryPointLifecycle&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_vault_name` (`t:string` required) The name of a logical container
    where backups are stored. Backup vaults are identified by names that are
    unique to the account used to create them and the Amazon Web Services Region
    where they are created. They consist of lowercase letters, numbers, and
    hyphens.
  * `:recovery_point_arn` (`t:string` required) An Amazon Resource Name (ARN) that
    uniquely identifies a recovery point; for example,
    arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
  """
  @spec update_recovery_point_lifecycle(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_recovery_point_lifecycle_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_recovery_point_lifecycle_errors()}
  def update_recovery_point_lifecycle(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}"

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
  Updates the current service opt-in settings for the Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20UpdateRegionSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_region_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_region_settings_errors()}
  def update_region_settings(%Client{} = client, options \\ []) do
    url_path = "/account-settings"

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
  Updates an existing report plan identified by its `ReportPlanName` with the
  input document in JSON format.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20UpdateReportPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:report_plan_name` (`t:string` required) The unique name of the report plan.
    This name is between 1 and 256 characters, starting with a letter, and
    consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).
  """
  @spec update_report_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_report_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_report_plan_errors()}
  def update_report_plan(%Client{} = client, report_plan_name, options \\ []) do
    url_path = "/audit/report-plans/#{AWS.Util.encode_uri(report_plan_name)}"

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
  This request will send changes to your specified restore testing plan.
  `RestoreTestingPlanName` cannot be updated after it is created.
  `RecoveryPointSelection` can contain:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20UpdateRestoreTestingPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_testing_plan_name` (`t:string` required) This is the restore testing
    plan name you wish to update.
  """
  @spec update_restore_testing_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_restore_testing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_restore_testing_plan_errors()}
  def update_restore_testing_plan(%Client{} = client, restore_testing_plan_name, options \\ []) do
    url_path = "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}"

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
  Most elements except the `RestoreTestingSelectionName` can be updated with this
  request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backup%20UpdateRestoreTestingSelection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:restore_testing_plan_name` (`t:string` required) The restore testing plan
    name is required to update the indicated testing plan.
  * `:restore_testing_selection_name` (`t:string` required) This is the required
    restore testing selection name of the restore testing selection you wish to
    update.
  """
  @spec update_restore_testing_selection(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_restore_testing_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_restore_testing_selection_errors()}
  def update_restore_testing_selection(
        %Client{} = client,
        restore_testing_plan_name,
        restore_testing_selection_name,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections/#{AWS.Util.encode_uri(restore_testing_selection_name)}"

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
