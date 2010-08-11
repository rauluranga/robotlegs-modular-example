package {	import com.grupow.modularExample.common.TopLevelContext;
	import flash.events.Event;	import com.grupow.modularExample.modules.shell.ShellModule;	import flash.display.MovieClip;	public class Main extends MovieClip 	{		private var shell:ShellModule;
		public function Main() 		{			this.stop();			this.addEventListener(Event.ENTER_FRAME, preloader_handler);		}			private function preloader_handler(event:Event):void 		{			if(framesLoaded == totalFrames) {				gotoAndStop(2);			}
		}
		protected function init():void 		{			var context:TopLevelContext = new TopLevelContext();			context.root = this.root;			context.stage = this.stage;						shell = getChildByName("display_mc") as ShellModule;			shell.setTopLevelContext(context);			shell.startup();		}
	}}