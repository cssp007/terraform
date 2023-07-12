locals {
  lambda_zip_locations = "outputs/welcome.zip"
}

data "archive_file" "welcome" {
  type        = "zip"
  source_file = "welcome.py"
  output_path = "${local.lambda_zip_locations}"
}

resource "aws_lambda_function" "lambda" {
  function_name = "welcome"
  filename         = "${local.lambda_zip_locations}"
  #source_code_hash = data.archive_file.zip.output_base64sha256
  role    = aws_iam_role.lambda_role.arn
  handler = "welcome.hello"
  runtime = "python3.7"
}
