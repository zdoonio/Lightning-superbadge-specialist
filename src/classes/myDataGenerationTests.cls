/**
 * Created by dominik on 18.02.19.
 */

@isTest
private class myDataGenerationTests {

    @TestSetup
    static void loadTestDataFromStaticResource(){
        List<SObject> accounts = Test.loadData(Account.SObjectType, 'Mock_Data');
    }

    testMethod private static void testGenerate() {
        List<Account> accounts = [SELECT Id FROM Account];
        System.assert(accounts.size() == 15, 'expected 15 accounts');
    }
}