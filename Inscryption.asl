state("Inscryption") {}

startup
{
	vars.Log = (Action<object>)(output => print("[Inscryption] " + output));
	vars.Stopwatch = new Stopwatch();
	vars.PrevOffset = timer.Run.Offset;

	vars.EventNames = new[]
	{
		"BasicTutorialCompleted",
		"TutorialRunCompleted",
		"SacrificedStoatInTutorial",
		"StoatIntroduction",
		"BonesTutorialCompleted",
		"TutorialRun2Completed",
		"SafeOpened",
		"WardrobePanelOpened",
		"WardrobeDrawer1Opened",
		"WardrobeDrawer2Opened",
		"WardrobeDrawer3Opened",
		"WardrobeDrawer4Opened",
		"SkinkCardDiscovered",
		"AntCardsDiscovered",
		"SquirrelHeadDiscovered",
		"SpecialDaggerDiscovered",
		"WolfStatuePlaced",
		"WolfCageBroken",
		"CageCardDiscovered",
		"StinkbugCardDiscovered",
		"ProspectorDefeated",
		"AnglerDefeated",
		"TrapperTraderDefeated",
		"WoodcarverDefeated",
		"StartScreenNewGameUnlocked",
		"StartScreenLibraryUnlocked",
		"LeshyDefeated",
		"FigurineFetched",
		"LeshyLostCamera",
		"StinkbugStoatReunited",
		"ClockCompartmentOpened",
		"TalkingWolfCardDiscovered",
		"FilmRollDiscovered",
		"GBCIntroCompleted",
		"GBCGrimoraDefeated",
		"GBCLeshyDefeated",
		"GBCPoeDefeated",
		"GBCMagnificusDefeated",
		"TutorialRun3Completed",
		"GBCUndeadAmbition",
		"GBCNatureAmbition",
		"GBCTechAmbition",
		"GBCWizardAmbition",
		"GBCProspectorPhoto",
		"GBCAnglerPhoto",
		"GBCTrapperPhoto",
		"GBCBaitPhoto",
		"StartScreenNewGameUsed",
		"Part2Completed",
		"ArchivistDefeated",
		"PhotographerDefeated",
		"TelegrapherDefeated",
		"CanvasDefeated",
		"FileAccessGiven",
		"GemsModuleFetched",
		"ImprovedSmokeCardDiscovered",
		"FactoryWardrobe1Opened",
		"FactoryWardrobe2Opened",
		"FailedWithFilmRoll",
		"StoatIntroduction2",
		"StinkbugIntroduction2",
		"StoatSaysFindWolf",
		"StoatWolfReunited",
		"StinkbugMentionedWolf",
		"WoodcarverMet",
		"GBCMonocleFound",
		"StoatIntroduction3",
		"CaptchaPuzzle1Complete",
		"CaptchaPuzzle2Complete",
		"CaptchaPuzzle3Complete",
		"CaptchaPuzzle4Complete",
		"CaptchaPuzzle5Complete",
		"CaptchaPuzzle6Complete",
		"HoloMapOutOfPower",
		"HoloMapBatteryFetched",
		"GemsModuleRequested",
		"GBCUndeadFinaleChosen",
		"GBCNatureFinaleChosen",
		"GBCTechFinaleChosen",
		"GBCWizardFinaleChosen",
		"GooBottleFound",
		"Part3Intro",
		"HandCuffReleased",
		"FMVClips1",
		"FMVClips2",
		"FMVClips3",
		"GBCCameraBatteryLow",
		"FactoryShopRoomUnlocked",
		"NatureHoloShortcut",
		"UndeadHoloShortcut",
		"WizardHoloShortcut",
		"DredgingRoomUnlocked",
		"Part3MetScrybes",
		"SpecialDaggerUsed",
		"FactoryChestOpened1",
		"FactoryChestOpened2",
		"FactoryGooSpotted",
		"GBCWorldMapVO",
		"GBCDogFoodFound",
		"GBCDogFoodPlaced",
		"BombRemoteDiscovered",
		"CloverFound",
		"CandleArmFound",
		"BeeFigurineFound",
		"HoloTechTempleSatelliteActivated",
		"Part3Completed",
		"FullGameCompleted",
		"GrimoraReachedTable",
		"WolfMentionFilmRoll",
		"PhotoDroneSeenInCabin",
		"TalkingAnglerCardDiscovered",
		"GBCCloverFound",
		"GBCObolFound",
		"GBCObolGiven",
		"GBCBoneFound",
		"BonelordHoloKeyFound",
		"Part3PostScrybeMeeting",
		"TalkingBlueMageCardDiscovered",
		"Part3BonelordRoomUnlocked",
		"LukeVOPart1Vision",
		"LukeVOPart2Grimora",
		"LukeVOPart2Bonelord",
		"FishHookUnlocked",
		"HoloTechAreaUnlocked",
		"StartScreenNewGameUsedAgain",
		"Part3MycologistHutUnlocked",
		"MycologistHutKeyFound",
		"CabinTarotCardFound",
		"MycologistsBossDefeated",
		"LukeVOPart3File",
		"RingFound",
		"ClockSmallCompartmentOpened",
		"InternetAccessGranted",
		"FactoryGemPedestalAppeared",
		"LukeVOPart3CloseWin",
		"LukeVOPart3Yes",
		"LukeVOPart3Shit",
		"LukeVOPart3Wtf",
		"PlayerDeletedArchivistFile",
		"FactoryConveyorBeltMoved",
		"FactoryCuckooClockAppeared",
		"Part3PurchasedHoloBrush",
		"FactoryCuckooClockOpenedLarge",
		"FactoryCuckooClockOpenedSmall",
		"OurobotCardDiscovered",
		"LukeVONewRunAfterVictory",
		"LukeVOLeshyRematch",
		"LukeVOSickOfBoss",
		"LukeVOMantisGod",
		"LukeVOOPCard",
		"MycologistsDefeated",
		"Part3MetBonelord",
		"Part3PhotoDroneActive",
		"GooPlaneGoobertRevealed",
		"GooPlaneGoobertComplete",
		"FactoryPrinterScreenMatched",
		"FinaleCryptCompleted",
		"FinaleCabinCompleted",
		"FinaleMagnificusCompleted",
		"FactoryWoodcarver1",
		"FactoryWoodcarver2",
		"FactoryWoodcarver3",
		"ChapterSelectUnlocked",
		"MycologistHutKeyShown",
		"GBCBonelordRewardsGiven",
		"LukeVOBeatLeshyAgain",
		"LukeVODieAlready",
		"UhOhSpaghettiOh"
	};

	string[,] sett =
	{
		{ "Act 1", "ProspectorDefeated" },
		{ "Act 1", "AnglerDefeated" },
		{ "Act 1", "TrapperTraderDefeated" },
		{ "Act 1", "LeshyDefeated" },
		{ "Act 1", "StartScreenNewGameUnlocked" },

		{ "Act 1", "TutorialRunCompleted" },
		{ "Act 1", "TutorialRun2Completed" },

		{ "Act 2", "GBCGrimoraDefeated" },
		{ "Act 2", "GBCLeshyDefeated" },
		{ "Act 2", "GBCPoeDefeated" },
		{ "Act 2", "GBCMagnificusDefeated" },
		{ "Act 2", "Part2Completed" },

		{ "Act 3", "ArchivistDefeated" },
		{ "Act 3", "PhotographerDefeated" },
		{ "Act 3", "TelegrapherDefeated" },
		{ "Act 3", "CanvasDefeated" },
		{ "Act 3", "Part3Completed" },

		{ "Finale", "FullGameCompleted" }
	};

	settings.Add("Act 1");
	settings.Add("Act 2");
	settings.Add("Act 3");
	settings.Add("Finale");

	for (int i = 0; i < sett.GetLength(0); ++i)
		settings.Add(sett[i, 1], true, sett[i, 1], sett[i, 0]);

	vars.Unity = Assembly.Load(File.ReadAllBytes(@"Components\UnityASL.bin")).CreateInstance("UnityASL.Unity");
	vars.Unity.LoadSceneManager = true;
}

