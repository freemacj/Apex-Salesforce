# Apex-Salesforce
<h3>Creating a series of real-world situation prompts/challenges, to solve with Apex-based programming solutions.</h3>

<h3> - Apex Classes - </h3>

1) Create an Apex class that updates the Rating of all Account records where the AnnualRevenue is less than or equal to 1,000,000 to 'Cold'. Ensure that the update operation handles up to 100 Account records at a time.
    <br>**_Solution_** - [AccountRevenueUpdater.apex](https://github.com/freemacj/Apex-Salesforce/blob/main/AccountRevenueUpdater.apex)


2) Write an Apex class that automatically updates the LeadSource field to 'Referral' for all Contact records where the MailingCountry is set to 'USA'. Ensure that the update operation affects all relevant records without hitting Salesforce governor limits.
    <br>**_Solution_** - [ContactLeadSourceUpdater.apex](https://github.com/freemacj/Apex-Salesforce/blob/main/AccountRevenueUpdater.apex)

3) Write an Apex class that counts the number of Opportunities in two different stages: 'Prospecting' and 'Closed Won'. The class should query the Opportunity object to find and count the number of records for each stage and output the results using System.debug().
    <br>**_Solution_** - [CountAllOpportunitiesPerStage.apex](https://github.com/freemacj/Apex-Salesforce/blob/main/CountAllOpportunitiesPerStage.apex)



4) Write an Apex class that creates a new Contact record with the following fields:

    - FirstName: 'John'
    - LastName: 'Doe'
    - Email: 'john.doe@example.com'
    - Phone: '123-456-7890'

    The class should save the Contact record and return the ID of the created record.
    <br>**_Solution_** - [ContactCreator.Apex](https://github.com/freemacj/Apex-Salesforce/blob/main/ContactCreator.Apex)

5) After prompt #4, we will add our newly created contact "John Doe" to the parent Sandbox Account titled "United Oil & Gas Corp."
    <br>**_Solution_** - [ContactUpdater.apex](https://github.com/freemacj/Apex-Salesforce/blob/main/ContactUpdater.apex)

6) Write an Apex class which creates two new opportunity records and associates them with the Sandbox Account titled "United Oil & Gas Corp."
    <br><Strong><em>Solution<em></Strong> - 

<h3> - Apex Triggers - </h3>
1) Whenever a new Account is created, create a dummy contact under the account and the dummy contact will have the name ‘Dummy’+ Account Name.
    <br><Strong><em>Solution<em></Strong> -
