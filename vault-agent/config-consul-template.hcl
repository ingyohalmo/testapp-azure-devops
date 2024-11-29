vault {
  address = "http://127.0.0.1:8200"

  vault_agent_token_file = "C:\\Concept Projects\\WFM_Vault_POC\\ProjectApi\\vault-agent\\token"

  unwrap_token = false
  renew_token = true
}

exec {
  command = ["dotnet", "run"]
  splay = "10s"
  kill_signal = "SIGTERM"
  kill_timeout = "15s"
}

template {
  source      = "C:\\Concept Projects\\WFM_Vault_POC\\ProjectApi\\vault-agent\\appsettings.ctmpl"
  destination = "C:\\Concept Projects\\WFM_Vault_POC\\ProjectApi\\appsettings.json"
}
