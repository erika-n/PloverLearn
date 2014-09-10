package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author EN
	 */
	public class Button extends Sprite 
	{


		var text:String;
		public function Button(text) 
		{
			this.text = text;
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
	
		}
		
		private function init(e:Event = null):void 
		{
	
			graphics.beginFill(0x00ff00);
			graphics.drawRoundRect(0, 0, 250, 60, 40);
			graphics.endFill();

	
			
			
			
			var buttonLabel:TextField = new TextField();
			
			buttonLabel.text = text;
			
			var buttonLabelFormat:TextFormat = new TextFormat();
			buttonLabelFormat.size = 20;
			buttonLabelFormat.align = "center";
			buttonLabelFormat.color = "0xffffff";
			buttonLabel.defaultTextFormat = buttonLabelFormat;
			buttonLabel.setTextFormat(buttonLabelFormat);
			buttonLabel.width = buttonLabel.textWidth + 10;
			buttonLabel.height = buttonLabel.textHeight + 5;
			buttonLabel.wordWrap = false;
			buttonLabel.selectable = false; 
			
			buttonLabel.x = this.width / 2 - buttonLabel.width / 2;
			buttonLabel.y = this.height / 2 - buttonLabel.height / 2;
			
			addChild(buttonLabel);
								
		}
		
	}

}