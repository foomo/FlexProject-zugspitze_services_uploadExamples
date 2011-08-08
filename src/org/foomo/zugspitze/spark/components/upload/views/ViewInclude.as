import flash.display.DisplayObject;

import org.foomo.zugspitze.core.ZugspitzeView;
import org.foomo.zugspitze.spark.components.upload.Component;
import org.foomo.zugspitze.spark.components.upload.controllers.ComponentController;
import org.foomo.zugspitze.spark.components.upload.models.ComponentModel;
import org.foomo.zugspitze.spark.components.upload.views.ComponentView;


/**
 * @private
 */
[Bindable]
public var application:org.foomo.zugspitze.spark.components.upload.Component = org.foomo.zugspitze.spark.components.upload.Component(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:org.foomo.zugspitze.spark.components.upload.views.ComponentView;

/**
 * @private
 */
[Bindable]
public var model:org.foomo.zugspitze.spark.components.upload.models.ComponentModel;

/**
 * @private
 */
[Bindable]
public var controller:org.foomo.zugspitze.spark.components.upload.controllers.ComponentController;