
param locationP string = resourceGroup().location
param PythonP string = 'PYTHON|3.8'

var appServiceNameV = 'Corpo-AppService'

resource appServicePlanR 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: '${appServiceNameV}-plan-${locationP}'
  location: locationP
  sku: {
    name: 'S1'
  }
  kind: 'linux'
  properties:{
    reserved: true //must include this if you want the OS to switch to linux in order to get Python to work.
  }
}

resource appServiceAppR 'Microsoft.Web/sites@2021-03-01' = {
  name: '${appServiceNameV}-App-${locationP}'
  location: locationP
  properties: {
    serverFarmId: appServicePlanR.id
    siteConfig: {
      linuxFxVersion: PythonP
    }
    httpsOnly:true
  }
}

resource appServiceSlotR 'Microsoft.Web/sites/slots@2021-03-01' = {
  parent: appServiceAppR
  name: 'Staging'
  location: locationP
  properties: {
    serverFarmId: appServicePlanR.id
    siteConfig: {
      linuxFxVersion: PythonP
    }
    httpsOnly:true
  }
}

output appServiceAppHostName string = appServiceAppR.properties.defaultHostName
output appServiceStageHostName string = appServiceSlotR.properties.defaultHostName
