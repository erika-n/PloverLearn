package  
{
	import flash.text.TextField;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author EN
	 * *
	 * NiceTextField: A text field set up centered, bold, and unselectable, with the given text, size, and color. 
	 */
	public class NiceTextField extends TextField 
	{
		
		public function NiceTextField(text, size, color, alpha=1.0, bold=true) 
		{
			this.text = text;
			this.alpha = alpha;
			
			var inputFieldFormat:TextFormat= new TextFormat();
			inputFieldFormat.size = size;
			inputFieldFormat.bold = bold;
			inputFieldFormat.align = "center"
			inputFieldFormat.color = color;

			
		
			setTextFormat(inputFieldFormat);
			defaultTextFormat = inputFieldFormat;
	
			width = textWidth + 100;
			height = textHeight + 3;
			selectable = false;
			
		}
		
	}

}