package com.grupow.modularExample.modules.contact.commands 
{
	import com.grupow.modularExample.modules.contact.events.ContactEvent;
	import com.grupow.modularExample.modules.shell.events.ShellEvent;

	import org.robotlegs.utilities.modular.core.IModuleEventDispatcher;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class ContactViewRequestCommand extends Command 
	{
		[Inject]
		public var event:ContactEvent;
		
		[Inject]
		public var moduleDispatcher:IModuleEventDispatcher;
		
		public function ContactViewRequestCommand()
		{
		}

		override public function execute():void 
		{
			if(event.type == ContactEvent.ABOUT_REQUEST) {
				moduleDispatcher.dispatchEvent(new ShellEvent(ShellEvent.SHOW_ABOUT_REQUEST));
			} else 			
			if (event.type == ContactEvent.PORTAFOLIO_REQUEST) {
				moduleDispatcher.dispatchEvent(new ShellEvent(ShellEvent.SHOW_PORTAFOLIO_REQUEST));
			}
			
		}
	}
}
