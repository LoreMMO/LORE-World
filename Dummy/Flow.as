package {
    import flash.events.*;
    import flash.display.*;
    import flash.utils.*;
    import flash.accessibility.*;
    import flash.errors.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.media.*;
    import flash.net.*;
    import flash.system.*;
    import flash.text.*;
    import flash.ui.*;

	public dynamic class Flow extends MovieClip {
		public var rootClass: MovieClip;
		public var frame: Dictionary;

		public function Flow() {
			frame = new Dictionary(true);
			addFrameScript(
				0, frameWait,
				1, frameBlank,
				2, frameDefault
			);
		}

		public function frameWait(): void {
			addEventListener(Event.ADDED_TO_STAGE, onAdd, false, 0, true);
			stop();
		}

		public function frameBlank(): void {
			trace("scope : " + MovieClip(parent).name);
			trace("var   : " + MovieClip(parent).strFrame);
			gotoAndPlay(MovieClip(parent).strFrame);
			stop();
		}

		public function frameDefault(): void {
			stop();
		}

		public function onAdd(event: Event): void {
			rootClass = MovieClip(stage.getChildAt(0));
		}

	}
}
