state("Inscryption") {
}
/*
state("Inscryption", "") {
	
}

state("Inscryption", "(Steam) Build ID: 7611267") {
	
}

state("Inscryption", "(Steam Demo) Build Id: 7523353") {

}
*/
startup {
	// Add Events from dotpeeking Assembly-CSharp SaveManager > SaveFile > StoryEvent [DiskCardGame.StoryEvent]
	print("Starting up!");
	vars.splitter_failed = false;

	vars.event_names = new string[] {
		"BasicTutorialCompleted", // story_event_0 etc...
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
		"UhOhSpaghettiOh",
	};

	// Add dialog events extracted from searching for "Hint_NotEnoughBlood" in game memory and parsing out json
	// Each index also has a corresponding group_id in vars.group_id, so group_id must be the same length as dialog_names
	vars.dialog_names = new List<string> {
    "Hint_NotEnoughBlood",
    "",
    "Hint_CantSacrificeTerrain",
    "WoodcarverIntro",
    "StoatSacrificeTutorial",
    "StoatSacrifice",
    "StoatIntro",
    "StoatHostChosen",
    "StoatSelectionChoicePositive",
    "Hint_NotEnoughBones",
    "TutorialBonesToken",
    "StoatDieBonesTutorial",
    "Hint_ConsumableDuringDrawPhase",
    "Hint_DrawDuringFirstTurn",
    "TutorialMoreThanOneCard",
    "OpponentSkipTurn",
    "Hint_PlayDuringDrawPhase",
    "TutorialConsumablesReminder",
    "Hint_ConsumableOutsideOfBattle",
    "Hint_NotEnoughBloodButSquirrel",
    "EyeballChoiceIntro",
    "EyeballChoiceOutro",
    "TutorialOverkillDamage",
    "TutorialWoodcarverIntro",
    "TutorialWoodcarverIncomplete",
    "TutorialWoodcarverComplete",
    "TutorialBuyPeltsIntro",
    "TutorialBuyPeltsOutro",
    "TutorialTradePeltsIntro",
    "RegionCompleteProspector",
    "RegionNext",
    "RegionWetlands",
    "RegionAlpine",
    "TutorialBossBattlePlayerLives",
    "TutorialBossBattleBossLives",
    "RareCardsIntro",
    "ProspectorPreIntro",
    "ProspectorIntro",
    "Hint_AllSlotsFull",
    "AnglerPreIntro",
    "AnglerIntro",
    "TrapperIntro",
    "TrapperOutro",
    "TraderIntro",
    "TraderPeltsHare",
    "TraderPeltsWolf",
    "TraderPeltsGolden",
    "TraderOutro",
    "TutorialDeckTrial",
    "TutorialDeckTrial2",
    "DeckTrialPassed",
    "DeckTrialFailed",
    "GhoulRoyalGreeting",
    "GhoulRoyalVictory",
    "GhoulRoyalDefeat",
    "TrapperTraderPreIntro",
    "TrapperTraderIntro",
    "TrapperTraderPhase2",
    "TrapperTraderPrePhase2",
    "TrapperTraderPreTrade",
    "TrapperTraderPostTrade",
    "ReplenishLives",
    "CardMergeInvalid",
    "PlayerLifeLost",
    "StoatDrawn",
    "StoatPlayed",
    "StoatAttacked",
    "StoatDeckTrial",
    "StinkbugAttacked",
    "StinkbugDeckTrial",
    "StinkbugSelectionChoicePositive",
    "StinkbugSacrifice",
    "StinkbugPlayed",
    "StinkbugHostChosen",
    "StinkbugDrawn",
    "StoatDrawnProspector",
    "StinkbugDrawnAngler",
    "ProspectorMuleKilled",
    "DeckReview",
    "TutorialGainCurrency",
    "GainConsumablesFull",
    "FinaleTrialBoons0",
    "FinaleDeckTrialPassed",
    "FinaleDeckTrialFailed",
    "Hint_FlipBothCardChoices",
    "FinaleTrialBoons1",
    "FinaleTrialBoons2",
    "FinaleDeckTrialRepeating",
    "FinaleDeckTrialRewards",
    "StoatSelectionChoiceNegative",
    "StinkbugSelectionChoiceNegative",
    "StoatCardRemove",
    "StinkbugCardRemove",
    "FinaleLeshyCabin",
    "SanctumTakePhoto",
    "DeathCardIntro",
    "TutorialDeathCardChoose",
    "DeathCardPortrait",
    "SanctumIntro",
    "StinkbugDiscovered",
    "StoatSafeHint",
    "WolfDrawn",
    "WolfPlayed",
    "WolfAttacked",
    "WolfSacrifice",
    "StoatStinkbugReunite",
    "LeshyBossMoon1",
    "LeshyBossMoon2",
    "LeshyBossDeathcards1",
    "LeshyBossDeathcards2",
    "LeshyBossMoonDestroyed",
    "FoundExtraCandle",
    "FoundBeeFigurine",
    "FoundCloverPot",
    "WolfDiscovered",
    "TutorialBuyPeltsPile",
    "TrapperFreePelt",
    "TutorialGettingUpReminder",
    "TutorialGettingUpReminder2",
    "NewRunCauseTotem",
    "NewRunCauseProspector",
    "NewRunCauseAngler",
    "NewRunCauseTrapperTrader",
    "NewRunDefault",
    "NewRunDealtDeckDefault",
    "NewRunDealtStinkbug",
    "NewRunDealtWolf",
    "TutorialBuyPeltsCurrency",
    "NewRunDealtCagedWolf",
    "Hint_NotEnoughBloodTerrain",
    "DuplicateMergeIntro",
    "DoctorIntro",
    "TeachFishHookAimRandom",
    "TeachFishHookAimNew",
    "TeachFishHookPull",
    "",
    "GhoulRoyalGainPiece",
    "GhoulBriarGreeting",
    "GhoulBriarGainPiece",
    "GhoulBriarVictory",
    "GhoulBriarDefeat",
    "GhoulSawyerGreeting",
    "GhoulSawyerGainPiece",
    "GhoulSawyerVictory",
    "GhoulSawyerDefeat",
    "GBCTraderIntro",
    "GrimoraTempleIntro",
    "GrimoraPuzzleSolved",
    "OpponentSurrender",
    "DuplicateMergeLookAway",
    "DuplicateMergeResult",
    "DuplicateMergeNoPairs",
    "WizardGreenGreeting",
    "WizardGreenDefeat",
    "WizardGreenVictory",
    "WizardGreenOpenDoor",
    "Hint_DrawDuringTurn",
    "Hint_ScissorsNoTarget",
    "TraderNoPelts1",
    "TraderNoPelts2",
    "WizardOrangeGreeting",
    "WizardOrangeOpenDoor",
    "WizardOrangeDefeat",
    "WizardOrangeVictory",
    "RegionCompleteAngler",
    "RegionCompleteTrapperTrader",
    "StinkbugWardrobeHint",
    "WizardBlueGreeting",
    "WizardBlueDefeat",
    "WizardBlueVictory",
    "WizardBlueOpenDoor",
    "DummyNPCGreeting",
    "DummyNPCPostBattle",
    "MagnificusGreeting",
    "GrimoraBossIntro",
    "GrimoraBossBoardWipe1",
    "GrimoraBossBoardWipe2",
    "GrimoraBossReanimate1",
    "GrimoraBossReanimate2",
    "TutorialTradePeltsCards",
    "FinaleCabinNode",
    "MagnificusBossBleach",
    "MagnificusBossPaint",
    "MagnificusBossPaintGem",
    "MagnificusBossBrushIntro",
    "GrimoraGreeting",
    "GrimoraDefeated",
    "GrimoraVictory",
    "MagnificusDefeated",
    "MagnificusVictory",
    "ProspectorNPCPhoto",
    "AnglerNPCPhoto",
    "LeshyGBCGiveCamera1",
    "LeshyGBCGiveCamera2",
    "ProspectorNPCGreeting",
    "ProspectorNPCVictory",
    "ProspectorNPCDefeat",
    "AnglerNPCDefeat",
    "AnglerNPCVictory",
    "AnglerNPCGreeting",
    "GBCTraderNatureTemple",
    "TraderNPCHeadswitch",
    "TrapperNPCGreeting",
    "TrapperNPCVictory",
    "TrapperNPCDefeat",
    "LeshyGBCIntro",
    "LeshyGBCBossStatsCard",
    "LeshyGBCBossCostCard",
    "LeshyGBCBossAbilitiesCard",
    "LeshyGBCBossCompletedCard",
    "LeshyGBCBossDeathcardDraw",
    "LeshyGBCBossLoseHand",
    "LeshyGBCBossIncompleteDeathcard",
    "LeshyGBCBossPhase1",
    "LeshyGBCDefeated",
    "P03GBCTempleIntro",
    "InspectorGreeting",
    "InspectorDefeat",
    "InspectorVictory",
    "SmelterGreeting",
    "SmelterDefeat",
    "SmelterVictory",
    "DredgerGreeting",
    "DredgerDefeat",
    "DredgerVictory",
    "P03GBCGreeting",
    "P03GBCDefeat",
    "DredgerSurrender",
    "DredgerVictory2",
    "P03BossPreScannerChoose",
    "P03BossScan1",
    "P03BossScan2",
    "P03BossPreScannerNoChoice",
    "P03BossScanNone",
    "GBCNPCInvalidDeckDefault",
    "GhoulRoyalInvalidDeck",
    "AnglerNPCInvalidDeck",
    "ProspectorNPCInvalidDeck",
    "TrapperNPCInvalidDeck",
    "WizardBlueInvalidDeck",
    "DummyNPCInvalidDeck",
    "DredgerInvalidDeck",
    "LeshyGBCVictory",
    "LeshyBossBattleDefeated",
    "P03BossBattleDefeated",
    "GrimoraBossBattleDefeated",
    "MagnificusBossBattleDefeated",
    "P03BossBattleIntro",
    "P03BossBattleConveyorBelts",
    "P03GBCVictory",
    "MechanicBrokenBridge",
    "SanctumVictoryNoFilm",
    "SanctumVictoryIntro",
    "SanctumVictoryDeathcard",
    "SanctumVictoryTakePhoto",
    "VictoryFeast1",
    "VictoryFeast2",
    "VictoryFeast3",
    "Part3Intro1",
    "P03Trader",
    "HoloMapReachedCheckpointFirstTime",
    "HoloMapReachedCheckpoint",
    "ArchivistChooseDamageFile",
    "ArchivistImageFile",
    "ArchivistAudioFile",
    "ArchivistPreIntro",
    "ArchivistIntro",
    "ArchivistChooseHostageFile",
    "ArchivistPickedHostage",
    "Hint_NotEnoughEnergy",
    "ArchivistAskForAccess",
    "ArchivistFileSize1",
    "ArchivistFileSize2",
    "ArchivistFileSize3",
    "ArchivistFileSize4",
    "ArchivistFileSize5",
    "ArchivistFileDeleted",
    "ArchivistHostagePower1",
    "ArchivistHostagePower2",
    "ArchivistHostagePower3",
    "ArchivistHostagePower4",
    "ArchivistPostDefeated",
    "UnlockItemTutorial",
    "PhotographerPhase2",
    "PhotographerDroneTutorial1",
    "PhotographerDroneTutorial2",
    "PhotographerPreIntro",
    "PhotographerIntro",
    "GainAbilityChooseCard",
    "GainAbilityThinking",
    "GainAbilityChoices",
    "GainAbilityCompleted",
    "CanvasPreIntro",
    "CanvasIntro",
    "CanvasChooseFace1",
    "CanvasChooseFace2",
    "CanvasChooseRule1",
    "CanvasChooseRule2",
    "CanvasPhase2Start",
    "CanvasPhase2End",
    "HoloMapLibrarians",
    "HoloMapLibrariansQuill",
    "FinaleDeckTrialStart",
    "WolfHostChosen",
    "WolfSelectionChoicePositive",
    "WolfSelectionChoiceNegative",
    "WolfDeckTrial",
    "WolfCardRemove",
    "StoatIntro2",
    "StinkbugIntro2",
    "StoatFindWolfInstruction",
    "StoatWolfReunite",
    "StinkbugAfterFoundWolf",
    "LeshyBossIntro1",
    "LeshyBossAddCandle",
    "SquirrelHeadDiscovered",
    "WoodcarverOutro",
    "BonelordCasket",
    "MagnificusBossPhase2",
    "OpponentBlowOutLastCandle",
    "StoatIntro3",
    "LearnedPliersItem",
    "StatBoostIntro",
    "StatBoostOutro",
    "StinkbugCagedWolf",
    "HoloAreaIntro1",
    "HoloAreaIntro2",
    "HoloAreaIntroSidePath",
    "HoloAreaIntro3",
    "HoloAreaIntro4",
    "Part3TutorialRespawn",
    "Part3TutorialBloodstain",
    "HoloAreaNature1",
    "HoloAreaIntro5",
    "HoloAreaEast1",
    "HoloAreaEast2",
    "HoloMapPowerOut",
    "HoloAreaUndead1",
    "HoloAreaUndeadTemple1",
    "HoloAreaUndeadTempleBoss",
    "HoloAreaNatureTemple1",
    "HoloAreaNatureTempleBoss",
    "FactoryFetchBattery1",
    "FactoryFetchBattery2",
    "FactoryFetchBattery3",
    "FactoryFetchBattery4",
    "FactoryFetchBattery5",
    "TraderPeltsMerged",
    "FactoryGemsModuleFetched1",
    "FactoryGemsModuleFetched2",
    "TraderFinalZoneIntro",
    "HoloMapBrokenBridge",
    "HoloMapFetchGemsModule",
    "HoloMapFetchGemsModuleReminder",
    "Part2FinaleGrimoraChosen1",
    "Part2FinaleLeshyChosen1",
    "Part2FinaleMagnificusChosen1",
    "Part2FinaleP03Chosen1",
    "Part2FinaleGrimoraChosen2",
    "Part2FinaleLeshyChosen2",
    "Part2FinaleMagnificusChosen2",
    "WizardTempleNote1",
    "Part2FinaleScrybeRemoved",
    "Part2FinaleBattle1",
    "Part2FinaleBattle2",
    "Part2FinaleBattle3",
    "HoloAreaWizard1",
    "HoloAreaWizardTemple1",
    "HoloAreaWizardTempleBoss",
    "GooDefault",
    "GooWizardEye",
    "ActivateGooBottleItem",
    "GooIntro",
    "TraderMaskIntro",
    "Part3Intro2",
    "Part3HandCuffed",
    "HoloAreaShop",
    "TutorialOverclock1",
    "TutorialOverclock2",
    "TutorialAttachGem",
    "TutorialModifySideDeck1",
    "TutorialModifySideDeck3",
    "TutorialModifySideDeck2",
    "HoloMapWizardShortcut",
    "HoloMapUndeadShortcut",
    "HoloMapNatureShortcut",
    "P03CheckSecurityCams1",
    "P03CheckSecurityCams2",
    "BountyHunterIntroUnmet1",
    "BountyHunterIntroKilled1",
    "BountyHunterKilled1",
    "BountyHunterIntroVictorious1",
    "BountyHunterIntroEscaped1",
    "BountyHunterIntroUnmet2",
    "BountyHunterKilled2",
    "BountyHunterIntroVictorious2",
    "BountyHunterIntroKilled2",
    "BountyHunterIntroEscaped2",
    "BountyHunterIntroUnmet3",
    "BountyHunterIntroEscaped3",
    "BountyHunterIntroKilled3",
    "BountyHunterIntroVictorious3",
    "BountyHunterKilled3",
    "BountyHunterIntroUnmet4",
    "BountyHunterIntroEscaped4",
    "BountyHunterIntroKilled4",
    "BountyHunterIntroVictorious4",
    "BountyHunterKilled4",
    "TutorialBounty",
    "TutorialBountyTiers",
    "TutorialCreateTransformer",
    "TutorialRecycleCard",
    "RecycleCardIntro",
    "TutorialCostBasedChoice",
    "TutorialTribeBasedChoice",
    "Hint_NotEnoughGems",
    "GooWolfCardDiscovered",
    "GooCageBroken",
    "GooDaggerUsed",
    "GooDaggerTaken",
    "GooCageCardDiscovered",
    "GooWardrobeUnlocked",
    "GooAnglerDefeated",
    "TutorialSacrificingNotPermanent",
    "GooLeshyDefeated",
    "NewRunCauseFinalBoss",
    "NewRunVictory",
    "GooDefaultFilmRoll",
    "CabinP031",
    "CabinP032",
    "CabinP033",
    "DredgingRoomEncounter1",
    "BombRemoteDiscovered",
    "HoloMapBrokenBridgeFixed",
    "GainAbilityCompletedAlmostFull",
    "GainAbilityCompletedFull",
    "OilPaintingHint",
    "GooSolvedOilPainting",
    "WardrobeHint1",
    "WardrobeHint2",
    "TutorialCostBasedChoice2",
    "TutorialTribeBasedChoice2",
    "BuildACardComplete",
    "BuildACardScan",
    "BuildACardPrinted",
    "BuildACardIntro",
    "MycologistsNPC1",
    "P03Surrender",
    "TelegrapherIntro",
    "TelegrapherFriendCards1",
    "TelegrapherFriendCards2",
    "TelegrapherConnectStart",
    "TelegrapherConnectSuccess",
    "TelegrapherPlayMole",
    "TelegrapherConnectFailure",
    "TelegrapherReceiveCardAttempt",
    "TelegrapherReceiveCardSuccess1",
    "TelegrapherReceiveCardSuccess2",
    "TelegrapherReceiveCardFailure",
    "TelegrapherSendCard1",
    "TelegrapherSendCard2",
    "TelegrapherWaiting",
    "TelegrapherSendCardFailure",
    "TelegrapherSendCardGain",
    "TelegrapherSendCardSuccess",
    "TelegrapherTeleCardPlayed",
    "TelegrapherTeleCardDied",
    "TelegrapherTeleCardWaiting",
    "TelegrapherReceiveCardMummy",
    "TelegrapherPreIntro",
    "TelegrapherPostDefeated",
    "TelegrapherTeleCardSuccess",
    "TelegrapherTeleCardFailure",
    "TelegrapherTeleCardTimeout",
    "ModifySideDeckConduit1",
    "ModifySideDeckConduit2",
    "GooFactoryIntro",
    "GooFactoryDefault",
    "GooTelegrapherDefeated",
    "GooCanvasDefeated",
    "HoloMapDredger",
    "TradeCards1",
    "TradeCards2",
    "Part3Finale1",
    "Part3Finale2",
    "Part3Finale3",
    "Part3Finale4",
    "Part3Finale5",
    "Part3FinaleScrybes1",
    "P03CardsExhausted",
    "Part1CardsExhausted",
    "GooSafeHint",
    "Part3FinaleGrimora",
    "FinaleRedacted",
    "RunIntroFilmRoll1",
    "RunIntroFilmRoll2",
    "MycologistsNPC2",
    "MycologistsNPC4",
    "MycologistsNPC3",
    "HoloMapResetBots",
    "DamageRaceTutorial1",
    "DamageRaceTutorial2",
    "DamageRaceFewTurnsRemain",
    "DamageRaceFailure",
    "DamageRaceSuccess",
    "RoyalBossPreIntro",
    "RoyalBossDeleted",
    "CanvasMaxedOutRules",
    "CanvasChooseThirdRule",
    "GoodbyeLeshyIntro1",
    "GoodbyeLeshyIntro2",
    "GoodbyeLeshyScalesGone",
    "GoodbyeLeshyCandleHolder",
    "GoodbyeLeshyCardPlayed",
    "GoodbyeLeshyMidGame1",
    "GoodbyeLeshyCardDied",
    "GoodbyeLeshyMidGame2",
    "GoodbyeLeshyMidGame3",
    "GoodbyeLeshyEnd1",
    "GoodbyeLeshyEnd2",
    "FinaleMagnificusIntro1",
    "WolfMentionFilmRoll",
    "Part3FirstBattle1",
    "TalkingAnglerDiscovered",
    "TalkingAnglerAttacked",
    "TalkingAnglerDrawn",
    "TalkingAnglerSelectionChoiceNegative",
    "TalkingAnglerSelectionChoicePositive",
    "TalkingAnglerPlayed",
    "WoodcarverNPC",
    "AnglerNPCDocks",
    "FinaleGrimoraRevealed",
    "FinaleGrimoraMapShown",
    "FinaleGrimoraBattleStart",
    "FinaleGrimoraBattleWon",
    "TrapperIntroReducedCost",
    "ResourceTutorialEnergy1",
    "ResourceTutorialEnergy2",
    "ResourceTutorialEnergy3",
    "ResourceTutorialGems1",
    "ResourceTutorialGems2",
    "ResourceTutorialBlood",
    "ResourceTutorialBones",
    "WizardTempleNoteDesk",
    "ProspectorNPCMeatReminder",
    "FinaleMagnificusIntro2",
    "FinaleMagnificusIntro3",
    "BonelordCasketGiveObol",
    "BonelordDomain1",
    "DredgingRoomEncounterBeta",
    "DredgingRoomEncounter2",
    "DredgingRoomEncounter3",
    "DredgingRoomEncounter4",
    "DredgingRoomEncounter5",
    "DredgingRoomEncounter6",
    "DredgingRoomEncounter7",
    "DredgingRoomEncounter4P2",
    "P03PostScrybesMeeting",
    "TutorialDeathcardChoice",
    "GooMetScrybes",
    "TalkingAnglerMetScrybes",
    "ActivatedAbilityTutorial",
    "TalkingBlueMageDiscovered",
    "TalkingBlueMageAttacked",
    "TalkingBlueMagePlayed",
    "TalkingBlueMageSelectionChoiceEither",
    "TalkingBlueMageDrawn",
    "TalkingBlueMageMetScrybes",
    "TalkingBlueMageMoveBeside",
    "TraderMaskFullyCompleted",
    "TraderMaskNoPelts",
    "TraderMaskGavePelts",
    "TraderMaskTarotTheFool",
    "TraderMaskTarotTheTower",
    "TraderMaskTarotTheEmpress",
    "TraderMaskTarotDeath",
    "TraderMaskTarotTheDevil",
    "StatBoostPushLuck1",
    "StatBoostCardEaten",
    "StatBoostPushLuck2",
    "StatBoostPushLuck3",
    "BoulderChoiceGold",
    "BoulderChoiceCreature",
    "BoulderChoiceIntro",
    "WoodcarverMaxPieces",
    "Hint_FishhookNoTarget",
    "UnlockFishHookItem",
    "HoloMapInspector_PreUnlock",
    "HoloMapInspector_PostUnlock",
    "MechanicDocks",
    "StatBoostCardEatenBones",
    "MycologistsBossPreIntro",
    "Part1CardsExhaustedMoon",
    "LeshyBossStinkyMoon",
    "StatBoostSurvivorsDead",
    "MycologistsBossIntro",
    "HoloAreaShopBuyPelt",
    "MycologistsBossCombine",
    "CardRemovePeltChosen1",
    "CardRemovePeltChosen2",
    "CardRemoveGoatChosen",
    "AttachGemCompleted",
    "GooClockOpened",
    "WolfFilmRollReminder",
    "FinaleDeckTrialRing",
    "TalkingAnglerPhotographer",
    "TalkingAnglerCanvas",
    "TalkingBlueMageArchivist",
    "TalkingBlueMageTelegrapher",
    "TalkingBlueMageDamageRace",
    "HoloAreaTech1",
    "HoloAreaTechTemple1",
    "TutorialGreaterSmoke",
    "GhoulBriarPostPuzzle",
    "GhoulRoyalPostPuzzle",
    "GhoulSawyerPostPuzzle",
    "P03LukeFile",
    "GBCNPCInvalidRetryDefault",
    "GhoulRoyalInvalidRetry",
    "AnglerNPCInvalidRetry",
    "ProspectorNPCInvalidRetry",
    "DummyNPCInvalidRetry",
    "DredgerInvalidRetry",
    "WizardBlueInvalidRetry",
    "P03FixCameraReminder",
    "ArchivistPlayerDeletedFile",
    "Part3FinalUberbot",
    "Part3FinalPath1",
    "Part3FinalPath2",
    "Part3FinalPath3",
    "Part3FinalPath4",
    "Part3FinalPath5",
    "RecycleCardChoosing",
    "FactoryGlitchInClock",
    "HoloAreaShopBuyBrush",
    "HoloMapBonelord1",
    "HoloMapBonelord2",
    "HoloMapBonelord3",
    "DredgerDefeatedTurn1",
    "GoobertGooPlane2",
    "GoobertGooPlane1",
    "GooPostPlane",
    "MycologistsDefeatedPlayer2",
    "MycologistsDefeatedPlayer1",
    "MycologistsBossVictory",
    "MycologistsBossPostVictory",
    "CanvasStopInfiniteLoop",
    "DuplicateMergeNoPairsNoValid"
	};

	vars.group_ids = new List<string> {
    "Gameplay Hints",
    "",
    "Gameplay Hints",
    "Special Nodes",
    "Talking Stoat Dialogue",
    "Talking Stoat Dialogue",
    "Talking Cards",
    "Talking Stoat Dialogue",
    "Talking Stoat Dialogue",
    "Gameplay Hints",
    "Tutorial",
    "Talking Stoat Dialogue",
    "Gameplay Hints",
    "Gameplay Hints",
    "Tutorial",
    "",
    "Gameplay Hints",
    "Tutorial",
    "Gameplay Hints",
    "Gameplay Hints",
    "Special Nodes",
    "Special Nodes",
    "Tutorial",
    "Tutorial",
    "Tutorial",
    "Tutorial",
    "Tutorial",
    "Tutorial",
    "Tutorial",
    "Game Flow",
    "Game Flow",
    "Game Flow",
    "Game Flow",
    "Tutorial",
    "Tutorial",
    "Special Nodes",
    "Boss Dialogue",
    "Boss Dialogue",
    "Gameplay Hints",
    "Boss Dialogue",
    "Boss Dialogue",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Tutorial",
    "Tutorial",
    "Special Nodes",
    "Special Nodes",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "Boss Dialogue",
    "Boss Dialogue",
    "Boss Dialogue",
    "Boss Dialogue",
    "Boss Dialogue",
    "Boss Dialogue",
    "",
    "Special Nodes",
    "Misc",
    "Talking Stoat Dialogue",
    "Talking Stoat Dialogue",
    "Talking Stoat Dialogue",
    "Talking Stoat Dialogue",
    "Talking Stinkbug Dialogue",
    "Talking Stinkbug Dialogue",
    "Talking Stinkbug Dialogue",
    "Talking Stinkbug Dialogue",
    "Talking Stinkbug Dialogue",
    "Talking Stinkbug Dialogue",
    "Talking Stinkbug Dialogue",
    "Talking Stoat Dialogue",
    "Talking Stinkbug Dialogue",
    "Boss Dialogue",
    "",
    "Tutorial",
    "Special Nodes",
    "Part 1 Finale",
    "Part 1 Finale",
    "Part 1 Finale",
    "Gameplay Hints",
    "Part 1 Finale",
    "Part 1 Finale",
    "Part 1 Finale",
    "Part 1 Finale",
    "Talking Stoat Dialogue",
    "Talking Stinkbug Dialogue",
    "Talking Stoat Dialogue",
    "Talking Stinkbug Dialogue",
    "Part 1 Finale",
    "Part 1 Sanctum",
    "Special Nodes",
    "Tutorial",
    "Special Nodes",
    "Part 1 Sanctum",
    "Talking Cards",
    "Talking Cards",
    "Talking Wolf Dialogue",
    "Talking Wolf Dialogue",
    "Talking Wolf Dialogue",
    "Talking Wolf Dialogue",
    "Talking Cards",
    "Boss Dialogue",
    "Boss Dialogue",
    "Boss Dialogue",
    "Boss Dialogue",
    "Boss Dialogue",
    "",
    "",
    "",
    "Talking Wolf Dialogue",
    "Tutorial",
    "Special Nodes",
    "Tutorial",
    "Tutorial",
    "Part 1 Run Start",
    "Part 1 Run Start",
    "Part 1 Run Start",
    "Part 1 Run Start",
    "Part 1 Run Start",
    "Part 1 Run Start",
    "Part 1 Run Start",
    "Part 1 Run Start",
    "Tutorial",
    "Part 1 Run Start",
    "Gameplay Hints",
    "Special Nodes",
    "Special Nodes",
    "Boss Dialogue",
    "Boss Dialogue",
    "Boss Dialogue",
    "",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "Gameplay Hints",
    "Gameplay Hints",
    "Special Nodes",
    "Special Nodes",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "Game Flow",
    "Game Flow",
    "Talking Stinkbug Dialogue",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "Tutorial",
    "Part 1 Finale",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC Battle",
    "GBC NPC",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC Battle",
    "GBC NPC",
    "GBC NPC",
    "Part 1 Sanctum",
    "Part 1 Sanctum",
    "Part 1 Sanctum",
    "Part 1 Sanctum",
    "Part 1 Finale",
    "Part 1 Finale",
    "Part 1 Finale",
    "Part 3 Game Flow",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Gameplay Hints",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Special Nodes",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Special Nodes",
    "Part 3 Special Nodes",
    "Part 3 Special Nodes",
    "Part 3 Special Nodes",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Map",
    "Part 3 Map",
    "Part 1 Finale",
    "Talking Wolf Dialogue",
    "Talking Wolf Dialogue",
    "Talking Wolf Dialogue",
    "Talking Wolf Dialogue",
    "Talking Wolf Dialogue",
    "Talking Cards",
    "Talking Cards",
    "Talking Cards",
    "Talking Cards",
    "Talking Cards",
    "Boss Dialogue",
    "Boss Dialogue",
    "Part 1 Cabin",
    "Special Nodes",
    "GBC NPC",
    "GBC Battle",
    "",
    "Talking Cards",
    "",
    "Special Nodes",
    "Special Nodes",
    "Talking Stinkbug Dialogue",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Special Nodes",
    "Part 3 Map",
    "Part 3 Map",
    "Special Nodes",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "GBC Finale",
    "GBC Finale",
    "GBC Finale",
    "GBC Finale",
    "GBC Finale",
    "GBC Finale",
    "GBC Finale",
    "GBC World",
    "GBC Finale",
    "GBC Finale",
    "GBC Finale",
    "GBC Finale",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Goo Bottle",
    "Goo Bottle",
    "Goo Bottle",
    "Goo Bottle",
    "Part 3 Trader",
    "Part 3 Game Flow",
    "Part 3 Game Flow",
    "Part 3 Map",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Bounty Hunter",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Special Nodes",
    "Tutorial",
    "Tutorial",
    "Gameplay Hints",
    "Goo Bottle",
    "Goo Bottle",
    "Goo Bottle",
    "Goo Bottle",
    "Goo Bottle",
    "Goo Bottle",
    "Goo Bottle",
    "Tutorial",
    "Goo Bottle",
    "Part 1 Run Start",
    "Part 1 Run Start",
    "Goo Bottle",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "Part 3 Story",
    "Part 3 Factory",
    "Part 3 Map",
    "Part 3 Special Nodes",
    "Part 3 Special Nodes",
    "Goo Bottle",
    "Goo Bottle",
    "Goo Bottle",
    "Goo Bottle",
    "Tutorial",
    "Tutorial",
    "Part 3 Special Nodes",
    "Part 3 Special Nodes",
    "Part 3 Special Nodes",
    "Part 3 Special Nodes",
    "GBC NPC",
    "Part 3 Game Flow",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Tutorial",
    "Part 3 Tutorial",
    "Part 3 Factory",
    "Part 3 Factory",
    "Part 3 Factory",
    "Part 3 Factory",
    "Part 3 Map",
    "Part 3 Special Nodes",
    "Part 3 Special Nodes",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Game Flow",
    "Game Flow",
    "Goo Bottle",
    "Part 3 Story",
    "Finale",
    "Part 1 Run Start",
    "Part 1 Run Start",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "Part 3 Map",
    "Part 3 Game Flow",
    "Part 3 Game Flow",
    "Part 3 Game Flow",
    "Part 3 Game Flow",
    "Part 3 Game Flow",
    "Finale",
    "Finale",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Talking Wolf Dialogue",
    "Part 3 Tutorial",
    "Talking Angler Dialogue",
    "Talking Angler Dialogue",
    "Talking Angler Dialogue",
    "Talking Angler Dialogue",
    "Talking Angler Dialogue",
    "Talking Angler Dialogue",
    "GBC NPC",
    "GBC NPC",
    "Finale",
    "Finale",
    "Finale",
    "Finale",
    "Special Nodes",
    "GBC Tutorial",
    "GBC Tutorial",
    "GBC Tutorial",
    "GBC Tutorial",
    "GBC Tutorial",
    "GBC Tutorial",
    "GBC Tutorial",
    "GBC World",
    "GBC NPC",
    "Finale",
    "Finale",
    "GBC NPC",
    "GBC NPC",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Map",
    "Tutorial",
    "Goo Bottle",
    "Talking Angler Dialogue",
    "GBC Tutorial",
    "Talking Blue Mage Dialogue",
    "Talking Blue Mage Dialogue",
    "Talking Blue Mage Dialogue",
    "Talking Blue Mage Dialogue",
    "Talking Blue Mage Dialogue",
    "Talking Blue Mage Dialogue",
    "Talking Blue Mage Dialogue",
    "Part 3 Trader",
    "Part 3 Trader",
    "Part 3 Trader",
    "Part 3 Trader",
    "Part 3 Trader",
    "Part 3 Trader",
    "Part 3 Trader",
    "Part 3 Trader",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Gameplay Hints",
    "Part 1 Run Start",
    "Part 3 Map",
    "Part 3 Map",
    "GBC NPC",
    "Special Nodes",
    "Part 3 Boss Dialogue",
    "Game Flow",
    "Boss Dialogue",
    "Special Nodes",
    "Part 3 Boss Dialogue",
    "Part 3 Map",
    "Part 3 Boss Dialogue",
    "Special Nodes",
    "Special Nodes",
    "Special Nodes",
    "Part 3 Tutorial",
    "Goo Bottle",
    "Talking Wolf Dialogue",
    "Part 1 Finale",
    "Talking Angler Dialogue",
    "Talking Angler Dialogue",
    "Talking Blue Mage Dialogue",
    "Talking Blue Mage Dialogue",
    "Talking Blue Mage Dialogue",
    "Part 3 Map",
    "Part 3 Map",
    "Tutorial",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "Part 3 Map",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "GBC NPC",
    "Part 3 Map",
    "Part 3 Boss Dialogue",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Story",
    "Part 3 Special Nodes",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "Part 3 Map",
    "GBC Battle",
    "Part 3 Factory",
    "Part 3 Factory",
    "Goo Bottle",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Part 3 Boss Dialogue",
    "Special Nodes"
	};

	vars.seen = new bool[vars.event_names.Length + vars.dialog_names.Count];
	vars.moon_events = new bool[vars.event_names.Length];
	vars.moon_events[20] = true; //"ProspectorDefeated"
	vars.moon_events[21] = true; //"AnglerDefeated"
	vars.moon_events[22] = true; //"TrapperTraderDefeated"
	vars.moon_events[26] = true; //"LeshyDefeated"
/*
	StoryEventsData.PermaSavedStoryEvents = new StoryEvent[3]
	{
	StoryEvent.ChapterSelectUnlocked,
	StoryEvent.BonelordHoloKeyFound,
	StoryEvent.MycologistHutKeyFound
	};
*/
	vars.permanent_events = new bool[vars.event_names.Length];
	vars.permanent_events[115] = true; //BonelordHoloKeyFound
	vars.permanent_events[126] = true; //MycologistHutKeyFound
	vars.permanent_events[162] = true; //ChapterSelectUnlocked

	vars.part1_events = 33;

	vars.event_data = new byte[vars.event_names.Length*4];
	
	vars.old_events_count = 0;
	vars.old_dialogue_count = 0;
	
	vars.sb = new StringBuilder();
	vars.settings_names = new List<string>();
	for (int i = 0; i < vars.event_names.Length; i++) {
		vars.sb.Clear();
		vars.sb.AppendFormat("story_event_{0}",i);
		vars.settings_names.Add(vars.sb.ToString());
	}

	vars.part1_events = 33;

	settings.Add("part1_events", true, "Part 1 Events");
	settings.SetToolTip("part1_events", "All part1 based events");

	settings.Add("moon_events", true, "Moon % Events", "part1_events");
	settings.CurrentDefaultParent = "part1_events";

	for (int i = 0; i < vars.part1_events; i++) {
		settings.Add(vars.settings_names[i], false, vars.event_names[i]);
	}
	settings.CurrentDefaultParent = null;
	settings.Add("part2_events", true, "Part 2 Events");
	settings.SetToolTip("part2_events", "All part2 / GBC based events");
	settings.Add("part3_events", true, "Part 3 Events");
	settings.SetToolTip("part3_events", "All part3 based events");
	settings.Add("permanent_events", true, "Permanent Events");
	settings.SetToolTip("permanent_events", "All permanent events");
	settings.Add("voice_over_events", true, "Voice Over Events");
	settings.SetToolTip("permanent_events", "All voice over events");

	settings.Add("dialog_events", true, "Dialogue");
	settings.SetToolTip("dialog_events", "All Dialogue Events");

	vars.unique_group_ids = new HashSet<string>();
	for (int i = 0; i < vars.group_ids.Count; i++) {
		vars.unique_group_ids.Add(vars.group_ids[i]);
	}

	vars.previously_seen_events = new HashSet<string>();

	//vars.unique_group_ids = vars.group_ids.Distinct().ToList();
	settings.CurrentDefaultParent = "dialog_events";
	/*
	for (int i = 0; i < vars.unique_group_ids.Count; i++) {
		//All the group_ids parent options, so long as they're not ""
		if (vars.unique_group_ids[i] != "")
			settings.Add(vars.unique_group_ids[i], true, vars.unique_group_ids[i]);
	}
	*/
	foreach(string s in vars.unique_group_ids) {
		if (!s.Equals(""))
			settings.Add(s, true, s);
	}

	settings.CurrentDefaultParent = null;

	for (int i = vars.part1_events; i < vars.event_names.Length; i++) {
		if(vars.event_names[i].StartsWith("GBC") || vars.event_names[i] == "FMVClips2" || vars.event_names[i].StartsWith("Part2")) {
			settings.Add(vars.settings_names[i], false, vars.event_names[i], "part2_events");
		} else if (vars.permanent_events[i]) {
			settings.Add(vars.settings_names[i], false, vars.event_names[i], "permanent_events");
		} else if (vars.event_names[i].StartsWith("TutorialRun") || vars.event_names[i] == "RingFound" || vars.event_names[i] == "GooBottleFound") {
			settings.Add(vars.settings_names[i], false, vars.event_names[i], "part1_events");
		} else if (vars.event_names[i].StartsWith("LukeVO")) {
			settings.Add(vars.settings_names[i], false, vars.event_names[i], "voice_over_events");
		} else {
			settings.Add(vars.settings_names[i], false, vars.event_names[i], "part3_events");
		}
	}

	for (int i = 0; i < vars.dialog_names.Count; i++) {
		//add the dialog option under the corresponding group id
		if (!vars.dialog_names[i].Equals("")) {
			if (!vars.group_ids[i].Equals("")) {
				settings.Add(vars.dialog_names[i], false, vars.dialog_names[i], vars.group_ids[i]);
			} else {
				settings.Add(vars.dialog_names[i], false, vars.dialog_names[i], "dialog_events");
			}
		}
	}

	vars.last_play_time = 0.0f;

	// functions that mock mono .dll's functionality so we can navigate class data like the game would
	Func<ProcessModuleWow64Safe, string> CalcModuleHash = (module) => {
		byte[] exeHashBytes = new byte[0];
		using (var sha = System.Security.Cryptography.MD5.Create())
		{
			using (var s = File.Open(module.FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
			{
				exeHashBytes = sha.ComputeHash(s);
			}
		}
		var hash = exeHashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
		return hash;
	};
	vars.CalcModuleHash = CalcModuleHash;
	
	Func<Process, IntPtr, int, IntPtr> mono_field_get_name = (proc, field, is_64bit_build) => {
		return proc.ReadPointer(field + ((is_64bit_build != 0) ? 0x8 : 0x4));
	};
	vars.mono_field_get_name = mono_field_get_name;

	Func<Process, IntPtr, int, int> mono_field_get_offset = (proc, field, is_64bit_build) => {
		return proc.ReadValue<int>(field + ((is_64bit_build != 0) ? 3*0x8: 3*0x4));
	};
	vars.mono_field_get_offset = mono_field_get_offset;

	Func<Process, IntPtr, int, IntPtr> mono_field_get_type = (proc, field, is_64bit_build) => {
		return proc.ReadPointer(field);
	};
	vars.mono_field_get_type = mono_field_get_type;

	Func<Process, IntPtr, int, IntPtr> mono_type_get_class = (proc, mono_type, is_64bit_build) => {
		return proc.ReadPointer(mono_type);
	};
	vars.mono_type_get_class = mono_type_get_class;

	Func<int,int> util_monoclass_get_vtable_size_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 92 : 56;
	};
	vars.util_monoclass_get_vtable_size_offset = util_monoclass_get_vtable_size_offset;

	Func<int,int> util_monoclass_get_fields_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 152 : 96;
	};
	vars.util_monoclass_get_fields_offset = util_monoclass_get_fields_offset;

	Func<int,int> util_monoclass_get_runtime_info_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 208 : 132;
	};
	vars.util_monoclass_get_runtime_info_offset = util_monoclass_get_runtime_info_offset;

	Func<int,int> util_monovtable_size = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 72 : 44;
	};
	vars.util_monovtable_size = util_monovtable_size;

	Func<int,int> util_monoclassfield_size = (is_64bit_build) => {
		return (is_64bit_build != 0) ? (3*0x8 + 0x4) : (3*0x4 + 0x4);
	};
	vars.util_monoclassfield_size = util_monoclassfield_size;

	Func<int,int> util_monoclass_size = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 240 : 148;
	};
	vars.util_monoclass_size = util_monoclass_size;

	Func<int,int> util_monovtable_get_vtable_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 64 : 0x28;
	};
	vars.util_monovtable_get_vtable_offset = util_monovtable_get_vtable_offset;

	Func<int, int> util_monoclass_get_field_name_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 3*0x8: 3*0x4;
	};
	vars.util_monoclass_get_field_name_offset = util_monoclass_get_field_name_offset;
	
	Func<int, int> util_monoclass_get_field_count_offset = (is_64bit_build) =>  {
		return (is_64bit_build != 0) ? 32 : 30;
	};
	vars.util_monoclass_get_field_count_offset = util_monoclass_get_field_count_offset;
	
	Func<int, int> util_monoclassdef_get_field_count_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ?  256 : 164;
	};
	vars.util_monoclassdef_get_field_count_offset = util_monoclassdef_get_field_count_offset;

	Func<int, int> util_monoclass_get_class_kind_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 32 : 30;
	};
	vars.util_monoclass_get_class_kind_offset = util_monoclass_get_class_kind_offset;

	Func<int, int> util_monoclassgenericinst_get_genericclass_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 240: 148;
	};
	vars.util_monoclassgenericinst_get_genericclass_offset = util_monoclassgenericinst_get_genericclass_offset;

	Func<int, int> util_monogenericclass_get_containerclass_offset = (is_64bit_build) =>  {
		return 0;
	};
	vars.util_monogenericclass_get_containerclass_offset = util_monogenericclass_get_containerclass_offset;

	Func<int, int> util_monoclass_get_parent_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 48 : 32;
	};
	vars.util_monoclass_get_parent_offset = util_monoclass_get_parent_offset;

	Func<int, int> util_monoclassfield_get_name_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 0x08 : 0x04;
	};
	vars.util_monoclassfield_get_name_offset = util_monoclassfield_get_name_offset;

	Func<int, int> util_monoimage_get_class_cache_offset = (is_64bit_build) =>  {
		return (is_64bit_build != 0) ? 1224 : 852;
	};
	vars.util_monoimage_get_class_cache_offset = util_monoimage_get_class_cache_offset;

	Func<int, int> util_monoimage_get_field_cache_offset = (is_64bit_build) =>  {
		return (is_64bit_build != 0) ? 1272 : 880;
	};
	vars.util_monoimage_get_field_cache_offset = util_monoimage_get_field_cache_offset;

	Func<int, int> util_monoclass_get_name_offset = (is_64bit_build) => {
		return (is_64bit_build != 0) ? 72 : 44;
	};
	vars.util_monoclass_get_name_offset = util_monoclass_get_name_offset;

	// custom function, gets a pointer to an instance of the class in static memory
	Func<Process, IntPtr, int, IntPtr> mono_get_static_class_pointer = (proc, klass, is_64bit_build) => {
		/*
	vars.save_manager_class =
	new DeepPointer(klass + runtime_info_offset,
		pointer_size,
		0x28 + (pointer_size*vtable_size)).Deref<IntPtr>(game); //(IntPtr)
		*/
		
		int pointer_size = (is_64bit_build != 0) ? 0x8 : 04;
		int vtable_size = proc.ReadValue<int>(klass + (int)vars.util_monoclass_get_vtable_size_offset(is_64bit_build));

		print(vars.sb.ToString());
		vars.sb.Clear();

		IntPtr ptr = proc.ReadPointer(klass + (int)vars.util_monoclass_get_runtime_info_offset(is_64bit_build));
		//print(ptr);
		vars.sb.AppendFormat("{0}", ptr);
		ptr = proc.ReadPointer(ptr + pointer_size);
		//print(ptr);
		vars.sb.AppendFormat("{0}", ptr);
		ptr = proc.ReadPointer(ptr + (int)vars.util_monovtable_get_vtable_offset(is_64bit_build) + (int)(pointer_size*vtable_size));
		//print(ptr);
		vars.sb.AppendFormat("{0}", ptr);
		return ptr;
	};
	vars.mono_get_static_class_pointer = mono_get_static_class_pointer;

	Func<Process, IntPtr, int, uint> mono_class_get_field_count = (proc, klass, is_64bit_build) => {
		uint fcount = 0;
		if (klass != IntPtr.Zero) {

			uint class_kind = ((uint)proc.ReadValue<char>(klass + (int)vars.util_monoclass_get_class_kind_offset(is_64bit_build))) & 0x07;
			
			if (class_kind == 1 || class_kind == 2) { //MONO_CLASS_DEF or //MONO_CLASS_GTD
				fcount = proc.ReadValue<uint>(klass + (int)vars.util_monoclassdef_get_field_count_offset(is_64bit_build));
			} else if (class_kind == 3) { //MONO_CLASS_GINST //monoclassgenericinst_genericclass_offset monogenericclass_containerclass_offset
				fcount = proc.ReadValue<uint>(proc.ReadPointer(klass + (int)vars.util_monoclassgenericinst_get_genericclass_offset(is_64bit_build)) +
					(int)vars.util_monogenericclass_get_containerclass_offset(is_64bit_build));
			}
		}
		return fcount;
	};
	vars.mono_class_get_field_count = mono_class_get_field_count;

	Func<Process, IntPtr, string, int, IntPtr> mono_class_get_field_from_name = (proc, klass, target_field, is_64bit_build) => {
		IntPtr field_ptr = IntPtr.Zero;

		int pointer_size = (is_64bit_build != 0) ? 0x8 : 0x4;
		int monoclass_class_kind_offset = vars.util_monoclass_get_class_kind_offset(is_64bit_build);
		int monoclass_field_count_offset = vars.util_monoclass_get_field_count_offset(is_64bit_build);
		int monoclassgenericinst_genericclass_offset = vars.util_monoclassgenericinst_get_genericclass_offset(is_64bit_build);
		int monogenericclass_containerclass_offset = vars.util_monogenericclass_get_containerclass_offset(is_64bit_build);

		int monoclass_fields_offset = vars.util_monoclass_get_fields_offset(is_64bit_build);
		int monoclassfield_size = vars.util_monoclassfield_size(is_64bit_build);
		int monoclassfield_name_offset = vars.util_monoclassfield_get_name_offset(is_64bit_build);
		int monoclass_parent_offset = vars.util_monoclass_get_parent_offset(is_64bit_build);

		byte[] ptrs;
		string str;
		while(klass != IntPtr.Zero) {
			uint fcount = vars.mono_class_get_field_count(proc, klass, is_64bit_build);

			IntPtr fields = proc.ReadPointer(klass + monoclass_fields_offset);
			proc.ReadBytes(fields, (int)fcount * (int)monoclassfield_size, out ptrs);
			for (uint i = 0; i < fcount; i++) {
				IntPtr field = IntPtr.Add(fields, (int)(i * monoclassfield_size));
				IntPtr fname = (is_64bit_build != 0) ? (IntPtr)BitConverter.ToInt64(ptrs, (int)(i * monoclassfield_size + monoclassfield_name_offset)) : (IntPtr)BitConverter.ToInt32(ptrs, (int)(i * monoclassfield_size + monoclassfield_name_offset));
				proc.ReadString(fname, target_field.Length, out str);
				if (!str.Equals(target_field)) {    
					continue;
				}
				
				field_ptr = field;
				break;
			}
			
			if (field_ptr != IntPtr.Zero)
				break;
			
			klass = proc.ReadPointer(klass + monoclass_parent_offset);
		}
		return field_ptr;
	};
	vars.mono_class_get_field_from_name = mono_class_get_field_from_name;


	Func<IntPtr, string, int, IntPtr> mono_image_get_class_from_cache = (image, target_class, is_64bit_build) => {
		string name;
		int    pointer_size = (is_64bit_build != 0) ? 0x4 : 0x8;
		int    monoclass_size = vars.util_monoclass_size();
		IntPtr class_cache  = image + vars.util_monoimage_get_class_cache_offset(is_64bit_build);
		IntPtr ntable       = game.ReadPointer(class_cache + (3*pointer_size) + (2*sizeof(int)));
		int    nsize        = game.ReadValue<int>(class_cache + (3*pointer_size));
		int    next_cache_class_offset = monoclass_size + (5*4);

		int    monoclass_name_offset = vars.util_monoclass_get_name_offset(is_64bit_build);

		uint token  = 0x02000000; //maybe helps land near class_cache bucket to search
		int  bucket = (int)(token % (uint)nsize); //(helps index into class_cache)

		IntPtr klass        = IntPtr.Zero;
		IntPtr result_klass = IntPtr.Zero;

		for (int i = 0; i < nsize; i++) {
			for(klass = game.ReadPointer(ntable + (pointer_size * bucket));
				klass != IntPtr.Zero;
				klass = game.ReadPointer(klass + next_cache_class_offset)) {
				//read class name buffer
				game.ReadString(game.ReadPointer(klass + monoclass_name_offset), 64, out name);
				//vars.sb.AppendFormat("class: {0}\n", name);
				if (name == target_class) {
					return result_klass = klass;
				}
				/*
				uint key = game.ReadValue<uint>(klass + type_token_offset);
				if (key == token) {
					vars.sb.AppendFormat("search_depth: {0}\n", depth);
					save_manager_ptr = klass;
					break;
				}
				*/
			}
			bucket = (bucket + 1) % nsize;
		}

		return result_klass;
	};
	vars.mono_image_get_class_from_cache = mono_image_get_class_from_cache;
	// this game currently is built in 32bit mode, but who knows, maybe that'll change?
	vars.is_64bit_build = false;

	//
	vars.save_file_offset        = 0;
	vars.story_events_offset = 0;
	vars.dialogue_events_offset  = 0;
	vars.play_time_offset        = 0;

	vars.completed_events_offset     = 0;
	vars.list_t_count_offset     = 0;

}

