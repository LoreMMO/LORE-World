package {
	import flash.display.*;

	public class selmcSkel extends MovieClip {
		public var idlefoot: MovieClip;
		public var chest: MovieClip;
		public var weaponOff: MovieClip;
		public var frontthigh: MovieClip;
		public var cape: MovieClip;
		public var frontshoulder: MovieClip;
		public var hitbox: MovieClip;
		public var head: MovieClip;
		public var backshoulder: MovieClip;
		public var hip: MovieClip;
		public var backthigh: MovieClip;
		public var backhair: MovieClip;
		public var backshin: MovieClip;
		public var weaponTemp: MovieClip;
		public var robe: MovieClip;
		public var weapon: MovieClip;
		public var frontshin: MovieClip;
		public var backfoot: MovieClip;
		public var backrobe: MovieClip;
		public var arrow: MovieClip;
		public var emoteFX: MovieClip;
		public var frontfoot: MovieClip;
		public var backhand: MovieClip;
		public var fronthand: MovieClip;
		public var animLoop: int;
		public var avtMC: MovieClip;
		public var onMove: Boolean = false;

		public function selmcSkel() {
			addFrameScript(0, this.frame1, 7, this.frame8, 8, this.frame9, 16, this.frame17, 20, this.frame21, 27, this.frame28, 32, this.frame33, 40, this.frame41, 45, this.frame46, 53, this.frame54, 67, this.frame68, 68, this.frame69, 84, this.frame85, 85, this.frame86, 92, this.frame93, 98, this.frame99, 99, this.frame100, 116, this.frame117, 117, this.frame118, 130, this.frame131, 131, this.frame132, 155, this.frame156, 165, this.frame166, 166, this.frame167, 185, this.frame186, 186, this.frame187, 200, this.frame201, 209, this.frame210, 210, this.frame211, 244, this.frame245, 245, this.frame246, 261, this.frame262, 262, this.frame263, 271, this.frame272, 280, this.frame281, 288, this.frame289, 289, this.frame290, 309, this.frame310, 312, this.frame313, 313, this.frame314, 345, this.frame346, 346, this.frame347, 364, this.frame365, 366, this.frame367, 367, this.frame368, 392, this.frame393, 393, this.frame394, 457, this.frame458, 458, this.frame459, 475, this.frame476, 494, this.frame495, 502, this.frame503, 510, this.frame511, 511, this.frame512, 512, this.frame513, 558, this.frame559, 559, this.frame560, 589, this.frame590, 590, this.frame591, 598, this.frame599, 599, this.frame600, 607, this.frame608, 620, this.frame621, 621, this.frame622, 632, this.frame633, 653, this.frame654, 677, this.frame678, 695, this.frame696, 702, this.frame703, 705, this.frame706, 721, this.frame722, 722, this.frame723, 725, this.frame726, 751, this.frame752, 752, this.frame753, 756, this.frame757, 780, this.frame781, 781, this.frame782, 785, this.frame786, 808, this.frame809, 809, this.frame810, 826, this.frame827, 827, this.frame828, 848, this.frame849, 849, this.frame850, 855, this.frame856, 856, this.frame857, 885, this.frame886, 886, this.frame887, 909, this.frame910, 910, this.frame911, 913, this.frame914, 930, this.frame931, 931, this.frame932, 934, this.frame935, 957, this.frame958, 958, this.frame959, 961, this.frame962, 983, this.frame984, 984, this.frame985, 987, this.frame988, 1001, this.frame1002, 1002, this.frame1003, 1013, this.frame1014, 1014, this.frame1015, 1017, this.frame1018, 1033, this.frame1034, 1034, this.frame1035, 1037, this.frame1038, 1048, this.frame1049, 1049, this.frame1050, 1070, this.frame1071, 1071, this.frame1072, 1082, this.frame1083, 1083, this.frame1084, 1087, this.frame1088, 1096, this.frame1097, 1097, this.frame1098, 1100, this.frame1101, 1111, this.frame1112, 1112, this.frame1113, 1121, this.frame1122, 1122, this.frame1123, 1126, this.frame1127, 1135, this.frame1136, 1136, this.frame1137, 1139, this.frame1140, 1150, this.frame1151, 1151, this.frame1152, 1162, this.frame1163, 1163, this.frame1164, 1166, this.frame1167, 1178, this.frame1179, 1179, this.frame1180, 1182, this.frame1183, 1191, this.frame1192, 1192, this.frame1193, 1203, this.frame1204, 1204, this.frame1205, 1207, this.frame1208, 1221, this.frame1222, 1222, this.frame1223, 1226, this.frame1227, 1243, this.frame1244, 1247, this.frame1248, 1253, this.frame1254, 1254, this.frame1255, 1257, this.frame1258, 1266, this.frame1267, 1267, this.frame1268, 1269, this.frame1270, 1283, this.frame1284, 1284, this.frame1285, 1295, this.frame1296, 1296, this.frame1297, 1297, this.frame1298, 1307, this.frame1308, 1319, this.frame1320, 1320, this.frame1321, 1339, this.frame1340, 1340, this.frame1341, 1354, this.frame1355, 1355, this.frame1356, 1370, this.frame1371, 1371, this.frame1372, 1404, this.frame1405, 1405, this.frame1406, 1442, this.frame1443, 1443, this.frame1444, 1451, this.frame1452, 1452, this.frame1453, 1524, this.frame1525, 1525, this.frame1526, 1562, this.frame1563, 1563, this.frame1564, 1578, this.frame1579, 1579, this.frame1580, 1588, this.frame1589, 1589, this.frame1590, 1620, this.frame1621, 1621, this.frame1622, 1624, this.frame1625, 1647, this.frame1648, 1648, this.frame1649, 1651, this.frame1652, 1673, this.frame1674, 1674, this.frame1675, 1690, this.frame1691, 1691, this.frame1692, 1704, this.frame1705, 1705, this.frame1706, 1724, this.frame1725, 1725, this.frame1726, 1766, this.frame1767, 1767, this.frame1768, 1781, this.frame1782, 1782, this.frame1783, 1794, this.frame1795, 1795, this.frame1796, 1818, this.frame1819);
		}

		public function emoteLoopFrame(): int {
			var _loc_1: * = 0;
			while (_loc_1 < currentLabels.length) {

				if (currentLabels[_loc_1].name == currentLabel) {
					return currentLabels[_loc_1].frame;
				}
				_loc_1++;
			}
			return 8;
		}

		public function emoteLoop(param1: int, param2: Boolean = true): void {
			var _loc_3: * = this.emoteLoopFrame();
			if (_loc_3 > 8) {
				var _loc_4: * = this;
				this.animLoop = (this.animLoop + 1);
				_loc_4.animLoop = this.animLoop + 1;
				if (this.animLoop < param1) {
					this.gotoAndPlay((_loc_3 + 1));
					return;
				}
			}
			if (param2) {
				this.gotoAndPlay("Idle");
			}
			return;
		}

		public function showIdleFoot(): void {
			frontfoot.visible = false;
			idlefoot.visible = true;
		}

		public function showFrontFoot(): void {
			this.idlefoot.visible = false;
			this.frontfoot.visible = true;
			return;
		}

		public function endAction(): void {
			this.gotoAndPlay("Idle");
			return;
		}

		public function frame1(): void {
			this.animLoop = 0;
			this.avtMC = null;
			gotoAndPlay("Idle");
		}

		public function frame8(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			stop();
			return;
		}

		public function frame9(): void {
			gotoAndStop("Idle");
		}

		public function frame17(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndPlay("Move");
			return;
		}

		public function frame21(): void {
			if (this.onMove) {
				gotoAndPlay("mountWalk");
			}
			return;
		}

		public function frame28(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndPlay("Move");
			return;
		}

		public function frame33(): void {
			if (this.onMove) {
				gotoAndPlay("horseWalk");
			}
			return;
		}

		public function frame41(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndPlay("Move");
			return;
		}

		public function frame46(): void {
			if (this.onMove) {
				gotoAndPlay("throneWalk");
			}
			return;
		}

		public function frame54(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndPlay("Move");
			return;
		}

		public function frame68(): void {
			if (this.onMove) {
				gotoAndPlay("Walk");
			}
			return;
		}

		public function frame69(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame85(): void {
			gotoAndPlay("Dance");
			return;
		}

		public function frame86(): void {
			this.animLoop = 0;
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame93(): void {
			this.emoteLoop(3, false);
			return;
		}

		public function frame99(): void {
			stop();
			return;
		}

		public function frame100(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame117(): void {
			stop();
			return;
		}

		public function frame118(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame131(): void {
			gotoAndPlay("Use");
			return;
		}

		public function frame132(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame156(): void {
			this.emoteLoop(3, false);
			return;
		}

		public function frame166(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame167(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame186(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame187(): void {
			this.animLoop = 0;
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame201(): void {
			this.emoteLoop(3, false);
			return;
		}

		public function frame210(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame211(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame245(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame246(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame262(): void {
			gotoAndPlay("Airguitar");
			return;
		}

		public function frame263(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame272(): void {
			this.showFrontFoot();
			return;
		}

		public function frame281(): void {
			this.showIdleFoot();
			return;
		}

		public function frame289(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame290(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame310(): void {
			if (this.scaleX < 0) {
				this.emoteFX.scaleX = this.emoteFX.scaleX * -1;
			}
			return;
		}

		public function frame313(): void {
			stop();
			return;
		}

		public function frame314(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame346(): void {
			if (this.onMove) {
				gotoAndPlay("Walk");
			}
			stop();
			return;
		}

		public function frame347(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame365(): void {
			this.showIdleFoot();
			return;
		}

		public function frame367(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame368(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame393(): void {
			gotoAndPlay("Dance2");
			return;
		}

		public function frame394(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame458(): void {
			gotoAndPlay("Swordplay");
			return;
		}

		public function frame459(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame476(): void {
			this.showFrontFoot();
			return;
		}

		public function frame495(): void {
			stop();
			return;
		}

		public function frame503(): void {
			this.animLoop = 0;
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame511(): void {
			this.emoteLoop(3);
			return;
		}

		public function frame512(): void {
			stop();
			return;
		}

		public function frame513(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame559(): void {
			stop();
			return;
		}

		public function frame560(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame590(): void {
			stop();
			return;
		}

		public function frame591(): void {
			this.animLoop = 0;
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame599(): void {
			this.emoteLoop(3);
			return;
		}

		public function frame600(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame608(): void {
			this.weapon.visible = true;
			return;
		}

		public function frame621(): void {
			stop();
			return;
		}

		public function frame622(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame633(): void {
			stop();
			return;
		}

		public function frame654(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame678(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame696(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame703(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame706(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame722(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame723(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame726(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame752(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame753(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame757(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame781(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame782(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame786(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame809(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame810(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame827(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame828(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame849(): void {
			stop();
			return;
		}

		public function frame850(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame856(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame857(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame886(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame887(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame910(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame911(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame914(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame931(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame932(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame935(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame958(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame959(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame962(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame984(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame985(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame988(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1002(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1003(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1014(): void {
			stop();
			return;
		}

		public function frame1015(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1018(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1034(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1035(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1038(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1049(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1050(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1071(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1072(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1083(): void {
			stop();
			return;
		}

		public function frame1084(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1088(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1097(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1098(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1101(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1112(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1113(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1122(): void {
			stop();
			return;
		}

		public function frame1123(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1127(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1136(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1137(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1140(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1151(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1152(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1163(): void {
			stop();
			return;
		}

		public function frame1164(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1167(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1179(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1180(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1183(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1192(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1193(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1204(): void {
			stop();
			return;
		}

		public function frame1205(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			this.avtMC = MovieClip(parent);
			return;
		}

		public function frame1208(): void {
			if (this.avtMC.spFX.strl != null && this.avtMC.spFX.strl != "" && this.avtMC.spFX.avts != null) {
				MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null);
			}
			return;
		}

		public function frame1222(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1223(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			this.avtMC = MovieClip(parent);
			return;
		}

		public function frame1227(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1244(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1248(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1254(): void {
			stop();
			return;
		}

		public function frame1255(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1258(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1267(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1268(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1270(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null, this.avtMC.spellDur);
			this.avtMC.spellDur = 0;
			return;
		}

		public function frame1284(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1285(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1296(): void {
			this.showIdleFoot();
			return;
		}

		public function frame1297(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1298(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1308(): void {
			this.showIdleFoot();
			return;
		}

		public function frame1320(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1321(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1340(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1341(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1355(): void {
			stop();
			return;
		}

		public function frame1356(): void {
			this.showFrontFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1371(): void {
			stop();
			return;
		}

		public function frame1372(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1405(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1406(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1443(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1444(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1452(): void {
			gotoAndPlay("Cry2");
			return;
		}

		public function frame1453(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1525(): void {
			gotoAndPlay("Spar");
			return;
		}

		public function frame1526(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1563(): void {
			gotoAndPlay("Samba");
			return;
		}

		public function frame1564(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1579(): void {
			gotoAndPlay("Stepdance");
			return;
		}

		public function frame1580(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1589(): void {
			gotoAndPlay("Headbang");
			return;
		}

		public function frame1590(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1621(): void {
			gotoAndPlay("Dazed");
			return;
		}

		public function frame1622(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1625(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null);
			return;
		}

		public function frame1648(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1649(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1652(): void {
			this.avtMC = MovieClip(parent);
			MovieClip(this.avtMC.parent.parent).castSpellFX(this.avtMC.pAV, this.avtMC.spFX, null);
			return;
		}

		public function frame1674(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1675(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1691(): void {
			gotoAndPlay("Danceweapon");
			return;
		}

		public function frame1692(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1705(): void {
			gotoAndPlay("Useweapon");
			return;
		}

		public function frame1706(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1725(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1726(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1767(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1768(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1782(): void {
			MovieClip(parent).endAction();
			return;
		}

		public function frame1783(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1795(): void {
			stop();
			return;
		}

		public function frame1796(): void {
			this.showIdleFoot();
			this.cape.cape.gotoAndStop("Idle");
			return;
		}

		public function frame1819(): void {
			MovieClip(parent).endAction();
			return;
		}

	}
}