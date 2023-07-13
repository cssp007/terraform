#locals {
#  lambda_zip_locations = "$lambda_zip_locations"
#}

data "archive_file" "welcome" {
  type        = "zip"
  source_file = "${path.module}/welcome.py"
  output_path = "$lambda_zip_locations"
}

resource "aws_lambda_function" "lambda" {
  function_name = "welcome"
  filename         = "$lambda_zip_locations"
  source_code_hash = filebase64sha256("$lambda_zip_locations")
  role    = aws_iam_role.lambda_role.arn
  handler = "welcome.hello"
  runtime = "python3.7"
}
