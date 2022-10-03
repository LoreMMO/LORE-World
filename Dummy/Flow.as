package {
	import flash.display.*;
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.utils.*;
	import flash.media.*;

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

		public function frameWait() {
			addEventListener(Event.ADDED_TO_STAGE, onAdd, false, 0, true);
			// addEventListener(Event.REMOVED_FROM_STAGE, onRem, false, 0, true);
			stop();
		}

		public function frameBlank() {
			trace("scope: " + MovieClip(parent).name);
			trace("var:   " + MovieClip(parent).strFrame);
			gotoAndPlay(MovieClip(parent).strFrame);
			stop();
		}

		public function frameDefault() {
			stop();
		}

		public function onAdd(event: Event): void {
			rootClass = MovieClip(stage.getChildAt(0));
		}

		public function onRem(event: Event): void {
			SoundMixer.stopAll();
		}

	}
}
