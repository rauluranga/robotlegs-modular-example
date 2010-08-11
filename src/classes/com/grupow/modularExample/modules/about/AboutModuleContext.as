package com.grupow.modularExample.modules.about 
{
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
			mediatorMap.mapView(AboutView, AboutViewMediator);
			mediatorMap.mapView(AboutModule, AboutModuleMediator);
			
			contextView.addChild(new AboutView());
			
			super.startup();
		}
	}
}
