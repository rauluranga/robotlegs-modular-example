package com.grupow.modularExample.modules.shell.mediators 
{
	import com.grupow.events.ViewEvent;
	import com.grupow.modularExample.modules.shell.events.ShellEvent;
	import com.grupow.modularExample.modules.shell.views.LoaderView;

	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author Raul Uranga
	 */
	public class LoaderViewMediator extends Mediator 
	{
		[Inject]
		public var view:LoaderView;
		
		public function LoaderViewMediator()
		{
			
		}

		override public function onRegister():void 
		{
			eventMap.mapListener(eventDispatcher, ShellEvent.LOAD_PROGRESS, progress_handler);
			eventMap.mapListener(view, ViewEvent.OPENED, onLoaderReady);
		}

		private function progress_handler(e:ShellEvent):void 
		{
			view.update(e.progress);
		}

		private function onLoaderReady(e:ViewEvent):void 
		{
			dispatch(new ShellEvent(ShellEvent.STARTUP_COMPLETE));
		}
	}
}
