package com.crowdpark.mvcs.commands
{
	import com.facebook.graph.Facebook;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Francis Varga
	 */
	public class StartupCommand extends Command
	{
		override public function execute() : void
		{
			Facebook.init("FB_ID", onInit);
		}

		private function onInit(success : Object, error : Object) : void
		{
			if (success)
			{
				// Facebook User has a Access Token and is login
			}
			else
			{
				 Facebook.getLoginStatus();
				 Facebook.addJSEventListener('auth.sessionChange', onAuthSessionChange);
			}
		}

		private function onLogin(success : Object, error : Object) : void
		{
			if (success)
			{
				trace(success);
			}
			else
			{
				trace(error);
			}
		}

		private function onAuthSessionChange(success : Object, error : Object) : void
		{
			
		}
	}
}
