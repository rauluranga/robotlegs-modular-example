package {	import flash.events.Event;	import com.grupow.modularExample.modules.shell.ShellModule;	import flash.display.MovieClip;	public class Main extends MovieClip 	{		private var shell:ShellModule;
		public function Main() 		{			this.stop();			this.addEventListener(Event.ENTER_FRAME, preloader_handler);		}			private function preloader_handler(event:Event):void 		{			if(framesLoaded == totalFrames) {				gotoAndStop(2);			}
		}
		protected function init():void 		{			shell = getChildByName("display_mc") as ShellModule;			shell.startup();		}
	}}