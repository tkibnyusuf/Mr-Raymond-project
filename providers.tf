terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.35.0"
    }
  }
}

# The default provider configuration; resources that begin with `aws_` will use
provider "aws" {
  shared_config_files      = ["/Users/austi/.aws/config"]
  shared_credentials_files = ["/Users/austi/.aws/credentials"]
  region                   = "us-east-1"
  profile                  = "terraform-user"
  alias                    = "east"
}

# Additional provider configuration for west coast region; resources can
provider "aws" {
  shared_config_files      = ["/Users/austi/.aws/config"]
  shared_credentials_files = ["/Users/austi/.aws/credentials"]
  alias                    = "west"
  region                   = "us-west-1"
  profile                  = "terraform-user"
}
