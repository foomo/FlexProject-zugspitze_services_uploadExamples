import org.foomo.zugspitze.spark.components.upload.Component;
import org.foomo.zugspitze.spark.components.upload.controllers.ComponentController;
import org.foomo.zugspitze.spark.components.upload.models.ComponentModel;
import org.foomo.zugspitze.spark.components.upload.views.ComponentView;
import org.foomo.zugspitze.core.ZugspitzeView;

import flash.display.DisplayObject;


/**
 * @private
 */
[Bindable]
public var application:Component = Component(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:ComponentView;

/**
 * @private
 */
[Bindable]
public var model:ComponentModel;

/**
 * @private
 */
[Bindable]
public var controller:ComponentController;