package com.grupow.modularExample.modules.contact.views 
{
	import com.grupow.modularExample.modules.contact.events.ContactEvent;
	import flash.events.MouseEvent;

	import com.grupow.modularExample.common.MenuItem;
	import com.grupow.display.AbstractView;
	
	import flash.display.MovieClip;

	public class ContactView extends AbstractView 
	{
		private var button01:MenuItem;
		private var button02:MenuItem;

		public function ContactView()
		{
			super();
		}
		
		override protected function opened_handler():void
		{
			super.opened_handler();
			
			button01 = getChildByName("button01_mc") as MenuItem;
			button01.addEventListener(MouseEvent.CLICK, butto01_handler);
			
			button02 = getChildByName("button02_mc") as MenuItem;
			button02.addEventListener(MouseEvent.CLICK, butto02_handler);
		}

		override protected function closed_handler():void
		{
			super.closed_handler();
		}

		override protected function close_hook():void 
		{
			super.close_hook();
			
			button01.removeEventListener(MouseEvent.CLICK, butto01_handler);
			button02.removeEventListener(MouseEvent.CLICK, butto02_handler);
		}

		private function butto02_handler(event:MouseEvent):void 
		{
			dispatchEvent(new ContactEvent(ContactEvent.ABOUT_REQUEST));
		}

		private function butto01_handler(event:MouseEvent):void 
		{
			dispatchEvent(new ContactEvent(ContactEvent.PORTAFOLIO_REQUEST));
		}
	}
}
