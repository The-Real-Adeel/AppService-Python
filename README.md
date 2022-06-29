# Deploy Azure App Services using Python Code in Github

**Overview**
We will create the python file here. Create App service with staging slot. Link the staging slot with Github. Swap to see if code shows up in prod.

**Steps**

1. GitHub: Create a python file: app.py and place code in.

2. Azure: Create the following for App Service
   - Production: corpo-appservice-prod 
   - appServicePlan: corpo-appservice-plan
   - Staging: corpo-appservice-stage

3. Azure: corpo-appservice-stage > Deployment Center > Link Github repo

4. When ready swap Stage with Prod to commit to production environment
