package com.grupow.utils 
{
	
	/**
	 * ...
	 * @author Raúl Uranga
	 */
	public class StringUtils 
	{
		
		public function StringUtils() 
		{
			
		}
		
		public static function has (str:String,c:String):Boolean
		{
			return (str.indexOf(c) != -1);
		}
		
		public static function replaceChar(str:String, busca:String, pon:String):String 
		{
			return str.split(busca).join(pon);
		}
		
		public static function replaceChars(_str:String, keys:Array, chars:Array):String
		{
			var temp:String = _str;
			for (var i = 0; i<keys.length; i++) {
				temp = StringUtils.replaceChar(temp, keys[i], chars[i]);
			}
			return temp;
		}
		
		public static function isEmail (str:String):Boolean
		{

			if (str.length < 5) { return false; }

			var iChars = "*|,\":<>[]{}`';()&$#%";
			var eLength = str.length;

			for (var i = 0; i < eLength; i++) {
				if (iChars.indexOf(str.charAt(i)) != -1) {
					return false;
				}
			}

			var atIndex = str.lastIndexOf("@");

			if (atIndex < 1 || (atIndex == eLength - 1)) {
				return false;
			}
			
			var pIndex = str.lastIndexOf(".");

			if (pIndex < 4 || (pIndex == eLength - 1)) {
				return false;
			}
			
			if (atIndex > pIndex) {
				return false;
			}
			
			return true;
		};
		
		public static function dosDigit(n:Number):String 
		{
			return String((n < 10) ? "0" + n : n);
		}
		
		public static function insertAt(str:String, val:String, pos:Number):String
		{
			return str.substring(0, pos) + val + str.substr(pos);
		}
		
		public static function cropAt(str:String, val:String, pos:Number):String
		{
			return str.substring(0, pos) + val;
		}
		
		public static function repeat(str:String,many:Number):String
		{
			var s:String = ""; 
			var t:String = str.toString();
			
			while (--many>=0) {
				s += t;
			}
			return s;
		};
		
		public static function addZero(str:String,many:Number):String
		{
			var s:String = "0"
			return (repeat(s, many) + str.toString()).substring((repeat(s, many) + str.toString()).length - many);

		};
		
		public static function  formatTime(milliseconds:Number):String
		{
			// derive values (centiseconds = 100th of a second)
			//var milliseconds = Math.floor(milliseconds);
			var centiseconds = Math.floor(milliseconds/10);
			var seconds = Math.floor(centiseconds/100);
			var minutes = Math.floor(seconds / 60);
			var hours =  Math.floor(minutes/60);
			
			centiseconds %= 100;
			seconds %= 60;
			minutes %= 60;
			hours %= 24;
		
			// padd with 0's if values less than 2 digits (less than 10)
			if (centiseconds < 10) centiseconds = "0" + centiseconds;
			if (seconds < 10) seconds = "0" + seconds;
			if (minutes < 10) minutes = "0" + minutes;
			if (hours < 10) hours = "0" + hours;
					
			return	hours +":"+ minutes +":"+ seconds +":"+ centiseconds;
		}
		
		static public function formatNumber(number:Number, maxDecimals:int = 0):String 
		{
			var str:String = number.toFixed(maxDecimals).toString();
			
			var hasSep:Boolean = str.indexOf(".") == -1;
			var sep:int = hasSep ? str.length : str.indexOf(".");
			
			var ret:String = (hasSep ? "" : ".") + str.substr(sep+1);
			var i:int = 0;
			
			while (i + 3 < (str.substr(0, 1) == "-" ? sep-1 : sep)) {
				ret = "," + str.substr(sep - (i += 3), 3) + ret;
			}
			return str.substr(0,sep - i) + ret;
		}
		
		
	}
}