resource "aws_api_gateway_resource" "path1" {
    rest_api_id = aws_api_gateway_rest_api.api.id
    parente_id  = aws_api_gateway_rest_api.api.root_resource_id
    path_part   = "path1"
}

resource "aws_api_gateway_resource" "path2" {
    rest_api_id = aws_api_gateway_rest_api.api.id
    parente_id  = aws_api_gateway_rest_api.api.root_resource_id
    path_part   = "path2"
}