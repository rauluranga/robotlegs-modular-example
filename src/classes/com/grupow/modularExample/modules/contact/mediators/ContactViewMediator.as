package com.grupow.modularExample.modules.contact.mediators 
{
	import com.grupow.modularExample.modules.contact.events.ContactEvent;
	import com.grupow.modularExample.modules.contact.views.ContactView;
	import com.grupow.events.ViewEvent;
	import org.robotlegs.mvcs.Mediator;

	public class ContactViewMediator extends Mediator 
	{
		[Inject]
		public var view:ContactView;
		
		
		public function ContactViewMediator()
		{
			
		}

		override public function onRegister():void 
		{
			eventMap.mapListener(eventDispatcher, ViewEvent.OPEN, openView_handler);			eventMap.mapListener(eventDispatcher, ViewEvent.CLOSE, closeView_handler);
			
			eventMap.mapListener(view, ContactEvent.ABOUT_REQUEST, eventDispatcher.dispatchEvent);
			eventMap.mapListener(view, ContactEvent.PORTAFOLIO_REQUEST, eventDispatcher.dispatchEvent);
			
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