init
{
	print("Running Init!");
	var mono_dll = modules.First(mod => mod.ModuleName.StartsWith("mono"));
	var module   = modules.Single(mod => String.Equals(mod.ModuleName, "Inscryption.exe", StringComparison.OrdinalIgnoreCase));

	var moduleSize = module.ModuleMemorySize;

	var hash = vars.CalcModuleHash(mono_dll);

	int is_64bit_build = Convert.ToInt32(game.Is64Bit());
	vars.is_64bit_build = is_64bit_build;
	//assumes this build
	version = (is_64bit_build != 0) ?  "(x64) " + hash : "(x86) " + hash;
	/*
	if (hash == "637A4085C69711BC277DBA104947E84E") {
		version = "(Steam) Build ID: 7611267";
	} else {
		version = (is_64bit_build != 0) ?  "(x64) " + hash : "(x86) " + hash;
	}
	*/

	vars.sb.Clear();
	vars.sb.AppendFormat("Game Info: size[{0}] {1}\nHash: {2}\nVersion: {3}", module.ModuleMemorySize, module.ModuleName, hash, version);
	print(vars.sb.ToString());

	int pointer_size          = (is_64bit_build != 0) ? 0x08 : 0x04;
	int loaded_imgs_hash_addr = 0x003a43ec;

	IntPtr loaded_images_internaltable = game.ReadPointer(mono_dll.BaseAddress +(int)loaded_imgs_hash_addr);
	var loaded_images_slot_array = new DeepPointer(mono_dll.ModuleName, (int)loaded_imgs_hash_addr, (2 * pointer_size), 0x00);
	
	IntPtr table;
	loaded_images_slot_array.DerefOffsets(game, out table);
	
	//we're doing to print some debug info, clear our string builder
	vars.sb.Clear();
	vars.sb.AppendFormat("GHashTable (loaded_images): {0}\n", loaded_images_internaltable);
	vars.sb.AppendFormat("MonoInternalHashTable: {0}\n", table);

	int size = game.ReadValue<int>(loaded_images_internaltable + (3*pointer_size));

	IntPtr s      = IntPtr.Zero;
	IntPtr strPtr = IntPtr.Zero;
	IntPtr image  = IntPtr.Zero;
	string str;

	//brute force the hash table (w/o hash this is slower)
	//save time by reading all the top level pointers
	
	byte[] ptrs;
	game.ReadBytes(table, size*pointer_size, out ptrs);
	if (is_64bit_build != 0) {
		for (int item = 0; item < size; item++) {
			s = (IntPtr)BitConverter.ToInt64(ptrs, item*pointer_size);
			
			//key string
			strPtr = game.ReadPointer(s);
			game.ReadString(strPtr, 32, out str);
			if (str.Equals("Assembly-CSharp"))
			{
				//0x00 key, 0x04 value, 0x08 slot*
				game.ReadPointer(s + pointer_size, out image);
				break;
			}
			vars.sb.AppendFormat("{0}\n", str);
		}
	} else {
		for (int item = 0; item < size; item++) {
			s = (IntPtr)BitConverter.ToInt32(ptrs, item*pointer_size);
			
			//key string
			strPtr = game.ReadPointer(s);
			game.ReadString(strPtr, 32, out str);
			if (str.Equals("Assembly-CSharp"))
			{
				//0x00 key, 0x04 value, 0x08 slot*
				game.ReadPointer(s + pointer_size, out image);
				break;
			}
			vars.sb.AppendFormat("{0}\n", str);
		}
	}

	//we now have a MonoImage *
	vars.sb.AppendFormat("Assembly-CSharp: {0}\n", ((image != IntPtr.Zero) ? "found" : "not found"));

	IntPtr class_cache = image + vars.util_monoimage_get_class_cache_offset(is_64bit_build);
	IntPtr ntable      = game.ReadPointer(class_cache + (3*pointer_size) + (2*sizeof(int)));
	int    nsize       = game.ReadValue<int>(class_cache + (3*pointer_size));
	// found by using dotpeek
	// uint token = 0x20000AD; //SaveManager class //20000A6 in demo //0x20000AF
	// class names?
	uint token = 0x02000000; //maybe helps land near class_cache bucket to search
	int bucket = (int)(token % (uint)nsize); //(helps index into class_cache)
	// these we have to reverse engineer from mono (here these are based on mono being built in 32bit)
	
	int monoclass_size          = 0x94; //148
	int next_cache_class_offset = monoclass_size + (5*4);
	int type_token_offset       = 0x34; //52
	int vtable_size_offset      = 0x38; //56
	int runtime_info_offset     = 0x84; //132
	int name_offset             = 0x2C; //

	IntPtr klass            = IntPtr.Zero;
	IntPtr save_manager_ptr = IntPtr.Zero;
	IntPtr save_file_ptr    = IntPtr.Zero;
	IntPtr story_events_data_ptr = IntPtr.Zero;
	IntPtr dialogue_events_data_ptr = IntPtr.Zero;
	int    depth = 0;    
	//02 for class, 04 for field, 17 public static func
	//brute force all of these values
	string name;
	int found_classes = 0;
	for (int i = 0; i < nsize; i++) {
		for(klass = game.ReadPointer(ntable + (pointer_size * bucket));
			klass != IntPtr.Zero;
			klass = game.ReadPointer(klass + next_cache_class_offset)) {
			//read class name buffer
			game.ReadString(game.ReadPointer(klass + name_offset), 64, out name);
			//vars.sb.AppendFormat("class: {0}\n", name);
			if (name == "SaveManager") {
				save_manager_ptr = klass;
				found_classes++;
			} else if (name == "SaveFile") {
				save_file_ptr = klass;
				found_classes++;
			} else if (name == "StoryEventsData") {
				story_events_data_ptr = klass;
				found_classes++;
			} else if (name == "DialogueEventData") {
				dialogue_events_data_ptr = klass;
				found_classes++;
			}
			if (found_classes >= 4) {
				vars.sb.AppendFormat("search_depth: {0}\n", depth);
				break;
			}
			/*
			uint key = game.ReadValue<uint>(klass + type_token_offset);
			if (key == token) {
				vars.sb.AppendFormat("search_depth: {0}\n", depth);
				save_manager_ptr = klass;
				break;
			}
			*/
			depth++;
		}
		bucket = (bucket + 1) % nsize;
		if (found_classes >= 4)
			break;
	}

	vars.sb.AppendFormat("save_manager_ptr: {0}\n", ((save_manager_ptr != IntPtr.Zero) ? "found" : "not found"));
	if (save_manager_ptr != IntPtr.Zero) {
		vars.sb.AppendFormat("value: {0}\n", save_manager_ptr);
	}
	
	vars.sb.AppendFormat("save_file_ptr: {0}\n", ((save_file_ptr != IntPtr.Zero) ? "found" : "not found"));
	if (save_file_ptr != IntPtr.Zero) {
		vars.sb.AppendFormat("value: {0}\n", save_file_ptr);
	}

	//vars.save_manager_class = vars.mono_get_static_class_pointer(save_manager_ptr, is_64bit_build);
	vars.save_manager_class = vars.mono_get_static_class_pointer(game, save_manager_ptr, is_64bit_build);

	// should be able to retry
	if (vars.save_manager_class == IntPtr.Zero && loaded_images_internaltable != IntPtr.Zero) {
		print(vars.sb.ToString());
		vars.sb.Clear();
		throw new NullReferenceException();
	} else if (vars.save_manager_class == IntPtr.Zero) { // this is bad
		vars.sb.AppendFormat("Missing Images Hash Table! Disabling AutoSplitter\n", vars.save_manager_class);
		print(vars.sb.ToString());
		vars.sb.Clear();
		vars.splitter_failed = true;
		return;
	}

	// these were working offsets in (Steam) Build ID: 7611267
	int save_file_offset        = 0x10;
	int story_events_offset     = 0x0C;
	int dialogue_data_offset    = 0x10;
	int completed_events_offset = (is_64bit_build != 0) ? 0x10 : 0x08;
	vars.list_t_count_offset    = (is_64bit_build != 0) ? 0x18 : 0x0C;
	int array_t_offset          = 0x08;
	int play_time_offset        = 0x44;

	//int pointer_size = (is_64bit_build!=0) ? 0x8 : 0x4;
	int monoclass_class_kind_offset = vars.util_monoclass_get_class_kind_offset(is_64bit_build);
	int monoclassgenericinst_genericclass_offset = vars.util_monoclassgenericinst_get_genericclass_offset(is_64bit_build);
	int monogenericclass_containerclass_offset = vars.util_monogenericclass_get_containerclass_offset(is_64bit_build);
	int monoclass_fields_offset = vars.util_monoclass_get_fields_offset(is_64bit_build);
	int monoclassfield_name_offset = pointer_size;
	int monoclass_field_count_offset = vars.util_monoclass_get_field_name_offset(is_64bit_build);

	int monoclassfield_size = vars.util_monoclassfield_size(is_64bit_build);

	int monoclass_parent_offset = vars.util_monoclass_get_parent_offset(is_64bit_build);

	vars.array_t_offset = array_t_offset;
	IntPtr save_file_field = vars.mono_class_get_field_from_name(game, save_manager_ptr, "saveFile", is_64bit_build);

	// now we navigate the classes we found in dotpeek
	vars.sb.AppendFormat("save_file_field: {0}\n", save_file_field);
	vars.save_file_offset = vars.mono_field_get_offset(game, save_file_field, is_64bit_build);
	vars.sb.AppendFormat("save_file_offset: {0}\n", save_file_offset);

	IntPtr save_file_class = vars.mono_type_get_class(game, vars.mono_field_get_type(game, save_file_field, is_64bit_build), is_64bit_build);

	IntPtr story_events_field = vars.mono_class_get_field_from_name(game, save_file_class, "storyEvents", is_64bit_build);
	vars.story_events_offset = vars.mono_field_get_offset(game, story_events_field, is_64bit_build);

	IntPtr dialogue_events_field = vars.mono_class_get_field_from_name(game, save_file_class, "dialogueData", is_64bit_build);
	vars.dialogue_data_offset = vars.mono_field_get_offset(game, dialogue_events_field, is_64bit_build);

	IntPtr play_time_field = vars.mono_class_get_field_from_name(game, save_file_class, "playTime", is_64bit_build);
	vars.play_time_offset = vars.mono_field_get_offset(game, play_time_field, is_64bit_build);

	IntPtr completed_events_field = vars.mono_class_get_field_from_name(game, story_events_data_ptr, "completedEvents", is_64bit_build);
	vars.completed_events_offset  = vars.mono_field_get_offset(game, completed_events_field, is_64bit_build);

	IntPtr event_data_field       = vars.mono_class_get_field_from_name(game, dialogue_events_data_ptr, "eventData", is_64bit_build);
	vars.event_data_field_offset  = vars.mono_field_get_offset(game, event_data_field, is_64bit_build);

	vars.sb.AppendFormat("story_events_field:     {0}\n", story_events_field);
	vars.sb.AppendFormat("story_events_offset:    {0}\n", story_events_offset);
	vars.sb.AppendFormat("dialouge_events_field:  {0}\n", dialogue_events_field);
	vars.sb.AppendFormat("dialouge_events_offset: {0}\n", dialogue_data_offset);
	vars.sb.AppendFormat("play_time_field:        {0}\n", play_time_field);
	vars.sb.AppendFormat("play_time_offset:       {0}\n", play_time_offset);

	//we're going to manually do the following to avoid duplicate work
	//vars.completed_events_array = new DeepPointer(vars.save_manager_class + save_file_offset, story_events_offset, completed_events_offset, vars.list_t_count_offset - pointer_size);
	//vars.dialogue_events_array  = new DeepPointer(vars.save_manager_class + save_file_offset, dialogue_data_offset, completed_events_offset, vars.list_t_count_offset - pointer_size);
	vars.play_time = new DeepPointer((IntPtr)vars.save_manager_class + (int)vars.save_file_offset, (int)vars.play_time_offset);
	
	//print out everything interesting in one go
	print(vars.sb.ToString());
	vars.sb.Clear();
}

