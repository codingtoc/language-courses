public class AccountProcessor {
    @future
    public static void countContacts(List<ID> recordIds) {
        List<Account> accounts = [SELECT Id, Name, Number_Of_Contacts__c, (SELECT Id, Name FROM Contacts) FROM Account WHERE Id IN :recordIds];
        for(Account acc : accounts) {
            acc.Number_Of_Contacts__c = acc.Contacts.size();
        }
        update accounts;
    }
}