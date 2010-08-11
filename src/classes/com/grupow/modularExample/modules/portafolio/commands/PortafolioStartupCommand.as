package com.grupow.modularExample.modules.portafolio.commands 
{
	import com.grupow.modularExample.common.TopLevelContext;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class PortafolioStartupCommand extends Command 
	{

		[Inject]
		public var topLevel:TopLevelContext;

		public function PortafolioStartupCommand()
		{
		}

		override public function execute():void 
		{
			trace("PortafolioStartupCommand.execute");
			trace("topLevel.root: ", topLevel.root);
		}
	}
}
