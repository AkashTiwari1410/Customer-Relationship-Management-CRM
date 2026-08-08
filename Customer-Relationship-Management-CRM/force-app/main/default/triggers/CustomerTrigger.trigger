trigger CustomerTrigger on Customer__c (before insert) {
    for (Customer__c customer : Trigger.new) {
        if (String.isBlank(customer.Status__c)) {
            customer.Status__c = 'New';
        }
    }
}
