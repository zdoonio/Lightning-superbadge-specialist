/**
 * Created by dominik on 12.02.19.
 */
({
	//UrFunctionName is your AuraEnabled method in your controller,
	doInit : function(component, event) {
		var boatSearch = component.get("c.search");
		boatSearch.setCallback(this, function(response){
			var state = response.getState();
			if (state === "SUCCESS") {
				component.set("v.resultAttributeName", response.getReturnValue());
			}
		});
		$A.enqueueAction(boatSearch);
	},
	doSearch : function(component, event, helper) {
		component.get("v.boatTypeId");
		helper.onSearch(component, event, helper);
	},
	search: function (component, event, helper) {
		var params = event.getParam('arguments');
		alert(params.boatTypeId);
		alert(component.set("v.boatTypeId", params.boatTypeId));
		var a = component.get('c.doSearch');
		$A.enqueueAction(a);
	},
	onBoatSelect: function(component, event, helper){
		debugger
		var boatId = event.getParam("boatId");
		component.set("v.selectedBoatId", boatId);

	}
});