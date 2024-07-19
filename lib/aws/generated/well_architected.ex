# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WellArchitected do
  @moduledoc """
  Well-Architected Tool
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      import_lens_input() :: %{
        optional("LensAlias") => String.t(),
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("JSONString") => String.t()
      }
      
  """
  @type import_lens_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile() :: %{
        "CreatedAt" => non_neg_integer(),
        "Owner" => String.t(),
        "ProfileArn" => String.t(),
        "ProfileDescription" => String.t(),
        "ProfileName" => String.t(),
        "ProfileQuestions" => list(profile_question()()),
        "ProfileVersion" => String.t(),
        "ShareInvitationId" => String.t(),
        "Tags" => map(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_answer_input() :: %{
        optional("ChoiceUpdates") => map(),
        optional("IsApplicable") => boolean(),
        optional("Notes") => String.t(),
        optional("Reason") => list(any()),
        optional("SelectedChoices") => list(String.t()())
      }
      
  """
  @type update_answer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_question() :: %{
        "MaxSelectedChoices" => integer(),
        "MinSelectedChoices" => integer(),
        "QuestionChoices" => list(profile_choice()()),
        "QuestionDescription" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "SelectedChoiceIds" => list(String.t()())
      }
      
  """
  @type profile_question() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      choice_answer_summary() :: %{
        "ChoiceId" => String.t(),
        "Reason" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type choice_answer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lenses_output() :: %{
        "LensSummaries" => list(lens_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_lenses_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_profile_output() :: %{
        "Profile" => profile()
      }
      
  """
  @type get_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      question_metric() :: %{
        "BestPractices" => list(best_practice()()),
        "QuestionId" => String.t(),
        "Risk" => list(any())
      }
      
  """
  @type question_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workload_share_output() :: %{
        "WorkloadId" => String.t(),
        "WorkloadShare" => workload_share()
      }
      
  """
  @type update_workload_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lens_review() :: %{
        "JiraConfiguration" => jira_selected_question_configuration(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "LensStatus" => list(any()),
        "LensVersion" => String.t(),
        "NextToken" => String.t(),
        "Notes" => String.t(),
        "PillarReviewSummaries" => list(pillar_review_summary()()),
        "PrioritizedRiskCounts" => map(),
        "Profiles" => list(workload_profile()()),
        "RiskCounts" => map(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type lens_review() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workload_output() :: %{
        "Workload" => workload()
      }
      
  """
  @type get_workload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_review_template_input() :: %{}
      
  """
  @type get_review_template_input() :: %{}

  @typedoc """

  ## Example:
      
      workload_share_summary() :: %{
        "PermissionType" => list(any()),
        "ShareId" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type workload_share_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload_summary() :: %{
        "ImprovementStatus" => list(any()),
        "Lenses" => list(String.t()()),
        "Owner" => String.t(),
        "PrioritizedRiskCounts" => map(),
        "Profiles" => list(workload_profile()()),
        "RiskCounts" => map(),
        "UpdatedAt" => non_neg_integer(),
        "WorkloadArn" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }
      
  """
  @type workload_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lens_review_improvements_output() :: %{
        "ImprovementSummaries" => list(improvement_summary()()),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "MilestoneNumber" => integer(),
        "NextToken" => String.t(),
        "WorkloadId" => String.t()
      }
      
  """
  @type list_lens_review_improvements_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      best_practice() :: %{
        "ChoiceId" => String.t(),
        "ChoiceTitle" => String.t()
      }
      
  """
  @type best_practice() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload_jira_configuration_output() :: %{
        "IssueManagementStatus" => list(any()),
        "IssueManagementType" => list(any()),
        "JiraProjectKey" => String.t(),
        "StatusMessage" => String.t()
      }
      
  """
  @type workload_jira_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_jira_configuration_output() :: %{
        "IntegrationStatus" => list(any()),
        "IssueManagementStatus" => list(any()),
        "IssueManagementType" => list(any()),
        "JiraProjectKey" => String.t(),
        "StatusMessage" => String.t(),
        "Subdomain" => String.t()
      }
      
  """
  @type account_jira_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lens_review_output() :: %{
        "LensReview" => lens_review(),
        "MilestoneNumber" => integer(),
        "WorkloadId" => String.t()
      }
      
  """
  @type get_lens_review_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workloads_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("WorkloadNamePrefix") => String.t()
      }
      
  """
  @type list_workloads_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      jira_selected_question_configuration() :: %{
        "SelectedPillars" => list(selected_pillar()())
      }
      
  """
  @type jira_selected_question_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_check_details_output() :: %{
        "CheckDetails" => list(check_detail()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_check_details_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_profiles_input() :: %{
        required("ProfileArns") => list(String.t()())
      }
      
  """
  @type associate_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_detail() :: %{
        "AccountId" => String.t(),
        "ChoiceId" => String.t(),
        "Description" => String.t(),
        "FlaggedResources" => integer(),
        "Id" => String.t(),
        "LensArn" => String.t(),
        "Name" => String.t(),
        "PillarId" => String.t(),
        "Provider" => list(any()),
        "QuestionId" => String.t(),
        "Reason" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type check_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_consolidated_report_input() :: %{
        optional("IncludeSharedResources") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Format") => list(any())
      }
      
  """
  @type get_consolidated_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_output() :: %{
        "ProfileArn" => String.t(),
        "ProfileVersion" => String.t()
      }
      
  """
  @type create_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_template_pillar_review_summary() :: %{
        "Notes" => String.t(),
        "PillarId" => String.t(),
        "PillarName" => String.t(),
        "QuestionCounts" => map()
      }
      
  """
  @type review_template_pillar_review_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_share_summary() :: %{
        "ShareId" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type template_share_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lens_version_output() :: %{
        "LensArn" => String.t(),
        "LensVersion" => String.t()
      }
      
  """
  @type create_lens_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      share_invitation_summary() :: %{
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "PermissionType" => list(any()),
        "ProfileArn" => String.t(),
        "ProfileName" => String.t(),
        "ShareInvitationId" => String.t(),
        "ShareResourceType" => list(any()),
        "SharedBy" => String.t(),
        "SharedWith" => String.t(),
        "TemplateArn" => String.t(),
        "TemplateName" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }
      
  """
  @type share_invitation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_share_invitation_output() :: %{
        "ShareInvitation" => share_invitation()
      }
      
  """
  @type update_share_invitation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_share_summary() :: %{
        "ShareId" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type profile_share_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_review_template_output() :: %{
        "TemplateArn" => String.t()
      }
      
  """
  @type create_review_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lens_shares_output() :: %{
        "LensShareSummaries" => list(lens_share_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_lens_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_integration_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("IntegratingService") => list(any())
      }
      
  """
  @type update_integration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_check_details_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChoiceId") => String.t(),
        required("LensArn") => String.t(),
        required("PillarId") => String.t(),
        required("QuestionId") => String.t()
      }
      
  """
  @type list_check_details_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lens_shares_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SharedWithPrefix") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_lens_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lens_review_output() :: %{
        "LensReview" => lens_review(),
        "WorkloadId" => String.t()
      }
      
  """
  @type update_lens_review_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_milestones_output() :: %{
        "MilestoneSummaries" => list(milestone_summary()()),
        "NextToken" => String.t(),
        "WorkloadId" => String.t()
      }
      
  """
  @type list_milestones_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_answer_input() :: %{
        optional("MilestoneNumber") => integer()
      }
      
  """
  @type get_answer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lens_version_input() :: %{
        optional("IsMajorVersion") => boolean(),
        required("ClientRequestToken") => String.t(),
        required("LensVersion") => String.t()
      }
      
  """
  @type create_lens_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notifications_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceArn") => String.t(),
        optional("WorkloadId") => String.t()
      }
      
  """
  @type list_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_milestone_output() :: %{
        "MilestoneNumber" => integer(),
        "WorkloadId" => String.t()
      }
      
  """
  @type create_milestone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lens_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("LensStatus") => list(any())
      }
      
  """
  @type delete_lens_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_question_update() :: %{
        "QuestionId" => String.t(),
        "SelectedChoiceIds" => list(String.t()())
      }
      
  """
  @type profile_question_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lens_share_input() :: %{
        required("ClientRequestToken") => String.t()
      }
      
  """
  @type delete_lens_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profile_shares_output() :: %{
        "NextToken" => String.t(),
        "ProfileShareSummaries" => list(profile_share_summary()())
      }
      
  """
  @type list_profile_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      share_invitation() :: %{
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "ProfileArn" => String.t(),
        "ShareInvitationId" => String.t(),
        "ShareResourceType" => list(any()),
        "TemplateArn" => String.t(),
        "WorkloadId" => String.t()
      }
      
  """
  @type share_invitation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_input() :: %{
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("ProfileDescription") => String.t(),
        required("ProfileName") => String.t(),
        required("ProfileQuestions") => list(profile_question_update()())
      }
      
  """
  @type create_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profiles_output() :: %{
        "NextToken" => String.t(),
        "ProfileSummaries" => list(profile_summary()())
      }
      
  """
  @type list_profiles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_milestones_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_milestones_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lens_review_input() :: %{
        optional("JiraConfiguration") => jira_selected_question_configuration(),
        optional("LensNotes") => String.t(),
        optional("PillarNotes") => map()
      }
      
  """
  @type update_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_lenses_input() :: %{
        required("LensAliases") => list(String.t()())
      }
      
  """
  @type associate_lenses_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_review_template_output() :: %{
        "ReviewTemplate" => review_template()
      }
      
  """
  @type update_review_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workload_input() :: %{}
      
  """
  @type get_workload_input() :: %{}

  @typedoc """

  ## Example:
      
      lens_review_summary() :: %{
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "LensStatus" => list(any()),
        "LensVersion" => String.t(),
        "PrioritizedRiskCounts" => map(),
        "Profiles" => list(workload_profile()()),
        "RiskCounts" => map(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type lens_review_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_template_shares_output() :: %{
        "NextToken" => String.t(),
        "TemplateArn" => String.t(),
        "TemplateShareSummaries" => list(template_share_summary()())
      }
      
  """
  @type list_template_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_profile_input() :: %{
        required("ClientRequestToken") => String.t()
      }
      
  """
  @type delete_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_review_template_input() :: %{
        optional("Description") => String.t(),
        optional("LensesToAssociate") => list(String.t()()),
        optional("LensesToDisassociate") => list(String.t()()),
        optional("Notes") => String.t(),
        optional("TemplateName") => String.t()
      }
      
  """
  @type update_review_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workload_shares_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SharedWithPrefix") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_workload_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_lens_output() :: %{
        "LensArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type import_lens_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_milestone_output() :: %{
        "Milestone" => milestone(),
        "WorkloadId" => String.t()
      }
      
  """
  @type get_milestone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lens_share_summary() :: %{
        "ShareId" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type lens_share_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      consolidated_report_metric() :: %{
        "Lenses" => list(lens_metric()()),
        "LensesAppliedCount" => integer(),
        "MetricType" => list(any()),
        "RiskCounts" => map(),
        "UpdatedAt" => non_neg_integer(),
        "WorkloadArn" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }
      
  """
  @type consolidated_report_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_choice() :: %{
        "ChoiceDescription" => String.t(),
        "ChoiceId" => String.t(),
        "ChoiceTitle" => String.t()
      }
      
  """
  @type profile_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload_discovery_config() :: %{
        "TrustedAdvisorIntegrationStatus" => list(any()),
        "WorkloadResourceDefinition" => list(list(any())())
      }
      
  """
  @type workload_discovery_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_lens_review_input() :: %{
        optional("ClientRequestToken") => String.t(),
        required("MilestoneName") => String.t()
      }
      
  """
  @type upgrade_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_review_template_input() :: %{
        optional("Notes") => String.t(),
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("Description") => String.t(),
        required("Lenses") => list(String.t()()),
        required("TemplateName") => String.t()
      }
      
  """
  @type create_review_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload_jira_configuration_input() :: %{
        "IssueManagementStatus" => list(any()),
        "IssueManagementType" => list(any()),
        "JiraProjectKey" => String.t()
      }
      
  """
  @type workload_jira_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workload_share_input() :: %{
        required("PermissionType") => list(any())
      }
      
  """
  @type update_workload_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_profiles_input() :: %{
        required("ProfileArns") => list(String.t()())
      }
      
  """
  @type disassociate_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_template_choice() :: %{
        "ChoiceDescription" => String.t(),
        "ChoiceId" => String.t(),
        "ChoiceTitle" => String.t()
      }
      
  """
  @type profile_template_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_review_template_answers_output() :: %{
        "AnswerSummaries" => list(review_template_answer_summary()()),
        "LensAlias" => String.t(),
        "NextToken" => String.t(),
        "TemplateArn" => String.t()
      }
      
  """
  @type list_review_template_answers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload() :: %{
        "AccountIds" => list(String.t()()),
        "Applications" => list(String.t()()),
        "ArchitecturalDesign" => String.t(),
        "AwsRegions" => list(String.t()()),
        "Description" => String.t(),
        "DiscoveryConfig" => workload_discovery_config(),
        "Environment" => list(any()),
        "ImprovementStatus" => list(any()),
        "Industry" => String.t(),
        "IndustryType" => String.t(),
        "IsReviewOwnerUpdateAcknowledged" => boolean(),
        "JiraConfiguration" => workload_jira_configuration_output(),
        "Lenses" => list(String.t()()),
        "NonAwsRegions" => list(String.t()()),
        "Notes" => String.t(),
        "Owner" => String.t(),
        "PillarPriorities" => list(String.t()()),
        "PrioritizedRiskCounts" => map(),
        "Profiles" => list(workload_profile()()),
        "ReviewOwner" => String.t(),
        "ReviewRestrictionDate" => non_neg_integer(),
        "RiskCounts" => map(),
        "ShareInvitationId" => String.t(),
        "Tags" => map(),
        "UpdatedAt" => non_neg_integer(),
        "WorkloadArn" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }
      
  """
  @type workload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_answer_output() :: %{
        "Answer" => answer(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "MilestoneNumber" => integer(),
        "WorkloadId" => String.t()
      }
      
  """
  @type get_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_template_summary() :: %{
        "Description" => String.t(),
        "Lenses" => list(String.t()()),
        "Owner" => String.t(),
        "TemplateArn" => String.t(),
        "TemplateName" => String.t(),
        "UpdateStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type review_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      answer() :: %{
        "ChoiceAnswers" => list(choice_answer()()),
        "Choices" => list(choice()()),
        "HelpfulResourceDisplayText" => String.t(),
        "HelpfulResourceUrl" => String.t(),
        "ImprovementPlanUrl" => String.t(),
        "IsApplicable" => boolean(),
        "JiraConfiguration" => jira_configuration(),
        "Notes" => String.t(),
        "PillarId" => String.t(),
        "QuestionDescription" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "Reason" => list(any()),
        "Risk" => list(any()),
        "SelectedChoices" => list(String.t()())
      }
      
  """
  @type answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_template_answer_summary() :: %{
        "AnswerStatus" => list(any()),
        "ChoiceAnswerSummaries" => list(choice_answer_summary()()),
        "Choices" => list(choice()()),
        "IsApplicable" => boolean(),
        "PillarId" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "QuestionType" => list(any()),
        "Reason" => list(any()),
        "SelectedChoices" => list(String.t()())
      }
      
  """
  @type review_template_answer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workload_share_output() :: %{
        "ShareId" => String.t(),
        "WorkloadId" => String.t()
      }
      
  """
  @type create_workload_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_review_template_lens_review_input() :: %{
        optional("LensNotes") => String.t(),
        optional("PillarNotes") => map()
      }
      
  """
  @type update_review_template_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workload_share_input() :: %{
        required("ClientRequestToken") => String.t()
      }
      
  """
  @type delete_workload_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "ServiceCode" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_review_template_lens_review_output() :: %{
        "LensReview" => review_template_lens_review(),
        "TemplateArn" => String.t()
      }
      
  """
  @type get_review_template_lens_review_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lens_review_report() :: %{
        "Base64String" => String.t(),
        "LensAlias" => String.t(),
        "LensArn" => String.t()
      }
      
  """
  @type lens_review_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_profile_template_output() :: %{
        "ProfileTemplate" => profile_template()
      }
      
  """
  @type get_profile_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_review_templates_output() :: %{
        "NextToken" => String.t(),
        "ReviewTemplates" => list(review_template_summary()())
      }
      
  """
  @type list_review_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lens_upgrade_summary() :: %{
        "CurrentLensVersion" => String.t(),
        "LatestLensVersion" => String.t(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceName" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }
      
  """
  @type lens_upgrade_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      milestone() :: %{
        "MilestoneName" => String.t(),
        "MilestoneNumber" => integer(),
        "RecordedAt" => non_neg_integer(),
        "Workload" => workload()
      }
      
  """
  @type milestone() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lens_review_report_input() :: %{
        optional("MilestoneNumber") => integer()
      }
      
  """
  @type get_lens_review_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_lens_input() :: %{
        optional("LensVersion") => String.t()
      }
      
  """
  @type export_lens_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_profile_template_input() :: %{}
      
  """
  @type get_profile_template_input() :: %{}

  @typedoc """

  ## Example:
      
      review_template_lens_review() :: %{
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "LensStatus" => list(any()),
        "LensVersion" => String.t(),
        "NextToken" => String.t(),
        "Notes" => String.t(),
        "PillarReviewSummaries" => list(review_template_pillar_review_summary()()),
        "QuestionCounts" => map(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type review_template_lens_review() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_milestone_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("MilestoneName") => String.t()
      }
      
  """
  @type create_milestone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_review_template_input() :: %{
        required("ClientRequestToken") => String.t()
      }
      
  """
  @type delete_review_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "Message" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_template_share_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("SharedWith") => String.t()
      }
      
  """
  @type create_template_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_template_share_output() :: %{
        "ShareId" => String.t(),
        "TemplateArn" => String.t()
      }
      
  """
  @type create_template_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_template() :: %{
        "Description" => String.t(),
        "Lenses" => list(String.t()()),
        "Notes" => String.t(),
        "Owner" => String.t(),
        "QuestionCounts" => map(),
        "ShareInvitationId" => String.t(),
        "Tags" => map(),
        "TemplateArn" => String.t(),
        "TemplateName" => String.t(),
        "UpdateStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type review_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workload_shares_output() :: %{
        "NextToken" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadShareSummaries" => list(workload_share_summary()())
      }
      
  """
  @type list_workload_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lens_review_report_output() :: %{
        "LensReviewReport" => lens_review_report(),
        "MilestoneNumber" => integer(),
        "WorkloadId" => String.t()
      }
      
  """
  @type get_lens_review_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      choice() :: %{
        "AdditionalResources" => list(additional_resources()()),
        "ChoiceId" => String.t(),
        "Description" => String.t(),
        "HelpfulResource" => choice_content(),
        "ImprovementPlan" => choice_content(),
        "Title" => String.t()
      }
      
  """
  @type choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profile_shares_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SharedWithPrefix") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_profile_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_review_template_answer_input() :: %{
        optional("ChoiceUpdates") => map(),
        optional("IsApplicable") => boolean(),
        optional("Notes") => String.t(),
        optional("Reason") => list(any()),
        optional("SelectedChoices") => list(String.t()())
      }
      
  """
  @type update_review_template_answer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pillar_metric() :: %{
        "PillarId" => String.t(),
        "Questions" => list(question_metric()()),
        "RiskCounts" => map()
      }
      
  """
  @type pillar_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profiles_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProfileNamePrefix") => String.t(),
        optional("ProfileOwnerType") => list(any())
      }
      
  """
  @type list_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      milestone_summary() :: %{
        "MilestoneName" => String.t(),
        "MilestoneNumber" => integer(),
        "RecordedAt" => non_neg_integer(),
        "WorkloadSummary" => workload_summary()
      }
      
  """
  @type milestone_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_milestone_input() :: %{}
      
  """
  @type get_milestone_input() :: %{}

  @typedoc """

  ## Example:
      
      question_difference() :: %{
        "DifferenceStatus" => list(any()),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t()
      }
      
  """
  @type question_difference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_share_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("SharedWith") => String.t()
      }
      
  """
  @type create_profile_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_review_templates_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_review_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      pillar_review_summary() :: %{
        "Notes" => String.t(),
        "PillarId" => String.t(),
        "PillarName" => String.t(),
        "PrioritizedRiskCounts" => map(),
        "RiskCounts" => map()
      }
      
  """
  @type pillar_review_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_share_invitation_input() :: %{
        required("ShareInvitationAction") => list(any())
      }
      
  """
  @type update_share_invitation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pillar_difference() :: %{
        "DifferenceStatus" => list(any()),
        "PillarId" => String.t(),
        "PillarName" => String.t(),
        "QuestionDifferences" => list(question_difference()())
      }
      
  """
  @type pillar_difference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lens_metric() :: %{
        "LensArn" => String.t(),
        "Pillars" => list(pillar_metric()()),
        "RiskCounts" => map()
      }
      
  """
  @type lens_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      choice_content() :: %{
        "DisplayText" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type choice_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_review_template_answers_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PillarId") => String.t()
      }
      
  """
  @type list_review_template_answers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_share_invitations_output() :: %{
        "NextToken" => String.t(),
        "ShareInvitationSummaries" => list(share_invitation_summary()())
      }
      
  """
  @type list_share_invitations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      selected_pillar() :: %{
        "PillarId" => String.t(),
        "SelectedQuestionIds" => list(String.t()())
      }
      
  """
  @type selected_pillar() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_profile_input() :: %{
        optional("ProfileVersion") => String.t()
      }
      
  """
  @type get_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lens_input() :: %{
        optional("LensVersion") => String.t()
      }
      
  """
  @type get_lens_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_profile_version_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("MilestoneName") => String.t()
      }
      
  """
  @type upgrade_profile_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      additional_resources() :: %{
        "Content" => list(choice_content()()),
        "Type" => list(any())
      }
      
  """
  @type additional_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notifications_output() :: %{
        "NextToken" => String.t(),
        "NotificationSummaries" => list(notification_summary()())
      }
      
  """
  @type list_notifications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_answer_output() :: %{
        "Answer" => answer(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "WorkloadId" => String.t()
      }
      
  """
  @type update_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_template() :: %{
        "CreatedAt" => non_neg_integer(),
        "TemplateName" => String.t(),
        "TemplateQuestions" => list(profile_template_question()()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type profile_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      choice_answer() :: %{
        "ChoiceId" => String.t(),
        "Notes" => String.t(),
        "Reason" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type choice_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_template_share_input() :: %{
        required("ClientRequestToken") => String.t()
      }
      
  """
  @type delete_template_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workload_output() :: %{
        "Workload" => workload()
      }
      
  """
  @type update_workload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_profile_share_input() :: %{
        required("ClientRequestToken") => String.t()
      }
      
  """
  @type delete_profile_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lens_version_difference_output() :: %{
        "BaseLensVersion" => String.t(),
        "LatestLensVersion" => String.t(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "TargetLensVersion" => String.t(),
        "VersionDifferences" => version_differences()
      }
      
  """
  @type get_lens_version_difference_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workloads_output() :: %{
        "NextToken" => String.t(),
        "WorkloadSummaries" => list(workload_summary()())
      }
      
  """
  @type list_workloads_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_review_template_answer_output() :: %{
        "Answer" => review_template_answer(),
        "LensAlias" => String.t(),
        "TemplateArn" => String.t()
      }
      
  """
  @type update_review_template_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_global_settings_input() :: %{
        optional("DiscoveryIntegrationStatus") => list(any()),
        optional("JiraConfiguration") => account_jira_configuration_input(),
        optional("OrganizationSharingStatus") => list(any())
      }
      
  """
  @type update_global_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profile_notifications_output() :: %{
        "NextToken" => String.t(),
        "NotificationSummaries" => list(profile_notification_summary()())
      }
      
  """
  @type list_profile_notifications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      improvement_summary() :: %{
        "ImprovementPlanUrl" => String.t(),
        "ImprovementPlans" => list(choice_improvement_plan()()),
        "JiraConfiguration" => jira_configuration(),
        "PillarId" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "Risk" => list(any())
      }
      
  """
  @type improvement_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lens_reviews_output() :: %{
        "LensReviewSummaries" => list(lens_review_summary()()),
        "MilestoneNumber" => integer(),
        "NextToken" => String.t(),
        "WorkloadId" => String.t()
      }
      
  """
  @type list_lens_reviews_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_lenses_input() :: %{
        required("LensAliases") => list(String.t()())
      }
      
  """
  @type disassociate_lenses_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lens_review_improvements_input() :: %{
        optional("MaxResults") => integer(),
        optional("MilestoneNumber") => integer(),
        optional("NextToken") => String.t(),
        optional("PillarId") => String.t(),
        optional("QuestionPriority") => list(any())
      }
      
  """
  @type list_lens_review_improvements_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_profile_output() :: %{
        "Profile" => profile()
      }
      
  """
  @type update_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_review_template_lens_review_input() :: %{
        optional("ClientRequestToken") => String.t()
      }
      
  """
  @type upgrade_review_template_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_jira_configuration_input() :: %{
        "IntegrationStatus" => list(any()),
        "IssueManagementStatus" => list(any()),
        "IssueManagementType" => list(any()),
        "JiraProjectKey" => String.t()
      }
      
  """
  @type account_jira_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Fields" => list(validation_exception_field()()),
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{}
      
  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      list_check_summaries_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChoiceId") => String.t(),
        required("LensArn") => String.t(),
        required("PillarId") => String.t(),
        required("QuestionId") => String.t()
      }
      
  """
  @type list_check_summaries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workload_input() :: %{
        optional("AccountIds") => list(String.t()()),
        optional("Applications") => list(String.t()()),
        optional("ArchitecturalDesign") => String.t(),
        optional("AwsRegions") => list(String.t()()),
        optional("DiscoveryConfig") => workload_discovery_config(),
        optional("Industry") => String.t(),
        optional("IndustryType") => String.t(),
        optional("JiraConfiguration") => workload_jira_configuration_input(),
        optional("NonAwsRegions") => list(String.t()()),
        optional("Notes") => String.t(),
        optional("PillarPriorities") => list(String.t()()),
        optional("ProfileArns") => list(String.t()()),
        optional("ReviewOwner") => String.t(),
        optional("ReviewTemplateArns") => list(String.t()()),
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("Description") => String.t(),
        required("Environment") => list(any()),
        required("Lenses") => list(String.t()()),
        required("WorkloadName") => String.t()
      }
      
  """
  @type create_workload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lens_reviews_input() :: %{
        optional("MaxResults") => integer(),
        optional("MilestoneNumber") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_lens_reviews_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ServiceCode" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profile_notifications_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("WorkloadId") => String.t()
      }
      
  """
  @type list_profile_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lens_share_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("SharedWith") => String.t()
      }
      
  """
  @type create_lens_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lens_output() :: %{
        "Lens" => lens()
      }
      
  """
  @type get_lens_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_share_output() :: %{
        "ProfileArn" => String.t(),
        "ShareId" => String.t()
      }
      
  """
  @type create_profile_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      jira_configuration() :: %{
        "JiraIssueUrl" => String.t(),
        "LastSyncedTime" => non_neg_integer()
      }
      
  """
  @type jira_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lens_review_input() :: %{
        optional("MilestoneNumber") => integer()
      }
      
  """
  @type get_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      choice_update() :: %{
        "Notes" => String.t(),
        "Reason" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type choice_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_consolidated_report_output() :: %{
        "Base64String" => String.t(),
        "Metrics" => list(consolidated_report_metric()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_consolidated_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lens_share_output() :: %{
        "ShareId" => String.t()
      }
      
  """
  @type create_lens_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workload_share_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("PermissionType") => list(any()),
        required("SharedWith") => String.t()
      }
      
  """
  @type create_workload_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lens_version_difference_input() :: %{
        optional("BaseLensVersion") => String.t(),
        optional("TargetLensVersion") => String.t()
      }
      
  """
  @type get_lens_version_difference_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_review_template_lens_review_output() :: %{
        "LensReview" => review_template_lens_review(),
        "TemplateArn" => String.t()
      }
      
  """
  @type update_review_template_lens_review_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_review_template_answer_input() :: %{}
      
  """
  @type get_review_template_answer_input() :: %{}

  @typedoc """

  ## Example:
      
      get_review_template_lens_review_input() :: %{}
      
  """
  @type get_review_template_lens_review_input() :: %{}

  @typedoc """

  ## Example:
      
      create_workload_output() :: %{
        "WorkloadArn" => String.t(),
        "WorkloadId" => String.t()
      }
      
  """
  @type create_workload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_summary() :: %{
        "AccountSummary" => map(),
        "ChoiceId" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LensArn" => String.t(),
        "Name" => String.t(),
        "PillarId" => String.t(),
        "Provider" => list(any()),
        "QuestionId" => String.t(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type check_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_global_settings_output() :: %{
        "DiscoveryIntegrationStatus" => list(any()),
        "JiraConfiguration" => account_jira_configuration_output(),
        "OrganizationSharingStatus" => list(any())
      }
      
  """
  @type get_global_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      version_differences() :: %{
        "PillarDifferences" => list(pillar_difference()())
      }
      
  """
  @type version_differences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_answers_input() :: %{
        optional("MaxResults") => integer(),
        optional("MilestoneNumber") => integer(),
        optional("NextToken") => String.t(),
        optional("PillarId") => String.t(),
        optional("QuestionPriority") => list(any())
      }
      
  """
  @type list_answers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_check_summaries_output() :: %{
        "CheckSummaries" => list(check_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_check_summaries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lens_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "LensStatus" => list(any()),
        "LensType" => list(any()),
        "LensVersion" => String.t(),
        "Owner" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type lens_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_answers_output() :: %{
        "AnswerSummaries" => list(answer_summary()()),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "MilestoneNumber" => integer(),
        "NextToken" => String.t(),
        "WorkloadId" => String.t()
      }
      
  """
  @type list_answers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_summary() :: %{
        "LensUpgradeSummary" => lens_upgrade_summary(),
        "Type" => list(any())
      }
      
  """
  @type notification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      choice_improvement_plan() :: %{
        "ChoiceId" => String.t(),
        "DisplayText" => String.t(),
        "ImprovementPlanUrl" => String.t()
      }
      
  """
  @type choice_improvement_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload_share() :: %{
        "PermissionType" => list(any()),
        "ShareId" => String.t(),
        "SharedBy" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }
      
  """
  @type workload_share() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_notification_summary() :: %{
        "CurrentProfileVersion" => String.t(),
        "LatestProfileVersion" => String.t(),
        "ProfileArn" => String.t(),
        "ProfileName" => String.t(),
        "Type" => list(any()),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }
      
  """
  @type profile_notification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lens() :: %{
        "Description" => String.t(),
        "LensArn" => String.t(),
        "LensVersion" => String.t(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "ShareInvitationId" => String.t(),
        "Tags" => map()
      }
      
  """
  @type lens() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workload_input() :: %{
        optional("AccountIds") => list(String.t()()),
        optional("Applications") => list(String.t()()),
        optional("ArchitecturalDesign") => String.t(),
        optional("AwsRegions") => list(String.t()()),
        optional("Description") => String.t(),
        optional("DiscoveryConfig") => workload_discovery_config(),
        optional("Environment") => list(any()),
        optional("ImprovementStatus") => list(any()),
        optional("Industry") => String.t(),
        optional("IndustryType") => String.t(),
        optional("IsReviewOwnerUpdateAcknowledged") => boolean(),
        optional("JiraConfiguration") => workload_jira_configuration_input(),
        optional("NonAwsRegions") => list(String.t()()),
        optional("Notes") => String.t(),
        optional("PillarPriorities") => list(String.t()()),
        optional("ReviewOwner") => String.t(),
        optional("WorkloadName") => String.t()
      }
      
  """
  @type update_workload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workload_input() :: %{
        required("ClientRequestToken") => String.t()
      }
      
  """
  @type delete_workload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_lens_output() :: %{
        "LensJSON" => String.t()
      }
      
  """
  @type export_lens_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_template_question() :: %{
        "MaxSelectedChoices" => integer(),
        "MinSelectedChoices" => integer(),
        "QuestionChoices" => list(profile_template_choice()()),
        "QuestionDescription" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t()
      }
      
  """
  @type profile_template_question() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_template_answer() :: %{
        "AnswerStatus" => list(any()),
        "ChoiceAnswers" => list(choice_answer()()),
        "Choices" => list(choice()()),
        "HelpfulResourceDisplayText" => String.t(),
        "HelpfulResourceUrl" => String.t(),
        "ImprovementPlanUrl" => String.t(),
        "IsApplicable" => boolean(),
        "Notes" => String.t(),
        "PillarId" => String.t(),
        "QuestionDescription" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "Reason" => list(any()),
        "SelectedChoices" => list(String.t()())
      }
      
  """
  @type review_template_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_profile_input() :: %{
        optional("ProfileDescription") => String.t(),
        optional("ProfileQuestions") => list(profile_question_update()())
      }
      
  """
  @type update_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_review_template_output() :: %{
        "ReviewTemplate" => review_template()
      }
      
  """
  @type get_review_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_share_invitations_input() :: %{
        optional("LensNamePrefix") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProfileNamePrefix") => String.t(),
        optional("ShareResourceType") => list(any()),
        optional("TemplateNamePrefix") => String.t(),
        optional("WorkloadNamePrefix") => String.t()
      }
      
  """
  @type list_share_invitations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      answer_summary() :: %{
        "ChoiceAnswerSummaries" => list(choice_answer_summary()()),
        "Choices" => list(choice()()),
        "IsApplicable" => boolean(),
        "JiraConfiguration" => jira_configuration(),
        "PillarId" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "QuestionType" => list(any()),
        "Reason" => list(any()),
        "Risk" => list(any()),
        "SelectedChoices" => list(String.t()())
      }
      
  """
  @type answer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lenses_input() :: %{
        optional("LensName") => String.t(),
        optional("LensStatus") => list(any()),
        optional("LensType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_lenses_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Owner" => String.t(),
        "ProfileArn" => String.t(),
        "ProfileDescription" => String.t(),
        "ProfileName" => String.t(),
        "ProfileVersion" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_review_template_answer_output() :: %{
        "Answer" => review_template_answer(),
        "LensAlias" => String.t(),
        "TemplateArn" => String.t()
      }
      
  """
  @type get_review_template_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload_profile() :: %{
        "ProfileArn" => String.t(),
        "ProfileVersion" => String.t()
      }
      
  """
  @type workload_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_template_shares_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SharedWithPrefix") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_template_shares_input() :: %{String.t() => any()}

  @type associate_lenses_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_lens_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_lens_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_milestone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_profile_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_review_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_template_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workload_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_lens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_lens_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_profile_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_review_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_template_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workload_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_lenses_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type export_lens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_answer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_consolidated_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_global_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_lens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lens_review_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lens_version_difference_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_milestone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_review_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_review_template_answer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_review_template_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type import_lens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_answers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_check_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_check_summaries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_lens_review_improvements_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_lens_reviews_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_lens_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_lenses_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_milestones_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_notifications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_profile_notifications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_profile_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_review_template_answers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_review_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_share_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception() | resource_not_found_exception()

  @type list_template_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workload_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workloads_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type tag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type update_answer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_global_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type update_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_review_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_review_template_answer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_review_template_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_share_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workload_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type upgrade_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type upgrade_profile_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type upgrade_review_template_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "wellarchitected",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "WellArchitected",
      signature_version: "v4",
      signing_name: "wellarchitected",
      target_prefix: nil
    }
  end

  @doc """
  Associate a lens to a workload. Up to 10 lenses can be associated with a
  workload in a single API operation. A maximum of 20 lenses can be associated
  with a workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20AssociateLenses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec associate_lenses(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_lenses_errors()}

  def associate_lenses(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/associateLenses"

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
  Associate a profile with a workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20AssociateProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec associate_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_profiles_errors()}

  def associate_profiles(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/associateProfiles"

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
  Create a lens share. The owner of a lens can share it with other Amazon Web
  Services accounts, users, an organization, and organizational units (OUs) in
  the same Amazon Web Services Region. Lenses provided by Amazon Web Services
  (Amazon Web Services Official Content) cannot be shared.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20CreateLensShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)

  ## Optional parameters:
  """

  @spec create_lens_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_lens_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lens_share_errors()}

  def create_lens_share(%Client{} = client, lens_alias, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/shares"

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
  Create a new lens version. A lens can have up to 100 versions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20CreateLensVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)

  ## Optional parameters:
  """

  @spec create_lens_version(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_lens_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lens_version_errors()}

  def create_lens_version(%Client{} = client, lens_alias, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/versions"

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
  Create a milestone for an existing workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20CreateMilestone&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec create_milestone(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_milestone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_milestone_errors()}

  def create_milestone(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/milestones"

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
  Create a profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20CreateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_profile(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_profile_errors()}

  def create_profile(%Client{} = client, options \\ []) do
    url_path = "/profiles"

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
  Create a profile share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20CreateProfileShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_arn` (`t:string`) The profile ARN.

  ## Optional parameters:
  """

  @spec create_profile_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_profile_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_profile_share_errors()}

  def create_profile_share(%Client{} = client, profile_arn, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}/shares"

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
  Create a review template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20CreateReviewTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_review_template(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_review_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_review_template_errors()}

  def create_review_template(%Client{} = client, options \\ []) do
    url_path = "/reviewTemplates"

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
  Create a review template share. The owner of a review template can share it with
  other Amazon Web Services accounts, users, an organization, and organizational
  units (OUs) in the same Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20CreateTemplateShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_arn` (`t:string`) The review template ARN.

  ## Optional parameters:
  """

  @spec create_template_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_template_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_template_share_errors()}

  def create_template_share(%Client{} = client, template_arn, options \\ []) do
    url_path = "/templates/shares/#{AWS.Util.encode_uri(template_arn)}"

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
  Create a new workload. The owner of a workload can share the workload with other
  Amazon Web Services accounts, users, an organization, and organizational units
  (OUs) in the same Amazon Web Services Region. Only the owner of a workload can
  delete it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20CreateWorkload&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_workload(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_workload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workload_errors()}

  def create_workload(%Client{} = client, options \\ []) do
    url_path = "/workloads"

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
  Create a workload share. The owner of a workload can share it with other Amazon
  Web Services accounts and users in the same Amazon Web Services Region. Shared
  access to a workload is not removed until the workload invitation is deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20CreateWorkloadShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec create_workload_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_workload_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workload_share_errors()}

  def create_workload_share(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares"

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
  Delete an existing lens. Only the owner of a lens can delete it. After the lens
  is deleted, Amazon Web Services accounts and users that you shared the lens
  with can continue to use it, but they will no longer be able to apply it to
  new workloads.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DeleteLens&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:client_request_token` (`t:string`)
  * `:lens_status` (`t:enum["ALL|DRAFT|PUBLISHED"]`) The status of the lens to be
  deleted.

  ## Optional parameters:
  """

  @spec delete_lens(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lens_errors()}

  def delete_lens(
        %Client{} = client,
        lens_alias,
        client_request_token,
        lens_status,
        options \\ []
      )
      when is_binary(client_request_token) and is_binary(lens_status) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}"

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
    query_params = [{"ClientRequestToken", client_request_token}, {"LensStatus", lens_status}]

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
  Delete a lens share. After the lens share is deleted, Amazon Web Services
  accounts, users, organizations, and organizational units (OUs) that you shared
  the lens with can continue to use it, but they will no longer be able to apply
  it to new workloads.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DeleteLensShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:share_id` (`t:string`)
  * `:client_request_token` (`t:string`)

  ## Optional parameters:
  """

  @spec delete_lens_share(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lens_share_errors()}

  def delete_lens_share(
        %Client{} = client,
        lens_alias,
        share_id,
        client_request_token,
        options \\ []
      )
      when is_binary(client_request_token) do
    url_path =
      "/lenses/#{AWS.Util.encode_uri(lens_alias)}/shares/#{AWS.Util.encode_uri(share_id)}"

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
    query_params = [{"ClientRequestToken", client_request_token}]

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
  Delete a profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DeleteProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_arn` (`t:string`) The profile ARN.
  * `:client_request_token` (`t:string`)

  ## Optional parameters:
  """

  @spec delete_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_errors()}

  def delete_profile(%Client{} = client, profile_arn, client_request_token, options \\ [])
      when is_binary(client_request_token) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}"

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
    query_params = [{"ClientRequestToken", client_request_token}]

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
  Delete a profile share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DeleteProfileShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_arn` (`t:string`) The profile ARN.
  * `:share_id` (`t:string`)
  * `:client_request_token` (`t:string`)

  ## Optional parameters:
  """

  @spec delete_profile_share(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_share_errors()}

  def delete_profile_share(
        %Client{} = client,
        profile_arn,
        share_id,
        client_request_token,
        options \\ []
      )
      when is_binary(client_request_token) do
    url_path =
      "/profiles/#{AWS.Util.encode_uri(profile_arn)}/shares/#{AWS.Util.encode_uri(share_id)}"

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
    query_params = [{"ClientRequestToken", client_request_token}]

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
  Delete a review template. Only the owner of a review template can delete it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DeleteReviewTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_arn` (`t:string`) The review template ARN.
  * `:client_request_token` (`t:string`)

  ## Optional parameters:
  """

  @spec delete_review_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_review_template_errors()}

  def delete_review_template(
        %Client{} = client,
        template_arn,
        client_request_token,
        options \\ []
      )
      when is_binary(client_request_token) do
    url_path = "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}"

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
    query_params = [{"ClientRequestToken", client_request_token}]

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
  Delete a review template share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DeleteTemplateShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:share_id` (`t:string`)
  * `:template_arn` (`t:string`) The review template ARN.
  * `:client_request_token` (`t:string`)

  ## Optional parameters:
  """

  @spec delete_template_share(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_template_share_errors()}

  def delete_template_share(
        %Client{} = client,
        share_id,
        template_arn,
        client_request_token,
        options \\ []
      )
      when is_binary(client_request_token) do
    url_path =
      "/templates/shares/#{AWS.Util.encode_uri(template_arn)}/#{AWS.Util.encode_uri(share_id)}"

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
    query_params = [{"ClientRequestToken", client_request_token}]

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
  Delete an existing workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DeleteWorkload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)
  * `:client_request_token` (`t:string`)

  ## Optional parameters:
  """

  @spec delete_workload(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workload_errors()}

  def delete_workload(%Client{} = client, workload_id, client_request_token, options \\ [])
      when is_binary(client_request_token) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}"

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
    query_params = [{"ClientRequestToken", client_request_token}]

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
  Delete a workload share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DeleteWorkloadShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:share_id` (`t:string`)
  * `:workload_id` (`t:string`)
  * `:client_request_token` (`t:string`)

  ## Optional parameters:
  """

  @spec delete_workload_share(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workload_share_errors()}

  def delete_workload_share(
        %Client{} = client,
        share_id,
        workload_id,
        client_request_token,
        options \\ []
      )
      when is_binary(client_request_token) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares/#{AWS.Util.encode_uri(share_id)}"

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
    query_params = [{"ClientRequestToken", client_request_token}]

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
  Disassociate a lens from a workload. Up to 10 lenses can be disassociated from a
  workload in a single API operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DisassociateLenses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec disassociate_lenses(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_lenses_errors()}

  def disassociate_lenses(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/disassociateLenses"

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
  Disassociate a profile from a workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20DisassociateProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec disassociate_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_profiles_errors()}

  def disassociate_profiles(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/disassociateProfiles"

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
  Export an existing lens. Only the owner of a lens can export it. Lenses provided
  by Amazon Web Services (Amazon Web Services Official Content) cannot be
  exported.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ExportLens&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)

  ## Optional parameters:
  * `:lens_version` (`t:string`) The lens version to be exported.
  """

  @spec export_lens(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, export_lens_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_lens_errors()}

  def export_lens(%Client{} = client, lens_alias, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/export"

    # Validate optional parameters
    optional_params = [lens_version: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :lens_version) do
        [{"LensVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:lens_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the answer to a specific question in a workload review.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetAnswer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:question_id` (`t:string`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  * `:milestone_number` (`t:integer`)
  """

  @spec get_answer(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_answer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_answer_errors()}

  def get_answer(%Client{} = client, lens_alias, question_id, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

    # Validate optional parameters
    optional_params = [milestone_number: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :milestone_number) do
        [{"MilestoneNumber", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:milestone_number])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a consolidated report of your workloads.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetConsolidatedReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:format` (`t:enum["JSON|PDF"]`) The format of the consolidated report.

  ## Optional parameters:
  * `:include_shared_resources` (`t:boolean`) Set to true to have shared resources
  included in the report.
  * `:max_results` (`t:integer`) The maximum number of results to return for this
  request.
  * `:next_token` (`t:string`)
  """

  @spec get_consolidated_report(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_consolidated_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_consolidated_report_errors()}

  def get_consolidated_report(%Client{} = client, format, options \\ []) when is_binary(format) do
    url_path = "/consolidatedReport"

    # Validate optional parameters
    optional_params = [include_shared_resources: nil, max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"Format", format}]

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
      if opt_val = Keyword.get(options, :include_shared_resources) do
        [{"IncludeSharedResources", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_shared_resources, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Global settings for all workloads.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetGlobalSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_global_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_global_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_global_settings_errors()}

  def get_global_settings(%Client{} = client, options \\ []) do
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
  Get an existing lens.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetLens&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)

  ## Optional parameters:
  * `:lens_version` (`t:string`) The lens version to be retrieved.
  """

  @spec get_lens(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_lens_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lens_errors()}

  def get_lens(%Client{} = client, lens_alias, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}"

    # Validate optional parameters
    optional_params = [lens_version: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :lens_version) do
        [{"LensVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:lens_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get lens review.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetLensReview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  * `:milestone_number` (`t:integer`)
  """

  @spec get_lens_review(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_lens_review_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lens_review_errors()}

  def get_lens_review(%Client{} = client, lens_alias, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

    # Validate optional parameters
    optional_params = [milestone_number: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :milestone_number) do
        [{"MilestoneNumber", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:milestone_number])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get lens review report.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetLensReviewReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  * `:milestone_number` (`t:integer`)
  """

  @spec get_lens_review_report(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_lens_review_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lens_review_report_errors()}

  def get_lens_review_report(%Client{} = client, lens_alias, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/report"

    # Validate optional parameters
    optional_params = [milestone_number: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :milestone_number) do
        [{"MilestoneNumber", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:milestone_number])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get lens version differences.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetLensVersionDifference&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)

  ## Optional parameters:
  * `:base_lens_version` (`t:string`) The base version of the lens.
  * `:target_lens_version` (`t:string`) The lens version to target a difference
  for.
  """

  @spec get_lens_version_difference(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_lens_version_difference_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lens_version_difference_errors()}

  def get_lens_version_difference(%Client{} = client, lens_alias, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/versionDifference"

    # Validate optional parameters
    optional_params = [base_lens_version: nil, target_lens_version: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :target_lens_version) do
        [{"TargetLensVersion", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :base_lens_version) do
        [{"BaseLensVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:base_lens_version, :target_lens_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a milestone for an existing workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetMilestone&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:milestone_number` (`t:integer`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec get_milestone(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_milestone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_milestone_errors()}

  def get_milestone(%Client{} = client, milestone_number, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/milestones/#{AWS.Util.encode_uri(milestone_number)}"

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
  Get profile information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_arn` (`t:string`) The profile ARN.

  ## Optional parameters:
  * `:profile_version` (`t:string`) The profile version.
  """

  @spec get_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_errors()}

  def get_profile(%Client{} = client, profile_arn, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}"

    # Validate optional parameters
    optional_params = [profile_version: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :profile_version) do
        [{"ProfileVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:profile_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get profile template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetProfileTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_profile_template(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_profile_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_template_errors()}

  def get_profile_template(%Client{} = client, options \\ []) do
    url_path = "/profileTemplate"

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
  Get review template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetReviewTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_arn` (`t:string`) The review template ARN.

  ## Optional parameters:
  """

  @spec get_review_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_review_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_review_template_errors()}

  def get_review_template(%Client{} = client, template_arn, options \\ []) do
    url_path = "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}"

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
  Get review template answer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetReviewTemplateAnswer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:question_id` (`t:string`)
  * `:template_arn` (`t:string`) The review template ARN.

  ## Optional parameters:
  """

  @spec get_review_template_answer(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_review_template_answer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_review_template_answer_errors()}

  def get_review_template_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        template_arn,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

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
  Get a lens review associated with a review template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetReviewTemplateLensReview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:template_arn` (`t:string`) The review template ARN.

  ## Optional parameters:
  """

  @spec get_review_template_lens_review(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_review_template_lens_review_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_review_template_lens_review_errors()}

  def get_review_template_lens_review(%Client{} = client, lens_alias, template_arn, options \\ []) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

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
  Get an existing workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20GetWorkload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec get_workload(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_workload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workload_errors()}

  def get_workload(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}"

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
  Import a new custom lens or update an existing custom lens. To update an
  existing custom lens, specify its ARN as the `LensAlias`. If no ARN is
  specified, a new custom lens is created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ImportLens&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec import_lens(AWS.Client.t(), Keyword.t()) ::
          {:ok, import_lens_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_lens_errors()}

  def import_lens(%Client{} = client, options \\ []) do
    url_path = "/importLens"

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
  List of answers for a particular workload and lens.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListAnswers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for this
  request.
  * `:milestone_number` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:pillar_id` (`t:string`)
  * `:question_priority` (`t:enum["NONE|PRIORITIZED"]`) The priority of the
  question.
  """

  @spec list_answers(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_answers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_answers_errors()}

  def list_answers(%Client{} = client, lens_alias, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers"

    # Validate optional parameters
    optional_params = [
      max_results: nil,
      milestone_number: nil,
      next_token: nil,
      pillar_id: nil,
      question_priority: nil
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
      if opt_val = Keyword.get(options, :question_priority) do
        [{"QuestionPriority", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :pillar_id) do
        [{"PillarId", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :milestone_number) do
        [{"MilestoneNumber", opt_val} | query_params]
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
      |> Keyword.drop([
        :max_results,
        :milestone_number,
        :next_token,
        :pillar_id,
        :question_priority
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List of Trusted Advisor check details by account related to the workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListCheckDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec list_check_details(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_check_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_check_details_errors()}

  def list_check_details(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/checks"

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
  List of Trusted Advisor checks summarized for all accounts related to the
  workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListCheckSummaries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec list_check_summaries(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_check_summaries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_check_summaries_errors()}

  def list_check_summaries(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/checkSummaries"

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
  List the improvements of a particular lens review.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListLensReviewImprovements&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for this
  request.
  * `:milestone_number` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:pillar_id` (`t:string`)
  * `:question_priority` (`t:enum["NONE|PRIORITIZED"]`) The priority of the
  question.
  """

  @spec list_lens_review_improvements(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_lens_review_improvements_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lens_review_improvements_errors()}

  def list_lens_review_improvements(%Client{} = client, lens_alias, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/improvements"

    # Validate optional parameters
    optional_params = [
      max_results: nil,
      milestone_number: nil,
      next_token: nil,
      pillar_id: nil,
      question_priority: nil
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
      if opt_val = Keyword.get(options, :question_priority) do
        [{"QuestionPriority", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :pillar_id) do
        [{"PillarId", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :milestone_number) do
        [{"MilestoneNumber", opt_val} | query_params]
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
      |> Keyword.drop([
        :max_results,
        :milestone_number,
        :next_token,
        :pillar_id,
        :question_priority
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List lens reviews for a particular workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListLensReviews&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  * `:max_results` (`t:integer`)
  * `:milestone_number` (`t:integer`)
  * `:next_token` (`t:string`)
  """

  @spec list_lens_reviews(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_lens_reviews_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lens_reviews_errors()}

  def list_lens_reviews(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews"

    # Validate optional parameters
    optional_params = [max_results: nil, milestone_number: nil, next_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :milestone_number) do
        [{"MilestoneNumber", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :milestone_number, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the lens shares associated with the lens.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListLensShares&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for this
  request.
  * `:next_token` (`t:string`)
  * `:shared_with_prefix` (`t:string`) The Amazon Web Services account ID,
  organization ID, or organizational unit (OU) ID with which the lens is
  shared.
  * `:status`
  (`t:enum["ACCEPTED|ASSOCIATED|ASSOCIATING|EXPIRED|FAILED|PENDING|REJECTED|REVOKED"]`)
  """

  @spec list_lens_shares(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_lens_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lens_shares_errors()}

  def list_lens_shares(%Client{} = client, lens_alias, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/shares"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, shared_with_prefix: nil, status: nil]

    options =
      Keyword.validate!(
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
        [{"Status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :shared_with_prefix) do
        [{"SharedWithPrefix", opt_val} | query_params]
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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :shared_with_prefix, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the available lenses.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListLenses&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:lens_name` (`t:string`)
  * `:lens_status` (`t:enum["ALL|DRAFT|PUBLISHED"]`) The status of lenses to be
  returned.
  * `:lens_type` (`t:enum["AWS_OFFICIAL|CUSTOM_SELF|CUSTOM_SHARED"]`) The type of
  lenses to be returned.
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """

  @spec list_lenses(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_lenses_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lenses_errors()}

  def list_lenses(%Client{} = client, options \\ []) do
    url_path = "/lenses"

    # Validate optional parameters
    optional_params = [
      lens_name: nil,
      lens_status: nil,
      lens_type: nil,
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
      if opt_val = Keyword.get(options, :lens_type) do
        [{"LensType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :lens_status) do
        [{"LensStatus", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :lens_name) do
        [{"LensName", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:lens_name, :lens_status, :lens_type, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all milestones for an existing workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListMilestones&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec list_milestones(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_milestones_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_milestones_errors()}

  def list_milestones(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/milestonesSummaries"

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
  List lens notifications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListNotifications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_notifications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notifications_errors()}

  def list_notifications(%Client{} = client, options \\ []) do
    url_path = "/notifications"

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
  List profile notifications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListProfileNotifications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:workload_id` (`t:string`)
  """

  @spec list_profile_notifications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_profile_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_notifications_errors()}

  def list_profile_notifications(%Client{} = client, options \\ []) do
    url_path = "/profileNotifications"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, workload_id: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :workload_id) do
        [{"WorkloadId", opt_val} | query_params]
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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :workload_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List profile shares.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListProfileShares&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_arn` (`t:string`) The profile ARN.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for this
  request.
  * `:next_token` (`t:string`)
  * `:shared_with_prefix` (`t:string`) The Amazon Web Services account ID,
  organization ID, or organizational unit (OU) ID with which the profile is
  shared.
  * `:status`
  (`t:enum["ACCEPTED|ASSOCIATED|ASSOCIATING|EXPIRED|FAILED|PENDING|REJECTED|REVOKED"]`)
  """

  @spec list_profile_shares(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_profile_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_shares_errors()}

  def list_profile_shares(%Client{} = client, profile_arn, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}/shares"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, shared_with_prefix: nil, status: nil]

    options =
      Keyword.validate!(
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
        [{"Status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :shared_with_prefix) do
        [{"SharedWithPrefix", opt_val} | query_params]
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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :shared_with_prefix, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List profiles.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:profile_name_prefix` (`t:string`) An optional string added to the beginning
  of each profile name returned in the results.
  * `:profile_owner_type` (`t:enum["SELF|SHARED"]`) Profile owner type.
  """

  @spec list_profiles(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profiles_errors()}

  def list_profiles(%Client{} = client, options \\ []) do
    url_path = "/profileSummaries"

    # Validate optional parameters
    optional_params = [
      max_results: nil,
      next_token: nil,
      profile_name_prefix: nil,
      profile_owner_type: nil
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
      if opt_val = Keyword.get(options, :profile_owner_type) do
        [{"ProfileOwnerType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :profile_name_prefix) do
        [{"ProfileNamePrefix", opt_val} | query_params]
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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :profile_name_prefix, :profile_owner_type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the answers of a review template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListReviewTemplateAnswers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:template_arn` (`t:string`) The ARN of the review template.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for this
  request.
  * `:next_token` (`t:string`)
  * `:pillar_id` (`t:string`)
  """

  @spec list_review_template_answers(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_review_template_answers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_review_template_answers_errors()}

  def list_review_template_answers(%Client{} = client, lens_alias, template_arn, options \\ []) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, pillar_id: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :pillar_id) do
        [{"PillarId", opt_val} | query_params]
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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :pillar_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List review templates.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListReviewTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """

  @spec list_review_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_review_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_review_templates_errors()}

  def list_review_templates(%Client{} = client, options \\ []) do
    url_path = "/reviewTemplates"

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
  List the share invitations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListShareInvitations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:lens_name_prefix` (`t:string`) An optional string added to the beginning of
  each lens name returned in the results.
  * `:max_results` (`t:integer`) The maximum number of results to return for this
  request.
  * `:next_token` (`t:string`)
  * `:profile_name_prefix` (`t:string`) An optional string added to the beginning
  of each profile name returned in the results.
  * `:share_resource_type` (`t:enum["LENS|PROFILE|TEMPLATE|WORKLOAD"]`) The type
  of share invitations to be returned.
  * `:template_name_prefix` (`t:string`) An optional string added to the beginning
  of each review template name returned in the results.
  * `:workload_name_prefix` (`t:string`)
  """

  @spec list_share_invitations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_share_invitations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_share_invitations_errors()}

  def list_share_invitations(%Client{} = client, options \\ []) do
    url_path = "/shareInvitations"

    # Validate optional parameters
    optional_params = [
      lens_name_prefix: nil,
      max_results: nil,
      next_token: nil,
      profile_name_prefix: nil,
      share_resource_type: nil,
      template_name_prefix: nil,
      workload_name_prefix: nil
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
      if opt_val = Keyword.get(options, :workload_name_prefix) do
        [{"WorkloadNamePrefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :template_name_prefix) do
        [{"TemplateNamePrefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :share_resource_type) do
        [{"ShareResourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :profile_name_prefix) do
        [{"ProfileNamePrefix", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :lens_name_prefix) do
        [{"LensNamePrefix", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :lens_name_prefix,
        :max_results,
        :next_token,
        :profile_name_prefix,
        :share_resource_type,
        :template_name_prefix,
        :workload_name_prefix
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_arn` (`t:string`)

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, workload_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(workload_arn)}"

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
  List review template shares.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListTemplateShares&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_arn` (`t:string`) The review template ARN.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for this
  request.
  * `:next_token` (`t:string`)
  * `:shared_with_prefix` (`t:string`) The Amazon Web Services account ID,
  organization ID, or organizational unit (OU) ID with which the profile is
  shared.
  * `:status`
  (`t:enum["ACCEPTED|ASSOCIATED|ASSOCIATING|EXPIRED|FAILED|PENDING|REJECTED|REVOKED"]`)
  """

  @spec list_template_shares(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_template_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_template_shares_errors()}

  def list_template_shares(%Client{} = client, template_arn, options \\ []) do
    url_path = "/templates/shares/#{AWS.Util.encode_uri(template_arn)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, shared_with_prefix: nil, status: nil]

    options =
      Keyword.validate!(
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
        [{"Status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :shared_with_prefix) do
        [{"SharedWithPrefix", opt_val} | query_params]
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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :shared_with_prefix, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the workload shares associated with the workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListWorkloadShares&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return for this
  request.
  * `:next_token` (`t:string`)
  * `:shared_with_prefix` (`t:string`) The Amazon Web Services account ID,
  organization ID, or organizational unit (OU) ID with which the workload is
  shared.
  * `:status`
  (`t:enum["ACCEPTED|ASSOCIATED|ASSOCIATING|EXPIRED|FAILED|PENDING|REJECTED|REVOKED"]`)
  """

  @spec list_workload_shares(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_workload_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workload_shares_errors()}

  def list_workload_shares(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, shared_with_prefix: nil, status: nil]

    options =
      Keyword.validate!(
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
        [{"Status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :shared_with_prefix) do
        [{"SharedWithPrefix", opt_val} | query_params]
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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :shared_with_prefix, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Paginated list of workloads.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20ListWorkloads&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_workloads(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_workloads_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workloads_errors()}

  def list_workloads(%Client{} = client, options \\ []) do
    url_path = "/workloadsSummaries"

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
  Adds one or more tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_arn` (`t:string`)

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, workload_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(workload_arn)}"

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
  Deletes specified tags from a resource. The WorkloadArn parameter can be a
  workload ARN, a custom lens ARN, a profile ARN, or review template ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_arn` (`t:string`)
  * `:tag_keys` (`t:list[com.amazonaws.wellarchitected#TagKey]`) A list of tag
  keys. Existing tags of the resource whose keys are members of this list are
  removed from the resource.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, workload_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/tags/#{AWS.Util.encode_uri(workload_arn)}"

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
  Update the answer to a specific question in a workload review.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateAnswer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:question_id` (`t:string`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec update_answer(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_answer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_answer_errors()}

  def update_answer(%Client{} = client, lens_alias, question_id, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

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
  Update whether the Amazon Web Services account is opted into organization
  sharing and discovery integration features.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateGlobalSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
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
  Update integration features.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec update_integration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_integration_errors()}

  def update_integration(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/updateIntegration"

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
  Update lens review for a particular workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateLensReview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec update_lens_review(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_lens_review_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_lens_review_errors()}

  def update_lens_review(%Client{} = client, lens_alias, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

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
  Update a profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_arn` (`t:string`) The profile ARN.

  ## Optional parameters:
  """

  @spec update_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_profile_errors()}

  def update_profile(%Client{} = client, profile_arn, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}"

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
  Update a review template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateReviewTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_arn` (`t:string`) The review template ARN.

  ## Optional parameters:
  """

  @spec update_review_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_review_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_review_template_errors()}

  def update_review_template(%Client{} = client, template_arn, options \\ []) do
    url_path = "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}"

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
  Update a review template answer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateReviewTemplateAnswer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:question_id` (`t:string`)
  * `:template_arn` (`t:string`) The review template ARN.

  ## Optional parameters:
  """

  @spec update_review_template_answer(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, update_review_template_answer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_review_template_answer_errors()}

  def update_review_template_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        template_arn,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

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
  Update a lens review associated with a review template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateReviewTemplateLensReview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:template_arn` (`t:string`) The review template ARN.

  ## Optional parameters:
  """

  @spec update_review_template_lens_review(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_review_template_lens_review_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_review_template_lens_review_errors()}

  def update_review_template_lens_review(
        %Client{} = client,
        lens_alias,
        template_arn,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

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
  Update a workload or custom lens share invitation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateShareInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:share_invitation_id` (`t:string`) The ID assigned to the share invitation.

  ## Optional parameters:
  """

  @spec update_share_invitation(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_share_invitation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_share_invitation_errors()}

  def update_share_invitation(%Client{} = client, share_invitation_id, options \\ []) do
    url_path = "/shareInvitations/#{AWS.Util.encode_uri(share_invitation_id)}"

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
  Update an existing workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateWorkload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec update_workload(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_workload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workload_errors()}

  def update_workload(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}"

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
  Update a workload share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpdateWorkloadShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:share_id` (`t:string`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec update_workload_share(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_workload_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workload_share_errors()}

  def update_workload_share(%Client{} = client, share_id, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares/#{AWS.Util.encode_uri(share_id)}"

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
  Upgrade lens review for a particular workload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpgradeLensReview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec upgrade_lens_review(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_lens_review_errors()}

  def upgrade_lens_review(%Client{} = client, lens_alias, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/upgrade"

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
  Upgrade a profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpgradeProfileVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_arn` (`t:string`) The profile ARN.
  * `:workload_id` (`t:string`)

  ## Optional parameters:
  """

  @spec upgrade_profile_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_profile_version_errors()}

  def upgrade_profile_version(%Client{} = client, profile_arn, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/profiles/#{AWS.Util.encode_uri(profile_arn)}/upgrade"

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
  Upgrade the lens review of a review template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wellarchitected%20UpgradeReviewTemplateLensReview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lens_alias` (`t:string`)
  * `:template_arn` (`t:string`) The ARN of the review template.

  ## Optional parameters:
  """

  @spec upgrade_review_template_lens_review(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_review_template_lens_review_errors()}

  def upgrade_review_template_lens_review(
        %Client{} = client,
        lens_alias,
        template_arn,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/upgrade"

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
