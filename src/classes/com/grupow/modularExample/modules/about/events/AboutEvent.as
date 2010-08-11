package com.grupow.modularExample.modules.about.events 
{
	import flash.events.Event;

	/**
	 * @author Raul Uranga
	 */
	public class AboutEvent extends Event 
	{
		public static const CONTACT_REQUEST:String = "CONTACT_REQUEST";
		public static const PORTAFOLIO_REQUEST:String = "PORTAFOLIO_REQUEST";				
		public function AboutEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			var event:AboutEvent = new AboutEvent(type);
			return event;
		}
	}
}
