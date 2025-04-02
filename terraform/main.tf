terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {}

resource "null_resource" "run_ansible_on_change" {
  triggers = {
    file_hash = filesha256("/vagrant/ansible/files/index.html")
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i /vagrant/ansible/conection.ini /vagrant/ansible/website.yml"
  }
}