update {
	return !vars.splitter_failed;
}

gameTime {
	return TimeSpan.FromSeconds((double)vars.play_time.Deref<float>(game));
}

isLoading {
	return true;
}

start {
	float current_play_time = vars.play_time.Deref<float>(game);
	bool should_start = current_play_time < vars.last_play_time || current_play_time < 13.0f; // because this is how long the opening cutscene is
	vars.last_play_time = current_play_time;
	if (should_start) { //game went back in playtime...probably reset
		vars.old_events_count = 0;
		vars.old_dialogue_count = 0;
		vars.seen = new bool[vars.seen.Length]; //get a new array of bools 0'd out?
		vars.previously_seen_events.Clear();
	}

	return should_start;
}

reset {
	float current_play_time = vars.play_time.Deref<float>(game);
	bool should_reset = current_play_time < vars.last_play_time;
	vars.last_play_time = current_play_time;
	if (should_reset) { //game went back in playtime...probably reset
		vars.old_events_count = 0;
		vars.old_dialogue_count = 0;
		vars.seen = new bool[vars.seen.Length]; //get a new array of bools 0'd out?
		vars.previously_seen_events.Clear();
	}
	return should_reset;
}

split {
	int pointer_size            = (vars.is_64bit_build != 0) ? 0x08 : 0x04;

	IntPtr save_file              = game.ReadPointer((IntPtr)vars.save_manager_class + (int)vars.save_file_offset);

	/*
	IntPtr story_events           = game.ReadPointer(save_file + (int)vars.story_events_offset);
	float current_play_time       = game.ReadValue<float>(save_file + (int)vars.play_time_offset);
	*/
	byte[] save_file_bytes;
	int    save_file_size         = Math.Max(Math.Max(vars.story_events_offset, vars.play_time_offset), vars.dialogue_data_offset) + pointer_size;
	// + pointer_size;
	game.ReadBytes(save_file, save_file_size, out save_file_bytes);

	float current_play_time = (float)BitConverter.ToSingle(save_file_bytes, (int)vars.play_time_offset);
	IntPtr story_events = (vars.is_64bit_build != 0) ? (IntPtr)BitConverter.ToInt64(save_file_bytes, (int)vars.story_events_offset) : (IntPtr)BitConverter.ToInt32(save_file_bytes, (int)vars.story_events_offset);
	
	IntPtr dialogue_data = (vars.is_64bit_build != 0) ? (IntPtr)BitConverter.ToInt64(save_file_bytes, (int)vars.dialogue_data_offset) : (IntPtr)BitConverter.ToInt32(save_file_bytes, (int)vars.dialogue_data_offset);

	// for event data
	IntPtr completed_events       = game.ReadPointer(story_events + (int)vars.completed_events_offset);

	byte[] list_bytes;
	game.ReadBytes(completed_events + ((int)vars.list_t_count_offset - pointer_size), pointer_size+0x04, out list_bytes);

	IntPtr completed_events_items = (vars.is_64bit_build != 0) ? (IntPtr)BitConverter.ToInt64(list_bytes, 0) : (IntPtr)BitConverter.ToInt32(list_bytes, 0);
	int    completed_events_count = BitConverter.ToInt32(list_bytes, pointer_size);

	int event_bytes_count     = completed_events_count * 4;	
	int new_events_since_last = completed_events_count - vars.old_events_count;

	// for dialogue data
	IntPtr completed_dialogs      = game.ReadPointer(dialogue_data + (int)vars.completed_events_offset);
	game.ReadBytes(completed_dialogs + ((int)vars.list_t_count_offset - pointer_size), pointer_size+0x04, out list_bytes);

	IntPtr completed_dialogs_items = (vars.is_64bit_build != 0) ? (IntPtr)BitConverter.ToInt64(list_bytes, 0) : (IntPtr)BitConverter.ToInt32(list_bytes, 0);
	int    completed_dialogs_count = BitConverter.ToInt32(list_bytes, pointer_size);

	int dialog_event_size        = pointer_size;//a pointer to the object //0x10;//0x10; 0x1a; //maybe?
	int dialog_bytes_count       = completed_dialogs_count * dialog_event_size;
	int new_dialogues_since_last = completed_dialogs_count - vars.old_dialogue_count;

	//int dialog_bytes_count = completed_events * ;

	//IntPtr dialogue_events = game.ReadPointer(dialogue_data + (int)vars.);
	//game.ReadBytes(completed_events + ((int)vars.list_t_count_offset - pointer_size), pointer_size+0x04, out list_bytes);
	/*
	vars.sb.AppendFormat("save_file:              {0}\n", save_file);
	vars.sb.AppendFormat("story_events:           {0}\n", story_events);
	vars.sb.AppendFormat("completed_events:       {0}\n", completed_events);
	vars.sb.AppendFormat("completed_events_items: {0}\n", completed_events_items);

	vars.sb.AppendFormat("ptr  : {0}\n", completed_events_items);
	vars.sb.AppendFormat("count: {0}\n", completed_events_count);
	
	vars.sb.AppendFormat("new  : {0}\n", new_events_since_last);
	print(vars.sb.ToString());
	vars.sb.Clear();
	*/
	bool split = false;

	bool funny_time = current_play_time < vars.last_play_time;
	vars.last_play_time = current_play_time;

	if (funny_time) { //game went back in playtime...probably reset
		vars.old_events_count = 0;
		vars.seen = new bool[vars.seen.Length]; //get a new array of bools 0'd out?
		return split;
	}
	/*
	if (new_events_since_last == 0) { //nothing particularly eventful has happened?
		int array_access_offset = (vars.is_64bit_build != 0) ? 0x20 : 0x10;
		byte[] data_array = vars.event_data;
		// we could read a smaller amount of memory, but this is probably more useful to anyone looking to modify this script
		// there are a mystery 16 bytes offset, I've no idea what those are...
		bool read = game.ReadBytes(completed_events_items + array_access_offset, (int)event_bytes_count, out data_array);
		
		vars.sb.Clear();
		for (int i = 0; i < event_bytes_count; i += 4) {
			int event_id = BitConverter.ToInt32(data_array, i);
			vars.sb.AppendFormat("{0}\n", event_id);
		}

		print(vars.sb.ToString());
		vars.sb.Clear();
	}
	*/
	if (new_events_since_last > 0) { // something interesting has happened
		// make sure we have space to read memory
		if (vars.event_data.Length < event_bytes_count) {
			vars.event_data = new byte[event_bytes_count];
		}
		
		int array_access_offset = (vars.is_64bit_build != 0) ? 0x20 : 0x10;
		// read the array of events, as pointed out although we'd like to avoid allocating...all of these things
		// allocate, why? who knows.
		byte[] data_array = vars.event_data;
		// we could read a smaller amount of memory, but this is probably more useful to anyone looking to modify this script
		// there are a mystery 16 bytes offset, I've no idea what those are...
		bool read = game.ReadBytes(completed_events_items + array_access_offset, (int)event_bytes_count, out data_array);

		if (!read) { // if we can't read the data for some reason...just return false
			vars.sb.Clear();
			vars.sb.AppendFormat("couldn't read events!: {0}\n",completed_events_items);
			print(vars.sb.ToString());
			return split;
		}

		// process new events
		int processed_events = 0;
		vars.sb.Clear();
		bool moon_events_enabled = settings["moon_events"];

		for (int i = (vars.old_events_count*4); i < event_bytes_count; i += 4) {
			processed_events++;
			int event_id = BitConverter.ToInt32(data_array, i);
			
			vars.sb.AppendFormat("processing {0}: {1}\n",
				event_id < vars.settings_names.Count ? vars.settings_names[event_id] :
					"unknown_setting????",
				event_id < vars.event_names.Length ? 
					vars.event_names[event_id] : "unknown_event????");

			bool not_seen                 = event_id < vars.seen.Length && !vars.seen[event_id];
			bool event_marked_in_settings = event_id < vars.settings_names.Count && settings[vars.settings_names[event_id]];
			bool moon_event               = event_id < vars.moon_events.Length && vars.moon_events[event_id];

			if (not_seen && (event_marked_in_settings || (moon_events_enabled && moon_event))) {
				split = true;
				vars.sb.AppendFormat("splitting on: {0}\n", event_id < vars.event_names.Length ? 
					vars.event_names[event_id] : "unknown_event????");
			}

			//just a sanity check we don't explode the script w/ malformed data
			if (event_id < vars.seen.Length) {
				vars.seen[event_id] = true;
			}
			// if we process any events that are marked to split break and handle the rest later
			if (split)
				break;
		}
					
		print(vars.sb.ToString());
		vars.sb.Clear();
		
		// remember how many events we've dealt w/ for later, we'll be back
		vars.old_events_count += processed_events;
		return split;
	}

	//vars.sb.AppendFormat("dialogue_count: {0}\n", completed_dialogs_count);
	//vars.sb.AppendFormat("dialogue_ptr  : {0}\n", completed_dialogs_items);
	//print(vars.sb.ToString());
	//vars.sb.Clear();
	
	if (new_dialogues_since_last > 0) {
		int array_access_offset = (vars.is_64bit_build != 0) ? 0x20 : 0x10;
		// read the array of events, as pointed out although we'd like to avoid allocating...all of these things
		// allocate, why? who knows.
		byte[] data_array = vars.event_data;
		// we could read a smaller amount of memory, but this is probably more useful to anyone looking to modify this script
		// there are a mystery 16 bytes offset, I've no idea what those are...
		bool read = game.ReadBytes(completed_dialogs_items + array_access_offset, (int)dialog_bytes_count, out data_array);

		if (!read) { // if we can't read the data for some reason...just return false
			vars.sb.Clear();
			vars.sb.AppendFormat("couldn't read dialogue!: {0}\n",completed_events_items);
			print(vars.sb.ToString());
			return split;
		}

		print(vars.sb.ToString());
		vars.sb.Clear();

		int processed_dialogues = 0; //(vars.old_dialogue_count*dialog_event_size)
		if (vars.is_64bit_build != 0) {
			//TODO: handle x64 bit builds if any show up
			for (int i = (vars.old_dialogue_count*dialog_event_size); i < dialog_bytes_count; i+=dialog_event_size) {
				processed_dialogues++;
				IntPtr event_save_data_ptr = (IntPtr)BitConverter.ToInt64(data_array, i);

				byte[] temp;
				bool ptr_read = game.ReadBytes(event_save_data_ptr, 0x1C, out temp);

				IntPtr str_ptr = (IntPtr)BitConverter.ToInt64(temp, 2*pointer_size);
				vars.sb.Clear();
				game.ReadString(str_ptr+(2*pointer_size+0x4), (StringBuilder)vars.sb);
				string temp_str = vars.sb.ToString();
				bool seen = vars.previously_seen_events.Contains(temp_str);
				if (!seen && settings[temp_str]) {
					vars.previously_seen_events.Add(temp_str);
					split = true;
					break;
				}
			}
			//print(vars.sb.ToString());
			//vars.sb.Clear();
		} else {
			for (int i = (vars.old_dialogue_count*dialog_event_size); i < dialog_bytes_count; i+=dialog_event_size) {
				processed_dialogues++;
				IntPtr event_save_data_ptr = (IntPtr)BitConverter.ToInt32(data_array, i);
				byte[] temp;
				bool ptr_read = game.ReadBytes(event_save_data_ptr, 0x10, out temp);
				//if (!ptr_read)
				//	continue;
				//2 ptrs?
				IntPtr str_ptr = (IntPtr)BitConverter.ToInt32(temp, 0x08);

				vars.sb.Clear();
				//ReadStringType.UTF16,
				game.ReadString(str_ptr+0x0C, (StringBuilder)vars.sb);
				string temp_str = vars.sb.ToString();
				//bool seen = vars.dialogue_seen[temp_str];
				bool seen = vars.previously_seen_events.Contains(temp_str);
				if (!seen && settings[temp_str]) {
					vars.previously_seen_events.Add(temp_str);
					split = true;
					break;
				}
			}
		}

		vars.old_dialogue_count += processed_dialogues;

		return split;
	}
	
	return split;
}