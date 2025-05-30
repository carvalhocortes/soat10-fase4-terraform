resource "kubernetes_service" "app_lb" {
  metadata {
    name      = "eks-fiap-soat10-prod"
    namespace = "default"
    annotations = {
      "service.beta.kubernetes.io/aws-load-balancer-type" = "nlb"
    }
  }

  spec {
    selector = {
      app = "fiap-fast-food-app"
    }
    port {
      port        = 80
      target_port = 3333
    }
    type = "LoadBalancer"
  }
}