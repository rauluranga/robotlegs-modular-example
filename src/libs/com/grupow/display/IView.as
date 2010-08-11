
/**
 * 
 * Grupow IView
 * Copyright (c) 2010 ruranga@grupow.com
 * 
 * Released under MIT license:
 * http://www.opensource.org/licenses/mit-license.php
 * 
 **/

package com.grupow.display
{
	import flash.events.IEventDispatcher;

	/**
	* ...
	* @author Raúl Uranga
	*/
	
	public interface IView extends IEventDispatcher
	{
		function open():void;
		function close():void;
	}
	
}