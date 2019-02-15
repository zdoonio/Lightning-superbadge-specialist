/**
 * Created by dominik on 14.02.19.
 */
({
	onFormSubmit : function(component, event, helper){
		console.log("event received by BoatSearchController.js");
		var formData = event.getParam("formData");
		var boatTypeId = formData.boatTypeId;
	}

});