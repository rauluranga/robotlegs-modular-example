package com.grupow.modularExample.modules.contact 
{
	import com.grupow.modularExample.modules.contact.commands.ContactStartupCommand;
	import com.grupow.modularExample.common.TopLevelContext;
	import com.grupow.modularExample.modules.contact.commands.ContactViewRequestCommand;
	import com.grupow.modularExample.modules.contact.events.ContactEvent;
	import com.grupow.modularExample.modules.contact.mediators.*;
	import com.grupow.modularExample.modules.contact.views.*;
	import org.robotlegs.utilities.modular.mvcs.ModuleContext;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author Raul Uranga
	 */
	public class ContactModuleContext extends ModuleContext 
	{
		public function ContactModuleContext(contextView:DisplayObjectContainer = null)
		{
			super(contextView);
		}
		
		override public function startup():void 
		{
			commandMap.mapEvent(ContactEvent.STARTUP, ContactStartupCommand, ContactEvent);
			
			commandMap.mapEvent(ContactEvent.ABOUT_REQUEST, ContactViewRequestCommand, ContactEvent);
			commandMap.mapEvent(ContactEvent.PORTAFOLIO_REQUEST, ContactViewRequestCommand, ContactEvent);
			
			mediatorMap.mapView(ContactView, ContactViewMediator);
			mediatorMap.mapView(ContactModule, ContactModuleMediator);
			
			var view:ContactView = new ContactView();
			view.x = 50;			view.y = 198;
			
			contextView.addChild(view);
			
			super.startup();
			
			dispatchEvent(new ContactEvent(ContactEvent.STARTUP));
		}

		public function setTopLevelContext(value:TopLevelContext):void 
		{
			injector.mapValue(TopLevelContext, value);
		}
	}
}
