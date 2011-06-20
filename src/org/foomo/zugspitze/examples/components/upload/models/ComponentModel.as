package org.foomo.zugspitze.examples.components.upload.models
{
	import org.foomo.zugspitze.core.ZugspitzeModel;
	import org.foomo.zugspitze.services.upload.models.FileReferenceModel;

	[Bindable]
	public class ComponentModel extends ZugspitzeModel
	{
		//-----------------------------------------------------------------------------------------
		// ~ Variables
		//-----------------------------------------------------------------------------------------

		public var fileReferenceModel:FileReferenceModel

		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function ComponentModel()
		{
			this.fileReferenceModel = this.registerModel(new FileReferenceModel('http://foomo.radact.interact.com/foomo/modules/Foomo.Zugspitze/services/upload.php/Foomo.Services.RPC/serve'));
		}
	}
}