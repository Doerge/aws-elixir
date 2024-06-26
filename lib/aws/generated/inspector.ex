# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Inspector do
  @moduledoc """
  Amazon Inspector

  Amazon Inspector enables you to analyze the behavior of your AWS resources and
  to
  identify potential security issues.

  For more information, see [ Amazon Inspector User Guide](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2016-02-16",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "inspector",
      global?: false,
      protocol: "json",
      service_id: "Inspector",
      signature_version: "v4",
      signing_name: "inspector",
      target_prefix: "InspectorService"
    }
  end

  @doc """
  Assigns attributes (key and value pairs) to the findings that are specified by
  the
  ARNs of the findings.
  """
  def add_attributes_to_findings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddAttributesToFindings", input, options)
  end

  @doc """
  Creates a new assessment target using the ARN of the resource group that is
  generated
  by `CreateResourceGroup`.

  If resourceGroupArn is not specified, all EC2
  instances in the current AWS account and region are included in the assessment
  target. If
  the [service-linked role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html)
  isn’t already registered, this action also creates and
  registers a service-linked role to grant Amazon Inspector access to AWS Services
  needed to
  perform security assessments. You can create up to 50 assessment targets per AWS
  account.
  You can run up to 500 concurrent agents per AWS account. For more information,
  see [
  Amazon Inspector Assessment
  Targets](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
  """
  def create_assessment_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAssessmentTarget", input, options)
  end

  @doc """
  Creates an assessment template for the assessment target that is specified by
  the ARN
  of the assessment target.

  If the [service-linked role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html)
  isn’t already registered, this action also creates and
  registers a service-linked role to grant Amazon Inspector access to AWS Services
  needed to
  perform security assessments.
  """
  def create_assessment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAssessmentTemplate", input, options)
  end

  @doc """
  Starts the generation of an exclusions preview for the specified assessment
  template.

  The exclusions preview lists the potential exclusions (ExclusionPreview) that
  Inspector can
  detect before it runs the assessment.
  """
  def create_exclusions_preview(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateExclusionsPreview", input, options)
  end

  @doc """
  Creates a resource group using the specified set of tags (key and value pairs)
  that
  are used to select the EC2 instances to be included in an Amazon Inspector
  assessment
  target.

  The created resource group is then used to create an Amazon Inspector assessment
  target. For more information, see `CreateAssessmentTarget`.
  """
  def create_resource_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateResourceGroup", input, options)
  end

  @doc """
  Deletes the assessment run that is specified by the ARN of the assessment
  run.
  """
  def delete_assessment_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAssessmentRun", input, options)
  end

  @doc """
  Deletes the assessment target that is specified by the ARN of the assessment
  target.
  """
  def delete_assessment_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAssessmentTarget", input, options)
  end

  @doc """
  Deletes the assessment template that is specified by the ARN of the assessment
  template.
  """
  def delete_assessment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAssessmentTemplate", input, options)
  end

  @doc """
  Describes the assessment runs that are specified by the ARNs of the assessment
  runs.
  """
  def describe_assessment_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssessmentRuns", input, options)
  end

  @doc """
  Describes the assessment targets that are specified by the ARNs of the
  assessment
  targets.
  """
  def describe_assessment_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssessmentTargets", input, options)
  end

  @doc """
  Describes the assessment templates that are specified by the ARNs of the
  assessment
  templates.
  """
  def describe_assessment_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssessmentTemplates", input, options)
  end

  @doc """
  Describes the IAM role that enables Amazon Inspector to access your AWS
  account.
  """
  def describe_cross_account_access_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCrossAccountAccessRole", input, options)
  end

  @doc """
  Describes the exclusions that are specified by the exclusions' ARNs.
  """
  def describe_exclusions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExclusions", input, options)
  end

  @doc """
  Describes the findings that are specified by the ARNs of the findings.
  """
  def describe_findings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFindings", input, options)
  end

  @doc """
  Describes the resource groups that are specified by the ARNs of the resource
  groups.
  """
  def describe_resource_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeResourceGroups", input, options)
  end

  @doc """
  Describes the rules packages that are specified by the ARNs of the rules
  packages.
  """
  def describe_rules_packages(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRulesPackages", input, options)
  end

  @doc """
  Produces an assessment report that includes detailed and comprehensive results
  of a
  specified assessment run.
  """
  def get_assessment_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAssessmentReport", input, options)
  end

  @doc """
  Retrieves the exclusions preview (a list of ExclusionPreview objects) specified
  by
  the preview token.

  You can obtain the preview token by running the CreateExclusionsPreview
  API.
  """
  def get_exclusions_preview(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetExclusionsPreview", input, options)
  end

  @doc """
  Information about the data that is collected for the specified assessment
  run.
  """
  def get_telemetry_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTelemetryMetadata", input, options)
  end

  @doc """
  Lists the agents of the assessment runs that are specified by the ARNs of the
  assessment runs.
  """
  def list_assessment_run_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssessmentRunAgents", input, options)
  end

  @doc """
  Lists the assessment runs that correspond to the assessment templates that are
  specified by the ARNs of the assessment templates.
  """
  def list_assessment_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssessmentRuns", input, options)
  end

  @doc """
  Lists the ARNs of the assessment targets within this AWS account.

  For more
  information about assessment targets, see [Amazon Inspector Assessment Targets](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
  """
  def list_assessment_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssessmentTargets", input, options)
  end

  @doc """
  Lists the assessment templates that correspond to the assessment targets that
  are
  specified by the ARNs of the assessment targets.
  """
  def list_assessment_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssessmentTemplates", input, options)
  end

  @doc """
  Lists all the event subscriptions for the assessment template that is specified
  by
  the ARN of the assessment template.

  For more information, see `SubscribeToEvent` and `UnsubscribeFromEvent`.
  """
  def list_event_subscriptions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEventSubscriptions", input, options)
  end

  @doc """
  List exclusions that are generated by the assessment run.
  """
  def list_exclusions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExclusions", input, options)
  end

  @doc """
  Lists findings that are generated by the assessment runs that are specified by
  the
  ARNs of the assessment runs.
  """
  def list_findings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFindings", input, options)
  end

  @doc """
  Lists all available Amazon Inspector rules packages.
  """
  def list_rules_packages(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRulesPackages", input, options)
  end

  @doc """
  Lists all tags associated with an assessment template.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Previews the agents installed on the EC2 instances that are part of the
  specified
  assessment target.
  """
  def preview_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PreviewAgents", input, options)
  end

  @doc """
  Registers the IAM role that grants Amazon Inspector access to AWS Services
  needed to
  perform security assessments.
  """
  def register_cross_account_access_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterCrossAccountAccessRole", input, options)
  end

  @doc """
  Removes entire attributes (key and value pairs) from the findings that are
  specified
  by the ARNs of the findings where an attribute with the specified key exists.
  """
  def remove_attributes_from_findings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveAttributesFromFindings", input, options)
  end

  @doc """
  Sets tags (key and value pairs) to the assessment template that is specified by
  the
  ARN of the assessment template.
  """
  def set_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTagsForResource", input, options)
  end

  @doc """
  Starts the assessment run specified by the ARN of the assessment template.

  For this
  API to function properly, you must not exceed the limit of running up to 500
  concurrent
  agents per AWS account.
  """
  def start_assessment_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAssessmentRun", input, options)
  end

  @doc """
  Stops the assessment run that is specified by the ARN of the assessment
  run.
  """
  def stop_assessment_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopAssessmentRun", input, options)
  end

  @doc """
  Enables the process of sending Amazon Simple Notification Service (SNS)
  notifications
  about a specified event to a specified SNS topic.
  """
  def subscribe_to_event(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubscribeToEvent", input, options)
  end

  @doc """
  Disables the process of sending Amazon Simple Notification Service (SNS)
  notifications about a specified event to a specified SNS topic.
  """
  def unsubscribe_from_event(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnsubscribeFromEvent", input, options)
  end

  @doc """
  Updates the assessment target that is specified by the ARN of the assessment
  target.

  If resourceGroupArn is not specified, all EC2 instances in the current AWS
  account
  and region are included in the assessment target.
  """
  def update_assessment_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAssessmentTarget", input, options)
  end
end
