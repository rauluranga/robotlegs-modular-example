package com.grupow.modularExample.modules.shell.commands 
{
	import com.grupow.modularExample.modules.shell.display.Views;
	import com.grupow.modularExample.modules.shell.models.ShellViewManager;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class SetUpModulesCompleteCommand extends Command 
	{
		[Inject]
		public var manager:ShellViewManager;

		public function SetUpModulesCompleteCommand()
		{
			
		}

		override public function execute():void 
		{
			manager.openView(Views.ABOUT);
		}
	}
}
