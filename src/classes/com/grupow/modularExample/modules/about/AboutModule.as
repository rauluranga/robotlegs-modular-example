package com.grupow.modularExample.modules.about 
{
	import com.grupow.modularExample.common.IModule;
	import com.grupow.events.ViewEvent;
	import org.robotlegs.utilities.modular.base.ModuleEventDispatcher;
	import org.robotlegs.utilities.modular.mvcs.ModuleContextView;

	/**
	 * @author Raul Uranga
	 */
	public class AboutModule extends ModuleContextView implements IModule
	{
		private var _aboutModuleContext:AboutModuleContext;

		public function AboutModule()
		{
			super();
			
			_aboutModuleContext = new AboutModuleContext(this);
			context = _aboutModuleContext;
			
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
