package com.grupow.modularExample.modules.contact 
{
	import com.grupow.modularExample.common.TopLevelContext;
	import com.grupow.display.IView;
	import com.grupow.modularExample.common.IModule;
	import com.grupow.events.ViewEvent;
	import org.robotlegs.utilities.modular.base.ModuleEventDispatcher;
	import org.robotlegs.utilities.modular.mvcs.ModuleContextView;

	/**
	 * @author Raul Uranga
	 */
	public class ContactModule extends ModuleContextView implements IView, IModule
	{
		private var _contactModuleContext:ContactModuleContext;

		public function ContactModule()
		{
			super();
			
			_contactModuleContext = new ContactModuleContext(this);
			context = _contactModuleContext;
			
			/*/
			var topLevelContext:TopLevelContext = new TopLevelContext();
			topLevelContext.root = this.root;
			topLevelContext.stage = this.stage;
			
			_contactModuleContext.setTopLevelContext(topLevelContext);
			 
			setModuleDispatcher(new ModuleEventDispatcher());
            startup();
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
		
		public function setTopLevelContext(value:TopLevelContext):void
		{
			_contactModuleContext.setTopLevelContext(value);
		}
	}
}
