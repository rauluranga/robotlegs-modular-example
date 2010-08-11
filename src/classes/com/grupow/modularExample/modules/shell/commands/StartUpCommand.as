package com.grupow.modularExample.modules.shell.commands 
{
	import com.grupow.modularExample.modules.shell.models.ShellViewManager;
	import com.grupow.modularExample.modules.shell.display.Views;
	import com.grupow.modularExample.modules.shell.views.LoaderView;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class StartUpCommand extends Command 
	{
		[Inject]
		public var manager:ShellViewManager;
		
		public function StartUpCommand()
		{
			
		}

		override public function execute():void 
		{
			var loader:LoaderView = new LoaderView();
			loader.x = -4;
			loader.y = 176;
			
			manager.addView(loader, Views.LOADER);
			manager.openView(Views.LOADER);
			
			contextView.addChild(loader);
		}
	}
}
