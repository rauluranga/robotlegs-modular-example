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

		public var stage_id:int;

		public function ContactEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			var event:ContactEvent = new ContactEvent(type);
			event.stage_id = stage_id;
			return event;
		}
	}
}
