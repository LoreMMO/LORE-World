package {
	import flash.display.*;
	import flash.utils.*;
	import flash.events.*;

	public dynamic class Flow extends MovieClip {
		public var rootClass: MovieClip;
		public var frame: Dictionary;
		public var NPCS: Object = {
			Zueira: {
				Dialogue: {
					Name: "Zueira",
					Subtitle: "Losers",
					Context: "test",
					strGender: "F",
					intColorHair: "0x5e4f37",
					intColorSkin: "0xeacd8a",
					intColorEye: "0x1649e",
					intColorBase: "0x000000",
					intColorTrim: "0x000000",
					intColorAccessory: "0x000000",

					strHelmFile: "items/helms/EdenHighFormalsHair.swf",
					strHelmLink: "EdenHighFormalsHair",

					strWeaponFile: "items/maces/LitchKnightWhip.swf",
					strWeaponLink: "LitchKnightWhip",
					strWeaponType: "Whip",

					strCapeFile: "items/capes/BurningloveNationL.swf",
					strCapeLink: "BurningloveNationL",
					
					strArmorFile: "pirate2_skin.swf",
					strArmorLink: "Pirate2",

					Buttons: [{
						Name: "Starter Shop", 
						Action: "Shop", 
						Value: 1
					}, {
						Name: "Quest", 
						Action: "Quest", 
						Value: "1,2,3"
					}]
				}
			}
		};
		
		// public var NPCS: Object = {
		// 	Zueira: {
		// 		Name: "Zueira",
		// 		Context: "test",
		// 		strGender: "F",

		// 		strHairFile: "hairs/F/Pig1Bangs1.swf",
		// 		strHairName: "Pig1Bangs1",

		// 		strWeaponFile: "items/swords/Nightmaresword1.swf",
		// 		strWeaponLink: "",
				
		// 		strArmorFile: "GreenguardKnight.swf",
		// 		strArmorLink: "GreenguardKnight",

		// 		Buttons: [{
		// 			Name: "Starter Shop", 
		// 			Action: "Shop", 
		// 			Value: 1
		// 		}, {
		// 			Name: "Quest", 
		// 			Action: "Quest", 
		// 			Value: "1,2,3"
		// 		}]
		// 	}
		// };

		public function Flow() {
			frame = new Dictionary(true);
			addFrameScript(
				0, frameWait,
				1, frameBlank,
				2, frameDefault,
				3, frameDefault
			);
		}

		public function frameWait(): void {
			addEventListener(Event.ADDED_TO_STAGE, onAdd, false, 0, true);
			stop();
		}

		public function frameBlank(): void {
			trace("[LORE] Scope :", MovieClip(parent).name);
			trace("[LORE] Var   :", MovieClip(parent).strFrame);
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