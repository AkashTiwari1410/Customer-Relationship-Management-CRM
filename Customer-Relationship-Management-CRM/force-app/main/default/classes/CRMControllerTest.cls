@IsTest
private class CRMControllerTest {
    @TestSetup
    static void setupData() {
        insert new Customer__c(
            Customer_Name__c = 'Test Customer',
            Email__c = 'test@example.com',
            Phone__c = '9876543210',
            Company__c = 'Test Company',
            Customer_Type__c = 'Business'
        );
    }

    @IsTest
    static void testTriggerSetsStatus() {
        Customer__c customer = [
            SELECT Status__c FROM Customer__c LIMIT 1
        ];
        System.assertEquals('New', customer.Status__c);
    }

    @IsTest
    static void testGetCustomers() {
        Test.startTest();
        List<Customer__c> customers = CRMController.getCustomers();
        Test.stopTest();

        System.assertEquals(1, customers.size());
    }

    @IsTest
    static void testCustomerCount() {
        Test.startTest();
        Integer count = CRMController.getCustomerCount();
        Test.stopTest();

        System.assertEquals(1, count);
    }
}
