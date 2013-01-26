package Data
{
	import Data.Content;
	import Data.Dialog;
	import flash.media.Sound;
	
	/**
	 * Simple factory
	 * @author Franck Labat
	 */
	public class ContentFactory
	{
		public static function build(type:String, value:String):Content
		{
			if (type == "dialog")
				return new Dialog(value);
			//else if (type == "sound")
			//else if (type == "image")
			return null;
		}
	}
	
}