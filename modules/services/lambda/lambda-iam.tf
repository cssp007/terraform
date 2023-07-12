resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = aws_iam_role.lambda_role.id
  policy = "${file("modules/services/lambda/iam/lambda-policy.json")}"
}

resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"
  assume_role_policy = "${file("modules/services/lambda/iam/lambda-assume-policy.json")}"
}
