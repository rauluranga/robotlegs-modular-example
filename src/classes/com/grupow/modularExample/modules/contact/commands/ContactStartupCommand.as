package com.grupow.modularExample.modules.contact.commands 
{
	import com.grupow.modularExample.common.TopLevelContext;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class ContactStartupCommand extends Command 
	{

		[Inject]
		public var topLevel:TopLevelContext;

		public function ContactStartupCommand()
		{
		}

		override public function execute():void 
		{
			trace("ContactStartupCommand.execute");
			trace("topLevel.root: ", topLevel.root);
		}
	}
}
