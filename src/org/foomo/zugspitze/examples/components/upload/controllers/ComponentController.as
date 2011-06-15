package org.foomo.zugspitze.examples.components.upload.controllers
{
	import flash.net.FileFilter;

	import org.foomo.zugspitze.core.ZugspitzeController;
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