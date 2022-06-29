# Project to automate the deployment of AppService

We will use branches to create different aspects of this automation just to keep everything organized within this repo for the whole automation test. The following the different kinds of branches we will use. I may create new versions as I go along but I wont overwrite the ones that existed to allow myself to have a backlog

1. **Python-AppService-Github-V1** branch contains the python code that will be pushed to Azure App Services using deployment center. This is Version 1 that will keep it simple. We will expand to more sophisicated things

2. **Bicep-AppService** branch will contain bicep code that will be used to create the app services without manaul work. We just point an RG group and let it fire itself up!
