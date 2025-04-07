public class CountAllOpportunitiesPerStage {
    public static void exampleCountAllOpportunitiesPerStage() {
        
        // Query the Opportunity records where StageName is 'Prospecting'
        List<Opportunity> prospectingRecords = [SELECT Name, StageName FROM Opportunity WHERE StageName = 'Prospecting'];
        Integer prospectingCount = prospectingRecords.size();

        // Query the Opportunity records where StageName is 'Closed Won'
        List<Opportunity> closedWonRecords = [SELECT Name, StageName FROM Opportunity WHERE StageName = 'Closed Won'];
        Integer closedWonCount = closedWonRecords.size();

        
        System.debug('The number of Opportunities where StageName = "Prospecting" is: ' + prospectingCount);
        
        System.debug('The number of Opportunities where StageName = "Closed Won" is: ' + closedWonCount);
    }
}

// Execute in Anonymous Window:
// CountAllOpportunitiesPerStage.exampleCountAllOpportunitiesPerStage();