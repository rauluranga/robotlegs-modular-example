package com.grupow.modularExample.modules.about.commands 
{
	import com.grupow.modularExample.common.TopLevelContext;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class AboutStartupCommand extends Command 
	{

		[Inject]
		public var topLevel:TopLevelContext;

		public function AboutStartupCommand()
		{
		}

		override public function execute():void 
		{
			trace("AboutStartupCommand.execute");
			trace("topLevel.root: ", topLevel.root);
		}
	}
}
