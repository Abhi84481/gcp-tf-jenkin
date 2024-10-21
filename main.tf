terraform { 
  cloud { 
    hostname = "terraform-dev.nawat.me" 
    organization = "ADC" 

    workspaces { 
      name = "pipeline-test" 
    } 
  } 
}

provider "google" {
  project = "prj-adc-gcp-devsecops"
  region  = "me-central2"
  # Workload Identity automatically uses the correct service account from Kubernetes
}

data "google_project" "my_project" {
  project_id = "prj-adc-gcp-devsecops"
}

output "project_name" {
  value = data.google_project.my_project.name
}

output "project_number" {
  value = data.google_project.my_project.number
}

output "project_id" {
  value = data.google_project.my_project.project_id
}
