package com.grupow.modularExample.modules.shell.models 
{
	import com.grupow.display.ViewManager;
	import com.grupow.display.IView;
	import org.robotlegs.mvcs.Actor;

	/**
	 * @author Raul Uranga
	 */
	public class ShellViewManager  extends Actor
	{
		private var _manager:ViewManager;

		public function ShellViewManager() 
		{
			_manager = new ViewManager();
		}

		public function getView(key:String):IView 
		{
			return _manager.getView(key);
		}

		public function addView(value:IView,key:String):void 
		{
			_manager.addView(value, key);
		}

		public function openView(key:String):void 
		{
			_manager.openView(key);
		}
	}
}
