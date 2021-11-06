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
	/*
runtime_info_offset
	*/
	// custom function, gets a pointer to an instance of the class in static memory
	Func<Process, IntPtr, int, IntPtr> mono_get_static_class_pointer = (proc, klass, is_64bit_build) => {
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
			/*
			uint class_kind = ((uint)proc.ReadValue<char>(klass + (int)monoclass_class_kind_offset)) & 0x07;
			
			if (class_kind == 1 || class_kind == 2) { //MONO_CLASS_DEF or //MONO_CLASS_GTD
				fcount = proc.ReadValue<uint>(klass + monoclass_field_count_offset);
			} else if (class_kind == 3) { //MONO_CLASS_GINST
				fcount = proc.ReadValue<uint>(proc.ReadPointer(klass + monoclassgenericinst_genericclass_offset) + monogenericclass_containerclass_offset);
			}
			*/
			IntPtr fields = proc.ReadPointer(klass + monoclass_fields_offset);
			proc.ReadBytes(fields, (int)fcount * (int)monoclassfield_size, out ptrs);
			for (uint i = 0; i < fcount; i++) {
				IntPtr field = IntPtr.Add(fields, (int)(i * monoclassfield_size));
				//IntPtr fname = proc.ReadPointer(field + monoclassfield_name_offset);
				//IntPtr field = (is_64bit_build != 0) ? (IntPtr)BitConverter.ToInt64(ptrs, (int)(i * pointer_size)) : (IntPtr)BitConverter.ToInt32(ptrs, (int)(i * pointer_size));
				//IntPtr fname = proc.ReadPointer(field + monoclassfield_name_offset);
				//IntPtr field = ptrs + (int)(i * monoclassfield_size + monoclassfield_name_offset);
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
		IntPtr class_cache  = image + (int)((is_64bit_build != 0) ? 1224 : 852); //0x354; //852 //1224
		IntPtr ntable       = game.ReadPointer(class_cache + (3*pointer_size) + (2*sizeof(int)));
		int    nsize        = game.ReadValue<int>(class_cache + (3*pointer_size));
		int    next_cache_class_offset = monoclass_size + (5*4);

		int    monoclass_name_offset = (is_64bit_build != 0) ? 72 : 44;//vars.util_monoclass_get_name_offset(is_64bit_build);

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
}

init
{
	print("Running Init!");
	var mono_dll = modules.First(mod => mod.ModuleName.StartsWith("mono"));
	var module   = modules.Single(mod => String.Equals(mod.ModuleName, "Inscryption.exe", StringComparison.OrdinalIgnoreCase));

	var moduleSize = module.ModuleMemorySize;

	var hash = vars.CalcModuleHash(mono_dll);

	int is_64bit_build = Convert.ToInt32(game.Is64Bit());
	//assumes this build
	if (hash == "637A4085C69711BC277DBA104947E84E") {
		version = "(Steam) Build ID: 7611267";
	} else {
		version = (is_64bit_build != 0) ?  "(x64) " + hash : "(x86) " + hash;
	}

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

	int depth = 0;    
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
			}
			if (found_classes >= 2) {
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
		if (found_classes >= 2)
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

	/*
	vars.save_manager_class =
	new DeepPointer(klass + runtime_info_offset,
		pointer_size,
		0x28 + (pointer_size*vtable_size)).Deref<IntPtr>(game); //(IntPtr)
	*/

	//vars.save_manager_class = vars.mono_get_static_class_pointer(save_manager_ptr, is_64bit_build);
	vars.save_manager_class = vars.mono_get_static_class_pointer(game, save_manager_ptr, is_64bit_build);
/*
	int vtable_size = game.ReadValue<int>(klass + vtable_size_offset);
	IntPtr ptr = game.ReadPointer(klass + runtime_info_offset);
	vars.sb.AppendFormat("{0}\n", ptr);
	ptr = game.ReadPointer(ptr + pointer_size);
	vars.sb.AppendFormat("{0}\n", ptr);
	vars.save_manager_class = game.ReadPointer(ptr + 0x28 + (pointer_size*vtable_size));

	vars.sb.AppendFormat("SaveManager: {0}\n", vars.save_manager_class);
*/
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

	int save_file_offset        = 0x10;
	int completed_events_offset = 0x0C;
	int dialogue_data_offset    = 0x10;
	int list_t_offset           = 0x08;
	int array_t_offset          = 0x08;
	int play_time_offset        = 0x44;

	//IntPtr save_file_field = vars.mono_class_get_field_from_name(vars.save_manager_class, "saveFile", is_64bit_build);

	//int pointer_size = (is_64bit_build!=0) ? 0x8 : 0x4;
	int monoclass_class_kind_offset = vars.util_monoclass_get_class_kind_offset(is_64bit_build);
	int monoclassgenericinst_genericclass_offset = vars.util_monoclassgenericinst_get_genericclass_offset(is_64bit_build);
	int monogenericclass_containerclass_offset = vars.util_monogenericclass_get_containerclass_offset(is_64bit_build);
	int monoclass_fields_offset = vars.util_monoclass_get_fields_offset(is_64bit_build);
	int monoclassfield_name_offset = pointer_size;
	int monoclass_field_count_offset = vars.util_monoclass_get_field_name_offset(is_64bit_build);

	int monoclassfield_size = vars.util_monoclassfield_size(is_64bit_build);

	int monoclass_parent_offset = vars.util_monoclass_get_parent_offset(is_64bit_build);
	//print("getting: " + klass);
	string target_field = "saveFile";

	klass = save_manager_ptr;
	IntPtr field_ptr = IntPtr.Zero;
	//byte[] ptrs;
	//string str;
	while(klass != IntPtr.Zero) {
		uint fcount = vars.mono_class_get_field_count(game, klass, is_64bit_build);

		IntPtr fields = memory.ReadPointer(klass + monoclass_fields_offset);
		//memory.ReadBytes(fields, (int)fcount * (int)monoclassfield_size, out ptrs);
		vars.sb.AppendFormat("fcount: {0}\n", fcount);
		for (uint i = 0; i < fcount; i++) {
			IntPtr field = IntPtr.Add(fields, (int)(i * monoclassfield_size));
			IntPtr fname = memory.ReadPointer(field + monoclassfield_name_offset);
			memory.ReadString(fname, 32, out str);
			bool result = target_field.Equals(str);
			vars.sb.AppendFormat("name: {0} vs {1}\n", str, target_field);

			if (!result) {//!str.Equals(target_field)
				continue;
			}
			
			field_ptr = field;
			break;
		}
		
		if (field_ptr != IntPtr.Zero)
			break;
		
		klass = memory.ReadPointer(klass + monoclass_parent_offset);
	}

	IntPtr save_file_field = field_ptr;
	vars.sb.AppendFormat("save_file_field: {0}\n", save_file_field);
	save_file_offset = vars.mono_field_get_offset(game, save_file_field, is_64bit_build);
	vars.sb.AppendFormat("save_file_offset: {0}\n", save_file_offset);

	IntPtr save_file_class = vars.mono_type_get_class(game, vars.mono_field_get_type(game, save_file_field, is_64bit_build), is_64bit_build);

	IntPtr story_events_field = vars.mono_class_get_field_from_name(game, save_file_class, "storyEvents", is_64bit_build);
	completed_events_offset = vars.mono_field_get_offset(game, story_events_field, is_64bit_build);

	IntPtr dialogue_events_field = vars.mono_class_get_field_from_name(game, save_file_class, "dialogueData", is_64bit_build);
	dialogue_data_offset = vars.mono_field_get_offset(game, dialogue_events_field, is_64bit_build);

	IntPtr play_time_field = vars.mono_class_get_field_from_name(game, save_file_class, "playTime", is_64bit_build);
	play_time_offset = vars.mono_field_get_offset(game, play_time_field, is_64bit_build);

	vars.sb.AppendFormat("story_events_field:     {0}\n", story_events_field);
	vars.sb.AppendFormat("story_events_offset:    {0}\n", completed_events_offset);
	vars.sb.AppendFormat("dialouge_events_field:  {0}\n", dialogue_events_field);
	vars.sb.AppendFormat("dialouge_events_offset: {0}\n", dialogue_data_offset);
	vars.sb.AppendFormat("play_time_field:        {0}\n", play_time_field);
	vars.sb.AppendFormat("play_time_offset:       {0}\n", play_time_offset);
	
	//vars.storyEvents = new DeepPointer(vars.save_manager_class + 0x10, 0x0C);
	//vars.dialogueData = new DeepPointer(vars.save_manager_class + 0x10, 0x10);
	//vars.completed_events_count = new DeepPointer(vars.save_manager_class + 0x10, 0xC, 0x8, 0xC);
	vars.completed_events_ptr = new DeepPointer(vars.save_manager_class + save_file_offset, completed_events_offset, list_t_offset, array_t_offset);
	vars.dialogue_events_ptr  = new DeepPointer(vars.save_manager_class + save_file_offset, dialogue_data_offset,    list_t_offset, array_t_offset);
	vars.play_time            = new DeepPointer(vars.save_manager_class + save_file_offset, play_time_offset);

	//vars.last_save_time       = new DeepPointer(vars.save_manager_class + 0x08);
	//vars.sb.AppendFormat("last_save: {0}\n", vars.last_save_time.Deref<float>(game));
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
