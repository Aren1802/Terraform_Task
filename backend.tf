terraform {
  cloud {
    organization = "successive-aren"
    workspaces {
      name = "tf-first"
    }
  }
}