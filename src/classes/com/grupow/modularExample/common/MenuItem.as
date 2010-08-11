package com.grupow.modularExample.common
{
	import com.greensock.plugins.FramePlugin;
	import com.greensock.plugins.TweenPlugin;
	import com.greensock.TweenLite;
	import com.greensock.easing.Linear;
	import com.grupow.display.BasicButton;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class MenuItem extends BasicButton
	{
		public var venue:int;
		
		public static const _init_:Boolean = TweenPlugin.activate([FramePlugin]);

		public function MenuItem()
		{
			super();
		}
		
		override protected function rollOver_handler(e:MouseEvent):void
		{
			TweenLite.killTweensOf(this);
			play();
		}
		
		override protected function rollOut_handler(e:MouseEvent):void
		{
			TweenLite.to(this, currentFrame / stage.frameRate, {frame:1, ease:Linear.easeNone});
		}
		
		override protected function setHitArea():void
		{
			
		}
	}
}