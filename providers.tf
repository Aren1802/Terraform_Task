provider "helm" {
  kubernetes {
    config_path = "/home/aren.chauhan/.kube/config"
  }
}

provider "kubernetes" {
    config_context_cluster = "minikube"
    config_path = "/home/aren.chauhan/.kube/config"
}

