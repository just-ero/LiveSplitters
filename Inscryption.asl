state("Inscryption") {
	
}

state("Inscryption", "") {
	
}

state("Inscryption", "(Steam) Build ID: 7611267") {
	
}

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

	vars.seen = new bool[vars.event_names.Length];
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

	settings.Add("part1_events", false, "Part 1 Events");
	settings.SetToolTip("part1_events", "All part1 based events");

	settings.Add("moon_events", false, "Moon % Events", "part1_events");
	settings.CurrentDefaultParent = "part1_events";

	for (int i = 0; i < vars.part1_events; i++) {
		settings.Add(vars.settings_names[i], false, vars.event_names[i]);
	}
	settings.CurrentDefaultParent = null;
	settings.Add("part2_events", false, "Part 2 Events");
	settings.SetToolTip("part2_events", "All part2 / GBC based events");
	settings.Add("part3_events", false, "Part 3 Events");
	settings.SetToolTip("part3_events", "All part3 based events");
	settings.Add("permanent_events", false, "Permanent Events");
	settings.SetToolTip("permanent_events", "All permanent events");
	settings.Add("voice_over_events", false, "Voice Over Events");
	settings.SetToolTip("permanent_events", "All voice over events");
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

	vars.last_play_time = 0.0f;

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
}

init
{
	print("Running Init!");
	var DLL = modules.First(mod => mod.ModuleName.StartsWith("mono"));
	var module = modules.Single(mod => String.Equals(mod.ModuleName, "Inscryption.exe", StringComparison.OrdinalIgnoreCase));

	var moduleSize = module.ModuleMemorySize;

	var hash = vars.CalcModuleHash(module);
	//assumes this build
	if (hash == "637A4085C69711BC277DBA104947E84E") {
		version = "(Steam) Build ID: 7611267";
	} else {
		version = game.Is64Bit() ? "(x86) " + hash : "(x64) " + hash;
	}

	vars.sb.Clear();
	vars.sb.AppendFormat("Game Info: size[{0}] {1}\nHash: {2}\nVersion: {3}", module.ModuleMemorySize, module.ModuleName, hash, version);
	print(vars.sb.ToString());

	int pointer_size          = 0x04;
	int loaded_imgs_hash_addr = 0x003a43ec;

	IntPtr loaded_images_internaltable = game.ReadPointer(DLL.BaseAddress +(int)loaded_imgs_hash_addr);
	var loaded_images_slot_array = new DeepPointer(DLL.ModuleName, (int)loaded_imgs_hash_addr, (2 * pointer_size), 0x00);
	
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
	//we now have a MonoImage *
	vars.sb.AppendFormat("Assembly-CSharp: {0}\n", ((image != IntPtr.Zero) ? "found" : "not found"));

	IntPtr class_cache = image + 0x354; //852
	IntPtr ntable      = game.ReadPointer(class_cache + (3*pointer_size) + (2*sizeof(int)));
	int    nsize       = game.ReadValue<int>(class_cache + (3*pointer_size));
	// found by using dotpeek
	uint token = 0x20000AD; //SaveManager class
	int bucket = (int)(token % (uint)nsize);
	// these we have to reverse engineer from mono (here these are based on mono being built in 32bit)
	int monoclass_size          = 0x94;
	int next_cache_class_offset = monoclass_size + 0x14;
	int type_token_offset       = 0x34;
	int vtable_size_offset      = 0x38; //56
	int runtime_info_offset     = 0x84; //132

	IntPtr klass            = IntPtr.Zero;
	IntPtr save_manager_ptr = IntPtr.Zero;
	int depth = 0;    
	
	for(klass = game.ReadPointer(ntable + (pointer_size * bucket));
		klass != IntPtr.Zero;
		klass = game.ReadPointer(klass + next_cache_class_offset)) {
		uint key = game.ReadValue<uint>(klass + type_token_offset);
		if (key == token) {
			vars.sb.AppendFormat("search_depth: {0}\n", depth);
			save_manager_ptr = klass;
			break;
		}
		depth++;
	}

	vars.sb.AppendFormat("save_manager_ptr: {0}\n", ((save_manager_ptr != IntPtr.Zero) ? "found" : "not found"));
	if (save_manager_ptr != IntPtr.Zero) {
		vars.sb.AppendFormat("value: {0}\n", save_manager_ptr);
	}

	int vtable_size = game.ReadValue<int>(klass + vtable_size_offset);
	vars.save_manager_game_ptr = 
	(IntPtr)new DeepPointer(klass + runtime_info_offset,
		pointer_size,
		0x28 + (pointer_size*vtable_size)).Deref<int>(game);
	
	vars.sb.AppendFormat("SaveManager: {0}\n", vars.save_manager_game_ptr);

	// should be able to retry
	if (vars.save_manager_game_ptr == IntPtr.Zero && loaded_images_internaltable != IntPtr.Zero) {
		throw new NullReferenceException();
	} else if (vars.save_manager_game_ptr == IntPtr.Zero) { // this is bad
		vars.sb.AppendFormat("Missing Images Hash Table! Disabling AutoSplitter\n", vars.save_manager_game_ptr);
		print(vars.sb.ToString());
		vars.sb.clear();
		vars.splitter_failed = true;
		return;
	}

	//vars.storyEvents = new DeepPointer(vars.save_manager_game_ptr + 0x10, 0x0C);
	//vars.dialogueData = new DeepPointer(vars.save_manager_game_ptr + 0x10, 0x10);
	//vars.completed_events_count = new DeepPointer(vars.save_manager_game_ptr + 0x10, 0xC, 0x8, 0xC);
	vars.completed_events_ptr = new DeepPointer(vars.save_manager_game_ptr + 0x10, 0x0C, 0x08, 0x08);
	vars.dialogue_events_ptr  = new DeepPointer(vars.save_manager_game_ptr + 0x10, 0x10, 0x08, 0x08);
	vars.last_save_time       = new DeepPointer(vars.save_manager_game_ptr + 0x08);
	vars.play_time            = new DeepPointer(vars.save_manager_game_ptr + 0x10, 0x44);
	
	vars.sb.AppendFormat("last_save: {0}\n", vars.last_save_time.Deref<float>(game));
	vars.sb.AppendFormat("play_time: {0}\n", vars.play_time.Deref<float>(game));

	long list_ptr_size       = vars.completed_events_ptr.Deref<long>(game);
	int current_event_count  = (int)(list_ptr_size >> 32);
	IntPtr current_event_ptr = (IntPtr)(list_ptr_size & 0x00000000FFFFFFFF);

	vars.sb.AppendFormat("events ({0}:{1})\n",current_event_count, current_event_ptr);
	
	list_ptr_size = vars.dialogue_events_ptr.Deref<long>(game);
	int current_dialog_count  = (int)(list_ptr_size >> 32);
	IntPtr current_dialog_ptr = (IntPtr)(list_ptr_size & 0x00000000FFFFFFFF);

	vars.sb.AppendFormat("dialog ({0}:{1})\n",current_dialog_count, current_dialog_ptr);

	//print out everything interesting in one go
	print(vars.sb.ToString());
}

