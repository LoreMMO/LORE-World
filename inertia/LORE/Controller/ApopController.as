package LORE.Controller {
    import flash.display.*;
    import flash.text.*;
    import flash.events.*;

    public dynamic class ApopController extends MovieClip {
        public var r: MovieClip;
        public var obj: Object;
        public var txtName: TextField;
        public var txtSubtitle: TextField;
        public var txtContext: TextField;
        private var daeYES: DisplayObject;
        public var btnClose: MovieClip

        public function ApopController() {
            addFrameScript(
                0, Wait
            );
        }

        public function Wait(): void {
            r = MovieClip(stage.getChildAt(0));
            obj = r.world.map.NPCS[r.world.map.targetNPC].Dialogue;
            setup();
            // btnClose.addEventListener(MouseEvent.MOUSE_DOWN, onClick);
            btnClose.addEventListener(MouseEvent.MOUSE_DOWN, onClick, false, 0, true);
        }

        public function setup(): void {
            txtName.text = obj.Name;
            txtSubtitle.text = obj.Subtitle;
            txtContext.htmlText = obj.Context;

            daeYES = addChild(r.world.map.daeNPC);
            daeYES.scaleX = (daeYES.scaleX * 5);
            daeYES.scaleY = (daeYES.scaleY * 5);
            // daeYES.x = 247;
            // daeYES.y = 197;
            daeYES.x = 130;
            daeYES.y = 650;
            
        }

        private function onClick(event: MouseEvent): void {
            r.mixer.playSound("Click");
            switch (event.currentTarget.name) {
                case "btnClose":
                    // MovieClip(MovieClip(parent).parent).removeChild(MovieClip(parent));
					r.ui.mcPopup.onClose();
                    r.world.removeMovieFront();
					// MovieClip(mcCharSelect.parent).removeChild(mcCharSelect);
                    // r.world.FG.removeChildAt(0);
					break;
            }
        }

    }
}