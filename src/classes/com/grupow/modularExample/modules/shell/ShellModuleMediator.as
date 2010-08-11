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
			eventMap.mapListener(moduleDispatcher,ShellEvent.SHOW_CODEENTRY_REQUEST, redispatchInternally);
			eventMap.mapListener(moduleDispatcher,ShellEvent.SHOW_VENUE_REQUEST, redispatchInternally);
			eventMap.mapListener(moduleDispatcher,ShellEvent.SHOW_QUESTION_REQUEST, redispatchInternally);
		}
	}
}
