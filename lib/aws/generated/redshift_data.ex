# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RedshiftData do
  @moduledoc """
  You can use the Amazon Redshift Data API to run queries on Amazon Redshift
  tables. You can run SQL statements, which are committed if the statement
  succeeds.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      active_statements_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type active_statements_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_execute_statement_exception() :: %{
        "Message" => String.t(),
        "StatementId" => String.t()
      }
      
  """
  @type batch_execute_statement_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_execute_statement_input() :: %{
        optional("ClientToken") => String.t(),
        optional("ClusterIdentifier") => String.t(),
        optional("DbUser") => String.t(),
        optional("SecretArn") => String.t(),
        optional("StatementName") => String.t(),
        optional("WithEvent") => [boolean()],
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t(),
        required("Sqls") => list(String.t()())
      }
      
  """
  @type batch_execute_statement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_execute_statement_output() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("CreatedAt") => [non_neg_integer()],
        optional("Database") => String.t(),
        optional("DbUser") => String.t(),
        optional("Id") => String.t(),
        optional("SecretArn") => String.t(),
        optional("WorkgroupName") => String.t()
      }
      
  """
  @type batch_execute_statement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_statement_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type cancel_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_statement_response() :: %{
        optional("Status") => [boolean()]
      }
      
  """
  @type cancel_statement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      column_metadata() :: %{
        "columnDefault" => String.t(),
        "isCaseSensitive" => boolean(),
        "isCurrency" => boolean(),
        "isSigned" => boolean(),
        "label" => String.t(),
        "length" => integer(),
        "name" => String.t(),
        "nullable" => integer(),
        "precision" => integer(),
        "scale" => integer(),
        "schemaName" => String.t(),
        "tableName" => String.t(),
        "typeName" => String.t()
      }
      
  """
  @type column_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_connection_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type database_connection_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_statement_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type describe_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_statement_response() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("CreatedAt") => [non_neg_integer()],
        optional("Database") => String.t(),
        optional("DbUser") => String.t(),
        optional("Duration") => float(),
        optional("Error") => String.t(),
        optional("HasResultSet") => [boolean()],
        optional("QueryParameters") => list(sql_parameter()()),
        optional("QueryString") => String.t(),
        optional("RedshiftPid") => float(),
        optional("RedshiftQueryId") => float(),
        optional("ResultRows") => float(),
        optional("ResultSize") => float(),
        optional("SecretArn") => String.t(),
        optional("Status") => String.t(),
        optional("SubStatements") => list(sub_statement_data()()),
        optional("UpdatedAt") => [non_neg_integer()],
        optional("WorkgroupName") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type describe_statement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_request() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("ConnectedDatabase") => String.t(),
        optional("DbUser") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Schema") => String.t(),
        optional("SecretArn") => String.t(),
        optional("Table") => String.t(),
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t()
      }
      
  """
  @type describe_table_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_response() :: %{
        optional("ColumnList") => list(column_metadata()()),
        optional("NextToken") => String.t(),
        optional("TableName") => String.t()
      }
      
  """
  @type describe_table_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_exception() :: %{
        "Message" => String.t(),
        "StatementId" => String.t()
      }
      
  """
  @type execute_statement_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_input() :: %{
        optional("ClientToken") => String.t(),
        optional("ClusterIdentifier") => String.t(),
        optional("DbUser") => String.t(),
        optional("Parameters") => list(sql_parameter()()),
        optional("SecretArn") => String.t(),
        optional("StatementName") => String.t(),
        optional("WithEvent") => [boolean()],
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t(),
        required("Sql") => String.t()
      }
      
  """
  @type execute_statement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_output() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("CreatedAt") => [non_neg_integer()],
        optional("Database") => String.t(),
        optional("DbUser") => String.t(),
        optional("Id") => String.t(),
        optional("SecretArn") => String.t(),
        optional("WorkgroupName") => String.t()
      }
      
  """
  @type execute_statement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_statement_result_request() :: %{
        optional("NextToken") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type get_statement_result_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_statement_result_response() :: %{
        optional("ColumnMetadata") => list(column_metadata()()),
        optional("NextToken") => String.t(),
        optional("TotalNumRows") => float(),
        required("Records") => list(list(list()())())
      }
      
  """
  @type get_statement_result_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_databases_request() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("DbUser") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SecretArn") => String.t(),
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t()
      }
      
  """
  @type list_databases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_databases_response() :: %{
        optional("Databases") => list(String.t()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_databases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_schemas_request() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("ConnectedDatabase") => String.t(),
        optional("DbUser") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SchemaPattern") => String.t(),
        optional("SecretArn") => String.t(),
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t()
      }
      
  """
  @type list_schemas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_schemas_response() :: %{
        optional("NextToken") => String.t(),
        optional("Schemas") => list(String.t()())
      }
      
  """
  @type list_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_statements_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RoleLevel") => [boolean()],
        optional("StatementName") => String.t(),
        optional("Status") => String.t()
      }
      
  """
  @type list_statements_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_statements_response() :: %{
        optional("NextToken") => String.t(),
        required("Statements") => list(statement_data()())
      }
      
  """
  @type list_statements_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tables_request() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("ConnectedDatabase") => String.t(),
        optional("DbUser") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SchemaPattern") => String.t(),
        optional("SecretArn") => String.t(),
        optional("TablePattern") => String.t(),
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t()
      }
      
  """
  @type list_tables_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tables_response() :: %{
        optional("NextToken") => String.t(),
        optional("Tables") => list(table_member()())
      }
      
  """
  @type list_tables_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_parameter() :: %{
        "name" => String.t(),
        "value" => String.t()
      }
      
  """
  @type sql_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      statement_data() :: %{
        "CreatedAt" => [non_neg_integer()],
        "Id" => String.t(),
        "IsBatchStatement" => [boolean()],
        "QueryParameters" => list(sql_parameter()()),
        "QueryString" => String.t(),
        "QueryStrings" => list(String.t()()),
        "SecretArn" => String.t(),
        "StatementName" => String.t(),
        "Status" => String.t(),
        "UpdatedAt" => [non_neg_integer()]
      }
      
  """
  @type statement_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sub_statement_data() :: %{
        "CreatedAt" => [non_neg_integer()],
        "Duration" => float(),
        "Error" => String.t(),
        "HasResultSet" => [boolean()],
        "Id" => String.t(),
        "QueryString" => String.t(),
        "RedshiftQueryId" => float(),
        "ResultRows" => float(),
        "ResultSize" => float(),
        "Status" => String.t(),
        "UpdatedAt" => [non_neg_integer()]
      }
      
  """
  @type sub_statement_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_member() :: %{
        "name" => String.t(),
        "schema" => String.t(),
        "type" => String.t()
      }
      
  """
  @type table_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type batch_execute_statement_errors() ::
          validation_exception()
          | batch_execute_statement_exception()
          | active_statements_exceeded_exception()

  @type cancel_statement_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | database_connection_exception()

  @type describe_statement_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type describe_table_errors() ::
          validation_exception() | internal_server_exception() | database_connection_exception()

  @type execute_statement_errors() ::
          validation_exception()
          | execute_statement_exception()
          | active_statements_exceeded_exception()

  @type get_statement_result_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_databases_errors() ::
          validation_exception() | internal_server_exception() | database_connection_exception()

  @type list_schemas_errors() ::
          validation_exception() | internal_server_exception() | database_connection_exception()

  @type list_statements_errors() :: validation_exception() | internal_server_exception()

  @type list_tables_errors() ::
          validation_exception() | internal_server_exception() | database_connection_exception()

  def metadata do
    %{
      api_version: "2019-12-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "redshift-data",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Redshift Data",
      signature_version: "v4",
      signing_name: "redshift-data",
      target_prefix: "RedshiftData"
    }
  end

  @doc """
  Runs one or more SQL statements, which can be data manipulation language (DML)
  or data definition language (DDL). Depending on the authorization method, use
  one of the following combinations of request parameters:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20BatchExecuteStatement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_execute_statement_input`)
    %{
      optional("ClientToken") => String.t(),
      optional("ClusterIdentifier") => String.t(),
      optional("DbUser") => String.t(),
      optional("SecretArn") => String.t(),
      optional("StatementName") => String.t(),
      optional("WithEvent") => [boolean()],
      optional("WorkgroupName") => String.t(),
      required("Database") => String.t(),
      required("Sqls") => list(String.t()())
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
  Cancels a running query. To be canceled, a query must be running.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20CancelStatement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:cancel_statement_request`)
    %{
      required("Id") => String.t()
    }
  """

  @spec cancel_statement(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, cancel_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_statement_errors()}

  def cancel_statement(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelStatement", input, options)
  end

  @doc """
  Describes the details about a specific instance when a query was run by the
  Amazon Redshift Data API. The information includes when the query started,
  when it finished, the query status, the number of rows returned, and the SQL
  statement.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20DescribeStatement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_statement_request`)
    %{
      required("Id") => String.t()
    }
  """

  @spec describe_statement(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_statement_errors()}

  def describe_statement(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStatement", input, options)
  end

  @doc """
  Describes the detailed information about a table from metadata in the cluster.
  The information includes its columns. A token is returned to page through the
  column list. Depending on the authorization method, use one of the following
  combinations of request parameters:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20DescribeTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_table_request`)
    %{
      optional("ClusterIdentifier") => String.t(),
      optional("ConnectedDatabase") => String.t(),
      optional("DbUser") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("Schema") => String.t(),
      optional("SecretArn") => String.t(),
      optional("Table") => String.t(),
      optional("WorkgroupName") => String.t(),
      required("Database") => String.t()
    }
  """

  @spec describe_table(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_table_errors()}

  def describe_table(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTable", input, options)
  end

  @doc """
  Runs an SQL statement, which can be data manipulation language (DML) or data
  definition language (DDL). This statement must be a single SQL statement.
  Depending on the authorization method, use one of the following combinations
  of request parameters:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20ExecuteStatement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:execute_statement_input`)
    %{
      optional("ClientToken") => String.t(),
      optional("ClusterIdentifier") => String.t(),
      optional("DbUser") => String.t(),
      optional("Parameters") => list(sql_parameter()()),
      optional("SecretArn") => String.t(),
      optional("StatementName") => String.t(),
      optional("WithEvent") => [boolean()],
      optional("WorkgroupName") => String.t(),
      required("Database") => String.t(),
      required("Sql") => String.t()
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
  Fetches the temporarily cached result of an SQL statement. A token is returned
  to page through the statement results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20GetStatementResult&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_statement_result_request`)
    %{
      optional("NextToken") => String.t(),
      required("Id") => String.t()
    }
  """

  @spec get_statement_result(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_statement_result_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_statement_result_errors()}

  def get_statement_result(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetStatementResult", input, options)
  end

  @doc """
  List the databases in a cluster. A token is returned to page through the
  database list. Depending on the authorization method, use one of the following
  combinations of request parameters:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20ListDatabases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_databases_request`)
    %{
      optional("ClusterIdentifier") => String.t(),
      optional("DbUser") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SecretArn") => String.t(),
      optional("WorkgroupName") => String.t(),
      required("Database") => String.t()
    }
  """

  @spec list_databases(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_databases_errors()}

  def list_databases(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatabases", input, options)
  end

  @doc """
  Lists the schemas in a database. A token is returned to page through the schema
  list. Depending on the authorization method, use one of the following
  combinations of request parameters:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20ListSchemas&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_schemas_request`)
    %{
      optional("ClusterIdentifier") => String.t(),
      optional("ConnectedDatabase") => String.t(),
      optional("DbUser") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SchemaPattern") => String.t(),
      optional("SecretArn") => String.t(),
      optional("WorkgroupName") => String.t(),
      required("Database") => String.t()
    }
  """

  @spec list_schemas(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_schemas_errors()}

  def list_schemas(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSchemas", input, options)
  end

  @doc """
  List of SQL statements. By default, only finished statements are shown. A token
  is returned to page through the statement list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20ListStatements&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_statements_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("RoleLevel") => [boolean()],
      optional("StatementName") => String.t(),
      optional("Status") => String.t()
    }
  """

  @spec list_statements(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_statements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_statements_errors()}

  def list_statements(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListStatements", input, options)
  end

  @doc """
  List the tables in a database. If neither `SchemaPattern` nor `TablePattern` are
  specified, then all tables in the database are returned. A token is returned
  to page through the table list. Depending on the authorization method, use one
  of the following combinations of request parameters:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=redshiftdata%20ListTables&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tables_request`)
    %{
      optional("ClusterIdentifier") => String.t(),
      optional("ConnectedDatabase") => String.t(),
      optional("DbUser") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SchemaPattern") => String.t(),
      optional("SecretArn") => String.t(),
      optional("TablePattern") => String.t(),
      optional("WorkgroupName") => String.t(),
      required("Database") => String.t()
    }
  """

  @spec list_tables(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tables_errors()}

  def list_tables(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTables", input, options)
  end
end
