package com.grupow.modularExample.modules.shell.commands 
{
	import com.grupow.modularExample.modules.shell.models.ShellViewManager;
	import com.grupow.modularExample.modules.shell.events.ShellEvent;

	import org.robotlegs.utilities.modular.core.IModuleEventDispatcher;
	import org.robotlegs.utilities.modular.core.IModuleContextView;

	import com.grupow.display.IView;

	import flash.display.DisplayObject;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author Raul Uranga
	 */
	public class SetUpModulesCommand extends Command 
	{
		[Inject]
		public var event:ShellEvent;
		
		[Inject]
		public var manager:ShellViewManager;
		
		[Inject]
		public var moduleEventDispatcher:IModuleEventDispatcher;
		
		public function SetUpModulesCommand()
		{
			
		}

		override public function execute():void 
		{
			for each (var data:* in event.modules) {
				
				var module:IModuleContextView = data.content as IModuleContextView;
				module.setModuleDispatcher(moduleEventDispatcher);
				module.startup();
				
				var view:IView = data.content as IView;
				
				manager.addView(view, data.key);
				
				contextView.addChild(data.content as DisplayObject);
			}
			
			dispatch(new ShellEvent(ShellEvent.SETUP_COMPLETE));
		}
	}
}
