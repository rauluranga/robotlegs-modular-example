package com.grupow.modularExample.modules.shell 
{
	import com.grupow.modularExample.modules.shell.events.ShellEvent;

	import org.robotlegs.utilities.modular.mvcs.ModuleMediator;

	/**
	 * @author Raul Uranga
	 */
	public class ShellModuleMediator extends ModuleMediator 
	{
		[Inject]
        public var view:ShellModule;
		
		public function ShellModuleMediator()
		{
			
		}

		override public function onRegister():void 
		{
			eventMap.mapListener(moduleDispatcher,ShellEvent.SHOW_ABOUT_REQUEST, redispatchInternally);
			eventMap.mapListener(moduleDispatcher,ShellEvent.SHOW_PORTAFOLIO_REQUEST, redispatchInternally);
			eventMap.mapListener(moduleDispatcher,ShellEvent.SHOW_CONTACT_REQUEST, redispatchInternally);
		}
	}
}
