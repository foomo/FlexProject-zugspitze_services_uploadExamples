package org.foomo.zugspitze.examples.components.upload.controllers
{
	import flash.net.FileFilter;

	import mx.controls.Alert;

	import org.foomo.zugspitze.core.ZugspitzeController;
	import org.foomo.zugspitze.events.OperationEvent;
	import org.foomo.zugspitze.examples.components.upload.models.ComponentModel;
	import org.foomo.zugspitze.examples.components.upload.views.ComponentView;
	import org.foomo.zugspitze.services.upload.commands.SelectAndUploadFileCommand;

	public class ComponentController extends ZugspitzeController
	{
		//-----------------------------------------------------------------------------------------
		// ~ Initialize application
		//-----------------------------------------------------------------------------------------

		public function initialize():void
		{
			// TODO: handle operation faults?
			//this.model.addEventListener(OperationEvent.OPERATION_ERROR, this.model_operationErrorHandler);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		/**
		 *
		 */
		public function browse():void
		{
			this.executeCommand(new SelectAndUploadFileCommand(this.model.fileReferenceModel, [new FileFilter("Images (*.jpg, *.jpeg, *.png)", "*.jpg;*.jpeg;*.png")], 0, 0, false));
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private eventhandler
		//-----------------------------------------------------------------------------------------

		private function model_operationErrorHandler(event:OperationEvent):void
		{
			//Alert.show(event.operationError, 'Model Operation Error', Alert.OK);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private helper methods
		//-----------------------------------------------------------------------------------------

		private function get model():ComponentModel
		{
			return this.zugspitze.model as ComponentModel
		}

		private function get view():ComponentView
		{
			return this.zugspitze.view as ComponentView
		}
	}
}