package
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	
	public class BinarySearchArray extends Sprite
	{
		private var searchingElement:Number = 17;
		private var arr:Array = new Array(1,2,3,4,9,17)
		public function BinarySearchArray()
		{
			
			init();
		}
		private function init():void
		{
			/*var txt:TextField = new TextField();
			txt.type = TextFieldType.INPUT;
			txt.border = true;
			addChild(txt);*/
			trace(compareMidElement(searchingElement ,0,arr.length-1));
		}	
		
		
		
		
		private function compareMidElement(serchEle:Number,startInd:Number,endIndex:Number):Number
		{
			if(arr==null || arr.length<0)
				return -1;
			
			var midIndex:Number = Math.floor((endIndex+startInd)/2);	
			var midElement:Number = arr[midIndex ];
			if(serchEle<midElement && startInd != endIndex)
			{
				
				endIndex = midIndex -1;
				return compareMidElement(serchEle,startInd,endIndex );
			}
			else if(serchEle>midElement && startInd != endIndex )
			{
				startInd =midIndex +1;
				return compareMidElement(serchEle,startInd,endIndex );
			}			
			else if(serchEle==midElement)
			{
				// match found
				return midIndex ;
			}
			
			//if(startInd == endIndex )
			//{
				//match not found
				return -1;
			//}
			
			
		}

	}
}