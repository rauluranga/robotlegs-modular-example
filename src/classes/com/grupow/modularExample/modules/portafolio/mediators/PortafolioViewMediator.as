package com.grupow.modularExample.modules.portafolio.mediators 
{
	import com.grupow.modularExample.modules.portafolio.events.PortafolioEvent;
	import com.grupow.modularExample.modules.portafolio.views.PortafolioView;
	import com.grupow.events.ViewEvent;
	import org.robotlegs.mvcs.Mediator;

	public class PortafolioViewMediator extends Mediator 
	{
		[Inject]
		public var view:PortafolioView;
		
		
		public function PortafolioViewMediator()
		{
			
		}

		override public function onRegister():void 
		{
			eventMap.mapListener(eventDispatcher, ViewEvent.OPEN, openView_handler);			eventMap.mapListener(eventDispatcher, ViewEvent.CLOSE, closeView_handler);
			
			eventMap.mapListener(view, PortafolioEvent.ABOUT_REQUEST, eventDispatcher.dispatchEvent);
			eventMap.mapListener(view, PortafolioEvent.CONTACT_REQUEST, eventDispatcher.dispatchEvent);
			
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
