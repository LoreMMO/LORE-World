package LORE.Controller {
    import flash.display.*;
    import flash.net.*;
    import flash.events.*;
    import flash.system.*;
    import flash.display.MovieClip;

    public dynamic class LoadController extends MovieClip {
        public var r: MovieClip;

        public function LoadController(root: MovieClip) {
			// return;
            r = root;
        }

        public function loadData(o: Object): void {
            var l: URLLoader = new URLLoader(new URLRequest(getLoadPath(o.strFile)));
            l.dataFormat = URLLoaderDataFormat.BINARY;
            l.addEventListener(Event.COMPLETE, onLoadData(o.onComplete, o.context));
            if (o.onProgress != null) {
				l.addEventListener(ProgressEvent.PROGRESS, o.onProgress);
			};
			if (o.onError != null) {
				l.addEventListener(IOErrorEvent.IO_ERROR, o.onError);
			};
		}

        public function onLoadData(cb: Function, lc: LoaderContext): Function {
            return function (event: Event): void {
                // var request:* = r.gate.deinstateToArray(URLLoader(event.target).data);
                var request:* = (URLLoader(event.target).data);
                var loader: Loader = new Loader();
                loader.contentLoaderInfo.addEventListener(Event.COMPLETE, cb);
                loader.loadBytes(request, lc);
            };
        }

        public function getLoadPath(path: String): String {
			// var f: String = r.serverGate + r.generateRandomString(5) + r.gate.reinstate(path);
            var f: String = "https://game.aq.com/game/gamefiles/" + path;
			trace("[LOAD] Data >", f);
			trace("[LOAD] File >", path);

			return f;
		}
    }
}