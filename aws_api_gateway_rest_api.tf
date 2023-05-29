resource "aws_api_gateway_rest_api" "api" {
    name = format("%s_api", local.prefix_name)

    tags = merge(
        local.common_tags,
        {
            #key = value
        },
    )
}