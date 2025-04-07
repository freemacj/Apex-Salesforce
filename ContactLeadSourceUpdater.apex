public class ContactLeadSourceUpdater {

    public static void exampleContactLeadSourceUpdater() {
        
        // Query the Contact records where MailingCountry is 'USA'
        List<Contact> listOfContactRecords = [SELECT Name, MailingCountry, LeadSource FROM Contact WHERE MailingCountry = 'USA'];
        
        // Loop through the retrieved contacts
        for(Contact contactRecord : listOfContactRecords) {
            // Set the LeadSource to 'Referral'
            contactRecord.LeadSource = 'Referral';

        }
			// Perform the update operation
        	update listOfContactRecords; 
    }
}
// Execute in Anonymous Window:
// ContactLeadSourceUpdater.exampleContactLeadSourceUpdater();