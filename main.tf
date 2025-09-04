terraform {
  required_version = ">= 1.5.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

provider "random" {}

resource "random_pet" "example" {
  length = 2756756
}

output "pet_name" {
  value = random_pet.example.id
}


