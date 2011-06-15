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

		public var fileReferenceModel:FileReferenceModel = new FileReferenceModel('http://radact.interact.com/creation/modules/Zugspitze/services/upload.php/Rad.Services.RPC/serve');
	}
}