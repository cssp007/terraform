resource "aws_sqs_queue" "example_queue" {
  count = length(var.sqs_queues)
  name = var.sqs_queues[count.index]
  fifo_queue                  = true
  content_based_deduplication = true
}
