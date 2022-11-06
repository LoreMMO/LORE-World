package LORE.Controller {
	import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
	
	public dynamic class NPC extends MovieClip {
        private var r: MovieClip;
        public var npcDisplay: DisplayObject;
        public var btnButton: SimpleButton;
		private var avtMC: selAvatarMC;
        // private var obj: Object;
        public var apopObj: Object;
        public var daeTEST:* ;
        public var displayAvts: Array;
		
		public function NPC() {
            // displayAvts = new Array();
            r = MovieClip(stage.getChildAt(0));
            // var objData: Object = r.world.map.NPCS[this.name].Dialogue;
            // displayAvts.push({data: objData});
            // trace("T1 = " + displayAvts[(displayAvts.length - 1)].data);
            // trace("T2 = " + displayAvts.data);
            // setChildIndex(daeTEST, 0);
            // btnButton.y = daeTEST.y - 165;
            // btnButton.x = btnButton.x;
            // btnButton.addEventListener(MouseEvent.MOUSE_DOWN, onClick, false, 0, true);
            
            var char: String;
            var tgt: Object;
            // tgt = r.world.map.NPCS[this.name].Dialogue as Object;

            // if (displayAvts.length != 0) {
            //     displayAvts.splice(0);
            // };
            tgt = r.world.map.NPCS[this.name].Dialogue;
            trace("Gender 1 = " + tgt.strGender);
            displayAvts = new Array();
            displayAvts.push({data: tgt});
            // displayAvts.push(tgt);
            // trace("displayAvts = " + displayAvts);
            trace("Gender 2 = " + displayAvts[0].data.strGender);

            // for (char in r.world.map.NPCS) {
            //     tgt = (r.world.map.NPCS[char] as Object);
            //     displayAvts.push({
            //         data: tgt.data
            //     });
            //     trace(displayAvts[(displayAvts.length - 1)].data.Dialogue.Name);
            // };

            daeTEST = createNPC(displayAvts[0].data);
		}

        public function createNPC(obj: Object): selAvatarMC {
            avtMC = new selAvatarMC(r);
            addChild(avtMC);
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

        public function onClick(event: MouseEvent): void {
            r.mixer.playSound("Good");
            r.world.map.targetNPC = this.name;
            // r.world.map.daeNPC = createNPC();
            r.world.map.daeNPC = createNPC(displayAvts.data);
            apopObj = "LORE.Controller.ApopController";
            r.world.attachMovieFront(apopObj);
        }

	}
}
