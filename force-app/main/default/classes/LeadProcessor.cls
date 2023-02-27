public class LeadProcessor implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        return Database.getQueryLocator('SELECT ID, LeadSource FROM Lead');
    }
    public void execute(Database.BatchableContext bc, List<Lead> scope){
        // process each batch of records
        for (Lead lead : scope) {
            lead.LeadSource = 'Dreamforce';
        }
        update scope;
    }
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }
}