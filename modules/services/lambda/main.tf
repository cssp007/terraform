data "archive_file" "welcome" {
  count = length(var.source_file_path)
  type        = "zip"
  source_file = "${path.module}/${var.source_file_path[count.index]}"
  output_path = var.lambda_zip_locations[count.index]
}

resource "aws_lambda_function" "lambda" {
  count = length(var.source_file_path)
  function_name = var.function_name[count.index]
  filename         = var.lambda_zip_locations[count.index]
  source_code_hash = filebase64sha256(var.lambda_zip_locations[count.index])
  role    = aws_iam_role.lambda_role.arn
  handler = "${var.function_name[count.index]}.${var.handler_name[count.index]}"
  runtime = var.runtime[count.index]
}