update {
	return !vars.splitter_failed;
}

gameTime {
	TimeSpan play_time = TimeSpan.FromSeconds((double)vars.play_time.Deref<float>(game));
	return play_time;
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
		vars.seen = new bool[vars.seen.Length]; //get a new array of bools 0'd out?
	}

	return should_start;
}

reset {
	float current_play_time = vars.play_time.Deref<float>(game);
	bool should_reset = current_play_time < vars.last_play_time;
	vars.last_play_time = current_play_time;
	if (should_reset) { //game went back in playtime...probably reset
		vars.old_events_count = 0;
		vars.seen = new bool[vars.seen.Length]; //get a new array of bools 0'd out?
	}
	return should_reset;
}

split {
	long list_ptr_size      = vars.completed_events_ptr.Deref<long>(game);
	float current_play_time = vars.play_time.Deref<float>(game);
	//TODO: dialogue event system
	//long dialog_ptr_size = vars.dialogue_events_ptr.Deref<long>(game);

	int current_event_count = (int)(list_ptr_size >> 32);
	IntPtr current_event_ptr = (IntPtr)(list_ptr_size & 0x00000000FFFFFFFF);

	int event_bytes_count = current_event_count * 4;	
	int new_events_since_last = current_event_count - vars.old_events_count;

	bool split = false;

	bool funny_time = current_play_time < vars.last_play_time;
	vars.last_play_time = current_play_time;

	if (funny_time) { //game went back in playtime...probably reset
		vars.old_events_count = 0;
		vars.seen = new bool[vars.seen.Length]; //get a new array of bools 0'd out?
		return split;
	}
	
	if (new_events_since_last == 0) { //nothing particularly eventful has happened?
		
	}

	if (new_events_since_last > 0) { // something interesting has happened
		// make sure we have space to read memory
		if (vars.event_data.Length < event_bytes_count) {
			vars.event_data = new byte[event_bytes_count];
		}
			
		// read the array of events, as pointed out although we'd like to avoid allocating...all of these things
		// allocate, why? who knows.
		byte[] data_array = vars.event_data;
		// we could read a smaller amount of memory, but this is probably more useful to anyone looking to modify this script
		// there are a mystery 16 bytes offset, I've no idea what those are...
		bool read = game.ReadBytes(current_event_ptr + (4*4), (int)event_bytes_count, out data_array);

		if (!read) { // if we can't read the data for some reason...just return false
			vars.sb.Clear();
			vars.sb.AppendFormat("couldn't read events!: {0}\n",current_event_ptr);
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
				vars.sb.AppendFormat("splitting on: {0}", event_id < vars.event_names.Length ? 
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
		
		// remember how many events we've dealt w/ for later, we'll be back
		vars.old_events_count += processed_events;
		return split;
	}
	
	return split;
}
