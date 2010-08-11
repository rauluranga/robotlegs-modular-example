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
		
		public static const SHOW_CODEENTRY_REQUEST:String = "SHELLEVENT_SHOW_CODEENTRY_REQUEST";
		public static const SHOW_QUESTION_REQUEST:String = "SHELLEVENT_SHOW_QUESTION_REQUEST";
		public static const SHOW_SIGNUP_REQUEST:String = "SHELLEVENT_SHOW_SIGNUP_REQUEST";
		public static const SHOW_VENUE_REQUEST:String = "SHELLEVENT_SHOW_VENUE_REQUEST";
		public static const SHOW_LEADERS_REQUEST:String = "SHELLEVENT_SHOW_LEADERS_REQUEST";
		public static const SHOW_MAP_REQUEST:String = "SHELLEVENT_SHOW_MAP_REQUEST";
				public static const SHOW_HELP_REQUEST:String = "SHELLEVENT_SHOW_HELP_REQUEST";
		public static const SHOW_SERVICE_LOADER:String = "SHELLEVENT_SHOW_SERVICE_LOADER";
		public static const HIDE_SERVICE_LOADER:String = "SHELLEVENT_HIDE_SERVICE_LOADER";

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
