package com.grupow.modularExample.modules.about 
{
	import com.grupow.modularExample.modules.about.commands.AboutViewRequestCommand;
	import com.grupow.modularExample.modules.about.events.AboutEvent;
	import com.grupow.modularExample.modules.about.mediators.*;
	import com.grupow.modularExample.modules.about.views.*;

	import org.robotlegs.utilities.modular.mvcs.ModuleContext;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author Raul Uranga
	 */
	public class AboutModuleContext extends ModuleContext 
	{
		public function AboutModuleContext(contextView:DisplayObjectContainer = null)
		{
			super(contextView);
		}
		
		override public function startup():void 
		{
			commandMap.mapEvent(AboutEvent.CONTACT_REQUEST, AboutViewRequestCommand, AboutEvent);			commandMap.mapEvent(AboutEvent.PORTAFOLIO_REQUEST, AboutViewRequestCommand, AboutEvent);
			
			mediatorMap.mapView(AboutView, AboutViewMediator);
			mediatorMap.mapView(AboutModule, AboutModuleMediator);
			
			var view:AboutView = new AboutView();
			view.x = 50;
			view.y = 198;
			
			contextView.addChild(view);
			
			super.startup();
		}
	}
}
