# Flow Configuration

## CRM_Auto_Set_Customer_Status
Record-triggered Flow:
- Object: Customer__c
- Trigger: record created
- Condition: Status__c is blank
- Fast Field Updates
- Assignment: $Record.Status__c = 'New'

## CRM_Daily_Follow_Up_Reminder
Scheduled Flow:
- Object: Follow_Up__c
- Filter: Status__c = Pending
- Filter: Follow_Up_Date__c = current date
- Create Task reminder

After configuring in Salesforce, retrieve the generated Flow metadata into:
force-app/main/default/flows/
