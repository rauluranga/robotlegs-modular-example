
/**
 * 
 * Grupow ViewEvent
 * Copyright (c) 2009 ruranga@grupow.com
 * 
 * Released under MIT license:
 * http://www.opensource.org/licenses/mit-license.php
 * 
 **/

package com.grupow.events 
{
	import flash.events.Event;

	public class ViewEvent extends Event
	{
		public static const OPEN:String = "open";
		public static const CLOSE:String = "close";
		public static const OPENED:String = "opened";
		public static const CLOSED:String = "closed";
				
		public function ViewEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false) 
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event 
		{
            return new ViewEvent(type, bubbles, cancelable);
        }
	}
}