# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Codeartifact do
  @moduledoc """
  CodeArtifact is a fully managed artifact repository compatible with
  language-native
  package managers and build tools such as npm, Apache Maven, pip, and dotnet.

  You can use CodeArtifact to
  share packages with development teams and pull packages. Packages can be pulled
  from both
  public and CodeArtifact repositories. You can also create an upstream
  relationship between a CodeArtifact
  repository and another repository, which effectively merges their contents from
  the point of
  view of a package manager client.

  ## CodeArtifact concepts

    *

  **Repository## : A CodeArtifact repository contains a set of [package versions](https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version),
  each of which maps to a set of assets, or files. Repositories are
  polyglot, so a single repository can contain packages of any supported type.
  Each
  repository exposes endpoints for fetching and publishing packages using tools
  such as the 
  `npm`
  ##  CLI or the Maven CLI (
  `mvn`
  **). For a list of supported package managers, see the
  [CodeArtifact User Guide](https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html).

    *

  **Domain**: Repositories are aggregated into a higher-level entity known as a
  *domain*. All package assets and metadata are stored in the domain,
  but are consumed through repositories. A given package asset, such as a Maven
  JAR file, is
  stored once per domain, no matter how many repositories it's present in. All of
  the assets
  and metadata in a domain are encrypted with the same customer master key (CMK)
  stored in
  Key Management Service (KMS).

  Each repository is a member of a single domain and can't be moved to a
  different domain.

  The domain allows organizational policy to be applied across multiple
  repositories, such as which accounts can access repositories in the domain, and
  which public repositories can be used as sources of packages.

  Although an organization can have multiple domains, we recommend a single
  production
  domain that contains all published artifacts so that teams can find and share
  packages
  across their organization.

    *

  **Package**: A *package* is a bundle of software and the metadata required to
  resolve dependencies and install the software. CodeArtifact supports npm, PyPI,
  Maven, NuGet, Swift, Ruby, and generic package formats.
  For more information about the supported package formats and how to use
  CodeArtifact with them, see the
  [CodeArtifact User Guide](https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html).

  In CodeArtifact, a package consists of:

      *
  A *name* (for example, `webpack` is the name of a
  popular npm package)

      *
  An optional namespace (for example, `@types` in `@types/node`)

      *
  A set of versions (for example, `1.0.0`, `1.0.1`,
  `1.0.2`, etc.)

      *
  Package-level metadata (for example, npm tags)

    *

  **Package group**: A group of packages that match a specified definition.
  Package
  groups can be used to apply configuration to multiple packages that match a
  defined pattern using
  package format, package namespace, and package name. You can use package groups
  to more conveniently
  configure package origin controls for multiple packages. Package origin controls
  are used to block or allow ingestion or publishing
  of new package versions, which protects users from malicious actions known as
  dependency substitution attacks.

    *

  **Package version**: A version of a package, such as `@types/node 12.6.9`. The
  version number
  format and semantics vary for different package formats. For example, npm
  package versions
  must conform to the [Semantic Versioning specification](https://semver.org/). In CodeArtifact, a package version consists
  of the version identifier,
  metadata at the package version level, and a set of assets.

    *

  **Upstream repository**: One repository is *upstream* of another when the
  package versions in
  it can be accessed from the repository endpoint of the downstream repository,
  effectively
  merging the contents of the two repositories from the point of view of a client.
  CodeArtifact
  allows creating an upstream relationship between two repositories.

    *

  **Asset**: An individual file stored in CodeArtifact associated with a package
  version, such as an npm
  `.tgz` file or Maven POM and JAR files.

  ## CodeArtifact supported API operations

    *

  `AssociateExternalConnection`: Adds an existing external
  connection to a repository.

    *

  `CopyPackageVersions`: Copies package versions from one
  repository to another repository in the same domain.

    *

  `CreateDomain`: Creates a domain.

    *

  `CreatePackageGroup`: Creates a package group.

    *

  `CreateRepository`: Creates a CodeArtifact repository in a domain.

    *

  `DeleteDomain`: Deletes a domain. You cannot delete a domain that contains
  repositories.

    *

  `DeleteDomainPermissionsPolicy`: Deletes the resource policy that is set on a
  domain.

    *

  `DeletePackage`: Deletes a package and all associated package versions.

    *

  `DeletePackageGroup`: Deletes a package group. Does not delete packages or
  package versions that are associated with a package group.

    *

  `DeletePackageVersions`: Deletes versions of a package. After a package has
  been deleted, it can be republished, but its assets and metadata cannot be
  restored
  because they have been permanently removed from storage.

    *

  `DeleteRepository`: Deletes a repository.

    *

  `DeleteRepositoryPermissionsPolicy`: Deletes the resource policy that is set on
  a repository.

    *

  `DescribeDomain`: Returns a `DomainDescription` object that
  contains information about the requested domain.

    *

  `DescribePackage`: Returns a
  [PackageDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html) object that contains details about a package.

    *

  `DescribePackageGroup`: Returns a
  [PackageGroup](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroup.html)
  object that contains details about a package group.

    *

  `DescribePackageVersion`: Returns a
  [PackageVersionDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  object that contains details about a package version.

    *

  `DescribeRepository`: Returns a `RepositoryDescription` object
  that contains detailed information about the requested repository.

    *

  `DisposePackageVersions`: Disposes versions of a package. A package version
  with the status `Disposed` cannot be restored because they have been
  permanently removed from storage.

    *

  `DisassociateExternalConnection`: Removes an existing external connection from a
  repository.

    *

  `GetAssociatedPackageGroup`: Returns the most closely associated package group
  to the specified package.

    *

  `GetAuthorizationToken`: Generates a temporary authorization token for accessing
  repositories in the domain. The token expires the authorization period has
  passed.
  The default authorization period is 12 hours and can be customized to any length
  with a maximum of 12 hours.

    *

  `GetDomainPermissionsPolicy`: Returns the policy of a resource
  that is attached to the specified domain.

    *

  `GetPackageVersionAsset`: Returns the contents of an asset that is in a package
  version.

    *

  `GetPackageVersionReadme`: Gets the readme file or descriptive text for a
  package version.

    *

  `GetRepositoryEndpoint`: Returns the endpoint of a repository for a specific
  package format. A repository has one endpoint for each
  package format:

      *

  `generic`

      *

  `maven`

      *

  `npm`

      *

  `nuget`

      *

  `pypi`

      *

  `ruby`

      *

  `swift`

    *

  `GetRepositoryPermissionsPolicy`: Returns the resource policy that is set on a
  repository.

    *

  `ListAllowedRepositoriesForGroup`: Lists the allowed repositories for a package
  group that has origin configuration set to `ALLOW_SPECIFIC_REPOSITORIES`.

    *

  `ListAssociatedPackages`: Returns a list of packages associated with the
  requested package group.

    *

  `ListDomains`: Returns a list of `DomainSummary` objects. Each
  returned `DomainSummary` object contains information about a domain.

    *

  `ListPackages`: Lists the packages in a repository.

    *

  `ListPackageGroups`: Returns a list of package groups in the requested domain.

    *

  `ListPackageVersionAssets`: Lists the assets for a given package version.

    *

  `ListPackageVersionDependencies`: Returns a list of the direct dependencies for
  a
  package version.

    *

  `ListPackageVersions`: Returns a list of package versions for a specified
  package in a repository.

    *

  `ListRepositories`: Returns a list of repositories owned by the Amazon Web
  Services account that called this method.

    *

  `ListRepositoriesInDomain`: Returns a list of the repositories in a domain.

    *

  `ListSubPackageGroups`: Returns a list of direct children of the specified
  package group.

    *

  `PublishPackageVersion`: Creates a new package version containing one or more
  assets.

    *

  `PutDomainPermissionsPolicy`: Attaches a resource policy to a domain.

    *

  `PutPackageOriginConfiguration`: Sets the package origin configuration for a
  package, which determine
  how new versions of the package can be added to a specific repository.

    *

  `PutRepositoryPermissionsPolicy`: Sets the resource policy on a repository
  that specifies permissions to access it.

    *

  `UpdatePackageGroup`: Updates a package group. This API cannot be used to update
  a package group's origin configuration or pattern.

    *

  `UpdatePackageGroupOriginConfiguration`: Updates the package origin
  configuration for a package group.

    *

  `UpdatePackageVersionsStatus`: Updates the status of one or more versions of a
  package.

    *

  `UpdateRepository`: Updates the properties of a repository.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      describe_package_group_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t(),
        required("packageGroup") => String.t()
      }

  """
  @type describe_package_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_package_group_result() :: %{
        "packageGroup" => package_group_description()
      }

  """
  @type update_package_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_package_version_assets_request() :: %{
        optional("domainOwner") => String.t(),
        optional("maxResults") => integer(),
        optional("namespace") => String.t(),
        optional("nextToken") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("packageVersion") => String.t(),
        required("repository") => String.t()
      }

  """
  @type list_package_version_assets_request() :: %{String.t() => any()}

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

      list_package_groups_result() :: %{
        "nextToken" => String.t(),
        "packageGroups" => list(package_group_summary()())
      }

  """
  @type list_package_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_package_versions_status_result() :: %{
        "failedVersions" => map(),
        "successfulVersions" => map()
      }

  """
  @type update_package_versions_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_package_version_assets_result() :: %{
        "assets" => list(asset_summary()()),
        "format" => list(any()),
        "namespace" => String.t(),
        "nextToken" => String.t(),
        "package" => String.t(),
        "version" => String.t(),
        "versionRevision" => String.t()
      }

  """
  @type list_package_version_assets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_package_group_request() :: %{
        optional("contactInfo") => String.t(),
        optional("description") => String.t(),
        optional("domainOwner") => String.t(),
        optional("tags") => list(tag()()),
        required("domain") => String.t(),
        required("packageGroup") => String.t()
      }

  """
  @type create_package_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_package_version_dependencies_request() :: %{
        optional("domainOwner") => String.t(),
        optional("namespace") => String.t(),
        optional("nextToken") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("packageVersion") => String.t(),
        required("repository") => String.t()
      }

  """
  @type list_package_version_dependencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_result() :: %{}

  """
  @type untag_resource_result() :: %{}

  @typedoc """

  ## Example:

      dispose_package_versions_request() :: %{
        optional("domainOwner") => String.t(),
        optional("expectedStatus") => list(any()),
        optional("namespace") => String.t(),
        optional("versionRevisions") => map(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("repository") => String.t(),
        required("versions") => list(String.t()())
      }

  """
  @type dispose_package_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_origin_configuration() :: %{
        "restrictions" => package_origin_restrictions()
      }

  """
  @type package_origin_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_repository_result() :: %{
        "repository" => repository_description()
      }

  """
  @type describe_repository_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_allowed_repositories_for_group_result() :: %{
        "allowedRepositories" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_allowed_repositories_for_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_version_origin() :: %{
        "domainEntryPoint" => domain_entry_point(),
        "originType" => list(any())
      }

  """
  @type package_version_origin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_summary() :: %{
        "arn" => String.t(),
        "createdTime" => non_neg_integer(),
        "encryptionKey" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "status" => list(any())
      }

  """
  @type domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_packages_request() :: %{
        optional("domainOwner") => String.t(),
        optional("format") => list(any()),
        optional("maxResults") => integer(),
        optional("namespace") => String.t(),
        optional("nextToken") => String.t(),
        optional("packagePrefix") => String.t(),
        optional("publish") => list(any()),
        optional("upstream") => list(any()),
        required("domain") => String.t(),
        required("repository") => String.t()
      }

  """
  @type list_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_repository_result() :: %{
        "repository" => repository_description()
      }

  """
  @type delete_repository_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_package_group_result() :: %{
        "packageGroup" => package_group_description()
      }

  """
  @type delete_package_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_package_version_asset_result() :: %{
        "asset" => binary(),
        "assetName" => String.t(),
        "packageVersion" => String.t(),
        "packageVersionRevision" => String.t()
      }

  """
  @type get_package_version_asset_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_package_version_result() :: %{
        "asset" => asset_summary(),
        "format" => list(any()),
        "namespace" => String.t(),
        "package" => String.t(),
        "status" => list(any()),
        "version" => String.t(),
        "versionRevision" => String.t()
      }

  """
  @type publish_package_version_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_result() :: %{
        "domain" => domain_description()
      }

  """
  @type create_domain_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_summary() :: %{
        "hashes" => map(),
        "name" => String.t(),
        "size" => float()
      }

  """
  @type asset_summary() :: %{String.t() => any()}

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

      update_package_group_request() :: %{
        optional("contactInfo") => String.t(),
        optional("description") => String.t(),
        optional("domainOwner") => String.t(),
        required("domain") => String.t(),
        required("packageGroup") => String.t()
      }

  """
  @type update_package_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_associated_package_group_request() :: %{
        optional("domainOwner") => String.t(),
        optional("namespace") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t()
      }

  """
  @type get_associated_package_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_allowed_repositories_for_group_request() :: %{
        optional("domainOwner") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("domain") => String.t(),
        required("originRestrictionType") => list(any()),
        required("packageGroup") => String.t()
      }

  """
  @type list_allowed_repositories_for_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_repository_permissions_policy_request() :: %{
        optional("domainOwner") => String.t(),
        optional("policyRevision") => String.t(),
        required("domain") => String.t(),
        required("policyDocument") => String.t(),
        required("repository") => String.t()
      }

  """
  @type put_repository_permissions_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_group_reference() :: %{
        "arn" => String.t(),
        "pattern" => String.t()
      }

  """
  @type package_group_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_version_description() :: %{
        "displayName" => String.t(),
        "format" => list(any()),
        "homePage" => String.t(),
        "licenses" => list(license_info()()),
        "namespace" => String.t(),
        "origin" => package_version_origin(),
        "packageName" => String.t(),
        "publishedTime" => non_neg_integer(),
        "revision" => String.t(),
        "sourceCodeRepository" => String.t(),
        "status" => list(any()),
        "summary" => String.t(),
        "version" => String.t()
      }

  """
  @type package_version_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_package_version_readme_result() :: %{
        "format" => list(any()),
        "namespace" => String.t(),
        "package" => String.t(),
        "readme" => String.t(),
        "version" => String.t(),
        "versionRevision" => String.t()
      }

  """
  @type get_package_version_readme_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_package_version_dependencies_result() :: %{
        "dependencies" => list(package_dependency()()),
        "format" => list(any()),
        "namespace" => String.t(),
        "nextToken" => String.t(),
        "package" => String.t(),
        "version" => String.t(),
        "versionRevision" => String.t()
      }

  """
  @type list_package_version_dependencies_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upstream_repository() :: %{
        "repositoryName" => String.t()
      }

  """
  @type upstream_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_repositories_result() :: %{
        "nextToken" => String.t(),
        "repositories" => list(repository_summary()())
      }

  """
  @type list_repositories_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t()
      }

  """
  @type delete_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_packages_result() :: %{
        "nextToken" => String.t(),
        "packages" => list(associated_package()())
      }

  """
  @type list_associated_packages_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      repository_summary() :: %{
        "administratorAccount" => String.t(),
        "arn" => String.t(),
        "createdTime" => non_neg_integer(),
        "description" => String.t(),
        "domainName" => String.t(),
        "domainOwner" => String.t(),
        "name" => String.t()
      }

  """
  @type repository_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_package_versions_result() :: %{
        "failedVersions" => map(),
        "successfulVersions" => map()
      }

  """
  @type delete_package_versions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sub_package_groups_request() :: %{
        optional("domainOwner") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("domain") => String.t(),
        required("packageGroup") => String.t()
      }

  """
  @type list_sub_package_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type delete_domain_permissions_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => list(any())
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_group_origin_restriction() :: %{
        "effectiveMode" => list(any()),
        "inheritedFrom" => package_group_reference(),
        "mode" => list(any()),
        "repositoriesCount" => float()
      }

  """
  @type package_group_origin_restriction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_package_group_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t(),
        required("packageGroup") => String.t()
      }

  """
  @type delete_package_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_repositories_in_domain_result() :: %{
        "nextToken" => String.t(),
        "repositories" => list(repository_summary()())
      }

  """
  @type list_repositories_in_domain_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_request() :: %{
        optional("encryptionKey") => String.t(),
        optional("tags") => list(tag()()),
        required("domain") => String.t()
      }

  """
  @type create_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_entry_point() :: %{
        "externalConnectionName" => String.t(),
        "repositoryName" => String.t()
      }

  """
  @type domain_entry_point() :: %{String.t() => any()}

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

      delete_package_versions_request() :: %{
        optional("domainOwner") => String.t(),
        optional("expectedStatus") => list(any()),
        optional("namespace") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("repository") => String.t(),
        required("versions") => list(String.t()())
      }

  """
  @type delete_package_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_repository_endpoint_result() :: %{
        "repositoryEndpoint" => String.t()
      }

  """
  @type get_repository_endpoint_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => list(any())
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_result() :: %{
        "domain" => domain_description()
      }

  """
  @type delete_domain_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_package_version_readme_request() :: %{
        optional("domainOwner") => String.t(),
        optional("namespace") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("packageVersion") => String.t(),
        required("repository") => String.t()
      }

  """
  @type get_package_version_readme_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_repository_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t(),
        required("repository") => String.t()
      }

  """
  @type delete_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_group_allowed_repository() :: %{
        "originRestrictionType" => list(any()),
        "repositoryName" => String.t()
      }

  """
  @type package_group_allowed_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_repositories_in_domain_request() :: %{
        optional("administratorAccount") => String.t(),
        optional("domainOwner") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("repositoryPrefix") => String.t(),
        required("domain") => String.t()
      }

  """
  @type list_repositories_in_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_external_connection_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t(),
        required("externalConnection") => String.t(),
        required("repository") => String.t()
      }

  """
  @type associate_external_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_package_result() :: %{
        "package" => package_description()
      }

  """
  @type describe_package_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dispose_package_versions_result() :: %{
        "failedVersions" => map(),
        "successfulVersions" => map()
      }

  """
  @type dispose_package_versions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_result() :: %{
        "domains" => list(domain_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_domains_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_package_group_origin_configuration_request() :: %{
        optional("addAllowedRepositories") => list(package_group_allowed_repository()()),
        optional("domainOwner") => String.t(),
        optional("removeAllowedRepositories") => list(package_group_allowed_repository()()),
        optional("restrictions") => map(),
        required("domain") => String.t(),
        required("packageGroup") => String.t()
      }

  """
  @type update_package_group_origin_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_packages_result() :: %{
        "nextToken" => String.t(),
        "packages" => list(package_summary()())
      }

  """
  @type list_packages_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      successful_package_version_info() :: %{
        "revision" => String.t(),
        "status" => list(any())
      }

  """
  @type successful_package_version_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_authorization_token_request() :: %{
        optional("domainOwner") => String.t(),
        optional("durationSeconds") => float(),
        required("domain") => String.t()
      }

  """
  @type get_authorization_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_package_versions_result() :: %{
        "failedVersions" => map(),
        "successfulVersions" => map()
      }

  """
  @type copy_package_versions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_package_groups_request() :: %{
        optional("domainOwner") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("prefix") => String.t(),
        required("domain") => String.t()
      }

  """
  @type list_package_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      license_info() :: %{
        "name" => String.t(),
        "url" => String.t()
      }

  """
  @type license_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_package_version_request() :: %{
        optional("domainOwner") => String.t(),
        optional("namespace") => String.t(),
        optional("unfinished") => boolean(),
        required("assetContent") => binary(),
        required("assetName") => String.t(),
        required("assetSHA256") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("packageVersion") => String.t(),
        required("repository") => String.t()
      }

  """
  @type publish_package_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_package_group_result() :: %{
        "packageGroup" => package_group_description()
      }

  """
  @type describe_package_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_repository_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type delete_repository_permissions_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_group_summary() :: %{
        "arn" => String.t(),
        "contactInfo" => String.t(),
        "createdTime" => non_neg_integer(),
        "description" => String.t(),
        "domainName" => String.t(),
        "domainOwner" => String.t(),
        "originConfiguration" => package_group_origin_configuration(),
        "parent" => package_group_reference(),
        "pattern" => String.t()
      }

  """
  @type package_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_description() :: %{
        "format" => list(any()),
        "name" => String.t(),
        "namespace" => String.t(),
        "originConfiguration" => package_origin_configuration()
      }

  """
  @type package_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_summary() :: %{
        "format" => list(any()),
        "namespace" => String.t(),
        "originConfiguration" => package_origin_configuration(),
        "package" => String.t()
      }

  """
  @type package_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sub_package_groups_result() :: %{
        "nextToken" => String.t(),
        "packageGroups" => list(package_group_summary()())
      }

  """
  @type list_sub_package_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_policy() :: %{
        "document" => String.t(),
        "resourceArn" => String.t(),
        "revision" => String.t()
      }

  """
  @type resource_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type get_domain_permissions_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_result() :: %{
        "tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_external_connection_result() :: %{
        "repository" => repository_description()
      }

  """
  @type disassociate_external_connection_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_repository_request() :: %{
        optional("description") => String.t(),
        optional("domainOwner") => String.t(),
        optional("tags") => list(tag()()),
        optional("upstreams") => list(upstream_repository()()),
        required("domain") => String.t(),
        required("repository") => String.t()
      }

  """
  @type create_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_external_connection_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t(),
        required("externalConnection") => String.t(),
        required("repository") => String.t()
      }

  """
  @type disassociate_external_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_domain_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type put_domain_permissions_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_group_description() :: %{
        "arn" => String.t(),
        "contactInfo" => String.t(),
        "createdTime" => non_neg_integer(),
        "description" => String.t(),
        "domainName" => String.t(),
        "domainOwner" => String.t(),
        "originConfiguration" => package_group_origin_configuration(),
        "parent" => package_group_reference(),
        "pattern" => String.t()
      }

  """
  @type package_group_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_package_version_result() :: %{
        "packageVersion" => package_version_description()
      }

  """
  @type describe_package_version_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_package_request() :: %{
        optional("domainOwner") => String.t(),
        optional("namespace") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("repository") => String.t()
      }

  """
  @type delete_package_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_repository_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type put_repository_permissions_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t()
      }

  """
  @type describe_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upstream_repository_info() :: %{
        "repositoryName" => String.t()
      }

  """
  @type upstream_repository_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associated_package() :: %{
        "associationType" => list(any()),
        "format" => list(any()),
        "namespace" => String.t(),
        "package" => String.t()
      }

  """
  @type associated_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_authorization_token_result() :: %{
        "authorizationToken" => String.t(),
        "expiration" => non_neg_integer()
      }

  """
  @type get_authorization_token_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_package_origin_configuration_request() :: %{
        optional("domainOwner") => String.t(),
        optional("namespace") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("repository") => String.t(),
        required("restrictions") => package_origin_restrictions()
      }

  """
  @type put_package_origin_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_repository_endpoint_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("repository") => String.t()
      }

  """
  @type get_repository_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_permissions_policy_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t()
      }

  """
  @type get_domain_permissions_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_associated_package_group_result() :: %{
        "associationType" => list(any()),
        "packageGroup" => package_group_description()
      }

  """
  @type get_associated_package_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_repository_permissions_policy_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t(),
        required("repository") => String.t()
      }

  """
  @type get_repository_permissions_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_packages_request() :: %{
        optional("domainOwner") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("preview") => boolean(),
        required("domain") => String.t(),
        required("packageGroup") => String.t()
      }

  """
  @type list_associated_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t(),
        "reason" => list(any())
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

      put_domain_permissions_policy_request() :: %{
        optional("domainOwner") => String.t(),
        optional("policyRevision") => String.t(),
        required("domain") => String.t(),
        required("policyDocument") => String.t()
      }

  """
  @type put_domain_permissions_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_package_versions_request() :: %{
        optional("domainOwner") => String.t(),
        optional("maxResults") => integer(),
        optional("namespace") => String.t(),
        optional("nextToken") => String.t(),
        optional("originType") => list(any()),
        optional("sortBy") => list(any()),
        optional("status") => list(any()),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("repository") => String.t()
      }

  """
  @type list_package_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_package_group_result() :: %{
        "packageGroup" => package_group_description()
      }

  """
  @type create_package_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_external_connection_result() :: %{
        "repository" => repository_description()
      }

  """
  @type associate_external_connection_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_package_request() :: %{
        optional("domainOwner") => String.t(),
        optional("namespace") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("repository") => String.t()
      }

  """
  @type describe_package_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_dependency() :: %{
        "dependencyType" => String.t(),
        "namespace" => String.t(),
        "package" => String.t(),
        "versionRequirement" => String.t()
      }

  """
  @type package_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_description() :: %{
        "arn" => String.t(),
        "assetSizeBytes" => float(),
        "createdTime" => non_neg_integer(),
        "encryptionKey" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "repositoryCount" => integer(),
        "s3BucketArn" => String.t(),
        "status" => list(any())
      }

  """
  @type domain_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_package_versions_result() :: %{
        "defaultDisplayVersion" => String.t(),
        "format" => list(any()),
        "namespace" => String.t(),
        "nextToken" => String.t(),
        "package" => String.t(),
        "versions" => list(package_version_summary()())
      }

  """
  @type list_package_versions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_package_result() :: %{
        "deletedPackage" => package_summary()
      }

  """
  @type delete_package_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      repository_external_connection_info() :: %{
        "externalConnectionName" => String.t(),
        "packageFormat" => list(any()),
        "status" => list(any())
      }

  """
  @type repository_external_connection_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_repository_request() :: %{
        optional("description") => String.t(),
        optional("domainOwner") => String.t(),
        optional("upstreams") => list(upstream_repository()()),
        required("domain") => String.t(),
        required("repository") => String.t()
      }

  """
  @type update_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_result() :: %{}

  """
  @type tag_resource_result() :: %{}

  @typedoc """

  ## Example:

      list_repositories_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("repositoryPrefix") => String.t()
      }

  """
  @type list_repositories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_version_summary() :: %{
        "origin" => package_version_origin(),
        "revision" => String.t(),
        "status" => list(any()),
        "version" => String.t()
      }

  """
  @type package_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_package_group_origin_configuration_result() :: %{
        "allowedRepositoryUpdates" => map(),
        "packageGroup" => package_group_description()
      }

  """
  @type update_package_group_origin_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_result() :: %{
        "domain" => domain_description()
      }

  """
  @type describe_domain_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_package_version_asset_request() :: %{
        optional("domainOwner") => String.t(),
        optional("namespace") => String.t(),
        optional("packageVersionRevision") => String.t(),
        required("asset") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("packageVersion") => String.t(),
        required("repository") => String.t()
      }

  """
  @type get_package_version_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_repository_result() :: %{
        "repository" => repository_description()
      }

  """
  @type create_repository_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_package_version_request() :: %{
        optional("domainOwner") => String.t(),
        optional("namespace") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("packageVersion") => String.t(),
        required("repository") => String.t()
      }

  """
  @type describe_package_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      repository_description() :: %{
        "administratorAccount" => String.t(),
        "arn" => String.t(),
        "createdTime" => non_neg_integer(),
        "description" => String.t(),
        "domainName" => String.t(),
        "domainOwner" => String.t(),
        "externalConnections" => list(repository_external_connection_info()()),
        "name" => String.t(),
        "upstreams" => list(upstream_repository_info()())
      }

  """
  @type repository_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_repository_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type get_repository_permissions_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_version_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type package_version_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_package_origin_configuration_result() :: %{
        "originConfiguration" => package_origin_configuration()
      }

  """
  @type put_package_origin_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_repository_permissions_policy_request() :: %{
        optional("domainOwner") => String.t(),
        optional("policyRevision") => String.t(),
        required("domain") => String.t(),
        required("repository") => String.t()
      }

  """
  @type delete_repository_permissions_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_origin_restrictions() :: %{
        "publish" => list(any()),
        "upstream" => list(any())
      }

  """
  @type package_origin_restrictions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_package_versions_request() :: %{
        optional("allowOverwrite") => boolean(),
        optional("domainOwner") => String.t(),
        optional("includeFromUpstream") => boolean(),
        optional("namespace") => String.t(),
        optional("versionRevisions") => map(),
        optional("versions") => list(String.t()()),
        required("destinationRepository") => String.t(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("sourceRepository") => String.t()
      }

  """
  @type copy_package_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_package_versions_status_request() :: %{
        optional("domainOwner") => String.t(),
        optional("expectedStatus") => list(any()),
        optional("namespace") => String.t(),
        optional("versionRevisions") => map(),
        required("domain") => String.t(),
        required("format") => list(any()),
        required("package") => String.t(),
        required("repository") => String.t(),
        required("targetStatus") => list(any()),
        required("versions") => list(String.t()())
      }

  """
  @type update_package_versions_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_repository_result() :: %{
        "repository" => repository_description()
      }

  """
  @type update_repository_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_permissions_policy_request() :: %{
        optional("domainOwner") => String.t(),
        optional("policyRevision") => String.t(),
        required("domain") => String.t()
      }

  """
  @type delete_domain_permissions_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_group_origin_configuration() :: %{
        "restrictions" => map()
      }

  """
  @type package_group_origin_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_repository_request() :: %{
        optional("domainOwner") => String.t(),
        required("domain") => String.t(),
        required("repository") => String.t()
      }

  """
  @type describe_repository_request() :: %{String.t() => any()}

  @type associate_external_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type copy_package_versions_errors() ::
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

  @type create_package_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_repository_errors() ::
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
          | conflict_exception()

  @type delete_domain_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_package_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_package_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_repository_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_package_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_package_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_external_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type dispose_package_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_associated_package_group_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_authorization_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_domain_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_package_version_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_package_version_readme_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_repository_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_repository_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_allowed_repositories_for_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_associated_packages_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_package_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_package_version_assets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_package_version_dependencies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_package_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_packages_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_repositories_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_repositories_in_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_sub_package_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type publish_package_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_domain_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_package_origin_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_repository_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_package_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_package_group_origin_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_package_versions_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-09-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeartifact",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "codeartifact",
      signature_version: "v4",
      signing_name: "codeartifact",
      target_prefix: nil
    }
  end

  @doc """
  Adds an existing external connection to a repository.

  One external connection is allowed
  per repository.

  A repository can have one or more upstream repositories, or an external
  connection.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) The name of the domain that contains the repository.
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:external_connection` (`t:string`) 
      The name of the external connection to add to the repository. The following values are supported:
    
  * `:repository` (`t:string`) 
      The name of the repository to which the external connection is added.
    
  """
  @spec associate_external_connection(
          AWS.Client.t(),
          associate_external_connection_request(),
          Keyword.t()
        ) ::
          {:ok, associate_external_connection_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_external_connection_errors()}
  def associate_external_connection(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/external-connection"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"externalConnection", "external-connection"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

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

  Copies package versions from one repository to another repository in the same
  domain.

  You must specify `versions` or `versionRevisions`. You cannot specify both.

  ## Required positional parameters:

  ## Optional parameters:
  * `:destination_repository` (`t:string`) 
      The name of the repository into which package versions are copied.
    
  * `:domain` (`t:string`) 
        The name of the domain that contains the source and destination repositories.
      
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      The format of the package versions to be copied.
    
  * `:namespace` (`t:string`) The namespace of the package versions to be copied. The package component that specifies its namespace depends on its type. For example:
  * `:package` (`t:string`) 
      The name of the package that contains the versions to be copied.
    
  * `:source_repository` (`t:string`) 
         The name of the repository that contains the package versions to be copied.
       
  """
  @spec copy_package_versions(AWS.Client.t(), copy_package_versions_request(), Keyword.t()) ::
          {:ok, copy_package_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_package_versions_errors()}
  def copy_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/copy"
    headers = []

    {query_params, input} =
      [
        {"destinationRepository", "destination-repository"},
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"sourceRepository", "source-repository"}
      ]
      |> Request.build_params(input)

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

  Creates a domain.

  CodeArtifact *domains* make it easier to manage multiple repositories across an
  organization. You can use a domain to apply permissions across many
  repositories owned by different Amazon Web Services accounts. An asset is stored
  only once
  in a domain, even if it's in multiple repositories.

  Although you can have multiple domains, we recommend a single production domain
  that contains all
  published artifacts so that your development teams can find and share packages.
  You can use a second
  pre-production domain to test changes to the production domain configuration.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`)  The name of the domain to create. All domain names in an Amazon Web Services Region that are in the
      same Amazon Web Services account must be unique. The domain name is used as the prefix in DNS hostnames. Do
      not use sensitive information in a domain name because it is publicly discoverable. 
  """
  @spec create_domain(AWS.Client.t(), create_domain_request(), Keyword.t()) ::
          {:ok, create_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"}
      ]
      |> Request.build_params(input)

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

  Creates a package group.

  For more information about creating package groups, including example CLI
  commands, see [Create a package group](https://docs.aws.amazon.com/codeartifact/latest/ug/create-package-group.html)
  in the *CodeArtifact User Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain in which you want to create a package group.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  """
  @spec create_package_group(AWS.Client.t(), create_package_group_request(), Keyword.t()) ::
          {:ok, create_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_package_group_errors()}
  def create_package_group(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-group"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"}
      ]
      |> Request.build_params(input)

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

  Creates a repository.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
        The name of the domain that contains the created repository.
      
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:repository` (`t:string`) The name of the repository to create. 
  """
  @spec create_repository(AWS.Client.t(), create_repository_request(), Keyword.t()) ::
          {:ok, create_repository_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_repository_errors()}
  def create_repository(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

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

  Deletes a domain.

  You cannot delete a domain that contains repositories. If you want to delete a
  domain
  with repositories, first delete its repositories.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
         The name of the domain to delete.
       
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  """
  @spec delete_domain(AWS.Client.t(), delete_domain_request(), Keyword.t()) ::
          {:ok, delete_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"}
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

  Deletes the resource policy set on a domain.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
        The name of the domain associated with the resource policy to be deleted.
      
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:policy_revision` (`t:string`) 
        The current revision of the resource policy to be deleted. This revision is used for optimistic locking, which
        prevents others from overwriting your changes to the domain&#39;s resource policy.
      
  """
  @spec delete_domain_permissions_policy(
          AWS.Client.t(),
          delete_domain_permissions_policy_request(),
          Keyword.t()
        ) ::
          {:ok, delete_domain_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_permissions_policy_errors()}
  def delete_domain_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain/permissions/policy"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"policyRevision", "policy-revision"}
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
  Deletes a package and all associated package versions.

  A deleted package cannot be restored. To delete one or more package versions,
  use the
  [DeletePackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DeletePackageVersions.html)
  API.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) The name of the domain that contains the package to delete.
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) The format of the requested package to delete.
  * `:namespace` (`t:string`) The namespace of the package to delete. The package component that specifies its namespace depends on its type. For example:
  * `:package` (`t:string`) The name of the package to delete.
  * `:repository` (`t:string`) The name of the repository that contains the package to delete.
  """
  @spec delete_package(AWS.Client.t(), delete_package_request(), Keyword.t()) ::
          {:ok, delete_package_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_package_errors()}
  def delete_package(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
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
  Deletes a package group.

  Deleting a package group does not delete packages or package versions associated
  with the package group.
  When a package group is deleted, the direct child package groups will become
  children of the package
  group's direct parent package group. Therefore, if any of the child groups are
  inheriting any settings
  from the parent, those settings could change.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The domain that contains the package group to be deleted.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:package_group` (`t:string`) The pattern of the package group to be deleted.
  """
  @spec delete_package_group(AWS.Client.t(), delete_package_group_request(), Keyword.t()) ::
          {:ok, delete_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_package_group_errors()}
  def delete_package_group(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-group"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"packageGroup", "package-group"}
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
  Deletes one or more versions of a package.

  A deleted package version cannot be restored
  in your repository. If you want to remove a package version from your repository
  and be able
  to restore it later, set its status to `Archived`. Archived packages cannot be
  downloaded from a repository and don't show up with list package APIs (for
  example,
  [ListPackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html)), but you can restore them using
  [UpdatePackageVersionsStatus](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html).

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
        The name of the domain that contains the package to delete.
      
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
        The format of the package versions to delete.
      
  * `:namespace` (`t:string`) The namespace of the package versions to be deleted. The package component that specifies its namespace depends on its type. For example:
  * `:package` (`t:string`) 
        The name of the package with the versions to delete.
      
  * `:repository` (`t:string`) 
        The name of the repository that contains the package versions to delete.
      
  """
  @spec delete_package_versions(AWS.Client.t(), delete_package_versions_request(), Keyword.t()) ::
          {:ok, delete_package_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_package_versions_errors()}
  def delete_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/delete"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

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

  Deletes a repository.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
         The name of the domain that contains the repository to delete.
       
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:repository` (`t:string`)  The name of the repository to delete. 
  """
  @spec delete_repository(AWS.Client.t(), delete_repository_request(), Keyword.t()) ::
          {:ok, delete_repository_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_repository_errors()}
  def delete_repository(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
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

  Deletes the resource policy that is set on a repository.

  After a resource policy is deleted, the
  permissions allowed and denied by the deleted policy are removed. The effect of
  deleting a resource policy might not be immediate.

  Use `DeleteRepositoryPermissionsPolicy` with caution. After a policy is deleted,
  Amazon Web Services users, roles, and accounts lose permissions to perform
  the repository actions granted by the deleted policy.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
        The name of the domain that contains the repository associated with the resource policy to be deleted.
      
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:policy_revision` (`t:string`) 
      The revision of the repository&#39;s resource policy to be deleted. This revision is used for optimistic locking, which
      prevents others from accidentally overwriting your changes to the repository&#39;s resource policy.
    
  * `:repository` (`t:string`) 
      The name of the repository that is associated with the resource policy to be deleted
    
  """
  @spec delete_repository_permissions_policy(
          AWS.Client.t(),
          delete_repository_permissions_policy_request(),
          Keyword.t()
        ) ::
          {:ok, delete_repository_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_repository_permissions_policy_errors()}
  def delete_repository_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/permissions/policies"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"policyRevision", "policy-revision"},
        {"repository", "repository"}
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

  Returns a
  [DomainDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html)

  object that contains information about the requested domain.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
         A string that specifies the name of the requested domain.
     
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  """
  @spec describe_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_errors()}
  def describe_domain(%Client{} = client, domain, options \\ []) do
    url_path = "/v1/domain"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil
    # ])

    headers = []
    query_params = []

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a
  [PackageDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html)

  object that contains information about the requested package.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) The name of the domain that contains the repository that contains the package.
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) A format that specifies the type of the requested package.
  * `:namespace` (`t:string`) The namespace of the requested package. The package component that specifies its namespace depends on its type. For example:
  * `:package` (`t:string`) The name of the requested package.
  * `:repository` (`t:string`) The name of the repository that contains the requested package. 
  """
  @spec describe_package(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, describe_package_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_package_errors()}
  def describe_package(%Client{} = client, domain, format, package, repository, options \\ []) do
    url_path = "/v1/package"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, format: nil, namespace: nil, package: nil, repository: nil
    # ])

    headers = []
    query_params = []

    {repository, options} = Keyword.pop(options, :repository, nil)

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    {package, options} = Keyword.pop(options, :package, nil)

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    {namespace, options} = Keyword.pop(options, :namespace, nil)

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    {format, options} = Keyword.pop(options, :format, nil)

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a
  [PackageGroupDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroupDescription.html)
  object that
  contains information about the requested package group.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain that contains the package group. 
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:package_group` (`t:string`) The pattern of the requested package group.
  """
  @spec describe_package_group(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_package_group_errors()}
  def describe_package_group(%Client{} = client, domain, package_group, options \\ []) do
    url_path = "/v1/package-group"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, package_group: nil
    # ])

    headers = []
    query_params = []

    {package_group, options} = Keyword.pop(options, :package_group, nil)

    query_params =
      if !is_nil(package_group) do
        [{"package-group", package_group} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns a
  [PackageVersionDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)

  object that contains information about the requested package version.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain that contains the repository that contains the package version.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      A format that specifies the type of the requested package version.
    
  * `:namespace` (`t:string`) The namespace of the requested package version. The package component that specifies its 
      namespace depends on its type. For example:
  * `:package` (`t:string`)  The name of the requested package version. 
  * `:package_version` (`t:string`) 
      A string that contains the package version (for example, <code>3.5.2</code>).
    
  * `:repository` (`t:string`)  The name of the repository that contains the package version. 
  """
  @spec describe_package_version(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, describe_package_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_package_version_errors()}
  def describe_package_version(
        %Client{} = client,
        domain,
        format,
        package,
        package_version,
        repository,
        options \\ []
      ) do
    url_path = "/v1/package/version"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, format: nil, namespace: nil, package: nil, package_version: nil, repository: nil
    # ])

    headers = []
    query_params = []

    {repository, options} = Keyword.pop(options, :repository, nil)

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    {package_version, options} = Keyword.pop(options, :package_version, nil)

    query_params =
      if !is_nil(package_version) do
        [{"version", package_version} | query_params]
      else
        query_params
      end

    {package, options} = Keyword.pop(options, :package, nil)

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    {namespace, options} = Keyword.pop(options, :namespace, nil)

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    {format, options} = Keyword.pop(options, :format, nil)

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns a `RepositoryDescription` object that contains detailed information
  about the requested repository.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
         The name of the domain that contains the repository to describe.
       
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:repository` (`t:string`) 
        A string that specifies the name of the requested repository.
       
  """
  @spec describe_repository(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_repository_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_repository_errors()}
  def describe_repository(%Client{} = client, domain, repository, options \\ []) do
    url_path = "/v1/repository"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, repository: nil
    # ])

    headers = []
    query_params = []

    {repository, options} = Keyword.pop(options, :repository, nil)

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Removes an existing external connection from a repository.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) The name of the domain that contains the repository from which to remove the external
      repository. 
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:external_connection` (`t:string`) The name of the external connection to be removed from the repository. 
  * `:repository` (`t:string`) The name of the repository from which the external connection will be removed. 
  """
  @spec disassociate_external_connection(
          AWS.Client.t(),
          disassociate_external_connection_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_external_connection_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_external_connection_errors()}
  def disassociate_external_connection(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/external-connection"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"externalConnection", "external-connection"},
        {"repository", "repository"}
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

  Deletes the assets in package versions and sets the package versions' status to
  `Disposed`.

  A disposed package version cannot be restored in your repository because its
  assets are deleted.

  To view all disposed package versions in a repository, use
  [ListPackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html) and set the
  [status](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax)
  parameter
  to `Disposed`.

  To view information about a disposed package version, use
  [DescribePackageVersion](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DescribePackageVersion.html).

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain that contains the repository you want to dispose.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      A format that specifies the type of package versions you want to dispose.
    
  * `:namespace` (`t:string`) The namespace of the package versions to be disposed. The package component that specifies its 
      namespace depends on its type. For example:
  * `:package` (`t:string`) 
      The name of the package with the versions you want to dispose.
    
  * `:repository` (`t:string`) 
      The name of the repository that contains the package versions you want to dispose.
    
  """
  @spec dispose_package_versions(AWS.Client.t(), dispose_package_versions_request(), Keyword.t()) ::
          {:ok, dispose_package_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, dispose_package_versions_errors()}
  def dispose_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/dispose"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

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
  Returns the most closely associated package group to the specified package.

  This API does not require that the package exist
  in any repository in the domain. As such, `GetAssociatedPackageGroup` can be
  used to see which package group's origin configuration
  applies to a package before that package is in a repository. This can be helpful
  to check if public packages are blocked without ingesting them.

  For information package group association and matching, see
  [Package group definition syntax and matching
  behavior](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html)
  in the *CodeArtifact User Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain that contains the package from which to get the associated package group.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      The format of the package from which to get the associated package group.
    
  * `:namespace` (`t:string`) The namespace of the package from which to get the associated package group. The package component that specifies its 
      namespace depends on its type. For example:
  * `:package` (`t:string`) 
      The package from which to get the associated package group.
    
  """
  @spec get_associated_package_group(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_associated_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_associated_package_group_errors()}
  def get_associated_package_group(%Client{} = client, domain, format, package, options \\ []) do
    url_path = "/v1/get-associated-package-group"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, format: nil, namespace: nil, package: nil
    # ])

    headers = []
    query_params = []

    {package, options} = Keyword.pop(options, :package, nil)

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    {namespace, options} = Keyword.pop(options, :namespace, nil)

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    {format, options} = Keyword.pop(options, :format, nil)

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Generates a temporary authorization token for accessing repositories in the
  domain.

  This API requires the `codeartifact:GetAuthorizationToken` and
  `sts:GetServiceBearerToken` permissions.
  For more information about authorization tokens, see
  [CodeArtifact authentication and tokens](https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html).

  CodeArtifact authorization tokens are valid for a period of 12 hours when
  created with the `login` command.
  You can call `login` periodically to refresh the token. When
  you create an authorization token with the `GetAuthorizationToken` API, you can
  set a custom authorization period,
  up to a maximum of 12 hours, with the `durationSeconds` parameter.

  The authorization period begins after `login`
  or `GetAuthorizationToken` is called. If `login` or `GetAuthorizationToken` is
  called while
  assuming a role, the token lifetime is independent of the maximum session
  duration
  of the role. For example, if you call `sts assume-role` and specify a session
  duration of 15 minutes, then
  generate a CodeArtifact authorization token, the token will be valid for the
  full authorization period
  even though this is longer than the 15-minute session duration.

  See
  [Using IAM Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html)
  for more information on controlling session duration.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
        The name of the domain that is in scope for the generated authorization token.
       
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:duration_seconds` (`t:long`) The time, in seconds, that the generated authorization token is valid. Valid values are 
    <code>0</code> and any number between <code>900</code> (15 minutes) and <code>43200</code> (12 hours). 
    A value of <code>0</code> will set the expiration of the authorization token to the same expiration of 
    the user&#39;s role&#39;s temporary credentials.
  """
  @spec get_authorization_token(AWS.Client.t(), get_authorization_token_request(), Keyword.t()) ::
          {:ok, get_authorization_token_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_authorization_token_errors()}
  def get_authorization_token(%Client{} = client, input, options \\ []) do
    url_path = "/v1/authorization-token"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"durationSeconds", "duration"}
      ]
      |> Request.build_params(input)

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

  Returns the resource policy attached to the specified domain.

  The policy is a resource-based policy, not an identity-based policy. For more
  information, see
  [Identity-based policies and resource-based policies
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
  in the *IAM User Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
        The name of the domain to which the resource policy is attached.
      
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  """
  @spec get_domain_permissions_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_permissions_policy_errors()}
  def get_domain_permissions_policy(%Client{} = client, domain, options \\ []) do
    url_path = "/v1/domain/permissions/policy"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil
    # ])

    headers = []
    query_params = []

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns an asset (or file) that is in a package.

  For example, for a Maven package version, use
  `GetPackageVersionAsset` to download a `JAR` file, a `POM` file,
  or any other assets in the package version.

  ## Required positional parameters:

  ## Optional parameters:
  * `:asset` (`t:string`) 
      The name of the requested asset.
    
  * `:domain` (`t:string`) 
      The name of the domain that contains the repository that contains the package version with the requested asset.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      A format that specifies the type of the package version with the requested asset file.
    
  * `:namespace` (`t:string`) The namespace of the package version with the requested asset file. The package component that specifies its 
      namespace depends on its type. For example:
  * `:package` (`t:string`) 
      The name of the package that contains the requested asset.
    
  * `:package_version` (`t:string`) 
      A string that contains the package version (for example, <code>3.5.2</code>).
    
  * `:package_version_revision` (`t:string`) 
        The name of the package version revision that contains the requested asset.
    
  * `:repository` (`t:string`) 
      The repository that contains the package version with the requested asset.
    
  """
  @spec get_package_version_asset(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_package_version_asset_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_package_version_asset_errors()}
  def get_package_version_asset(
        %Client{} = client,
        asset,
        domain,
        format,
        package,
        package_version,
        repository,
        options \\ []
      ) do
    url_path = "/v1/package/version/asset"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [asset: nil, domain: nil, domain_owner: nil, format: nil, namespace: nil, package: nil, package_version: nil, package_version_revision: nil, repository: nil
    # ])

    headers = []
    query_params = []

    {repository, options} = Keyword.pop(options, :repository, nil)

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    {package_version_revision, options} = Keyword.pop(options, :package_version_revision, nil)

    query_params =
      if !is_nil(package_version_revision) do
        [{"revision", package_version_revision} | query_params]
      else
        query_params
      end

    {package_version, options} = Keyword.pop(options, :package_version, nil)

    query_params =
      if !is_nil(package_version) do
        [{"version", package_version} | query_params]
      else
        query_params
      end

    {package, options} = Keyword.pop(options, :package, nil)

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    {namespace, options} = Keyword.pop(options, :namespace, nil)

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    {format, options} = Keyword.pop(options, :format, nil)

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    {asset, options} = Keyword.pop(options, :asset, nil)

    query_params =
      if !is_nil(asset) do
        [{"asset", asset} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-AssetName", "assetName"},
          {"X-PackageVersion", "packageVersion"},
          {"X-PackageVersionRevision", "packageVersionRevision"}
        ]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets the readme file or descriptive text for a package version.

  The returned text might contain formatting. For example, it might contain
  formatting for Markdown or reStructuredText.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain that contains the repository that contains the package version with the requested readme file.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      A format that specifies the type of the package version with the requested readme file.
    
  * `:namespace` (`t:string`) The namespace of the package version with the requested readme file. The package component that specifies its 
      namespace depends on its type. For example:
  * `:package` (`t:string`) 
      The name of the package version that contains the requested readme file.
    
  * `:package_version` (`t:string`) 
      A string that contains the package version (for example, <code>3.5.2</code>).
    
  * `:repository` (`t:string`) 
      The repository that contains the package with the requested readme file.
    
  """
  @spec get_package_version_readme(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_package_version_readme_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_package_version_readme_errors()}
  def get_package_version_readme(
        %Client{} = client,
        domain,
        format,
        package,
        package_version,
        repository,
        options \\ []
      ) do
    url_path = "/v1/package/version/readme"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, format: nil, namespace: nil, package: nil, package_version: nil, repository: nil
    # ])

    headers = []
    query_params = []

    {repository, options} = Keyword.pop(options, :repository, nil)

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    {package_version, options} = Keyword.pop(options, :package_version, nil)

    query_params =
      if !is_nil(package_version) do
        [{"version", package_version} | query_params]
      else
        query_params
      end

    {package, options} = Keyword.pop(options, :package, nil)

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    {namespace, options} = Keyword.pop(options, :namespace, nil)

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    {format, options} = Keyword.pop(options, :format, nil)

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns the endpoint of a repository for a specific package format.

  A repository has one endpoint for each
  package format:

    *

  `generic`

    *

  `maven`

    *

  `npm`

    *

  `nuget`

    *

  `pypi`

    *

  `ruby`

    *

  `swift`

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
         The name of the domain that contains the repository.
     
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain that contains the repository. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      Returns which endpoint of a repository to return. A repository has one endpoint for each 
      package format.
    
  * `:repository` (`t:string`) 
         The name of the repository.
     
  """
  @spec get_repository_endpoint(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_repository_endpoint_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_repository_endpoint_errors()}
  def get_repository_endpoint(%Client{} = client, domain, format, repository, options \\ []) do
    url_path = "/v1/repository/endpoint"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, format: nil, repository: nil
    # ])

    headers = []
    query_params = []

    {repository, options} = Keyword.pop(options, :repository, nil)

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    {format, options} = Keyword.pop(options, :format, nil)

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns the resource policy that is set on a repository.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
        The name of the domain containing the repository whose associated resource policy is to be retrieved.
      
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:repository` (`t:string`) 
        The name of the repository whose associated resource policy is to be retrieved.
      
  """
  @spec get_repository_permissions_policy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_repository_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_repository_permissions_policy_errors()}
  def get_repository_permissions_policy(%Client{} = client, domain, repository, options \\ []) do
    url_path = "/v1/repository/permissions/policy"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, repository: nil
    # ])

    headers = []
    query_params = []

    {repository, options} = Keyword.pop(options, :repository, nil)

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the repositories in the added repositories list of the specified
  restriction type for a package group.

  For more information about restriction types
  and added repository lists, see [Package group origin controls](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html)
  in the *CodeArtifact User Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain that contains the package group from which to list allowed repositories.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:max_results` (`t:integer`) 
        The maximum number of results to return per page.
       
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:origin_restriction_type` (`t:enum["EXTERNAL_UPSTREAM|INTERNAL_UPSTREAM|PUBLISH"]`) The origin configuration restriction type of which to list allowed repositories.
  * `:package_group` (`t:string`) The pattern of the package group from which to list allowed repositories.
  """
  @spec list_allowed_repositories_for_group(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_allowed_repositories_for_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_allowed_repositories_for_group_errors()}
  def list_allowed_repositories_for_group(
        %Client{} = client,
        domain,
        origin_restriction_type,
        package_group,
        options \\ []
      ) do
    url_path = "/v1/package-group-allowed-repositories"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, max_results: nil, next_token: nil, origin_restriction_type: nil, package_group: nil
    # ])

    headers = []
    query_params = []

    {package_group, options} = Keyword.pop(options, :package_group, nil)

    query_params =
      if !is_nil(package_group) do
        [{"package-group", package_group} | query_params]
      else
        query_params
      end

    {origin_restriction_type, options} = Keyword.pop(options, :origin_restriction_type, nil)

    query_params =
      if !is_nil(origin_restriction_type) do
        [{"originRestrictionType", origin_restriction_type} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of packages associated with the requested package group.

  For information package group association and matching, see
  [Package group definition syntax and matching
  behavior](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html)
  in the *CodeArtifact User Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain that contains the package group from which to list associated packages.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:max_results` (`t:integer`) 
        The maximum number of results to return per page.
       
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:package_group` (`t:string`) 
      The pattern of the package group from which to list associated packages.
    
  * `:preview` (`t:boolean`) 
      When this flag is included, <code>ListAssociatedPackages</code> will return a list of packages that would be associated with a package 
      group, even if it does not exist.
    
  """
  @spec list_associated_packages(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_associated_packages_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_associated_packages_errors()}
  def list_associated_packages(%Client{} = client, domain, package_group, options \\ []) do
    url_path = "/v1/list-associated-packages"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [domain: nil, domain_owner: nil, max_results: nil, next_token: nil, package_group: nil, preview: nil
    # ])

    headers = []
    query_params = []

    {preview, options} = Keyword.pop(options, :preview, nil)

    query_params =
      if !is_nil(preview) do
        [{"preview", preview} | query_params]
      else
        query_params
      end

    {package_group, options} = Keyword.pop(options, :package_group, nil)

    query_params =
      if !is_nil(package_group) do
        [{"package-group", package_group} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    {domain_owner, options} = Keyword.pop(options, :domain_owner, nil)

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    {domain, options} = Keyword.pop(options, :domain, nil)

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of
  [DomainSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  objects for all domains owned by the Amazon Web Services account that makes
  this call.

  Each returned `DomainSummary` object contains information about a
  domain.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec list_domains(AWS.Client.t(), list_domains_request(), Keyword.t()) ::
          {:ok, list_domains_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domains"
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
  Returns a list of package groups in the requested domain.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The domain for which you want to list package groups.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:max_results` (`t:integer`) 
        The maximum number of results to return per page.
       
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:prefix` (`t:string`) 
      A prefix for which to search package groups. When included, <code>ListPackageGroups</code> will return only
      package groups with patterns that match the prefix.
    
  """
  @spec list_package_groups(AWS.Client.t(), list_package_groups_request(), Keyword.t()) ::
          {:ok, list_package_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_package_groups_errors()}
  def list_package_groups(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-groups"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"prefix", "prefix"}
      ]
      |> Request.build_params(input)

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

  Returns a list of
  [AssetSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html)

  objects for assets in a package version.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
         The name of the domain that contains the repository associated with the package version assets.
       
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      The format of the package that contains the requested package version assets.
    
  * `:max_results` (`t:integer`) 
        The maximum number of results to return per page.
       
  * `:namespace` (`t:string`) The namespace of the package version that contains the requested package version assets. The package component that specifies its 
      namespace depends on its type. For example:
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:package` (`t:string`) 
         The name of the package that contains the requested package version assets.
       
  * `:package_version` (`t:string`) 
      A string that contains the package version (for example, <code>3.5.2</code>).
    
  * `:repository` (`t:string`) 
      The name of the repository that contains the package that contains the requested package version assets.
    
  """
  @spec list_package_version_assets(
          AWS.Client.t(),
          list_package_version_assets_request(),
          Keyword.t()
        ) ::
          {:ok, list_package_version_assets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_package_version_assets_errors()}
  def list_package_version_assets(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/version/assets"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"package", "package"},
        {"packageVersion", "version"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

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

  Returns the direct dependencies for a package version.

  The dependencies are returned as
  [PackageDependency](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html)

  objects. CodeArtifact extracts the dependencies for a package version from the
  metadata file for the package
  format (for example, the `package.json` file for npm packages and the `pom.xml`
  file
  for Maven). Any package version dependencies that are not listed in the
  configuration file are not returned.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain that contains the repository that contains the requested package version dependencies.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      The format of the package with the requested dependencies.
    
  * `:namespace` (`t:string`) The namespace of the package version with the requested dependencies. The package component that specifies its 
      namespace depends on its type. For example:
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:package` (`t:string`) 
      The name of the package versions&#39; package.
    
  * `:package_version` (`t:string`) 
      A string that contains the package version (for example, <code>3.5.2</code>).
    
  * `:repository` (`t:string`) 
      The name of the repository that contains the requested package version.
    
  """
  @spec list_package_version_dependencies(
          AWS.Client.t(),
          list_package_version_dependencies_request(),
          Keyword.t()
        ) ::
          {:ok, list_package_version_dependencies_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_package_version_dependencies_errors()}
  def list_package_version_dependencies(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/version/dependencies"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"package", "package"},
        {"packageVersion", "version"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

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

  Returns a list of
  [PackageVersionSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html)

  objects for package versions in a repository that match the request parameters.

  Package versions of all statuses will be returned by default when calling
  `list-package-versions` with no `--status` parameter.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
         The name of the domain that contains the repository that contains the requested package versions.
       
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      The format of the package versions you want to list.
    
  * `:max_results` (`t:integer`) 
        The maximum number of results to return per page.
       
  * `:namespace` (`t:string`) The namespace of the package that contains the requested package versions. The package component that specifies its 
      namespace depends on its type. For example:
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:origin_type` (`t:enum["EXTERNAL|INTERNAL|UNKNOWN"]`) The <code>originType</code> used to filter package versions. 
      Only package versions with the provided <code>originType</code> will be returned.
  * `:package` (`t:string`) 
      The name of the package for which you want to request package versions.
    
  * `:repository` (`t:string`) 
         The name of the repository that contains the requested package versions.
       
  * `:sort_by` (`t:enum["PUBLISHED_TIME"]`) 
      How to sort the requested list of package versions.
    
  * `:status` (`t:enum["ARCHIVED|DELETED|DISPOSED|PUBLISHED|UNFINISHED|UNLISTED"]`) 
      A string that filters the requested package versions by status.
    
  """
  @spec list_package_versions(AWS.Client.t(), list_package_versions_request(), Keyword.t()) ::
          {:ok, list_package_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_package_versions_errors()}
  def list_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"originType", "originType"},
        {"package", "package"},
        {"repository", "repository"},
        {"sortBy", "sortBy"},
        {"status", "status"}
      ]
      |> Request.build_params(input)

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

  Returns a list of
  [PackageSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html)

  objects for packages in a repository that match the request parameters.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
        The name of the domain that contains the repository that contains the requested packages.
      
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) The format used to filter requested packages. Only packages from the provided format will be returned.
  * `:max_results` (`t:integer`) 
        The maximum number of results to return per page.
       
  * `:namespace` (`t:string`) The namespace prefix used to filter requested packages. 
      Only packages with a namespace that starts with the provided string value are returned. 
      Note that although this option is called <code>--namespace</code> and not <code>--namespace-prefix</code>, it has prefix-matching behavior.
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:package_prefix` (`t:string`) 
      A prefix used to filter requested packages. Only packages with names that start with 
      <code>packagePrefix</code> are returned.
    
  * `:publish` (`t:enum["ALLOW|BLOCK"]`) The value of the <code>Publish</code> package origin control restriction used to filter requested packages. 
      Only packages with the provided restriction are returned. 
      For more information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a>.
  * `:repository` (`t:string`) 
         The name of the repository that contains the requested packages.
       
  * `:upstream` (`t:enum["ALLOW|BLOCK"]`) The value of the <code>Upstream</code> package origin control restriction used to filter requested packages. 
      Only packages with the provided restriction are returned. For more information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a>.
  """
  @spec list_packages(AWS.Client.t(), list_packages_request(), Keyword.t()) ::
          {:ok, list_packages_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_packages_errors()}
  def list_packages(%Client{} = client, input, options \\ []) do
    url_path = "/v1/packages"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"packagePrefix", "package-prefix"},
        {"publish", "publish"},
        {"repository", "repository"},
        {"upstream", "upstream"}
      ]
      |> Request.build_params(input)

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

  Returns a list of
  [RepositorySummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)

  objects.

  Each `RepositorySummary` contains information about a repository in the
  specified Amazon Web Services account and that matches the input
  parameters.

  ## Required positional parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) 
        The maximum number of results to return per page.
       
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:repository_prefix` (`t:string`)  A prefix used to filter returned repositories. Only repositories with names that start
      with <code>repositoryPrefix</code> are returned.
  """
  @spec list_repositories(AWS.Client.t(), list_repositories_request(), Keyword.t()) ::
          {:ok, list_repositories_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_repositories_errors()}
  def list_repositories(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repositories"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"repositoryPrefix", "repository-prefix"}
      ]
      |> Request.build_params(input)

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

  Returns a list of
  [RepositorySummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)

  objects.

  Each `RepositorySummary` contains information about a repository in the
  specified domain and that matches the input
  parameters.

  ## Required positional parameters:

  ## Optional parameters:
  * `:administrator_account` (`t:string`) 
         Filter the list of repositories to only include those that are managed by the Amazon Web Services account ID.
       
  * `:domain` (`t:string`) 
         The name of the domain that contains the returned list of repositories.
       
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:max_results` (`t:integer`) 
        The maximum number of results to return per page.
       
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:repository_prefix` (`t:string`) 
      A prefix used to filter returned repositories. Only repositories with names that start with 
      <code>repositoryPrefix</code> are returned.
    
  """
  @spec list_repositories_in_domain(
          AWS.Client.t(),
          list_repositories_in_domain_request(),
          Keyword.t()
        ) ::
          {:ok, list_repositories_in_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_repositories_in_domain_errors()}
  def list_repositories_in_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain/repositories"
    headers = []

    {query_params, input} =
      [
        {"administratorAccount", "administrator-account"},
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"repositoryPrefix", "repository-prefix"}
      ]
      |> Request.build_params(input)

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
  Returns a list of direct children of the specified package group.

  For information package group hierarchy, see
  [Package group definition syntax and matching
  behavior](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html)
  in the *CodeArtifact User Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain which contains the package group from which to list sub package groups.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:max_results` (`t:integer`) 
        The maximum number of results to return per page.
       
  * `:next_token` (`t:string`) 
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       
  * `:package_group` (`t:string`) 
      The pattern of the package group from which to list sub package groups.
    
  """
  @spec list_sub_package_groups(AWS.Client.t(), list_sub_package_groups_request(), Keyword.t()) ::
          {:ok, list_sub_package_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sub_package_groups_errors()}
  def list_sub_package_groups(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-groups/sub-groups"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"packageGroup", "package-group"}
      ]
      |> Request.build_params(input)

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
  Gets information about Amazon Web Services tags for a specified Amazon Resource
  Name (ARN) in CodeArtifact.

  ## Required positional parameters:

  ## Optional parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource to get tags for.
  """
  @spec list_tags_for_resource(AWS.Client.t(), list_tags_for_resource_request(), Keyword.t()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

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
  Creates a new package version containing one or more assets (or files).

  The `unfinished` flag can be used to keep the package version in the
  `Unfinished` state until all of its assets have been uploaded (see [Package version
  status](https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status)
  in the *CodeArtifact user guide*). To set
  the package version’s status to `Published`, omit the `unfinished` flag
  when uploading the final asset, or set the status using
  [UpdatePackageVersionStatus](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html). Once a package version’s status is set to
  `Published`, it cannot change back to `Unfinished`.

  Only generic packages can be published using this API. For more information, see
  [Using generic
  packages](https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html)
  in the *CodeArtifact User Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  * `:asset_name` (`t:string`) The name of the asset to publish. Asset names can include Unicode letters and numbers, and
      the following special characters: <code>~ ! @ ^ &amp; ( ) - ` _ + [ ] { } ; , .
        `</code>
         
  * `:domain` (`t:string`) The name of the domain that contains the repository that contains the package version to publish.
  * `:domain_owner` (`t:string`) The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces.
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) A format that specifies the type of the package version with the requested asset file.
  * `:namespace` (`t:string`) The namespace of the package version to publish.
  * `:package` (`t:string`) The name of the package version to publish.
  * `:package_version` (`t:string`) The package version to publish (for example, <code>3.5.2</code>).
  * `:repository` (`t:string`) The name of the repository that the package version will be published to.
  * `:unfinished` (`t:boolean`) Specifies whether the package version should remain in the <code>unfinished</code>
      state. If omitted, the package version status will be set to <code>Published</code> (see
      <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status">Package version status</a> in the <i>CodeArtifact User Guide</i>).
  * `:asset_s_h_a256` (`t:string`) The SHA256 hash of the <code>assetContent</code> to publish. This value must be calculated
      by the caller and provided with the request (see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html#publishing-generic-packages">Publishing a generic package</a> in the <i>CodeArtifact User
          Guide</i>).
  """
  @spec publish_package_version(AWS.Client.t(), publish_package_version_request(), Keyword.t()) ::
          {:ok, publish_package_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_package_version_errors()}
  def publish_package_version(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/version/publish"

    {headers, input} =
      [
        {"assetSHA256", "x-amz-content-sha256"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"assetName", "asset"},
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"packageVersion", "version"},
        {"repository", "repository"},
        {"unfinished", "unfinished"}
      ]
      |> Request.build_params(input)

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

  Sets a resource policy on a domain that specifies permissions to access it.

  When you call `PutDomainPermissionsPolicy`, the resource policy on the domain is
  ignored when evaluting permissions.
  This ensures that the owner of a domain cannot lock themselves out of the
  domain, which would prevent them from being
  able to update the resource policy.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec put_domain_permissions_policy(
          AWS.Client.t(),
          put_domain_permissions_policy_request(),
          Keyword.t()
        ) ::
          {:ok, put_domain_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_domain_permissions_policy_errors()}
  def put_domain_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain/permissions/policy"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Sets the package origin configuration for a package.

  The package origin configuration determines how new versions of a package can be
  added to a repository. You can allow or block direct
  publishing of new package versions, or ingestion and retaining of new package
  versions from an external connection or upstream source.
  For more information about package origin controls and configuration, see
  [Editing package origin controls](https://docs.aws.amazon.com/codeartifact/latest/ug/package-origin-controls.html)
  in the *CodeArtifact User Guide*.

  `PutPackageOriginConfiguration` can be called on a package that doesn't yet
  exist in the repository. When called
  on a package that does not exist, a package is created in the repository with no
  versions and the requested restrictions are set on the package.
  This can be used to preemptively block ingesting or retaining any versions from
  external connections or upstream repositories, or to block
  publishing any versions of the package into the repository before connecting any
  package managers or publishers to the repository.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) The name of the domain that contains the repository that contains the package.
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) A format that specifies the type of the package to be updated.
  * `:namespace` (`t:string`) The namespace of the package to be updated. The package component that specifies its 
      namespace depends on its type. For example:
  * `:package` (`t:string`) The name of the package to be updated.
  * `:repository` (`t:string`) The name of the repository that contains the package.
  """
  @spec put_package_origin_configuration(
          AWS.Client.t(),
          put_package_origin_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, put_package_origin_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_package_origin_configuration_errors()}
  def put_package_origin_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

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

  Sets the resource policy on a repository that specifies permissions to access
  it.

  When you call `PutRepositoryPermissionsPolicy`, the resource policy on the
  repository is ignored when evaluting permissions.
  This ensures that the owner of a repository cannot lock themselves out of the
  repository, which would prevent them from being
  able to update the resource policy.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
        The name of the domain containing the repository to set the resource policy on.
      
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:repository` (`t:string`)  The name of the repository to set the resource policy on. 
  """
  @spec put_repository_permissions_policy(
          AWS.Client.t(),
          put_repository_permissions_policy_request(),
          Keyword.t()
        ) ::
          {:ok, put_repository_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_repository_permissions_policy_errors()}
  def put_repository_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/permissions/policy"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds or updates tags for a resource in CodeArtifact.

  ## Required positional parameters:

  ## Optional parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/tag"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

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
  Removes tags from a resource in CodeArtifact.

  ## Required positional parameters:

  ## Optional parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource that you want to remove tags from.
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/untag"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

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
  Updates a package group.

  This API cannot be used to update a package group's origin configuration or
  pattern. To update a
  package group's origin configuration, use
  [UpdatePackageGroupOriginConfiguration](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageGroupOriginConfiguration.html).

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain which contains the package group to be updated.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  """
  @spec update_package_group(AWS.Client.t(), update_package_group_request(), Keyword.t()) ::
          {:ok, update_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_package_group_errors()}
  def update_package_group(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-group"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the package origin configuration for a package group.

  The package origin configuration determines how new versions of a package can be
  added to a repository. You can allow or block direct
  publishing of new package versions, or ingestion and retaining of new package
  versions from an external connection or upstream source.
  For more information about package group origin controls and configuration, see
  [Package group origin controls](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html)
  in the *CodeArtifact User Guide*.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain which contains the package group for which to update the origin configuration.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:package_group` (`t:string`) 
      The pattern of the package group for which to update the origin configuration.
    
  """
  @spec update_package_group_origin_configuration(
          AWS.Client.t(),
          update_package_group_origin_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, update_package_group_origin_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_package_group_origin_configuration_errors()}
  def update_package_group_origin_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-group-origin-configuration"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"packageGroup", "package-group"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  Updates the status of one or more versions of a package.

  Using `UpdatePackageVersionsStatus`,
  you can update the status of package versions to `Archived`, `Published`, or
  `Unlisted`.
  To set the status of a package version to `Disposed`, use
  [DisposePackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DisposePackageVersions.html).

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
      The name of the domain that contains the repository that contains the package versions with a status to be updated.
    
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:format` (`t:enum["GENERIC|MAVEN|NPM|NUGET|PYPI|RUBY|SWIFT"]`) 
      A format that specifies the type of the package with the statuses to update.
    
  * `:namespace` (`t:string`) The namespace of the package version to be updated. The package component that specifies its 
      namespace depends on its type. For example:
  * `:package` (`t:string`) 
      The name of the package with the version statuses to update.
    
  * `:repository` (`t:string`) 
      The repository that contains the package versions with the status you want to update. 
    
  """
  @spec update_package_versions_status(
          AWS.Client.t(),
          update_package_versions_status_request(),
          Keyword.t()
        ) ::
          {:ok, update_package_versions_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_package_versions_status_errors()}
  def update_package_versions_status(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/update_status"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

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

  Update the properties of a repository.

  ## Required positional parameters:

  ## Optional parameters:
  * `:domain` (`t:string`) 
         The name of the domain associated with the repository to update.
       
  * `:domain_owner` (`t:string`) 
        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
        dashes or spaces.
      
  * `:repository` (`t:string`) 
         The name of the repository to update.
       
  """
  @spec update_repository(AWS.Client.t(), update_repository_request(), Keyword.t()) ::
          {:ok, update_repository_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_repository_errors()}
  def update_repository(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