onStart
{
	timer.Run.Offset = vars.PrevOffset;

	vars.CanStart = false;
	current.Events.Clear();
}

init
{
	vars.IsDemo = false;
	vars.CanStart = false;
	current.Events = new List<string>();

	var PTR_SIZE = game.Is64Bit() ? 0x8 : 0x4;

	vars.Unity.TryOnLoad = (Func<dynamic, bool>)(helper =>
	{
		var sm = helper.GetClass("Assembly-CSharp", "SaveManager");
		var sf = helper.GetClass("Assembly-CSharp", "SaveFile");
		var sed = helper.GetClass("Assembly-CSharp", "StoryEventsData");

		vars.Unity.Make<float>(sm.Static, sm["lastSaveTime"]).Name = "lastSaveTime";
		vars.Unity.MakeList<int>(sm.Static, sm["saveFile"], sf["storyEvents"], sed["completedEvents"]).Name = "completedEvents";

		var sd = helper.GetClass("Assembly-CSharp", "ScriptDefines");
		IntPtr steam = sd.Static + sd["STEAM_DEMO"], bitSummit = sd.Static + sd["BITSUMMIT_DEMO"];
		vars.IsDemo = game.ReadValue<bool>(steam) || game.ReadValue<bool>(bitSummit);

		if (!vars.IsDemo) return true;

		var st = helper.GetClass("Assembly-CSharp", "Singleton`1");
		var mCon = helper.GetClass("Assembly-CSharp", "MenuController", 1);
		var mc = helper.GetClass("Assembly-CSharp", "MenuCard");

		vars.Unity.Make<bool>(mCon.Static, st["m_Instance"], mCon["TransitioningToScene"]).Name = "transitioning";
		vars.Unity.Make<int>(mCon.Static, st["m_Instance"], mCon["SelectedCard"], mc["menuAction"]).Name = "menuAction";

		return true;
	});

	vars.Unity.Load(game);
}

