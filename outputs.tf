# SQS Queue URLs
output "SQS_PAYMENT_QUEUE_URL" {
  description = "URL da fila SQS de pagamentos"
  value       = aws_sqs_queue.sqs-payments.id
}

output "SQS_ORDERS_QUEUE_URL" {
  description = "URL da fila SQS de pedidos"
  value       = aws_sqs_queue.sqs-orders.id
}

output "SQS_PRODUCTION_QUEUE_URL" {
  description = "URL da fila SQS de produção"
  value       = aws_sqs_queue.sqs-production.id
}

# SNS Topic ARNs
output "SNS_PAYMENT_TOPIC_ARN" {
  description = "ARN do tópico SNS de pagamentos"
  value       = aws_sns_topic.sns-payments.arn
}

output "SNS_ORDERS_TOPIC_ARN" {
  description = "ARN do tópico SNS de pedidos"
  value       = aws_sns_topic.sns-orders.arn
}

output "SNS_PRODUCTION_TOPIC_ARN" {
  description = "ARN do tópico SNS de produção"
  value       = aws_sns_topic.sns-production.arn
}
