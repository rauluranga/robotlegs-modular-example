package com.grupow.modularExample.modules.shell 
{
	import com.grupow.modularExample.modules.shell.commands.*;
	import com.grupow.modularExample.modules.shell.models.*;
	import com.grupow.modularExample.modules.shell.services.*;
	import com.grupow.modularExample.modules.shell.mediators.*;
	import com.grupow.modularExample.modules.shell.views.*;
	import com.grupow.modularExample.modules.shell.events.*;

	import org.robotlegs.utilities.modular.base.ModuleEventDispatcher;
	import org.robotlegs.utilities.modular.mvcs.ModuleContext;
	import org.robotlegs.utilities.modular.mvcs.ModuleContextView;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author Raul Uranga
	 */
	public class ShellModuleContext extends ModuleContext 
	{
		private var _moduleEventDispatcher:ModuleEventDispatcher;

		public function ShellModuleContext(contextView:DisplayObjectContainer = null)
		{
			super(contextView);
			_moduleEventDispatcher = new ModuleEventDispatcher();
			setModuleDispatcher(_moduleEventDispatcher);
		}

		override public function startup():void 
		{
			commandMap.mapEvent(ShellEvent.STARTUP, StartUpCommand, ShellEvent);
			commandMap.mapEvent(ShellEvent.STARTUP_COMPLETE, StartLoaderCommand, ShellEvent, true);			commandMap.mapEvent(ShellEvent.LOAD_COMPLETE, SetUpModulesCommand, ShellEvent, true);			commandMap.mapEvent(ShellEvent.SETUP_COMPLETE, SetUpModulesCompleteCommand, ShellEvent, true);
			
			commandMap.mapEvent(ShellEvent.SHOW_CODEENTRY_REQUEST, OpenAboutCommand, ShellEvent);
			commandMap.mapEvent(ShellEvent.SHOW_VENUE_REQUEST, OpenContactCommand, ShellEvent);
			commandMap.mapEvent(ShellEvent.SHOW_QUESTION_REQUEST, OpenPortafolioCommand, ShellEvent);
			
			////
			
			mediatorMap.mapView(LoaderView, LoaderViewMediator);
			mediatorMap.mapView(ShellModule, ShellModuleMediator);
			
//			
			injector.mapSingleton(ShellViewManager);
			injector.mapSingletonOf(IBulkLoader, BulkModuleLoader);
			
			super.startup();
			
			dispatchEvent(new ShellEvent(ShellEvent.STARTUP));
		}

		public function addModule(module:ModuleContextView):void
		{
			module.setModuleDispatcher(_moduleEventDispatcher);
			module.startup();
			contextView.addChild(module);
		} 
	}
}
