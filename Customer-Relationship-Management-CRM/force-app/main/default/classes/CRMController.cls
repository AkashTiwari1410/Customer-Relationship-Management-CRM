public with sharing class CRMController {
    @AuraEnabled(cacheable=true)
    public static List<Customer__c> getCustomers() {
        return [
            SELECT Id,
                   Name,
                   Customer_Name__c,
                   Email__c,
                   Phone__c,
                   Company__c,
                   Status__c,
                   Customer_Type__c
            FROM Customer__c
            ORDER BY CreatedDate DESC
            LIMIT 50
        ];
    }

    @AuraEnabled(cacheable=true)
    public static Integer getCustomerCount() {
        return [SELECT COUNT() FROM Customer__c];
    }
}
