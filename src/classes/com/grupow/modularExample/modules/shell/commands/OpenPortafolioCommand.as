package com.grupow.modularExample.modules.shell.commands 
{
	import com.grupow.modularExample.modules.shell.display.Views;
	import com.grupow.modularExample.modules.shell.models.ShellViewManager;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class OpenPortafolioCommand extends Command 
	{
		[Inject]
		public var model:ShellViewManager;
		
		public function OpenPortafolioCommand()
		{
			
		}

		override public function execute():void 
		{
			model.openView(Views.PORTAFOLIO);
		}
	}
}
