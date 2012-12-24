package com.bit101.utils {
	import com.bit101.components.Component;
	
	import flash.display.DisplayObjectContainer;

	public class MinimalUtil {
		
		/**
		 * Force components to draw immediately, instead of waiting for Invalidate to fire.
		 * Useful when measurements depend on the dimensions of components and you don't want to wait for the next frame.
		 * @param container The DisplayObjectContainer with MinimalComps Components to draw
		 * 
		 */		
		public static function forceDraw(container:DisplayObjectContainer):void {
			for (var i:int = 0; i < container.numChildren; i++) {
				if (container.getChildAt(i) is Component) {
					(container.getChildAt(i) as Component).draw();
				}
				else if (container.getChildAt(i) is DisplayObjectContainer) {
					forceDraw(container.getChildAt(i) as DisplayObjectContainer);
				}
			}
		}
		
	}
}