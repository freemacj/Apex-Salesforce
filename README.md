# Apex-Salesforce
Creating a series of real-world situation prompts/challenges, to solve with Apex-based programming solutions. 


1) Create an Apex class that updates the Rating of all Account records where the AnnualRevenue is less than or equal to 1,000,000 to 'Cold'. Ensure that the update operation handles up to 100 Account records at a time.
    Solution - https://github.com/freemacj/Apex-Salesforce/blob/main/AccountRevenueUpdater.apex


2) Write an Apex class that automatically updates the LeadSource field to 'Referral' for all Contact records where the MailingCountry is set to 'USA'. Ensure that the update operation affects all relevant records without hitting Salesforce governor limits.
    Solution - https://github.com/freemacj/Apex-Salesforce/blob/main/ContactLeadSourceUpdater.apex


3) Write an Apex class that counts the number of Opportunities in two different stages: 'Prospecting' and 'Closed Won'. The class should query the Opportunity object to find and count the number of records for each stage and output the results using System.debug().
    Solution - https://github.com/freemacj/Apex-Salesforce/blob/main/CountAllOpportunitiesPerStage.apex