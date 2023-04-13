param namePrefix string
param sku string = 'B1'
param p_location string

resource appPlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: '${namePrefix}appPlan'
  location: p_location
  kind: 'linux'
  sku:{
    name: sku
  }
  properties: {
    reserved: true
  }
}

output planId string = appPlan.id
