@IsTest
private class AccountProcessorTest {
    @isTest static void testAccountProcessor() {
        Account acc = new Account(Name = 'Test Account1');
        insert acc;
        Contact con1 = new Contact(LastName = 'Test Contact1', AccountId = acc.Id);
        insert con1;
        Contact con2 = new Contact(LastName = 'Test Contact2', AccountId = acc.Id);
        insert con2;
        List<ID> recordIds = new List<ID>();
        recordIds.add(acc.Id);
        
        Test.startTest();
        	AccountProcessor.countContacts(recordIds);
        Test.stopTest();
        
        List<Account> actual = [SELECT Id, Number_Of_Contacts__c FROM Account WHERE Id IN :recordIds];
        System.assertEquals(2, actual[0].Number_Of_Contacts__c);
    }
}