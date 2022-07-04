param locationP string = resourceGroup().location

@secure()
param adminUsernameP string
@secure()
param adminPasswordP string

resource sqlServerR 'Microsoft.Sql/servers@2021-11-01-preview' = {
  name: 'corpDBServer'
  location: locationP
  properties: {
    administratorLogin: adminUsernameP
    administratorLoginPassword: adminPasswordP
  }
}

resource sqlDatabaseR 'Microsoft.Sql/servers/databases@2021-11-01-preview' = {
  parent: sqlServerR
  name: 'corpoDatabase'
  location: locationP
  sku: {
    name: 'Free'
    tier: 'Free'
  }
}
