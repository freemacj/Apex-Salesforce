public class AccountRevenueUpdater {

    public static void exampleAnnualRevenue() {
        
        // Query the Account records where AnnualRevenue is less than or equal to 1,000,000
        List<Account> listOfAccountRecords = [SELECT Id, Name, AnnualRevenue, Rating FROM Account WHERE AnnualRevenue <= 1000000 LIMIT 100];
        
        // Loop through the retrieved accounts
        for(Account accountRecord : listOfAccountRecords) {
            // Set the Rating to 'Cold'
            accountRecord.Rating = 'Cold';
            
        }
			// Perform the update operation
        	update listOfAccountRecords; 
    }
}
// Execute in Anonymous Window:
// AccountRevenueUpdater.exampleAnnualRevenue();