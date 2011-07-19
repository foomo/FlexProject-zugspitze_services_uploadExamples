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
package org.foomo.zugspitze.spark.components.upload.controllers
{
	import flash.net.FileFilter;

	import mx.controls.Alert;

	import org.foomo.zugspitze.core.ZugspitzeController;
	import org.foomo.zugspitze.events.OperationEvent;
	import org.foomo.zugspitze.operations.EventDispatcherChain;
	import org.foomo.zugspitze.operations.Operation;
	import org.foomo.zugspitze.operations.OperationChain;
	import org.foomo.zugspitze.services.upload.operations.BrowseFileReferenceOperation;
	import org.foomo.zugspitze.services.upload.operations.LoadFileReferenceOperation;
	import org.foomo.zugspitze.services.upload.operations.UploadFileReferenceOperation;
	import org.foomo.zugspitze.spark.components.upload.models.ComponentModel;
	import org.foomo.zugspitze.spark.components.upload.views.ComponentView;

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
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
		public function browse(browseFileErrorCalback:Function):void
		{
			OperationChain
				.create(BrowseFileReferenceOperation, [new FileFilter("Images (*.jpg, *.jpeg, *.png)", "*.jpg;*.jpeg;*.png")], 0, 0)
				.addOperationCompleteCallback(trace, null, 'hello world')
				.unloadOnOperationError()

				.chainOnOperationComplete(LoadFileReferenceOperation, ['operation.result'])
				.addOperationCompleteCallback(this.model.setFileReference, ['operation.result'])
				.addOperationCompleteCallback(trace, null, 'hello again')
				.unloadOnOperationError()

				.chainOnOperationComplete(UploadFileReferenceOperation, ['operation.result'], this.model.uploadProxy)
				.addOperationCompleteCallback(this.model.setUploadReference, ['operation.result'])
				.addOperationCompleteCallback(trace, null, 'and hello again')
				.unloadOnOperationComplete()
				.unloadOnOperationError()
			;
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private eventhandler
		//-----------------------------------------------------------------------------------------

		private function model_operationErrorHandler(event:OperationEvent):void
		{
			Alert.show(event.operation.error, 'Model Operation Error', Alert.OK);
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