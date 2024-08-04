# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RolesAnywhere do
  @moduledoc """
  Identity and Access Management Roles Anywhere provides a secure way for your
  workloads such as servers, containers, and applications that run outside of
  Amazon Web Services to obtain temporary Amazon Web Services credentials. Your
  workloads can use the same IAM policies and roles you have for native Amazon
  Web Services applications to access Amazon Web Services resources. Using IAM
  Roles Anywhere eliminates the need to manage long-term credentials for
  workloads running outside of Amazon Web Services. To use IAM Roles Anywhere,
  your workloads must use X.509 certificates issued by their certificate
  authority (CA). You register the CA with IAM Roles Anywhere as a trust anchor
  to establish trust between your public key infrastructure (PKI) and IAM Roles
  Anywhere. If you don't manage your own PKI system, you can use Private
  Certificate Authority to create a CA and then use that to establish trust with
  IAM Roles Anywhere.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      subject_detail() :: %{
        "createdAt" => [non_neg_integer()],
        "credentials" => list(credential_summary()()),
        "enabled" => [boolean()],
        "instanceProperties" => list(instance_property()()),
        "lastSeenAt" => [non_neg_integer()],
        "subjectArn" => [String.t()],
        "subjectId" => String.t(),
        "updatedAt" => [non_neg_integer()],
        "x509Subject" => [String.t()]
      }
      
  """
  @type subject_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      credential_summary() :: %{
        "enabled" => [boolean()],
        "failed" => [boolean()],
        "issuer" => [String.t()],
        "seenAt" => [non_neg_integer()],
        "serialNumber" => [String.t()],
        "x509CertificateData" => [String.t()]
      }
      
  """
  @type credential_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_detail_response() :: %{
        optional("profile") => profile_detail()
      }
      
  """
  @type profile_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_notification_settings_request() :: %{
        required("notificationSettings") => list(notification_setting()()),
        required("trustAnchorId") => String.t()
      }
      
  """
  @type put_notification_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      scalar_profile_request() :: %{}
      
  """
  @type scalar_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      scalar_crl_request() :: %{}
      
  """
  @type scalar_crl_request() :: %{}

  @typedoc """

  ## Example:
      
      notification_setting_key() :: %{
        "channel" => String.t(),
        "event" => String.t()
      }
      
  """
  @type notification_setting_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subject_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "enabled" => [boolean()],
        "lastSeenAt" => [non_neg_integer()],
        "subjectArn" => [String.t()],
        "subjectId" => String.t(),
        "updatedAt" => [non_neg_integer()],
        "x509Subject" => [String.t()]
      }
      
  """
  @type subject_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subject_detail_response() :: %{
        optional("subject") => subject_detail()
      }
      
  """
  @type subject_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_crl_request() :: %{
        optional("crlData") => [binary()],
        optional("name") => String.t()
      }
      
  """
  @type update_crl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subjects_response() :: %{
        optional("nextToken") => [String.t()],
        optional("subjects") => list(subject_summary()())
      }
      
  """
  @type list_subjects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_crls_response() :: %{
        optional("crls") => list(crl_detail()()),
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_crls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      crl_detail() :: %{
        "createdAt" => [non_neg_integer()],
        "crlArn" => [String.t()],
        "crlData" => [binary()],
        "crlId" => String.t(),
        "enabled" => [boolean()],
        "name" => [String.t()],
        "trustAnchorArn" => [String.t()],
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type crl_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_trust_anchor_request() :: %{
        optional("name") => String.t(),
        optional("source") => source()
      }
      
  """
  @type update_trust_anchor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_attribute_mapping_response() :: %{
        "profile" => profile_detail()
      }
      
  """
  @type delete_attribute_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_request() :: %{
        optional("acceptRoleSessionName") => [boolean()],
        optional("durationSeconds") => [integer()],
        optional("enabled") => [boolean()],
        optional("managedPolicyArns") => list([String.t()]()),
        optional("requireInstanceProperties") => [boolean()],
        optional("sessionPolicy") => [String.t()],
        optional("tags") => list(tag()()),
        required("name") => String.t(),
        required("roleArns") => list(String.t()())
      }
      
  """
  @type create_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mapping_rule() :: %{
        "specifier" => [String.t()]
      }
      
  """
  @type mapping_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trust_anchor_detail() :: %{
        "createdAt" => [non_neg_integer()],
        "enabled" => [boolean()],
        "name" => String.t(),
        "notificationSettings" => list(notification_setting_detail()()),
        "source" => source(),
        "trustAnchorArn" => [String.t()],
        "trustAnchorId" => String.t(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type trust_anchor_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_profile_request() :: %{
        optional("acceptRoleSessionName") => [boolean()],
        optional("durationSeconds") => [integer()],
        optional("managedPolicyArns") => list([String.t()]()),
        optional("name") => String.t(),
        optional("roleArns") => list(String.t()()),
        optional("sessionPolicy") => [String.t()]
      }
      
  """
  @type update_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_mapping() :: %{
        "certificateField" => String.t(),
        "mappingRules" => list(mapping_rule()())
      }
      
  """
  @type attribute_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("tags") => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_detail() :: %{
        "acceptRoleSessionName" => [boolean()],
        "attributeMappings" => list(attribute_mapping()()),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "durationSeconds" => [integer()],
        "enabled" => [boolean()],
        "managedPolicyArns" => list([String.t()]()),
        "name" => String.t(),
        "profileArn" => String.t(),
        "profileId" => String.t(),
        "requireInstanceProperties" => [boolean()],
        "roleArns" => list(String.t()()),
        "sessionPolicy" => [String.t()],
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type profile_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_attribute_mapping_request() :: %{
        optional("specifiers") => list([String.t()]()),
        required("certificateField") => String.t()
      }
      
  """
  @type delete_attribute_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scalar_subject_request() :: %{}
      
  """
  @type scalar_subject_request() :: %{}

  @typedoc """

  ## Example:
      
      source() :: %{
        "sourceData" => list(),
        "sourceType" => String.t()
      }
      
  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_attribute_mapping_response() :: %{
        "profile" => profile_detail()
      }
      
  """
  @type put_attribute_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_property() :: %{
        "failed" => [boolean()],
        "properties" => map(),
        "seenAt" => [non_neg_integer()]
      }
      
  """
  @type instance_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_profiles_response() :: %{
        optional("nextToken") => [String.t()],
        optional("profiles") => list(profile_detail()())
      }
      
  """
  @type list_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_notification_settings_response() :: %{
        "trustAnchor" => trust_anchor_detail()
      }
      
  """
  @type put_notification_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_notification_settings_response() :: %{
        "trustAnchor" => trust_anchor_detail()
      }
      
  """
  @type reset_notification_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trust_anchor_detail_response() :: %{
        required("trustAnchor") => trust_anchor_detail()
      }
      
  """
  @type trust_anchor_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_crl_request() :: %{
        optional("enabled") => [boolean()],
        optional("tags") => list(tag()()),
        required("crlData") => [binary()],
        required("name") => String.t(),
        required("trustAnchorArn") => String.t()
      }
      
  """
  @type import_crl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_request() :: %{
        optional("nextToken") => [String.t()],
        optional("pageSize") => [integer()]
      }
      
  """
  @type list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scalar_trust_anchor_request() :: %{}
      
  """
  @type scalar_trust_anchor_request() :: %{}

  @typedoc """

  ## Example:
      
      list_trust_anchors_response() :: %{
        optional("nextToken") => [String.t()],
        optional("trustAnchors") => list(trust_anchor_detail()())
      }
      
  """
  @type list_trust_anchors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_setting() :: %{
        "channel" => String.t(),
        "enabled" => [boolean()],
        "event" => String.t(),
        "threshold" => [integer()]
      }
      
  """
  @type notification_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_notification_settings_request() :: %{
        required("notificationSettingKeys") => list(notification_setting_key()()),
        required("trustAnchorId") => String.t()
      }
      
  """
  @type reset_notification_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_trust_anchor_request() :: %{
        optional("enabled") => [boolean()],
        optional("notificationSettings") => list(notification_setting()()),
        optional("tags") => list(tag()()),
        required("name") => String.t(),
        required("source") => source()
      }
      
  """
  @type create_trust_anchor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      crl_detail_response() :: %{
        required("crl") => crl_detail()
      }
      
  """
  @type crl_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_setting_detail() :: %{
        "channel" => String.t(),
        "configuredBy" => [String.t()],
        "enabled" => [boolean()],
        "event" => String.t(),
        "threshold" => [integer()]
      }
      
  """
  @type notification_setting_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_attribute_mapping_request() :: %{
        required("certificateField") => String.t(),
        required("mappingRules") => list(mapping_rule()())
      }
      
  """
  @type put_attribute_mapping_request() :: %{String.t() => any()}

  @type create_profile_errors() :: validation_exception() | access_denied_exception()

  @type create_trust_anchor_errors() :: validation_exception() | access_denied_exception()

  @type delete_attribute_mapping_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type delete_crl_errors() :: access_denied_exception() | resource_not_found_exception()

  @type delete_profile_errors() :: access_denied_exception() | resource_not_found_exception()

  @type delete_trust_anchor_errors() :: access_denied_exception() | resource_not_found_exception()

  @type disable_crl_errors() :: access_denied_exception() | resource_not_found_exception()

  @type disable_profile_errors() :: access_denied_exception() | resource_not_found_exception()

  @type disable_trust_anchor_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type enable_crl_errors() :: access_denied_exception() | resource_not_found_exception()

  @type enable_profile_errors() :: access_denied_exception() | resource_not_found_exception()

  @type enable_trust_anchor_errors() :: access_denied_exception() | resource_not_found_exception()

  @type get_crl_errors() :: resource_not_found_exception()

  @type get_profile_errors() :: access_denied_exception() | resource_not_found_exception()

  @type get_subject_errors() :: access_denied_exception() | resource_not_found_exception()

  @type get_trust_anchor_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type import_crl_errors() :: validation_exception() | access_denied_exception()

  @type list_crls_errors() :: validation_exception() | access_denied_exception()

  @type list_profiles_errors() :: validation_exception() | access_denied_exception()

  @type list_subjects_errors() :: validation_exception() | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_trust_anchors_errors() :: validation_exception() | access_denied_exception()

  @type put_attribute_mapping_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type put_notification_settings_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type reset_notification_settings_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_crl_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_profile_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_trust_anchor_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rolesanywhere",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "RolesAnywhere",
      signature_version: "v4",
      signing_name: "rolesanywhere",
      target_prefix: nil
    }
  end

  @doc """
  Creates a *profile*, a list of the roles that Roles Anywhere service is trusted
  to assume. You use profiles to intersect permissions with IAM managed
  policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20CreateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_profile(AWS.Client.t(), Keyword.t()) ::
          {:ok, profile_detail_response(), any()}
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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a trust anchor to establish trust between IAM Roles Anywhere and your
  certificate authority (CA). You can define a trust anchor as a reference to an
  Private Certificate Authority (Private CA) or by uploading a CA certificate.
  Your Amazon Web Services workloads can authenticate with the trust anchor
  using certificates issued by the CA in exchange for temporary Amazon Web
  Services credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20CreateTrustAnchor&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_trust_anchor(AWS.Client.t(), Keyword.t()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_trust_anchor_errors()}
  def create_trust_anchor(%Client{} = client, options \\ []) do
    url_path = "/trustanchors"

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
  Delete an entry from the attribute mapping rules enforced by a given profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20DeleteAttributeMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string` required) The unique identifier of the profile.
  * `:certificate_field` (`t:string` required) Fields (x509Subject, x509Issuer and
    x509SAN) within X.509 certificates.

  ## Keyword parameters:
  * `:specifiers` (`t:list[smithy.api#String]`) A list of specifiers of a
    certificate field; for example, CN, OU, UID from a Subject.
  """
  @spec delete_attribute_mapping(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_attribute_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_attribute_mapping_errors()}
  def delete_attribute_mapping(%Client{} = client, profile_id, certificate_field, options \\ [])
      when is_binary(certificate_field) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_id)}/mappings"

    # Validate optional parameters
    optional_params = [specifiers: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"certificateField", certificate_field}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :specifiers) do
        [{"specifiers", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:specifiers])

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
  Deletes a certificate revocation list (CRL).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20DeleteCrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:crl_id` (`t:string` required) The unique identifier of the certificate
    revocation list (CRL).
  """
  @spec delete_crl(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_crl_errors()}
  def delete_crl(%Client{} = client, crl_id, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}"

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
  Deletes a profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20DeleteProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string` required) The unique identifier of the profile.
  """
  @spec delete_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_errors()}
  def delete_profile(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"

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
  Deletes a trust anchor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20DeleteTrustAnchor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_anchor_id` (`t:string` required) The unique identifier of the trust
    anchor.
  """
  @spec delete_trust_anchor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_trust_anchor_errors()}
  def delete_trust_anchor(%Client{} = client, trust_anchor_id, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}"

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
  Disables a certificate revocation list (CRL).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20DisableCrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:crl_id` (`t:string` required) The unique identifier of the certificate
    revocation list (CRL).
  """
  @spec disable_crl(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_crl_errors()}
  def disable_crl(%Client{} = client, crl_id, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}/disable"

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
  Disables a profile. When disabled, temporary credential requests with this
  profile fail.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20DisableProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string` required) The unique identifier of the profile.
  """
  @spec disable_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_profile_errors()}
  def disable_profile(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}/disable"

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
  Disables a trust anchor. When disabled, temporary credential requests specifying
  this trust anchor are unauthorized.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20DisableTrustAnchor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_anchor_id` (`t:string` required) The unique identifier of the trust
    anchor.
  """
  @spec disable_trust_anchor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_trust_anchor_errors()}
  def disable_trust_anchor(%Client{} = client, trust_anchor_id, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}/disable"

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
  Enables a certificate revocation list (CRL). When enabled, certificates stored
  in the CRL are unauthorized to receive session credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20EnableCrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:crl_id` (`t:string` required) The unique identifier of the certificate
    revocation list (CRL).
  """
  @spec enable_crl(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_crl_errors()}
  def enable_crl(%Client{} = client, crl_id, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}/enable"

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
  Enables temporary credential requests for a profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20EnableProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string` required) The unique identifier of the profile.
  """
  @spec enable_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_profile_errors()}
  def enable_profile(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}/enable"

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
  Enables a trust anchor. When enabled, certificates in the trust anchor chain are
  authorized for trust validation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20EnableTrustAnchor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_anchor_id` (`t:string` required) The unique identifier of the trust
    anchor.
  """
  @spec enable_trust_anchor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_trust_anchor_errors()}
  def enable_trust_anchor(%Client{} = client, trust_anchor_id, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}/enable"

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
  Gets a certificate revocation list (CRL).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20GetCrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:crl_id` (`t:string` required) The unique identifier of the certificate
    revocation list (CRL).
  """
  @spec get_crl(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_crl_errors()}
  def get_crl(%Client{} = client, crl_id, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}"

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
  Gets a profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20GetProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string` required) The unique identifier of the profile.
  """
  @spec get_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_errors()}
  def get_profile(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"

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
  Gets a *subject*, which associates a certificate identity with authentication
  attempts. The subject stores auditing information such as the status of the
  last authentication attempt, the certificate data used in the attempt, and the
  last time the associated identity attempted authentication.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20GetSubject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:subject_id` (`t:string` required) The unique identifier of the subject.
  """
  @spec get_subject(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, subject_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subject_errors()}
  def get_subject(%Client{} = client, subject_id, options \\ []) do
    url_path = "/subject/#{AWS.Util.encode_uri(subject_id)}"

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
  Gets a trust anchor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20GetTrustAnchor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_anchor_id` (`t:string` required) The unique identifier of the trust
    anchor.
  """
  @spec get_trust_anchor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_trust_anchor_errors()}
  def get_trust_anchor(%Client{} = client, trust_anchor_id, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}"

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
  Imports the certificate revocation list (CRL). A CRL is a list of certificates
  that have been revoked by the issuing certificate Authority (CA).In order to
  be properly imported, a CRL must be in PEM format. IAM Roles Anywhere
  validates against the CRL before issuing credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20ImportCrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec import_crl(AWS.Client.t(), Keyword.t()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_crl_errors()}
  def import_crl(%Client{} = client, options \\ []) do
    url_path = "/crls"

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
  Lists all certificate revocation lists (CRL) in the authenticated account and
  Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20ListCrls&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:next_token` (`t:string`) A token that indicates where the output should
    continue from, if a previous request did not show all results. To get the
    next results, make the request again with this value.
  * `:page_size` (`t:string`) The number of resources in the paginated list.
  """
  @spec list_crls(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_crls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_crls_errors()}
  def list_crls(%Client{} = client, options \\ []) do
    url_path = "/crls"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :page_size) do
        [{"pageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all profiles in the authenticated account and Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20ListProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:next_token` (`t:string`) A token that indicates where the output should
    continue from, if a previous request did not show all results. To get the
    next results, make the request again with this value.
  * `:page_size` (`t:string`) The number of resources in the paginated list.
  """
  @spec list_profiles(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profiles_errors()}
  def list_profiles(%Client{} = client, options \\ []) do
    url_path = "/profiles"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :page_size) do
        [{"pageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the subjects in the authenticated account and Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20ListSubjects&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:next_token` (`t:string`) A token that indicates where the output should
    continue from, if a previous request did not show all results. To get the
    next results, make the request again with this value.
  * `:page_size` (`t:string`) The number of resources in the paginated list.
  """
  @spec list_subjects(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_subjects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subjects_errors()}
  def list_subjects(%Client{} = client, options \\ []) do
    url_path = "/subjects"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :page_size) do
        [{"pageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags attached to the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/ListTagsForResource"

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
    query_params = [{"resourceArn", resource_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the trust anchors in the authenticated account and Amazon Web Services
  Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20ListTrustAnchors&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:next_token` (`t:string`) A token that indicates where the output should
    continue from, if a previous request did not show all results. To get the
    next results, make the request again with this value.
  * `:page_size` (`t:string`) The number of resources in the paginated list.
  """
  @spec list_trust_anchors(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_trust_anchors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_trust_anchors_errors()}
  def list_trust_anchors(%Client{} = client, options \\ []) do
    url_path = "/trustanchors"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :page_size) do
        [{"pageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Put an entry in the attribute mapping rules that will be enforced by a given
  profile. A mapping specifies a certificate field and one or more specifiers
  that have contextual meanings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20PutAttributeMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string` required) The unique identifier of the profile.
  """
  @spec put_attribute_mapping(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_attribute_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_attribute_mapping_errors()}
  def put_attribute_mapping(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_id)}/mappings"

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
  Attaches a list of *notification settings* to a trust anchor. A notification
  setting includes information such as event name, threshold, status of the
  notification setting, and the channel to notify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20PutNotificationSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec put_notification_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_notification_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_notification_settings_errors()}
  def put_notification_settings(%Client{} = client, options \\ []) do
    url_path = "/put-notifications-settings"

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
  Resets the *custom notification setting* to IAM Roles Anywhere default setting.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20ResetNotificationSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec reset_notification_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, reset_notification_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_notification_settings_errors()}
  def reset_notification_settings(%Client{} = client, options \\ []) do
    url_path = "/reset-notifications-settings"

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
  Attaches tags to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec tag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, options \\ []) do
    url_path = "/TagResource"

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
  Removes tags from the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec untag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, options \\ []) do
    url_path = "/UntagResource"

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
  Updates the certificate revocation list (CRL). A CRL is a list of certificates
  that have been revoked by the issuing certificate authority (CA). IAM Roles
  Anywhere validates against the CRL before issuing credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20UpdateCrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:crl_id` (`t:string` required) The unique identifier of the certificate
    revocation list (CRL).
  """
  @spec update_crl(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_crl_errors()}
  def update_crl(%Client{} = client, crl_id, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}"

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
  Updates a *profile*, a list of the roles that IAM Roles Anywhere service is
  trusted to assume. You use profiles to intersect permissions with IAM managed
  policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20UpdateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_id` (`t:string` required) The unique identifier of the profile.
  """
  @spec update_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_profile_errors()}
  def update_profile(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"

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
  Updates a trust anchor. You establish trust between IAM Roles Anywhere and your
  certificate authority (CA) by configuring a trust anchor. You can define a
  trust anchor as a reference to an Private Certificate Authority (Private CA)
  or by uploading a CA certificate. Your Amazon Web Services workloads can
  authenticate with the trust anchor using certificates issued by the CA in
  exchange for temporary Amazon Web Services credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=rolesanywhere%20UpdateTrustAnchor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_anchor_id` (`t:string` required) The unique identifier of the trust
    anchor.
  """
  @spec update_trust_anchor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_trust_anchor_errors()}
  def update_trust_anchor(%Client{} = client, trust_anchor_id, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}"

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
end
