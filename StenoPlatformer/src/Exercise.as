package  
{
	/**
	 * ...
	 * @author EN
	 */
	public class Exercise 
	{
		
		var lessonTitle:String;
		var exerciseName:String;
		var words:Array;
		var wordIndex = -1;
		var random = false;
		
		public function Exercise(lessonTitle, exerciseName, words) 
		{
			this.lessonTitle = lessonTitle;
			this.exerciseName = exerciseName;
			this.words = words;
			if (random) {
				randomize();
			}
			
		}
	
		public function toString():String {
			return "Exercise:\n lessonTitle=\'" + lessonTitle + "\'\n exerciseName=\'" + exerciseName + "\'\n words=" + words;
		}
		
		public function nextWord():void
		{
	
			wordIndex++;
		
		}
		
		public function hasNextWord():Boolean {
			return wordIndex < words.length - 1;
		}
		
		public function reset() {
			wordIndex = -1;
		}
		
		public function word():String {
			return words[wordIndex][0];
		}
		
		public function hint():String {
			return words[wordIndex][1];
		}
		
		
		public function randomize() {
			words = words.sort(_randomize);
		}
		
		function _randomize ( a : *, b : * ) : int {
			return ( Math.random() > .5 ) ? 1 : -1;
		}

	
			
		
		
	}

}