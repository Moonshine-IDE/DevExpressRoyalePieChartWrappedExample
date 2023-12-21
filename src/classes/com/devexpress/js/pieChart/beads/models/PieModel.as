package classes.com.devexpress.js.pieChart.beads.models
{
    import classes.com.devexpress.js.pieChart.interfaces.IPieModel;

    import org.apache.royale.core.DispatcherBead;
        
	public class PieModel extends DispatcherBead implements IPieModel
	{
		public function PieModel()
		{
			super();
		}
		
		private var _dataSource:Object;
		
		public function get dataSource():Object
		{
			return _dataSource;
		}
		
		public function set dataSource(value:Object):void
		{
			if (_dataSource != value)
			{
				_dataSource = value;
				
				this.dispatchEvent(new Event("dataSourceChanged"));
			}
		}
		
		private var _series:Array;
		
		public function get series():Array
		{
			return _series;
		}
		
		public function set series(value:Array):void
		{
			if (_series != value)
			{
				_series = value;
				
				this.dispatchEvent(new Event("optionsChanged"));
			}
		}
		
		private var _title:Object;

		public function get title():Object
		{
			return _title;
		}

		public function set title(value:Object):void
		{
			if (_title != value)
			{
				_title = value;
				
				this.dispatchEvent(new Event("optionsChanged"));
			}
		}
		
		private var _export:Object;
		
		public function get export():Object
		{
			return _export;
		}
		
		public function set export(value:Object):void
		{
			if (_export != value)
			{
				_export = value;
				
				this.dispatchEvent(new Event("optionsChanged"));
			}
		}
		
		private var _size:Object = { height: 400, width: 400 };
		
		public function get size():Object
		{
			return _size;
		}
		
		public function set size(value:Object):void
		{
			if (_size != value)
			{
				_size = value;
				
				this.dispatchEvent(new Event("optionsChanged"));
			}
		}
		
		private var _palette:String = "Material";

		public function get palette():String
		{
			return _palette;
		}

		public function set palette(value:String):void
		{
			if (_palette != value)
			{
				_palette = value;
				
				this.dispatchEvent(new Event("optionsChanged"));
			}
		}
		
		private var _onPointClick:Object;
		
		public function get onPointClick():Object
		{
			return _onPointClick;
		}
		
		public function set onPointClick(value:Object):void
		{
			if (_onPointClick != value)
			{
				_onPointClick = value;
				
				this.dispatchEvent(new Event("listenersChanged"));
			}
		}
		
		private var _onLegendClick:Object;
		
		public function get onLegendClick():Object
		{
			return _onLegendClick;
		}
		
		public function set onLegendClick(value:Object):void
		{
			if (_onLegendClick != value)
			{
				_onLegendClick = value;
				
				this.dispatchEvent(new Event("listenersChanged"));
			}
		}
	}
}