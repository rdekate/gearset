({
	doInit : function(component, event, helper) {  
        
        jQuery("document").ready(function(){
          console.log('loaded');
          
      });
        var action = component.get("c.findAll");
        action.setCallback(this, function(a) {
            component.set("v.accounts", a.getReturnValue());
        });
   }    
})