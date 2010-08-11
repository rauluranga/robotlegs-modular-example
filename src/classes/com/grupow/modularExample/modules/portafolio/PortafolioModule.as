package com.grupow.modularExample.modules.portafolio 
{
	import com.grupow.display.IView;
	import com.grupow.modularExample.common.IModule;
	import com.grupow.events.ViewEvent;
	import org.robotlegs.utilities.modular.base.ModuleEventDispatcher;
	import org.robotlegs.utilities.modular.mvcs.ModuleContextView;

	/**
	 * @author Raul Uranga
	 */
	public class PortafolioModule extends ModuleContextView implements IView, IModule
	{
		private var _portafolioModuleContext:PortafolioModuleContext;

		public function PortafolioModule()
		{
			super();
			
			_portafolioModuleContext = new PortafolioModuleContext(this);
			context = _portafolioModuleContext;
			
			/*/
			context.setModuleDispatcher(new ModuleEventDispatcher());
            context.startup();
            open();
			//*/
		}

		public function open():void
		{
			context.dispatchEvent(new ViewEvent(ViewEvent.OPEN));
		}
		
		public function close():void
		{
			context.dispatchEvent(new ViewEvent(ViewEvent.CLOSE));
		}
	}
}
