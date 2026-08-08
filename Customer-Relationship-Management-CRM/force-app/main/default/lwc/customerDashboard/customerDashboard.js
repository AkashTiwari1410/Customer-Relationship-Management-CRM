import { LightningElement, wire } from 'lwc';
import getCustomers from '@salesforce/apex/CRMController.getCustomers';
import getCustomerCount from '@salesforce/apex/CRMController.getCustomerCount';

const COLUMNS = [
    { label: 'Customer', fieldName: 'Customer_Name__c' },
    { label: 'Company', fieldName: 'Company__c' },
    { label: 'Email', fieldName: 'Email__c', type: 'email' },
    { label: 'Phone', fieldName: 'Phone__c', type: 'phone' },
    { label: 'Status', fieldName: 'Status__c' },
    { label: 'Customer Type', fieldName: 'Customer_Type__c' }
];

export default class CustomerDashboard extends LightningElement {
    customers = [];
    customerCount = 0;
    error;
    columns = COLUMNS;

    @wire(getCustomers)
    wiredCustomers({ data, error }) {
        if (data) {
            this.customers = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.customers = [];
        }
    }

    @wire(getCustomerCount)
    wiredCustomerCount({ data, error }) {
        if (data !== undefined) {
            this.customerCount = data;
        } else if (error) {
            this.error = error;
            this.customerCount = 0;
        }
    }
}
