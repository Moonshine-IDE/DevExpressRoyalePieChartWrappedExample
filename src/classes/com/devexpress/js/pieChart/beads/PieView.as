package classes.com.devexpress.js.pieChart.beads
{
    import classes.com.devexpress.js.charts.interfaces.IChart;
    import classes.com.devexpress.js.pieChart.interfaces.IPieModel;

    import org.apache.royale.core.IStrand;
    import org.apache.royale.events.Event;
    import org.apache.royale.html.beads.GroupView;
    import classes.com.devexpress.js.pieChart.events.PieEvent;
                                                
	public class PieView extends GroupView 
	{
		public function PieView()
		{
			super();
		}

		private var _model:IPieModel;
		
		override public function set strand(value:IStrand):void
	    {
	        super.strand = value;

	        this._model = (host as IChart).model as IPieModel;
	        
	        _model.addEventListener("dataSourceChanged", onDataSourceChanged);
	        _model.addEventListener("optionsChanged", onOptionsChanged);
	        _model.addEventListener("listenersChanged", onListenersChanged);
        }
		
        override protected function handleInitComplete(event:org.apache.royale.events.Event):void
        	{
        		super.handleInitComplete(event);
        		
        	    this.optionsChanged();
        	    this.listenersChanged();
        	}        	    
	
        	private function onDataSourceChanged(event:Event):void
        	{
        		window["$"](host.element).dxPieChart({
				dataSource: _model.dataSource
			});	
        	}
        	
        	private function onOptionsChanged(event:Event):void
        	{
        		this.optionsChanged();	
        	}
        	
        	private function onListenersChanged(event:Event):void
        	{
        		this.listenersChanged();	
        	}
        	
		private function listenersChanged():void
		{	
			if (_model["onPointClick"])
			{
				window["$"](host.element).dxPieChart({
					onPointClick: function(e:Object):void {
						host.dispatchEvent(new PieEvent(PieEvent.POINT_CLICK, e));
					}
				});	
			}
			
			if (_model["onLegendClick"])
			{
				window["$"](host.element).dxPieChart({
					onLegendClick: function(e:Object):void {
						host.dispatchEvent(new PieEvent(PieEvent.LEGEND_CLICK, e));
					}
				});	
			}
		}
		
		private function optionsChanged():void
		{
			window["$"](host.element).dxPieChart({
				series: _model.series,
				title: _model.title,
				export: _model.export,
				size: _model.size,
				palette: _model.palette
			});		
		}
	}
}