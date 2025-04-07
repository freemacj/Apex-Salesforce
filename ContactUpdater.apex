public class ContactUpdater {

    public static void exampleContactUpdater() {
        
        // Query Accounts to get the Id for 'Edge Communications'
        Account edgeCommunications = [SELECT Id FROM Account WHERE Name = 'Edge Communications' LIMIT 1];
        
        // Query Contact records where Email is "john.doe@example.com", including Account.Name
        List<Contact> listOfContactRecords = [SELECT Id, Name, Email, Phone, AccountId, Account.Name FROM Contact WHERE Email = 'john.doe@example.com'];
        
        // Loop through the retrieved contacts and assign the new AccountId
        for(Contact contactRecord : listOfContactRecords) {
            contactRecord.AccountId = edgeCommunications.Id;
        }
        
        // Perform the update operation
        update listOfContactRecords;
        
        // Re-query the contacts to get the updated Account.Name field
        listOfContactRecords = [SELECT Id, Name, Email, Phone, AccountId, Account.Name FROM Contact WHERE Email = 'john.doe@example.com'];
        
        // Log the information for each updated contact, directly pulling Account Name from the Contact record
        for (Contact updatedContact : listOfContactRecords) {
            System.debug('The contact ' + updatedContact.Name + ' has been assigned to account ' + updatedContact.Account.Name);
        }
    }
}

// Execute in Anonymous Window:
// ContactUpdater.exampleContactUpdater();