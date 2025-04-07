public class ContactCreator {

    public static void createNewContact() {
        // Create a new Contact record with specified fields
        Contact newContact = new Contact(
            FirstName = 'John',
            LastName = 'Doe',
            Email = 'john.doe@example.com',
            Phone = '(123) 456-7890'
        );
        
        // Insert the new Contact record into the database
        insert newContact;
        
        // Log the ID of the created Contact to the debug log
        System.debug('The Id of the newly created contact is: ' + newContact.Id);
    }
}

// Execute in Anonymous Window:
// ContactCreator.createNewContact();