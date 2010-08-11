package com.grupow.modularExample.modules.portafolio.commands 
{
	import com.grupow.modularExample.modules.portafolio.events.PortafolioEvent;
	import com.grupow.modularExample.modules.shell.events.ShellEvent;

	import org.robotlegs.utilities.modular.core.IModuleEventDispatcher;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class PortafolioViewRequestCommand extends Command 
	{
		[Inject]
		public var event:PortafolioEvent;
		
		[Inject]
		public var moduleDispatcher:IModuleEventDispatcher;
		
		public function PortafolioViewRequestCommand()
		{
		}

		override public function execute():void 
		{
			if(event.type == PortafolioEvent.ABOUT_REQUEST) {
				moduleDispatcher.dispatchEvent(new ShellEvent(ShellEvent.SHOW_ABOUT_REQUEST));
			} else 			
			if (event.type == PortafolioEvent.CONTACT_REQUEST) {
				moduleDispatcher.dispatchEvent(new ShellEvent(ShellEvent.SHOW_CONTACT_REQUEST));
			}
			
		}
	}
}
