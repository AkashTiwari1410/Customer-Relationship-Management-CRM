# Important Setup Note

This ZIP contains the GitHub-ready Salesforce DX project structure and the Apex/LWC source code.

The exact metadata for Custom Objects, Fields, Validation Rules, Flows, Reports, and Dashboards should be created/retrieved from the target Salesforce org before final deployment. Salesforce-generated metadata can vary by org and API version.

Recommended workflow:
1. Create/configure metadata in Salesforce.
2. Retrieve source using Salesforce CLI.
3. Run Apex tests.
4. Deploy/validate.
5. Commit the retrieved metadata to GitHub.
