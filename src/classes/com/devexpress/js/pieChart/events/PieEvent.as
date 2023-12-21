package classes.com.devexpress.js.pieChart.events
{
	import org.apache.royale.events.Event;

	public class PieEvent extends Event 
	{
		public static const POINT_CLICK:String = "pointClickPie";
		public static const LEGEND_CLICK:String = "legendClickPie";
		
		public function PieEvent(type:String, item:Object)
		{
			super(type);
			
			_item = item;
		}
		
		private var _item:Object;
		
		public function get item():Object
		{
			return _item;
		}
	}
}