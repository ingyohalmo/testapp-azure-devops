pid_file = "C:\\Concept Projects\\WFM_Vault_POC\\ProjectApi\\vault-agent\\pidfile"

vault {
  address = "http://127.0.0.1:8200"
}

auto_auth {
  method {
    type = "approle"
    config = {
      role_id_file_path                   = "C:\\Concept Projects\\WFM_Vault_POC\\ProjectApi\\vault-agent\\role-id"
      secret_id_file_path                 = "C:\\Concept Projects\\WFM_Vault_POC\\ProjectApi\\vault-agent\\secret-id"
      remove_secret_id_file_after_reading = false
    }
  }

  sink {
    type = "file"

    config = {
      path = "C:\\Concept Projects\\WFM_Vault_POC\\ProjectApi\\vault-agent\\token"
    }
  }
}

template {
  source      = "C:\\Concept Projects\\WFM_Vault_POC\\ProjectApi\\vault-agent\\appsettings.ctmpl"
  destination = "C:\\Concept Projects\\WFM_Vault_POC\\ProjectApi\\appsettings.json"
}
