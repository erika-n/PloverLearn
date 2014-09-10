package  
{
	import flash.display.Sprite;
	import flash.text.TextField;
	/**
	 * ...
	 * @author EN
	 * 
	 * Load an exercise from a file in the format of Learn Plover! exercise solutions 
	 * (cut and pasted from Learn Plover! site into each lesson.txt)
	 * into an Exercise object.
	 * 
	 */
	public class LoadExercise extends Sprite
	{
		import XML;
		import flash.net.URLRequest;
		import flash.net.URLLoader
		import flash.events.Event
		import flash.display.Sprite;
		import flash.display.LoaderInfo;
		import flash.display.Loader;
		import flash.errors.IOError
		
		var onExerciseLoaded:Function;
		var fileName:String;
		
        public function LoadExercise(fileName, onExerciseLoaded) {
			
			this.onExerciseLoaded = onExerciseLoaded;
			this.fileName = fileName;

        }
	

		public function load() {
            var loader:URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, myCompleteHandler);
			trace("URLLoader: " + loader);
			try {
			
				loader.load(new URLRequest(fileName));
			}
			catch (e:Error) {
				trace(e.name + ": " + e.message);
			}


		}
        private function myCompleteHandler(event:Event):void {
            var loader:URLLoader = URLLoader(event.target);
			onExerciseLoaded(parseFile(loader.data)); // ToDo: make this an official event handler.
			
        }
		
		private function parseFile(fileTxt:String):Exercise {
	
			var lines:Array = fileTxt.split("\n");
			var lessonTitle = noreturn(lines[0]);
			var exerciseName = noreturn(lines[1]);
			var words:Array = new Array
			for (var i = 2; i < lines.length; i++) {
				var line:String = noreturn(lines[i]);
				var wordAndHint:Array = line.split('\': ');
				var word:String = String(wordAndHint[0]);
				word = word.slice(1, word.length);
				var hint = wordAndHint[1];
				words.push([word, hint]);
			}
			
			return new Exercise(lessonTitle, exerciseName, words);
		}
		
		private function noreturn(s:String):String {
			return s.replace(/\r/, "");
		}
		
	}

}