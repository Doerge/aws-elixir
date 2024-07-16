defmodule AWS.Generated.S3Test do
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

    test "Raise on invalid optional parameters", %{client: client} do
      assert_raise ArgumentError, ~r/^unknown keys \[:fake_param\].+/, fn ->
        AWS.S3.get_object(client, "mybucket", "key1", fake_param: true)
      end
    end

    test "optional headers, and optional query parameters are correctly used", %{
      client: client,
      bypass: bypass
    } do
      bucket = "mybucket"
      key = "mykey"
      md5 = "foobar"
      version_id = "v42"

      client = %{client | port: bypass.port}

      Bypass.expect(bypass, fn conn ->
        # No required headers for this method
        # Optional header
        [header_md5] =
          Plug.Conn.get_req_header(conn, "x-amz-server-side-encryption-customer-key-md5")

        assert header_md5 == md5
        # No required query params for this method
        # Optional query params
        assert String.contains?(conn.query_string, "versionId=#{version_id}")

        Plug.Conn.resp(
          conn,
          200,
          "{ContentLength: 1234}"
        )
      end)

      {:ok, _body, _} =
        AWS.S3.get_object(client, bucket, key, sse_customer_key_md5: md5, version_id: version_id)

      Bypass.down(bypass)
    end

    test "required query parameters are correctly used", %{
      client: client,
      bypass: bypass
    } do
      bucket = "mybucket"
      analytics_config_id = "foobar"

      client = %{client | port: bypass.port}

      Bypass.expect(bypass, fn conn ->
        # Required query param
        assert String.contains?(conn.query_string, "id=#{analytics_config_id}")

        Plug.Conn.resp(
          conn,
          200,
          # Dummy response
          ~s|<AnalyticsConfiguration>
              <Id>string</Id>
              <Filter>
                  <And>
                    <Prefix>string</Prefix>
                    <Tag>
                        <Key>string</Key>
                        <Value>string</Value>
                    </Tag>
                    ...
                  </And>
                  <Prefix>string</Prefix>
                  <Tag>
                    <Key>string</Key>
                    <Value>string</Value>
                  </Tag>
              </Filter>
              <StorageClassAnalysis>
                  <DataExport>
                    <Destination>
                        <S3BucketDestination>
                          <Bucket>string</Bucket>
                          <BucketAccountId>string</BucketAccountId>
                          <Format>string</Format>
                          <Prefix>string</Prefix>
                        </S3BucketDestination>
                    </Destination>
                    <OutputSchemaVersion>string</OutputSchemaVersion>
                  </DataExport>
              </StorageClassAnalysis>
            </AnalyticsConfiguration>|
        )
      end)

      {:ok, _body, _} =
        AWS.S3.get_bucket_analytics_configuration(client, bucket, analytics_config_id)

      Bypass.down(bypass)
    end

    test "required headers are correctly used", %{
      client: client,
      bypass: bypass
    } do
      bucket = "mybucket"
      key = "mykey"
      obj_attrs = "foobar"

      client = %{client | port: bypass.port}

      Bypass.expect(bypass, fn conn ->
        # Required header
        [header_obj_attrs] =
          Plug.Conn.get_req_header(conn, "x-amz-object-attributes")

        assert header_obj_attrs == obj_attrs

        Plug.Conn.resp(
          conn,
          200,
          # Dummy response
          ~s|<GetObjectAttributesOutput>
              <ETag>string</ETag>
              <Checksum>
                  <ChecksumCRC32>string</ChecksumCRC32>
                  <ChecksumCRC32C>string</ChecksumCRC32C>
                  <ChecksumSHA1>string</ChecksumSHA1>
                  <ChecksumSHA256>string</ChecksumSHA256>
              </Checksum>
              <ObjectParts>
                  <IsTruncated>boolean</IsTruncated>
                  <MaxParts>integer</MaxParts>
                  <NextPartNumberMarker>integer</NextPartNumberMarker>
                  <PartNumberMarker>integer</PartNumberMarker>
                  <Part>
                    <ChecksumCRC32>string</ChecksumCRC32>
                    <ChecksumCRC32C>string</ChecksumCRC32C>
                    <ChecksumSHA1>string</ChecksumSHA1>
                    <ChecksumSHA256>string</ChecksumSHA256>
                    <PartNumber>integer</PartNumber>
                    <Size>long</Size>
                  </Part>
                  <PartsCount>integer</PartsCount>
              </ObjectParts>
              <StorageClass>string</StorageClass>
              <ObjectSize>long</ObjectSize>
            </GetObjectAttributesOutput>|
        )
      end)

      # This is the only function with required headers in S3.
      {:ok, _body, _} =
        AWS.S3.get_object_attributes(client, bucket, key, obj_attrs)

      Bypass.down(bypass)
    end
  end
end
