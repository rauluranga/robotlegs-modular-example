package com.grupow.modularExample.modules.about.mediators 
{
	import com.grupow.modularExample.modules.about.views.AboutView;
	import com.grupow.events.ViewEvent;
	import org.robotlegs.mvcs.Mediator;

	public class AboutViewMediator extends Mediator 
	{
		[Inject]
		public var view:AboutView;
		
		
		public function AboutViewMediator()
		{
			
		}

		override public function onRegister():void 
		{
			eventMap.mapListener(eventDispatcher, ViewEvent.OPEN, openView_handler);			eventMap.mapListener(eventDispatcher, ViewEvent.CLOSE, closeView_handler);
			
			eventMap.mapListener(view, ViewEvent.OPENED, eventDispatcher.dispatchEvent);
			eventMap.mapListener(view, ViewEvent.CLOSED, eventDispatcher.dispatchEvent);
			
		}

		private function openView_handler(e:ViewEvent):void 
		{
			view.open();
		}
		
		private function closeView_handler(e:ViewEvent):void 
		{
			view.close();
		}
	}
}
