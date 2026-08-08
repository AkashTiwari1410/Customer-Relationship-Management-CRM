# CRM Data Model

## Customer__c
Suggested fields:
- Customer_Name__c — Text
- Email__c — Email
- Phone__c — Phone
- Company__c — Text
- Status__c — Picklist: New, Active, Inactive
- Customer_Type__c — Picklist: Individual, Business

## Lead__c
Suggested fields:
- Lead_Name__c — Text
- Email__c — Email
- Phone__c — Phone
- Company__c — Text
- Lead_Source__c — Picklist: Website, Facebook, LinkedIn, Referral, Advertisement, Other
- Status__c — Picklist: New, Contacted, Qualified, Converted, Lost

## Follow_Up__c
Suggested fields:
- Follow_Up_Date__c — Date
- Subject__c — Text
- Status__c — Picklist: Pending, Completed, Cancelled
- Notes__c — Long Text Area
- Customer__c — Lookup(Customer__c)

One Customer can have many Follow-Up records.
