defmodule AWS.Generated.APIGatewayV2Test do
  use ExUnit.Case, async: true

  setup do
    client = %AWS.Client{
      access_key_id: "my-access-key-id",
      secret_access_key: "my-secret-access-key",
      endpoint: "localhost",
      region: "local",
      proto: "http"
    }

    service_metadata = %{
      abbreviation: "Foo",
      api_version: "2017-08-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "foo",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Foo",
      signature_version: "v4",
      signing_name: "foo",
      target_prefix: "com.amazonaws.foo"
    }

    %{client: client, metadata: service_metadata}
  end

  describe "Generated code parameter tests" do
    setup do
      bypass = Bypass.open()
      {:ok, bypass: bypass}
    end

    test "required body request with create_api/3", %{
      client: client,
      bypass: bypass
    } do
      input = %{
        name: "foo"
      }

      client = %{client | port: bypass.port}

      Bypass.expect(bypass, fn conn ->
        # No required headers for this method
        # Optional header
        {:ok, read_input, conn} =
          Plug.Conn.read_body(conn)

        assert read_input == ~s|{"name":"foo"}|

        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          201,
          ~s|{
            "items": [
              {
                "apiId": "string",
                "name": "string",
                "description": "string",
                "version": "string"
              }
            ]
          }|
        )
      end)

      {:ok, _body, _} =
        AWS.ApiGatewayV2.create_api(client, input)

      assert_raise UndefinedFunctionError, fn ->
        AWS.ApiGatewayV2.create_api(client)
      end

      assert_raise FunctionClauseError, fn ->
        AWS.ApiGatewayV2.create_api(client, nil)
      end

      Bypass.down(bypass)
    end
  end
end
