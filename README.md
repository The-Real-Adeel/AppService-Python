# Deploy Azure App Services using Python Code in Github

**Overview**
We will create the python file here. Create App service with staging slot. Link the staging slot with Github. Swap to see if code shows up in prod. Since I am not a coder, we will copy a simple hello world code as a test. Bonus points if you deploy the Azure resouces via a bicep file

**Creation Steps**

1. GitHub: Create the following for the code to work
   - python file: app.py and place code in.
   - requirements file: requirements.txt and place the flash dependency for the code to run
    
2. Azure: Create the following for App Service
   - Production: orgName-appServiceName 
   - appServicePlan: orgName-appservice-plan
   - Staging: orgName-appServiceName-stage

3. Azure: orgName-appServiceName-stage > Deployment Center > Link Github repo. This will push the code to Azure

4. Browser: test link generated for your org from the production slot. and then test link generated from your stage slot. It should be different because we have only pushed to staging slot 
   - Production site should be the default AppService
   - Staging site should run using the code we entered in python

5. When ready swap Stage with Prod to commit to production environment. Test again to see production has the code!
