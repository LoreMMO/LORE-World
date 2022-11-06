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
		
		public function NPC() {
            r = MovieClip(stage.getChildAt(0));
            obj = r.world.map.NPCS[this.name].Dialogue;

            // avatarMC = new selAvatarMC(r);
            // createNPC(avatarMC, objData);
            // avatarMC.scaleX = (avatarMC.scaleX * 1);
            // avatarMC.scaleY = (avatarMC.scaleY * 1);
            // addEventListener(MouseEvent.MOUSE_DOWN, onClick);

            // daeTEST = createNPC(avatarMC, objData);
            daeTEST = createNPC();
            setChildIndex(daeTEST, 0);
            btnButton.y = daeTEST.y - 165;
            btnButton.x = btnButton.x;
            // btnButton.y = daeTEST.y - 10;
            // btnButton.addEventListener(MouseEvent.MOUSE_DOWN, onClick);
            btnButton.addEventListener(MouseEvent.MOUSE_DOWN, onClick, false, 0, true);
		}

        // public function createNPC(mc: selAvatarMC): selAvatarMC {
        //     addChild(mc);
        //     mc.gotoAndPlay("hold");
        //     mc.name = ("previewMC" + Math.random());
        //     mc.strGender = obj.strGender;
        //     mc.pAV.pMC = mc;
        //     mc.pAV.objData = obj;

        //     if (obj.strWeaponFile == "None") {
        //         mc.mcChar.weapon.visible = false;
        //         mc.mcChar.weaponOff.visible = false;
        //     } else {
        //         mc.loadWeapon();
        //     };

        //     if (obj.strArmorFile != "None") {
        //         mc.loadArmor(obj.strArmorFile, obj.strArmorLink);
        //     };

        //     mc.scaleX = (mc.scaleX * 1);
        //     mc.scaleY = (mc.scaleY * 1);

        //     npcDisplay = mc;
        //     return mc;
        // }

        // public function createNPC(avtMC: selAvatarMC, obj: Object): selAvatarMC {
        public function createNPC(): selAvatarMC {
            avtMC = new selAvatarMC(r);
            addChild(avtMC);
            avtMC.gotoAndPlay("hold");
            // avtMC.name = ("previewMC" + Math.random());
            avtMC.name = this.name + "_NPC";
            avtMC.strGender = obj.strGender;

            // avtMC.pAV.isMyAvatar = false;
            avtMC.pAV.pMC = avtMC;
            avtMC.pAV.objData = obj;
            // avtMC.pAV.dataLeaf.showCloak = true;
            // avtMC.pAV.dataLeaf.showHelm = !((obj.strHelmFile == "None"));

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

        // public function createNPC(): void {
        //     avatarMC = new selAvatarMC(r);
        //     avatarMC.gotoAndPlay("hold");
        //     avatarMC.name = ("previewMC" + Math.random());
        //     avatarMC.strGender = obj.strGender;
        //     avatarMC.pAV.pMC = avatarMC;
        //     avatarMC.pAV.objData = obj;

        //     if (obj.strWeaponFile == "None") {
        //         avatarMC.mcChar.weapon.visible = false;
        //         avatarMC.mcChar.weaponOff.visible = false;
        //     } else {
        //         avatarMC.loadWeapon();
        //     };

        //     if (obj.strArmorFile != "None") {
        //         avatarMC.loadArmor(obj.strArmorFile, obj.strArmorLink);
        //     };

        //     avatarMC.scaleX = (avatarMC.scaleX * 1);
        //     avatarMC.scaleY = (avatarMC.scaleY * 1);

        //     addChild(avatarMC);

        //     btnButton.y = avatarMC.y - 75;
        //     addEventListener(MouseEvent.MOUSE_DOWN, onClick);
        // }

        public function onClick(event: MouseEvent): void {
            r.mixer.playSound("Good");
            r.world.map.targetNPC = this.name;
            // r.world.map.daeNPC = createNPC(avatarMC, objData);
            // r.world.map.daeNPC = createNPC();
            r.world.map.daeNPC = daeTEST;
            // r.world.openApop({
            //     npcLinkage: this.name + "_NPC",
            //     cnt: "LORE.Controller.ApopController",
            //     npcEntry: "left",
            //     scene: "none"
            // });
            apopObj = "LORE.Controller.ApopController";
            r.menuClose();
            r.world.attachMovieFront(apopObj);
        }

	}
}
