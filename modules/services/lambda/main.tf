#locals {
#  lambda_zip_locations = "$lambda_zip_locations"
#}

data "archive_file" "welcome" {
  type        = "zip"
  source_file = "${path.module}/${var.source_file_path}"
  output_path = var.lambda_zip_locations
}

resource "aws_lambda_function" "lambda" {
  function_name = var.function_name
  filename         = var.lambda_zip_locations
  #source_code_hash = filebase64sha256(var.lambda_zip_locations)
  role    = aws_iam_role.lambda_role.arn
  handler = "${var.function_name}.${var.handler_name}"
  runtime = "python3.9"
}
