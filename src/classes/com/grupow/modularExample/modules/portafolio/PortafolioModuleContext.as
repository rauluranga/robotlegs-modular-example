package com.grupow.modularExample.modules.portafolio 
{
	import com.grupow.modularExample.modules.portafolio.commands.PortafolioStartupCommand;
	import com.grupow.modularExample.common.TopLevelContext;
	import com.grupow.modularExample.modules.portafolio.commands.PortafolioViewRequestCommand;
	import com.grupow.modularExample.modules.portafolio.events.PortafolioEvent;
	import com.grupow.modularExample.modules.portafolio.mediators.*;
	import com.grupow.modularExample.modules.portafolio.views.*;

	import org.robotlegs.utilities.modular.mvcs.ModuleContext;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author Raul Uranga
	 */
	public class PortafolioModuleContext extends ModuleContext 
	{
		public function PortafolioModuleContext(contextView:DisplayObjectContainer = null)
		{
			super(contextView);
		}
		
		override public function startup():void 
		{
			commandMap.mapEvent(PortafolioEvent.STARTUP, PortafolioStartupCommand, PortafolioEvent);
			
			commandMap.mapEvent(PortafolioEvent.CONTACT_REQUEST, PortafolioViewRequestCommand, PortafolioEvent);
			commandMap.mapEvent(PortafolioEvent.ABOUT_REQUEST, PortafolioViewRequestCommand, PortafolioEvent);
			
			mediatorMap.mapView(PortafolioView, PortafolioViewMediator);
			mediatorMap.mapView(PortafolioModule, PortafolioModuleMediator);
			
			var view:PortafolioView = new PortafolioView();
			view.x = 50;
			view.y = 198;
			
			contextView.addChild(view);
			
			super.startup();
			
			dispatchEvent(new PortafolioEvent(PortafolioEvent.STARTUP));
		}

		public function setTopLevelContext(value:TopLevelContext):void 
		{
			injector.mapValue(TopLevelContext, value);
		}
	}
}
