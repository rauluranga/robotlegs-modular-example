package com.grupow.modularExample.modules.shell.services 
{

	/**
	 * @author Raul Uranga
	 */
	public interface IBulkLoader 
	{
		function load():void;
		function get isComplete():Boolean;
	}
}
