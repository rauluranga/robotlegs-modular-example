package com.grupow.modularExample.modules.shell.services 
{
	import com.greensock.events.LoaderEvent;
	import com.greensock.loading.LoaderMax;
	import com.greensock.loading.SWFLoader;
	import com.greensock.loading.core.DisplayObjectLoader;
	import com.grupow.modularExample.modules.shell.display.Views;
	import com.grupow.modularExample.modules.shell.events.ShellEvent;

	import org.robotlegs.mvcs.Actor;

	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;

	/**
	 * @author Raul Uranga
	 */
	public class BulkModuleLoader extends Actor implements IBulkLoader
	{

		private var loader:LoaderMax;
		private var _isComplete:Boolean;
		
		public function BulkModuleLoader() 
		{
			_isComplete = false;
			
			var myLoaderContext:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain); 
			
			loader = new LoaderMax({name:"mainLoader", onProgress:progressHandler, onComplete:completeHandler, onError:errorHandler});
			loader.append(new SWFLoader("contact.swf", {name:Views.CONTACT, context:myLoaderContext}));			loader.append(new SWFLoader("portafolio.swf", {name:Views.PORTAFOLIO, context:myLoaderContext}));			loader.append(new SWFLoader("about.swf", {name:Views.ABOUT, context:myLoaderContext}));
		}

		
		private function progressHandler(event:LoaderEvent):void 
		{
			var e:ShellEvent = new ShellEvent(ShellEvent.LOAD_PROGRESS);
			e.progress = event.target.progress;
			dispatch(e);
		}

		private function completeHandler(event:LoaderEvent):void 
		{
			_isComplete = true;
			
			var modules:Array = [];
			
			for each (var item:DisplayObjectLoader in loader.getChildren()) {
				modules.push({content:item.rawContent, key:item.name});
			}
			
			var e:ShellEvent = new ShellEvent(ShellEvent.LOAD_COMPLETE);
			e.modules = modules;
			
			dispatch(e);
		}

		private function errorHandler(event:LoaderEvent):void 
		{
//			trace("error occured with " + event.target + ": " + event.text);
		}

		public function load():void 
		{
			loader.load();
		}
		
		public function get isComplete():Boolean
		{
			return _isComplete;
		}
	}
}
