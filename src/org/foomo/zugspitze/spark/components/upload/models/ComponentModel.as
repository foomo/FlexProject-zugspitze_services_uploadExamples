/*
 * This file is part of the foomo Opensource Framework.
 *
 * The foomo Opensource Framework is free software: you can redistribute it
 * and/or modify it under the terms of the GNU Lesser General Public License as
 * published  by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * The foomo Opensource Framework is distributed in the hope that it will
 * be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along with
 * the foomo Opensource Framework. If not, see <http://www.gnu.org/licenses/>.
 */
package org.foomo.zugspitze.spark.components.upload.models
{
	import flash.net.FileReference;
	import flash.utils.ByteArray;

	import org.foomo.zugspitze.core.ZugspitzeModel;
	import org.foomo.zugspitze.services.upload.UploadProxy;
	import org.foomo.zugspitze.services.upload.vos.UploadReference;

	[Bindable]

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
	public class ComponentModel extends ZugspitzeModel
	{
		//-----------------------------------------------------------------------------------------
		// ~ Proxy
		//-----------------------------------------------------------------------------------------

		public var uploadProxy:UploadProxy = new UploadProxy('http://foomo.radact.interact.com/foomo/modules/Foomo.Zugspitze/services/upload.php/Foomo.Services.RPC/serve');

		//-----------------------------------------------------------------------------------------
		// ~ Variables
		//-----------------------------------------------------------------------------------------

		public var uploadReference:UploadReference;

		public var uploadReferenceUri:String;

		public var fileReference:FileReference;

		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function ComponentModel()
		{
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		public function setUploadReference(uploadReference:UploadReference):void
		{
			this.uploadReference = uploadReference;
			this.uploadReferenceUri = uploadReference.getReflectionUri(this.uploadProxy.endPoint);
		}

		public function setFileReference(fileRefernce:FileReference):void
		{
			this.fileReference = fileRefernce;
		}
	}
}