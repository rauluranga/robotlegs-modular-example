package com.grupow.modularExample.modules.contact 
{
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
			mediatorMap.mapView(ContactView, ContactViewMediator);
			mediatorMap.mapView(ContactModule, ContactModuleMediator);
			
			contextView.addChild(new ContactView());
			
			super.startup();
		}
	}
}
