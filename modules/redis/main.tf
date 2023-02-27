resource "helm_release" "redis" {
   name       = "my-redis-release"
   repository = var.repository
   chart      = var.chart
   version    = "17.7.5"
   namespace  = var.namespace
   create_namespace = true
   wait             = true
   reset_values     = true
  max_history       = 3

   set {
    name  = "cluster.enabled"
    value = "true"
  }
}

resource "null_resource" "top-use" {
  triggers = {
    always_run = local.timestamp
  }
provisioner "local-exec" {
    when    = create
    command = "rm -f top-*.txt && top -n 1 -b > aren-stamp.txt"
  }

 depends_on = [
    helm_release.redis
  ]
}