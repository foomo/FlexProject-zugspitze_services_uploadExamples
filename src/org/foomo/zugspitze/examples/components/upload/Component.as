package org.foomo.zugspitze.examples.components.upload
{
	import flash.events.Event;

	import mx.events.FlexEvent;

	import org.foomo.zugspitze.apps.GroupComponent;
	import org.foomo.zugspitze.examples.components.upload.controllers.ComponentController;
	import org.foomo.zugspitze.examples.components.upload.models.ComponentModel;
	import org.foomo.zugspitze.examples.components.upload.views.ComponentView;

	public class Component extends GroupComponent
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function Component()
		{
			super();
			this.viewClass = ComponentView;
			this.modelClass = ComponentModel;
			this.controllerClass = ComponentController;
			this.addEventListener(FlexEvent.CREATION_COMPLETE, this.creationCompleteHandler);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private Eventhandler
		//-----------------------------------------------------------------------------------------

		private function creationCompleteHandler(event:Event):void
		{
			ComponentController(this.controller).initialize();
		}
	}
}