# Apex-Salesforce
<h3>Creating a series of real-world situation prompts/challenges, to solve with Apex-based programming solutions.</h3>


1) Create an Apex class that updates the Rating of all Account records where the AnnualRevenue is less than or equal to 1,000,000 to 'Cold'. Ensure that the update operation handles up to 100 Account records at a time.
    <br><Strong><em>Solution<em></Strong> - https://github.com/freemacj/Apex-Salesforce/blob/main/AccountRevenueUpdater.apex


2) Write an Apex class that automatically updates the LeadSource field to 'Referral' for all Contact records where the MailingCountry is set to 'USA'. Ensure that the update operation affects all relevant records without hitting Salesforce governor limits.
    <br><Strong><em>Solution<em></Strong> - https://github.com/freemacj/Apex-Salesforce/blob/main/ContactLeadSourceUpdater.apex


3) Write an Apex class that counts the number of Opportunities in two different stages: 'Prospecting' and 'Closed Won'. The class should query the Opportunity object to find and count the number of records for each stage and output the results using System.debug().
    <br><Strong><em>Solution<em></Strong> - https://github.com/freemacj/Apex-Salesforce/blob/main/CountAllOpportunitiesPerStage.apex


4) Write an Apex class that creates a new Contact record with the following fields:

    - FirstName: 'John'
    - LastName: 'Doe'
    - Email: 'john.doe@example.com'
    - Phone: '123-456-7890'

    The class should save the Contact record and return the ID of the created record.
    <br><Strong><em>Solution<em></Strong> -
