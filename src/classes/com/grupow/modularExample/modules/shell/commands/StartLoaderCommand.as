package com.grupow.modularExample.modules.shell.commands 
{
	import com.grupow.modularExample.modules.shell.services.IBulkLoader;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class StartLoaderCommand extends Command 
	{
		[Inject]
		public var service:IBulkLoader;
		
		public function StartLoaderCommand()
		{
			
		}
		
		override public function execute():void 
		{
			service.load();
		}
	}
}
