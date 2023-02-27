module "redis" {
  source  = "./modules/redis"
 
   repository = var.repository
   namespace   = var.namespace
   chart      = var.chart
}

