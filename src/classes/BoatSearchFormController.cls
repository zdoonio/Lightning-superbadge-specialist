/**
 * Created by dominik on 11.02.19.
 */

public with sharing class BoatSearchFormController
{
    @AuraEnabled
    public static List<BoatType__c> getBoatTypes()
    {
        return [SELECT Id, Name from BoatType__c ORDER BY Name];
    }

}