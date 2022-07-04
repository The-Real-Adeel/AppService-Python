param locationP string = resourceGroup().location

@secure()
param sqlAdminLogin string

@secure()
param sqlAdminPass string

resource sqlServerR 'Microsoft.Sql/servers@2021-11-01-preview' = {
  name: 'corpDBServer'
  location: locationP
  properties: {
    administratorLogin: sqlAdminLogin
    administratorLoginPassword: sqlAdminPass
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
