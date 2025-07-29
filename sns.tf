resource "aws_sns_topic" "sns-orders" {
  name = "sns-orders"
}

resource "aws_sns_topic" "sns-payments" {
  name = "sns-payments"
}

resource "aws_sns_topic" "sns-production" {
  name = "sns-production"
}

# Inscrições do tópico sns-orders
resource "aws_sns_topic_subscription" "sns-orders-to-sqs-orders" {
  topic_arn = aws_sns_topic.sns-orders.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-orders.arn
}

resource "aws_sns_topic_subscription" "sns-orders-to-sqs-payments" {
  topic_arn = aws_sns_topic.sns-orders.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-payments.arn
}

resource "aws_sns_topic_subscription" "sns-orders-to-sqs-production" {
  topic_arn = aws_sns_topic.sns-orders.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-production.arn
}

# Inscrições do tópico sns-payments
resource "aws_sns_topic_subscription" "sns-payments-to-sqs-orders" {
  topic_arn = aws_sns_topic.sns-payments.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-orders.arn
}

resource "aws_sns_topic_subscription" "sns-payments-to-sqs-payments" {
  topic_arn = aws_sns_topic.sns-payments.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-payments.arn
}

resource "aws_sns_topic_subscription" "sns-payments-to-sqs-production" {
  topic_arn = aws_sns_topic.sns-payments.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-production.arn
}

# Inscrições do tópico sns-production
resource "aws_sns_topic_subscription" "sns-production-to-sqs-orders" {
  topic_arn = aws_sns_topic.sns-production.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-orders.arn
}

resource "aws_sns_topic_subscription" "sns-production-to-sqs-payments" {
  topic_arn = aws_sns_topic.sns-production.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-payments.arn
}

resource "aws_sns_topic_subscription" "sns-production-to-sqs-production" {
  topic_arn = aws_sns_topic.sns-production.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-production.arn
}
