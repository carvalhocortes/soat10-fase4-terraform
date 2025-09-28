resource "aws_sqs_queue" "sqs-orders" {
  name = "sqs-orders"
}

resource "aws_sqs_queue" "sqs-payments" {
  name = "sqs-payments"
}

resource "aws_sqs_queue" "sqs-production" {
  name = "sqs-production"
}

resource "aws_sqs_queue_policy" "sqs-orders-policy" {
  queue_url = aws_sqs_queue.sqs-orders.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "sns.amazonaws.com"
        }
        Action   = "sqs:SendMessage"
        Resource = aws_sqs_queue.sqs-orders.arn
        Condition = {
          ArnEquals = {
            "aws:SourceArn" = [
              aws_sns_topic.sns-orders.arn,
              aws_sns_topic.sns-payments.arn,
              aws_sns_topic.sns-production.arn
            ]
          }
        }
      }
    ]
  })
}

resource "aws_sqs_queue_policy" "sqs-payments-policy" {
  queue_url = aws_sqs_queue.sqs-payments.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "sns.amazonaws.com"
        }
        Action   = "sqs:SendMessage"
        Resource = aws_sqs_queue.sqs-payments.arn
        Condition = {
          ArnEquals = {
            "aws:SourceArn" = [
              aws_sns_topic.sns-orders.arn,
              aws_sns_topic.sns-payments.arn,
              aws_sns_topic.sns-production.arn
            ]
          }
        }
      }
    ]
  })
}

resource "aws_sqs_queue_policy" "sqs-production-policy" {
  queue_url = aws_sqs_queue.sqs-production.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "sns.amazonaws.com"
        }
        Action   = "sqs:SendMessage"
        Resource = aws_sqs_queue.sqs-production.arn
        Condition = {
          ArnEquals = {
            "aws:SourceArn" = [
              aws_sns_topic.sns-orders.arn,
              aws_sns_topic.sns-payments.arn,
              aws_sns_topic.sns-production.arn
            ]
          }
        }
      }
    ]
  })
}

