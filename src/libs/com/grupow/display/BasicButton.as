
/**
 * 
 * Grupow BasicButton
 * Copyright (c) 2008 ruranga@grupow.com
 * 
 * Released under MIT license:
 * http://www.opensource.org/licenses/mit-license.php
 * 
 **/

package com.grupow.display
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;

	/**
	 * ...
	 * @author Raúl Uranga
	 */

	public class BasicButton extends MovieClip
	{
		public var data:Object = new Object();

		private var _enabled:Boolean;

		public function BasicButton() 
		{
			setHitArea();
			
			_enabled = true;
			
			this.addEventListener(Event.ADDED_TO_STAGE, addedToStage_handler, false, 0, true);
			
			this.addEventListener(Event.REMOVED_FROM_STAGE, removedToStage_handler, false, 0, true);
			
			this.tabEnabled = false;
		}

		protected function setHitArea():void
		{
			var mc_hitarea:MovieClip = this.getChildByName("hitarea_mc") as MovieClip;
			mc_hitarea.visible = false;
			this.hitArea = mc_hitarea;
		}

		private function removedToStage_handler(e:Event):void 
		{
			this.dispose();
		}

		private function addedToStage_handler(e:Event):void 
		{
			initialize();
		}

		protected function initialize():void
		{
			this.buttonMode = true;
			this.mouseChildren = false;
			this.addEventListener(MouseEvent.CLICK, click_handler, false, 0, true);
			this.addEventListener(MouseEvent.ROLL_OVER, rollOver_handler, false, 0, true);
			this.addEventListener(MouseEvent.ROLL_OUT, rollOut_handler, false, 0, true);
		}

		public function getEnabled():Boolean 
		{ 
			return _enabled; 
		}

		public function setEnabled(value:Boolean):void 
		{
			_enabled = value;
			
			if (_enabled) {
				
				this.addEventListener(MouseEvent.ROLL_OVER, rollOver_handler, false, 0, true);
				this.addEventListener(MouseEvent.ROLL_OUT, rollOut_handler, false, 0, true);
			} else {
				
				removeAllListeners();
			}
			
			this.mouseEnabled = _enabled;
		}

		protected function click_handler(e:MouseEvent):void
		{
		}

		
		protected function rollOver_handler(e:MouseEvent):void
		{
			gotoAndPlay("over");
		}

		protected function rollOut_handler(e:MouseEvent):void
		{
			gotoAndPlay("out");
		}

		protected function removeAllListeners():void
		{
			this.removeEventListener(MouseEvent.CLICK, click_handler, false);
			this.removeEventListener(MouseEvent.ROLL_OVER, rollOver_handler, false);
			this.removeEventListener(MouseEvent.ROLL_OUT, rollOut_handler, false);
		}

		protected function dispose():void 
		{
			removeAllListeners();
			
			this.removeEventListener(Event.ADDED_TO_STAGE, addedToStage_handler);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removedToStage_handler);
		}
	}
}