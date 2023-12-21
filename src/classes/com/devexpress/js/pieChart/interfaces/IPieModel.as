package classes.com.devexpress.js.pieChart.interfaces
{
	import org.apache.royale.events.IEventDispatcher;

	public interface IPieModel extends IEventDispatcher
	{
		function get dataSource():Object;
		function set dataSource(value:Object):void;

		function get series():Array;
		function set series(value:Array):void;

		function get title():Object;
		function set title(value:Object):void;
		
		function get export():Object;
		function set export(value:Object):void;
		
		function get size():Object;
		function set size(value:Object):void;
		
		function get palette():String;
		function set palette(value:String):void;
	}
}