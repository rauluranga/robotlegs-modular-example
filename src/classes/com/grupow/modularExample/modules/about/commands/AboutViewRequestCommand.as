package com.grupow.modularExample.modules.about.commands 
{
	import com.grupow.modularExample.modules.about.events.AboutEvent;
	import com.grupow.modularExample.modules.shell.events.ShellEvent;

	import org.robotlegs.utilities.modular.core.IModuleEventDispatcher;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class AboutViewRequestCommand extends Command 
	{
		[Inject]
		public var event:AboutEvent;
		
		[Inject]
		public var moduleDispatcher:IModuleEventDispatcher;
		
		public function AboutViewRequestCommand()
		{
			
		}

		override public function execute():void 
		{
			if(event.type == AboutEvent.CONTACT_REQUEST) {
				moduleDispatcher.dispatchEvent(new ShellEvent(ShellEvent.SHOW_CONTACT_REQUEST));
			} else 			
			if (event.type == AboutEvent.PORTAFOLIO_REQUEST) {				moduleDispatcher.dispatchEvent(new ShellEvent(ShellEvent.SHOW_PORTAFOLIO_REQUEST));
			}
			
		}
	}
}