update
{
	if (!vars.Unity.Loaded) return false;

	vars.Unity.Update();
	current.Scene = vars.Unity.Scenes.Active.Name;

	if (vars.IsDemo)
	{
		if (vars.Unity["menuAction"].Changed)
			vars.CanStart = vars.Unity["menuAction"].Current == 1;

		return;
	}

	current.Events.Clear();
	current.CompletedEventsCount = vars.Unity["completedEvents"].Count;
	int o = old.CompletedEventsCount, c = current.CompletedEventsCount;

	if (o == c || c <= 0) return;

	for (int i = o; i < c; ++i)
	{
		var evnt = vars.EventNames[vars.Unity["completedEvents"][i]];
		if (evnt == "BasicTutorialCompleted")
			vars.CanStart = true;

		vars.Log("New event: " + evnt);
		current.Events.Add(evnt);
	}
}

start
{
	if (!vars.CanStart) return;

	if (vars.IsDemo)
	{
		if (vars.Unity["transitioning"].Changed)
		{
			timer.Run.Offset = TimeSpan.FromSeconds(0.285);
			return true;
		}
	}
	else
	{
		if (vars.Unity["lastSaveTime"].Changed)
		{
			timer.Run.Offset = TimeSpan.FromSeconds(-1.405);
			return true;
		}
	}
}

split
{
	if (current.Events.Count == 0) return;

	foreach (var evnt in current.Events)
	{
		if (settings[evnt])
			return true;
	}
}

isLoading
{
	return current.Scene == "" || current.Scene == "Loading";
}

exit
{
	vars.Unity.Reset();
}

shutdown
{
	vars.Unity.Reset();
}
