package {
	import LORE.Controller.*;
	import flash.display.*;
	import flash.events.*;
	import flash.geom.*;
	import flash.system.*;
	import flash.utils.*;
	import flash.display.MovieClip;

	public class selAvatarMC extends MovieClip {
		public var mcChar: selmcSkel;
		public var shadow: MovieClip;
		public var fx: MovieClip;
		public var proxy: MovieClip;
		public var CT3: ColorTransform;
		public var CT2: ColorTransform;
		public var CT1: ColorTransform;
		public var strGender: String;
		public var pAV: Object;
		public var helmEquipped: Boolean = false;
		private var strSkinLinkage: String;
		private var weaponLoad: Boolean = true;
		private var helmLoad: Boolean = true;
		private var armorLoad: Boolean = true;
		private var capeLoad: Boolean = true;
		private var hairLoad: Boolean = true;
		// private var game: Object;
		private var game: MovieClip;
		private var loreD: ApplicationDomain;
		private var loreC: LoaderContext;

		public var LORE: LoadController;

		public function selAvatarMC(mc: MovieClip) {
			CT3 = new ColorTransform(1, 1, 1, 1, 255, 255, 255, 0);
			CT2 = new ColorTransform(1, 1, 1, 1, 127, 127, 127, 0);
			CT1 = new ColorTransform(1, 1, 1, 1, 0, 0, 0, 0);
			loreD = new ApplicationDomain(ApplicationDomain.currentDomain);
			loreC = new LoaderContext(false, loreD);
			loreC.checkPolicyFile = false;
			loreC.allowCodeImport = true;
			pAV = {};
			addFrameScript(
				0, frame1, 
				4, frame5, 
				7, frame8, 
				9, frame10, 
				11, frame12, 
				12, frame13, 
				13, frame14, 
				19, frame20, 
				22, frame23
			);
			hideOptionalParts();
			game = mc;
			LORE = new LoadController(game);
		}

        public function getClass(assetLinkageID: String): Class {
            var c: Class;
            var sES: String;
            var o: Object = {};
            try {
                c = (getDefinitionByName(assetLinkageID) as Class);
                if (c != null) {
                    return (c);
                };
            } catch (e: Error) {};
            try {
                c = (loreD.getDefinition(assetLinkageID) as Class);
                if (c != null) {
                    return (c);
                };
            } catch (e: Error) {};
            trace((("getClass() could not find " + assetLinkageID) + "!"));

            return (null);
        }

		public function get loaded(): Boolean {
			return weaponLoad && helmLoad && armorLoad && capeLoad && hairLoad;
		}

		public function endAction(): void {
			mcChar.gotoAndPlay("Idle");
			return;
		}

		public function loadArmor(param1: String, param2: String): void {
			armorLoad = false;
			strSkinLinkage = param2;
			LORE.loadData({
				"strFile": "classes/" + strGender + "/" + param1,
				"onComplete": onLoadSkinComplete,
				"onError": ioErrorHandler,
				"context": loreC
			});
		}

		public function loadHair(): void {
			hairLoad = false;
			LORE.loadData({
				// "strFile": pAV.objData.strHairFilename,
				"strFile": pAV.objData.strHairFile,
				"onComplete": onHairLoadComplete,
				"onError": ioErrorHandler,
				"context": loreC
			});
		}

		// public function setColor(param1: MovieClip, param2: String, param3: String): void {
		// 	var _loc_4: * = Number(pAV.objData["intColor" + param2]);
		// 	param1.isColored = true;
		// 	param1.intColor = _loc_4;
		// 	param1.strLocation = param2;
		// 	param1.strShade = param3;
		// 	changeColor(param1, _loc_4, param3);
		// }

		public function setColor(mc:MovieClip, typ:String, strLocation:String, strShade:String):void
        {
            var intColor:Number = Number(pAV.objData[("intColor" + strLocation)]);
			trace("intColor = " + intColor);
			trace("strLocation = " + strLocation);
			trace("test = " + pAV.objData[("intColor" + strLocation)]);
            mc.isColored = true;
            mc.intColor = intColor;
            mc.strLocation = strLocation;
            mc.strShade = strShade;
            changeColor(mc, intColor, strShade);
        }

		public function changeColor(mc: MovieClip, intColor: Number, strShade: String, op: String = ""): void {
			var newCT: ColorTransform = new ColorTransform();
			if (op == "") {
				newCT.color = intColor;
			};
			switch (strShade.toUpperCase()) {
				case "LIGHT":
					newCT.redOffset = (newCT.redOffset + 100);
					newCT.greenOffset = (newCT.greenOffset + 100);
					newCT.blueOffset = (newCT.blueOffset + 100);
					break;
				case "DARK":
					newCT.redOffset = (newCT.redOffset - ((mc.strLocation == "Skin") ? 25 : 50));
					newCT.greenOffset = (newCT.greenOffset - 50);
					newCT.blueOffset = (newCT.blueOffset - 50);
					break;
				case "DARKER":
					newCT.redOffset = (newCT.redOffset - 125);
					newCT.greenOffset = (newCT.greenOffset - 125);
					newCT.blueOffset = (newCT.blueOffset - 125);
					break;
			};
			if (op == "-") {
				newCT.redOffset = (newCT.redOffset * -1);
				newCT.greenOffset = (newCT.greenOffset * -1);
				newCT.blueOffset = (newCT.blueOffset * -1);
			};
			if (((op == "") || (!(mc.transform.colorTransform.redOffset == newCT.redOffset)))) {
				mc.transform.colorTransform = newCT;
			};
		}

		// public function changeColor(param1: MovieClip, param2: Number, param3: String, param4: String = ""): void {
		// 	var _loc_5: * = new ColorTransform();
		// 	if (param4 == "") {
		// 		_loc_5.color = param2;
		// 	}
		// 	switch (param3.toUpperCase()) {
		// 		case "LIGHT":
		// 			{
		// 				_loc_5.redOffset = _loc_5.redOffset + 100;
		// 				_loc_5.greenOffset = _loc_5.greenOffset + 100;
		// 				_loc_5.blueOffset = _loc_5.blueOffset + 100;
		// 				break;
		// 			}
		// 		case "DARK":
		// 			{
		// 				_loc_5.redOffset = _loc_5.redOffset - (param1.strLocation == "Skin" ? (25) : (50));
		// 				_loc_5.greenOffset = _loc_5.greenOffset - 50;
		// 				_loc_5.blueOffset = _loc_5.blueOffset - 50;
		// 				break;
		// 			}
		// 		case "DARKER":
		// 			{
		// 				_loc_5.redOffset = _loc_5.redOffset - 125;
		// 				_loc_5.greenOffset = _loc_5.greenOffset - 125;
		// 				_loc_5.blueOffset = _loc_5.blueOffset - 125;
		// 				break;
		// 			}
		// 		default:
		// 			{
		// 				break;
		// 			}
		// 	}
		// 	if (param4 == "-") {
		// 		_loc_5.redOffset = _loc_5.redOffset * -1;
		// 		_loc_5.greenOffset = _loc_5.greenOffset * -1;
		// 		_loc_5.blueOffset = _loc_5.blueOffset * -1;
		// 	}
		// 	if (param4 == "" || param1.transform.colorTransform.redOffset != _loc_5.redOffset) {
		// 		param1.transform.colorTransform = _loc_5;
		// 	}
		// }

		public function loadMisc(): void {
			this.game.LoadMaster(this.onLoadMiscComplete, this.loreC, "items/grounds/" + this.pAV.objData.eqp["mi"].sFile, null, ioErrorHandler, false);
			return;
		} // end function

		public function loadWeapon(): void {
			weaponLoad = false;
			LORE.loadData({
				"strFile": pAV.objData.strWeaponFile,
				"onComplete": onLoadWeaponComplete,
				"onError": ioErrorHandler,
				"context": loreC
			});
		}

		// public function loadWeapon(): void {
		// 	weaponLoad = false;
		// 	game.loadData({
		// 		strFile: pAV.objData.eqp["Weapon"].sFile,
		// 		onComplete: onLoadWeaponComplete,
		// 		onError: ioErrorHandler,
		// 		context: loreC
		// 	});
		// }

		public function loadWeaponOff(): void {
			// this.game.LoadMaster(
			// 	this.onLoadWeaponOffComplete, 
			// 	this.loreC, 
			// 	"items/" + this.pAV.objData.eqp["Weapon"].sType + "s/" + this.pAV.objData.eqp["Weapon"].sFile, 
			// 	null, 
			// 	ioErrorHandler, 
			// 	false
			// );

			LORE.loadData({
				"strFile": pAV.objData.strWeaponFile,
				"onComplete": onLoadWeaponOffComplete,
				"onError": ioErrorHandler,
				"context": loreC
			});
		}

		public function loadCape(): void {
			capeLoad = false;
			LORE.loadData({
				"strFile": pAV.objData.strCapeFile,
				"onComplete": onLoadCapeComplete,
				"onError": ioErrorHandler,
				"context": loreC
			});
		}

		public function loadHelm(): void {
			helmLoad = false;
			LORE.loadData({
				"strFile": pAV.objData.strHelmFile,
				"onComplete": onLoadHelmComplete,
				"onError": ioErrorHandler,
				"context": loreC
			});
		}

		private function frame1(): void {
			this.mcChar.transform.colorTransform = this.CT1;
			this.mcChar.alpha = 0;
			stop();
			return;
		} // end function

		private function frame5(): void {
			this.mcChar.transform.colorTransform = this.CT1;
			this.mcChar.alpha = 0;
			return;
		} // end function

		private function frame8(): void {
			if (this.loaded) {
				gotoAndPlay("in1");
			} else {
				gotoAndPlay(8);
			}
			return;
		} // end function

		private function frame10(): void {
			this.mcChar.alpha = 0;
			return;
		} // end function

		private function frame12(): void {
			this.mcChar.transform.colorTransform = this.CT3;
			return;
		} // end function

		private function frame13(): void {
			this.mcChar.transform.colorTransform = this.CT2;
			return;
		} // end function

		private function frame14(): void {
			this.mcChar.transform.colorTransform = this.CT1;
			return;
		} // end function

		private function frame20(): void {
			this.mcChar.transform.colorTransform = this.CT1;
			return;
		} // end function

		private function frame23(): void {
			stop();
			return;
		} // end function

		private function hideOptionalParts(): void {
			var _loc_1: * = ["cape", "backhair", "robe", "backrobe"];
			var _loc_2: * = "";
			for (_loc_2 in _loc_1) {

				if (typeof (mcChar[_loc_1[_loc_2]]) != undefined) {
					mcChar[_loc_1[_loc_2]].visible = false;
				}
			}
			return;
		} // end function

		public function onLoadMiscComplete(event: Event): void {
			var _loc_2: * = undefined;
			try {
				_loc_2 = getClass(this.pAV.objData.eqp["mi"].sLink) as Class;
				this.shadow.removeChildAt(0);
				this.shadow.addChild(new _loc_2);
				this.shadow.scaleX = 1;
				this.shadow.scaleY = 1;
				var _loc_3: * = false;
				this.shadow.mouseChildren = false;
				this.shadow.mouseEnabled = _loc_3;
			} catch (err: Error) {}
			return;
		} // end function

		public function onLoadWeaponComplete(event: Event): void {
			var event: * = event;
			var AssetClass: Class;
			mcChar.weapon.removeChildAt(0);
			try {
				AssetClass = loreD.getDefinition(pAV.objData.strWeaponLink) as Class;
				mcChar.weapon.addChild(new AssetClass);
			} catch (err: Error) {
				mcChar.weapon.addChild(event.target.content);
			}
			weaponLoad = true;
			if (pAV.objData.strWeaponType == "Dagger") {
				loadWeaponOff();
			}
			return;
		} // end function

		// public function onLoadWeaponOffComplete(event: Event): void {
		// 	var e: Event;
		// 	var _arg1: * = event;
		// 	e = _arg1;
		// 	var AssetClass: * = undefined;
		// 	e = e;
		// 	this.mcChar.weaponOff.removeChildAt(0);
		// 	try {
		// 		AssetClass = getClass(this.pAV.objData.eqp["Weapon"].sLink) as Class;
		// 		this.mcChar.weaponOff.addChild(new AssetClass);
		// 	} catch (err: Error) {
		// 		mcChar.weaponOff.addChild(e.target.content);
		// 	}
		// 	this.mcChar.weaponOff.visible = true;
		// 	return;
		// } // end function

		public function onLoadWeaponOffComplete(event: Event): void {
            // weaponLoad = true;
			var AssetClass: Class;
			mcChar.weaponOff.removeChildAt(0);
			try {
				AssetClass = getClass(pAV.objData.strWeaponLink) as Class;
				mcChar.weaponOff.addChild(new AssetClass);
			} catch (error: Error) {
				mcChar.weaponOff.addChild(event.target.content);
			}
			mcChar.weaponOff.visible = true;
		}

		public function onLoadCapeComplete(event: Event): void {
            var AssetClass: Class = getClass(pAV.objData.strCapeLink) as Class;
			mcChar.cape.removeChildAt(0);
			mcChar.cape.cape = new (AssetClass)();
			mcChar.cape.addChild(mcChar.cape.cape);
			mcChar.cape.visible = true;
			capeLoad = true;
		}

		public function onLoadHelmComplete(event: Event): void {
			helmLoad = true;
			var AssetClass: Class = getClass(pAV.objData.strHelmLink) as Class;
			mcChar.head.helm.removeChildAt(0);
			mcChar.head.helm.addChild(new AssetClass);
			mcChar.head.helm.visible = true;
			mcChar.head.hair.visible = false;
			mcChar.backhair.visible = false;

			try {
				var AssetClass2: Class = getClass(pAV.objData.strHelmLink + "_backhair") as Class;
				if (AssetClass2 != null) {
					if (mcChar.backhair.numChildren > 0) {
						mcChar.backhair.removeChildAt(0);
					}
					mcChar.backhair.addChild(new AssetClass2);
					mcChar.backhair.visible = true;
				} else {
					mcChar.backhair.visible = false;
				}
			} catch (e) {
				mcChar.backhair.visible = false;
			}
		}

		// public function onLoadHelmComplete(event: Event): void {
		// 	var AssetClass2: Class;
		// 	var _arg1: * = event;
		// 	var e: * = _arg1;
		// 	e = e;
		// 	helmLoad = true;
		// 	helmEquipped = true;
		// 	var AssetClass: * = getClass(this.pAV.objData.eqp["he"].sLink) as Class;
		// 	this.mcChar.head.helm.removeChildAt(0);
		// 	this.mcChar.head.helm.addChild(new AssetClass);
		// 	this.mcChar.head.helm.visible = true;
		// 	this.mcChar.head.hair.visible = false;
		// 	this.mcChar.backhair.visible = false;
		// 	if (!this.loreD.hasDefinition(this.pAV.objData.eqp["he"].sLink + "_backhair")) {
		// 		return;
		// 	}
		// 	try {
		// 		AssetClass2 = getClass(this.pAV.objData.eqp["he"].sLink + "_backhair") as Class;
		// 		if (AssetClass2 != null) {
		// 			if (this.mcChar.backhair.numChildren > 0) {
		// 				this.mcChar.backhair.removeChildAt(0);
		// 			}
		// 			this.mcChar.backhair.addChild(new AssetClass2);
		// 			this.mcChar.backhair.visible = true;
		// 		} else {
		// 			this.mcChar.backhair.visible = false;
		// 		}
		// 	} catch (e) {
		// 		mcChar.backhair.visible = false;
		// 	}
		// }

		private function onLoadSkinComplete(_arg1: Event): void {
			var AssetClass: Class;
			strGender = pAV.objData.strGender;
			try {
                AssetClass = (getClass(((strSkinLinkage + strGender) + "Head")) as Class);
				this.mcChar.head.removeChildAt(0);
				this.mcChar.head.addChildAt(new(AssetClass)(), 0);
			} catch (err: Error) {
				AssetClass = (loreD.getDefinition(("mcHead" + strGender)) as Class);
				mcChar.head.removeChildAt(0);
				mcChar.head.addChildAt(new(AssetClass)(), 0);
			};
			AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "Chest")) as Class);
			this.mcChar.chest.removeChildAt(0);
			this.mcChar.chest.addChild(new(AssetClass)());
			AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "Hip")) as Class);
			this.mcChar.hip.removeChildAt(0);
			this.mcChar.hip.addChild(new(AssetClass)());
			AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "FootIdle")) as Class);
			this.mcChar.idlefoot.removeChildAt(0);
			this.mcChar.idlefoot.addChild(new(AssetClass)());
			AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "Foot")) as Class);
			this.mcChar.backfoot.removeChildAt(0);
			this.mcChar.backfoot.addChild(new(AssetClass)());
			AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "Shoulder")) as Class);
			this.mcChar.frontshoulder.removeChildAt(0);
			this.mcChar.frontshoulder.addChild(new(AssetClass)());
			this.mcChar.backshoulder.removeChildAt(0);
			this.mcChar.backshoulder.addChild(new(AssetClass)());
			AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "Hand")) as Class);
			this.mcChar.fronthand.removeChildAt(0);
			this.mcChar.fronthand.addChildAt(new(AssetClass)(), 0);
			this.mcChar.backhand.removeChildAt(0);
			this.mcChar.backhand.addChildAt(new(AssetClass)(), 0);
			// var drk: Color = new Color();
			// drk.brightness = -1;
			// this.mcChar.backhand.getChildAt(0).transform.colorTransform = drk;
			AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "Thigh")) as Class);
			this.mcChar.frontthigh.removeChildAt(0);
			this.mcChar.frontthigh.addChild(new(AssetClass)());
			this.mcChar.backthigh.removeChildAt(0);
			this.mcChar.backthigh.addChild(new(AssetClass)());
			AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "Shin")) as Class);
			this.mcChar.frontshin.removeChildAt(0);
			this.mcChar.frontshin.addChild(new(AssetClass)());
			this.mcChar.backshin.removeChildAt(0);
			this.mcChar.backshin.addChild(new(AssetClass)());
			try {
				AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "Robe")) as Class);
				this.mcChar.robe.removeChildAt(0);
				this.mcChar.robe.addChild(new(AssetClass)());
				this.mcChar.robe.visible = true;
			} catch (err: Error) {};
			try {
				AssetClass = (getClass(((this.strSkinLinkage + this.strGender) + "RobeBack")) as Class);
				this.mcChar.backrobe.removeChildAt(0);
				this.mcChar.backrobe.addChild(new(AssetClass)());
				this.mcChar.backrobe.visible = true;
			} catch (err: Error) {};
			visible = true;
			this.armorLoad = true;
		}

		private function onHairLoadComplete(event: Event): void {
			var _arg1: * = event;
			var event: * = _arg1;
			event = event;
			this.hairLoad = true;
			if (this.helmEquipped) {
				return;
			}
			var AssetClass: * = event.target.loader.contentLoaderInfo.applicationDomain.getDefinition(this.pAV.objData.strHairName + this.pAV.objData.strGender + "Hair");
			this.mcChar.head.hair.removeChildAt(0);
			this.mcChar.head.hair.addChild(new AssetClass);
			this.mcChar.backhair.visible = false;
			if (!this.loreD.hasDefinition(this.pAV.objData.strHairName + this.pAV.objData.strGender + "HairBack")) {
				return;
			}
			try {
				AssetClass = getClass(this.pAV.objData.strHairName + this.pAV.objData.strGender + "HairBack") as Class;
				if (AssetClass != null) {
					if (this.mcChar.backhair.numChildren > 0) {
						this.mcChar.backhair.removeChildAt(0);
					}
					this.mcChar.backhair.addChild(new AssetClass);
					this.mcChar.backhair.visible = true;
				} else {
					this.mcChar.backhair.visible = false;
				}
			} catch (e) {
				mcChar.backhair.visible = false;
			}
			return;
		} // end function

		private static function ioErrorHandler(event: IOErrorEvent): void {
			trace("ioErrorHandler: " + event);
			return;
		} // end function

	}
}