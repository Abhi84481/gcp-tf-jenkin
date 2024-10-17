resource "google_storage_bucket" "my-bucket" {
  name                     = "tt-githubdemo-bucket-001"
  project                  = "prj-adc-gcp-devsecops"
  location                 = "me-central2"
  force_destroy            = true
  public_access_prevention = "enforced"
}
#
resource "google_storage_bucket" "my-bucket2" {
  name                     = "tt-githubdemo-bucket-002"
  project                  = "prj-adc-gcp-devsecops"
  location                 = "me-central2"
  force_destroy            = true
  public_access_prevention = "enforced"
}
#
### dummy
