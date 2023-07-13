locals {
  lambda_zip_locations = "outputs/welcome.zip"
}

data "archive_file" "welcome" {
  type        = "zip"
  source_file = "${path.module}/welcome.py"
  output_path = "${local.lambda_zip_locations}"
}

resource "aws_lambda_function" "lambda" {
  function_name = "welcome"
  filename         = "${local.lambda_zip_locations}"
  source_code_hash = "${filebase64sha256(local.lambda_zip_locations)}"
  role    = aws_iam_role.lambda_role.arn
  handler = "welcome.hello"
  runtime = "python3.7"
}
