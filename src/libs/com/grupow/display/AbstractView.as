
/**
 * 
 * Grupow AbstractView
 * Copyright (c) 2010 ruranga@grupow.com
 * 
 * Released under MIT license:
 * http://www.opensource.org/licenses/mit-license.php
 * 
 **/

package com.grupow.display
{
	import com.grupow.controls.WAbstractControl;
	import com.grupow.events.ViewEvent;
	import flash.display.MovieClip;

	/**
	 * ...
	 * @author Raúl Uranga
	 */

	public class AbstractView extends WAbstractControl implements IView
	{
		private var _isOpen:Boolean;
		
		public function AbstractView()
		{
			super();
			_isOpen = false;
		}
			
		public function get isOpen():Boolean
		{
			return _isOpen;
		}

		protected function opened_handler():void
		{
			this.dispatchEvent(new ViewEvent(ViewEvent.OPENED));
		}
		
		protected function closed_handler():void
		{
			this.dispatchEvent(new ViewEvent(ViewEvent.CLOSED));
		}
		
		protected function open_hook():void
		{
			gotoAndPlay("open");
		}
		
		protected function close_hook():void
		{
			gotoAndPlay("close");
		}
			
		public function getIsOpen():Boolean
		{
			return _isOpen;
		}
		
		public function open():void
		{			
			if (!_isOpen) {
				_isOpen = true;
				open_hook();
				this.dispatchEvent(new ViewEvent(ViewEvent.OPEN));
			}
		}
		
		public function close():void
		{
			if (_isOpen) {
				_isOpen = false;
				close_hook();
				this.dispatchEvent(new ViewEvent(ViewEvent.CLOSE));
			}
		}
		
		public function dispose():void
		{
			
		}
		
	}
}