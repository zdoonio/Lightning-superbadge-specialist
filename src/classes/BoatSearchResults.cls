/**
 * Created by dominik on 12.02.19.
 */
public with sharing class BoatSearchResults {

    @AuraEnabled
    public static List<Boat__c> getBoats(String boatTypeId) {
        if (String.isEmpty(boatTypeId)) {
            return [select Id,Name,Picture__c,Contact__r.name from Boat__c];
        } else{
            return [select Id,Name,Picture__c,Contact__r.name from Boat__c where BoatType__c = :boatTypeId ];
        }

    }
}