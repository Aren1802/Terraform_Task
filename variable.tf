variable "repository" {
 description = "Repository URL where to locate the requested chart." 
 type = string
 }

 variable "namespace" {
 description = "The namespace to install the release into." 
 type = string
 }

  variable "chart" {
  description = "Name of chart"
  type = string
      }
