package com.grupow.modularExample.modules.shell.views 
{
	import com.grupow.utils.StringUtils;

	import flash.text.TextField;
	import flash.display.MovieClip;

	import com.grupow.display.AbstractView;

	/**
	 * @author Raul Uranga
	 */
	public class LoaderView extends AbstractView 
	{
		public function LoaderView()
		{
		}

		override protected function opened_handler():void 
		{
			super.opened_handler();
		}

		override protected function closed_handler():void 
		{
			super.closed_handler();
		}

		public function update(value:Number):void 
		{
			var display:MovieClip = getChildByName("display_mc") as MovieClip;
			var output:TextField = display.getChildByName("output_txt") as TextField;
			output.text = StringUtils.dosDigit(value * 99);
		}
	}
}
