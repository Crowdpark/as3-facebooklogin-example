package com.crowdpark.mvcs
{
	import com.crowdpark.mvcs.commands.StartupCommand;
	import com.crowdpark.mvcs.views.MainContainer;
	import com.crowdpark.mvcs.views.MainContainerMediator;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author Francis Varga
	 */
	public class FacebookExampleContext extends Context
	{
		public function FacebookExampleContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true)
		{
			super(contextView, autoStartup);
		}

		override public function startup() : void
		{
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand);			
			 mediatorMap.mapView(MainContainer, MainContainerMediator);
			
			super.startup();
		}
	}
}
