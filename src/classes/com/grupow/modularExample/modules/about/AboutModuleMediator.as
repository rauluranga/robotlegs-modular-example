package com.grupow.modularExample.modules.about 
{
	import flash.events.Event;
	import com.grupow.events.ViewEvent;
	import org.robotlegs.utilities.modular.mvcs.ModuleMediator;

	/**
	 * @author Raul Uranga
	 */
	public class AboutModuleMediator extends ModuleMediator 
	{
		[Inject]
        public var view:AboutModule;
		
		public function AboutModuleMediator()
		{
			
		}

		override public function onRegister():void 
		{
			eventMap.mapListener(eventDispatcher, ViewEvent.OPEN, moduleRedispatch);
			eventMap.mapListener(eventDispatcher, ViewEvent.CLOSE, moduleRedispatch);
			eventMap.mapListener(eventDispatcher, ViewEvent.OPENED, moduleRedispatch);
			eventMap.mapListener(eventDispatcher, ViewEvent.CLOSED, moduleRedispatch);
		}

		private function moduleRedispatch(e:Event):void 
		{
			view.dispatchEvent(e);
		}
	}
}
