package com.grupow.modularExample.modules.contact.events 
{
	import flash.events.Event;

	/**
	 * @author Raul Uranga
	 */
	public class ContactEvent extends Event 
	{
		public static const ABOUT_REQUEST:String = "ABOUT_REQUEST";
		public static const PORTAFOLIO_REQUEST:String = "PORTAFOLIO_REQUEST";
		public static const STARTUP:String = "STARTUP";

		public function ContactEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			var event:ContactEvent = new ContactEvent(type);
			return event;
		}
	}
}
