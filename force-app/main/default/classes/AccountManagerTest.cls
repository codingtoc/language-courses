@IsTest
private class AccountManagerTest {
    @isTest static void testGetCaseById() {
        ID recordId = getTestAccountId();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri = 'https://empathetic-narwhal-4v4yds-dev-ed.trailblaze.lightning.force.com/services/apexrest/Accounts/' + recordId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('TestAcc2', thisAccount.Name);
        System.assertEquals('TestCont2', thisAccount.Contacts[0].Name);
    }
    private static Id getTestAccountId(){
        Account acc = new Account(Name = 'TestAcc2');
        Insert acc;
        Contact con = new Contact(LastName = 'TestCont2', AccountId = acc.Id);
        Insert con;
        return acc.Id;
    }
}