param locationP string = resourceGroup().location
@allowed([
  'dev'
  'prod'
])
param envType string

var appServicesuffixV = 'corp-appservice'
var appServicePlanSkuNameV = (envType == 'prod') ? 'S1' : 'F1'

resource appServicePlanR 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: '${appServicesuffixV}-plan'
  location: locationP
  sku: {
    name: appServicePlanSkuNameV
  }  
}

resource appServiceAppR 'Microsoft.Web/sites@2021-03-01' = {
  name: '${appServicesuffixV}-${envType}'
  location: locationP
  properties: {
    serverFarmId: appServicePlanR.id
    httpsOnly: true
  }
}
