package com.grupow.modularExample.modules.shell 
{
	import com.grupow.modularExample.common.TopLevelContext;
	import com.grupow.modularExample.common.IModule;
	import org.robotlegs.utilities.modular.mvcs.ModuleContextView;

	/**
	 * @author Raul Uranga
	 */
	public class ShellModule extends ModuleContextView implements IModule
	{
		private var _shellModuleContext:ShellModuleContext;

		public function ShellModule()
		{
			super();
			
			_shellModuleContext = new ShellModuleContext(this);
			context = _shellModuleContext;
		}

		override public function startup():void 
		{
			super.startup();
			init();
		}

		private function init():void 
		{
		}
		
		public function setTopLevelContext(value:TopLevelContext):void
		{
			_shellModuleContext.setTopLevelContext(value);
		}
	}
}
