package classes.com.devexpress.js.pieChart
{
    import classes.com.devexpress.js.charts.interfaces.IChart;
    import classes.com.devexpress.js.pieChart.events.PieEvent;

    import org.apache.royale.jewel.Group;
      
    [Event(name="pointClickPie", type="classes.com.devexpress.js.pieChart.events.PieEvent")]
    [Event(name="legendClickPie", type="classes.com.devexpress.js.pieChart.events.PieEvent")]
                  
	public class Pie extends Group implements IChart
	{
		public function Pie()
		{
			super();
			
			className = "pieChartJS";
		}

		/**
		 *  @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		[Bindable]
		public function get dataSource():Object
		{
			return model["dataSource"];
		}
		
		/**
		 * @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function set dataSource(value:Object):void
		{
			model["dataSource"] = value;
		}
		
		/**
		 *  @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function get series():Object
		{
			return model["series"];
		}
		
		/**
		 * @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function set series(value:Object):void
		{
			model["series"] = value;
		}
		
		/**
		 *  @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function get title():Object
		{
			return model["title"];
		}
		
		/**
		 * @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function set title(value:Object):void
		{
			model["title"] = value;
		}
		
		/**
		 *  @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function get export():Object
		{
			return model["export"];
		}
		
		/**
		 * @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function set export(value:Object):void
		{
			model["export"] = value;
		}
		
		/**
		 *  @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function get size():Object
		{
			return model["size"];
		}
		
		/**
		 * @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function set size(value:Object):void
		{
			model["size"] = value;
		}
		
		/**
		 *  @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function get palette():String
		{
			return model["palette"];
		}
		
		/**
		 * @royaleignorecoercion classes.com.devexpress.js.pieChart.model.PieModel
		 */
		public function set palette(value:String):void
		{
			model["palette"] = value;
		}
		
		override public function addEventListener(type:String, handler:Function, opt_capture:Boolean = false, opt_handlerScope:Object = null):void
		{
			super.addEventListener(type, handler, opt_capture, opt_handlerScope);
			
			if (type == PieEvent.POINT_CLICK)
			{
				model.onPointClick = handler;
			}
			
			if (type == PieEvent.LEGEND_CLICK)
			{
				model.onLegendClick = handler;
			}
		}
		
		override public function removeEventListener(type:String, handler:Function, opt_capture:Boolean = false, opt_handlerScope:Object = null):void
		{
			super.removeEventListener(type, handler, opt_capture, opt_handlerScope);
			
			if (type == PieEvent.POINT_CLICK)
			{
				model.onPointClick = null;
			}
			
			if (type == PieEvent.LEGEND_CLICK)
			{
				model.onLegendClick = null;
			}
		}
	}
}