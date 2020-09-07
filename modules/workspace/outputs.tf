output "workspace" {
  value = {
    resource_group_name	= azurerm_resource_group.workspace.name
    storage_account     = azurerm_storage_account.storage.name
    key_vault           = azurerm_key_vault.kv.name
    container_registry  = azurerm_container_registry.acr.name
  }
}

output "workspace_service_principal" {
  value =  {
    display_name   = azuread_application.workspace_sp.name
    object_id      = azuread_application.workspace_sp.object_id
    application_id = azuread_application.workspace_sp.application_id
    client_secret  = random_password.workspace_sp.result
  }
}


output "key_vault_reader_service_principal" {
  value =  {
    display_name   = azuread_application.kv_reader_sp.name
    object_id      = azuread_application.kv_reader_sp.object_id
    application_id = azuread_application.kv_reader_sp.application_id
    client_secret  = random_password.kv_reader_sp.result
  }
}
