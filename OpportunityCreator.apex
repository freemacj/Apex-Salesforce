public class OpportunityCreator {

    public static void createNewOpportunity() {
        // Query the Account record by name
        Account account = [SELECT Id FROM Account WHERE Name = 'United Oil & Gas Corp.' LIMIT 1];

        // Create new Opportunity records with specified fields
        Opportunity newOpportunity1 = new Opportunity(
            Name = 'Electrical Installation',
            StageName = 'Prospecting',
            CloseDate = Date.newInstance(2025, 6, 7),
            AccountId = account.Id,
            Amount = 100000
        );
        Opportunity newOpportunity2 = new Opportunity(
            Name = 'Operations Support',
            StageName = 'Prospecting',
            CloseDate = Date.newInstance(2025, 10, 29),
            AccountId = account.Id,
            Amount = 150000
        );
        
        try {
            // Insert the new Opportunity records into the database
            insert newOpportunity1;
            insert newOpportunity2;
            
            // Log the IDs of the newly created Opportunities
            System.debug('The Id of the newly created Opportunity is: ' + newOpportunity1.Id);
            System.debug('The Id of the newly created Opportunity is: ' + newOpportunity2.Id);
        } catch (DmlException e) {
            System.debug('Error occurred while inserting Opportunity records: ' + e.getMessage());
        }
    }
}
// Execute in Anonymous Window:
// OpportunityCreator.createNewOpportunity();