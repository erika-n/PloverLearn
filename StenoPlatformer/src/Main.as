package 
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TextEvent;
	import flash.text.TextField;
	import flash.events.KeyboardEvent;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display.LoaderInfo
	import flash.external.ExternalInterface;
	
	/**
	 * ...
	 * @author EN
	 */
	[SWF(width="700", height="480", frameRate="30")]
	 
	public class Main extends Sprite 
	{
		var fileName = "lesson.txt"
		
		public function Main():void 
		{
			trace("Main: started");
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;	
			
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			this.addChild(new GUIMain(fileName));
		}
		

		
		
		private function onExerciseLoaded(exercise:Exercise) {
			trace("exercise loaded:");
			trace(exercise);
		}

		
	}
	
}