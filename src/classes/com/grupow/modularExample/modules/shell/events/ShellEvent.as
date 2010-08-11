package com.grupow.modularExample.modules.shell.events 
{
	import flash.events.Event;

	/**
	 * @author Raul Uranga
	 */
	public class ShellEvent extends Event 
	{
		public static const LOAD_COMPLETE:String = "SHELLEVENT_LOAD_COMPLETE";
		public static const LOAD_PROGRESS:String = "ShellEvent_LOAD_PROGRESS";
		
		public static const SETUP_COMPLETE:String = "SHELLEVENT_MODULES_READY";
		public static const STARTUP:String = "SHELLEVENT_STARTUP";
		public static const STARTUP_COMPLETE:String = "SHELLEVENT_STARTUP_COMPLETE";
		
		public static const SHOW_PORTAFOLIO_REQUEST:String = "SHELLEVENT_SHOW_PORTAFOLIO_REQUEST";
		public static const SHOW_CONTACT_REQUEST:String = "SHELLEVENT_SHOW_CONTACT_REQUEST";
		public static const SHOW_ABOUT_REQUEST:String = "SHELLEVENT_SHOW_ABOUT_REQUEST";
				public var modules:Array;
		public var progress:Number;

		public function ShellEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			var event:ShellEvent = new ShellEvent(type);
			event.modules = modules;
			event.progress = progress;
			return event;
		}
	}
}
