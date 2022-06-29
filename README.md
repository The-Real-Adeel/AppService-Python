# Deploy Azure App Services using Python Code in Github

**Overview**
We will create the python file here. Create App service with staging slot. Link the staging slot with Github. Swap to see if code shows up in prod. Since I am not a coder, we will copy a simple hello world code as a test. Bonus points if you deploy the Azure resouces via a bicep file

**Steps**

1. GitHub: Create the following for the code to work
   - python file: app.py and place code in.
   - requirements file: requirements.txt and place the flash dependency
    
2. Azure: Create the following for App Service
   - Production: <org>-appservice-prod 
   - appServicePlan: <org>-appservice-plan
   - Staging: <org>-appservice-stage

3. Azure: corpo-appservice-stage > Deployment Center > Link Github repo

4. When ready swap Stage with Prod to commit to production environment
