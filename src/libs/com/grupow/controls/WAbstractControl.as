package com.grupow.controls 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/**
	* ...
	* @author Raúl Uranga
	*/
	public class WAbstractControl extends MovieClip
	{
		static public const DRAW:String = "draw";
		
		public var data:Object;
		protected var _height:Number = 0;
		protected var _width:Number = 0;
		
		public function WAbstractControl() 
		{
			super();
			data = new Object();
			this.addEventListener(Event.ADDED_TO_STAGE, added_handler, false, 0, true);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removed_handler, false, 0, true);
		}
		
		protected function added_handler(e:Event):void 
		{
			init();
			this.tabEnabled = false;
		}	
		
		protected function removed_handler(e:Event):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, added_handler);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removed_handler);
			
			this.destroy();
		}
		
		protected function init():void
		{
			
		}
		
		protected function destroy():void
		{
			
		}
		
		protected function invalidate():void
		{
			addEventListener(Event.ENTER_FRAME, onInvalidate);
		}
		
		protected function onInvalidate(e:Event):void 
		{
			removeEventListener(Event.ENTER_FRAME, onInvalidate);
			this.draw();
		}
		
		protected function draw():void
		{
			dispatchEvent(new Event(WAbstractControl.DRAW));
		}
		
		override public function set width(w:Number):void
		{
			_width = w;
			invalidate();
			dispatchEvent(new Event(Event.RESIZE));
		}
		override public function get width():Number
		{
			return _width;
		}
	
		override public function set height(h:Number):void
		{
			_height = h;
			invalidate();
			dispatchEvent(new Event(Event.RESIZE));
		}
		override public function get height():Number
		{
			return _height;
		}
	}
	
}