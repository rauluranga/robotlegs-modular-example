package com.grupow.modularExample.modules.about.events 
{
	import flash.events.Event;

	/**
	 * @author Raul Uranga
	 */
	public class AboutEvent extends Event 
	{
		public static const STAGE_SELECTED:String = "VenueSelectorEvent_venueSelected";
		public static const HELP_REQUEST:String = "VenueSelectorEvent_HELP_REQUEST";

		public var stage_id:int;

		public function AboutEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			var event:AboutEvent = new AboutEvent(type);
			event.stage_id = stage_id;
			return event;
		}
	}
}
