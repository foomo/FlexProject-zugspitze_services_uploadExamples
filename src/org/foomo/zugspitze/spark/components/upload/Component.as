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
package org.foomo.zugspitze.spark.components.upload
{
	import flash.events.Event;

	import mx.events.FlexEvent;

	import org.foomo.zugspitze.events.ZugspitzeEvent;
	import org.foomo.zugspitze.spark.components.upload.controllers.ComponentController;
	import org.foomo.zugspitze.spark.components.upload.models.ComponentModel;
	import org.foomo.zugspitze.spark.components.upload.views.ComponentView;
	import org.foomo.zugspitze.spark.core.ZugspitzeGroup;

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
	public class Component extends ZugspitzeGroup
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
			this.addEventListener(ZugspitzeEvent.ZUGSPITZE_COMPLETE, this.zugspitzeCompleteHandler);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private Eventhandler
		//-----------------------------------------------------------------------------------------

		private function zugspitzeCompleteHandler(event:ZugspitzeEvent):void
		{
			ComponentController(this.controller).initialize();
		}
	}
}