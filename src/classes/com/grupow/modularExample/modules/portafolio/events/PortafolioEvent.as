package com.grupow.modularExample.modules.portafolio.events 
{
	import flash.events.Event;

	/**
	 * @author Raul Uranga
	 */
	public class PortafolioEvent extends Event 
	{
		public static const CONTACT_REQUEST:String = "CONTACT_REQUEST";
		public static const ABOUT_REQUEST:String = "ABOUT_REQUEST";
		public static const STARTUP:String = "STARTUP";

		public function PortafolioEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			var event:PortafolioEvent = new PortafolioEvent(type);
			return event;
		}
	}
}
