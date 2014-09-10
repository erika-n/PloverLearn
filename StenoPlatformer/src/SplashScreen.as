package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.events.TextEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	
	/**
	 * ...
	 * @author EN
	 * 
	 * SplashScreen: The intro screen
	 */
	public class SplashScreen extends Sprite 
	{
		var header;
		var info;
		var button:Sprite;
		var BUFFER = 50;
		var infoField:TextField;
		var headerField:TextField;
		var onHide:Function;

		[Embed(source = '../assets/plover.jpg')]
		private var PloverImage:Class;
		private var ploverBitmap:Bitmap = new PloverImage();
		
		public function SplashScreen(header:String, info:String, onHide:Function) 
		{
			
			
			
			this.header = header;
			this.info = info;
			this.onHide = onHide;
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{

			initBackground();
			

			headerField = new NiceTextField(header, 45, 0xffffff, 0.9);
			infoField = new NiceTextField(info, 25, 0xffffff, 0.8);

			headerField.width = this.width;
			headerField.height = 2 * headerField.textHeight + 10;
			headerField.wordWrap = true;
			headerField.x = 0;
			headerField.y = height / 3
			
			infoField.x = (width / 2) - infoField.width / 2;
			infoField.y = 3 * height / 4;
			
			this.addChild(ploverBitmap);
			
			this.addChild(infoField);
			this.addChild(headerField);
	
			
			addEventListener(MouseEvent.CLICK, buttonClick);
	
			
			this.visible = false;
			
	
		}
		
		function buttonClick(e:Event) {
			hide();
			
		}
		
		

		
		
		
		function show() {
			this.visible = true;
			stage.focus = this.infoField;
			
		}
		
		function hide() {
			this.visible = false;
			onHide();
		}
		
		function initBackground() {
			graphics.beginFill(0xbbbbbb);
			graphics.drawRoundRect(0, 0, stage.stageWidth - BUFFER, stage.stageHeight - BUFFER, 20);
			graphics.endFill();
			
			this.x = BUFFER / 2;
			this.y = BUFFER / 2;
						
		}
		

		
	}

}