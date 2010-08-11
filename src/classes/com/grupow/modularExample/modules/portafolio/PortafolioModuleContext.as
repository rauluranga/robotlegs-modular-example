package com.grupow.modularExample.modules.portafolio 
{
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
			mediatorMap.mapView(PortafolioView, PortafolioViewMediator);
			mediatorMap.mapView(PortafolioModule, PortafolioModuleMediator);
			
			contextView.addChild(new PortafolioView());
			
			super.startup();
		}
	}
}
