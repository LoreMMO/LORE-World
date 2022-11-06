package LORE.Controller {
	import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import flash.display.MovieClip;
	
	public dynamic class NPC extends MovieClip {
        private var r: MovieClip;
        public var npcDisplay: DisplayObject;
        public var btnButton: SimpleButton;
		private var avtMC: selAvatarMC;
        private var obj: Object;
        public var apopObj: Object;
        public var daeTEST:* ;
        private var displayAvts: Array;
        public var okayDAE: DisplayObject;

		public function NPC() {
            r = MovieClip(stage.getChildAt(0));
            var tgt: Object;
            tgt = r.world.map.NPCS[this.name].Dialogue;
            displayAvts = new Array();
            displayAvts.push({
                data: tgt,
                mc: null
            });
            // daeTEST = createCharacterMC(displayAvts[0].data);
            okayDAE = createCharacterMC(displayAvts[0].data);
            displayAvts[0]["mc"] = okayDAE;
            addChild(displayAvts[0]["mc"]);

            btnButton.y = displayAvts[0]["mc"] - 165;
            btnButton.x = btnButton.x;
            btnButton.addEventListener(MouseEvent.MOUSE_DOWN, onClick, false, 0, true);
		}

        // public function NPC() {
        //     r = MovieClip(stage.getChildAt(0));
        //     obj = r.world.map.NPCS[this.name].Dialogue;
        //     // daeTEST = createNPC();
        //     // setChildIndex(daeTEST, 0);

        //     CHARS = new MovieClip();

        //     btnButton.y = daeTEST.y - 165;
        //     btnButton.x = btnButton.x;
        //     btnButton.addEventListener(MouseEvent.MOUSE_DOWN, onClick, false, 0, true);
		// }

        public function createCharacterMC(obj: Object): selAvatarMC {
            avtMC = new selAvatarMC(r);
            // addChild(avtMC);
            avtMC.gotoAndPlay("hold");
            // avtMC.name = this.name + "_NPC";
            // avtMC.name = ("previewMC" + Math.random());
            avtMC.name = (this.name + "_NPC" + Math.random());
            avtMC.strGender = obj.strGender;
            trace("intColorSkin = " + obj.intColorSkin);

            avtMC.pAV.pMC = avtMC;
            avtMC.pAV.objData = obj;

            if (obj.strWeaponFile == "None") {
                avtMC.mcChar.weapon.visible = false;
                avtMC.mcChar.weaponOff.visible = false;
            } else {
                avtMC.loadWeapon();
            };
            if (obj.strWeaponType == "Dagger") {
                avtMC.loadWeaponOff();
            } else {
                avtMC.mcChar.weaponOff.visible = false;
            };
            if ((((obj.strHelmFile == "None")) || (((obj.hasOwnProperty("showHelm")) && (!(obj.showHelm)))))) {
                avtMC.mcChar.head.helm.visible = false;
                avtMC.mcChar.head.hair.visible = true;
            } else {
                avtMC.loadHelm();
            };
            if (obj.strCapeFile == "None") {
                avtMC.mcChar.cape.visible = false;
            } else {
                avtMC.loadCape();
            };
            if (obj.strArmorFile != "None") {
                avtMC.loadArmor(obj.strArmorFile, obj.strArmorLink);
            };

            return (avtMC);
        }

        public function createNPC(): selAvatarMC {
            avtMC = new selAvatarMC(r);
            avtMC.gotoAndPlay("hold");
            avtMC.name = this.name + "_NPC";
            avtMC.strGender = obj.strGender;

            avtMC.pAV.pMC = avtMC;
            avtMC.pAV.objData = obj;

            if (obj.strWeaponFile == "None") {
                avtMC.mcChar.weapon.visible = false;
                avtMC.mcChar.weaponOff.visible = false;
            } else {
                avtMC.loadWeapon();
            };
            if (obj.strWeaponType == "Dagger") {
                avtMC.loadWeaponOff();
            } else {
                avtMC.mcChar.weaponOff.visible = false;
            };
            if ((((obj.strHelmFile == "None")) || (((obj.hasOwnProperty("showHelm")) && (!(obj.showHelm)))))) {
                avtMC.mcChar.head.helm.visible = false;
                avtMC.mcChar.head.hair.visible = true;
            } else {
                avtMC.loadHelm();
            };
            if (obj.strCapeFile == "None") {
                avtMC.mcChar.cape.visible = false;
            } else {
                avtMC.loadCape();
            };
            if (obj.strArmorFile != "None") {
                avtMC.loadArmor(obj.strArmorFile, obj.strArmorLink);
            };

            // addChild(avtMC);

            return (avtMC);
        }

        public function onClick(event: MouseEvent): void {
            r.mixer.playSound("Good");
            r.world.map.targetNPC = this.name;
            r.world.map.daeNPC = displayAvts[0]["mc"];
            apopObj = "LORE.Controller.ApopController";
            r.menuClose();
            r.world.attachMovieFront(apopObj);
        }

	}
}
