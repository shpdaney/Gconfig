local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

	AtlasLoot_Data["PVPMENU"] = {
		{ 2, "LEVEL80PVPSETS", "inv_chest_cloth_81", "=ds="..AL["PvP Armor Sets"], "=q5="..AL["Level 80"], "" };
		{ 3, "PVP80NONSETEPICS", "inv_bracer_51", "=ds="..AL["PvP Non-Set Epics"], "=q5="..AL["Level 80"]};
		{ 4, "PvPNewTokens", "INV_Sword_06", "=ds=PvP Жетоны", "=q5="..AL["Level 80"]};
		{ 7, "WINTERGRASPMENU", "INV_Misc_Platnumdisks", "=ds="..BabbleZone["Wintergrasp"], ""};
		{ 8, "PVPMENU2", "INV_Jewelry_Necklace_21", "=ds="..AL["BG/Open PvP Rewards"], ""};
		{ 17, "PvP80UnSet1", "INV_Jewelry_Necklace_36", "=ds="..AL["PvP Accessories"], "=q5="..AL["Level 80"]};
		{ 18, "GladiatorWeapons1", "inv_axe_115", "=ds="..AL["Gladiator\'s Weapons"], "=q5="..AL["Level 80"] };
		{ 22, "WillCircleMenu_x2", "Ability_Mount_HordePVPMount", "=ds="..AL["WillCircle"], ""};
		{ 23, "RageSaddle", "achievement_bg_kill_on_mount", "=ds="..AL["RageSaddle"], ""};	
	};

	AtlasLoot_Data["PVPRBG"] = {
		{ 2, "PVPRBGSET", "inv_chest_cloth_77", "=ds="..AL["PvP RBG Transmogrification"]};
		{ 17, "PVPRBGT2Weapons", "inv_axe_115", "=ds="..AL["Gladiator\'s Weapons"]};
		Back = "PVPMENU";
	};
	
	AtlasLoot_Data["PVPRBGSET"] = {
		{ 3, "PVPDruid", "Spell_Nature_Regeneration", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], ""};
		{ 4, "PVPMage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 5, "PVPPriest", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], ""};
		{ 6, "PVPShaman", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], ""};
		{ 7, "PVPWarrior", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], ""};
		{ 18, "PVPHunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 19, "PVPPaladin", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], ""};
		{ 20, "PVPRogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 21, "PVPWarlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		Back = "PVPRBG";
	};
	
	AtlasLoot_Data["PVPMENU2"] = {
		{ 1, "Hellfire", "INV_Misc_Token_HonorHold", "=ds="..BabbleZone["Hellfire Peninsula"], "=q5="..AL["Hellfire Fortifications"]};
		{ 2, "Zangarmarsh", "Spell_Nature_ElementalPrecision_1", "=ds="..BabbleZone["Zangarmarsh"], "=q5="..AL["Twin Spire Ruins"]};
		{ 3, "AVMisc", "INV_Jewelry_Necklace_21", "=ds="..BabbleZone["Alterac Valley"], ""};
		{ 5, "OtherPvPRewards", "Ability_mount_ridinghorse", "=ds="..AL["OtherPvPRewards"], ""};
		{ 16, "Terokkar", "INV_Jewelry_FrostwolfTrinket_04", "=ds="..BabbleZone["Terokkar Forest"], "=q5="..AL["Spirit Towers"]};
		{ 17, "Nagrand1", "INV_Misc_Rune_09", "=ds="..BabbleZone["Nagrand"], "=q5="..AL["Halaa"]};
		{ 18, "VentureBay1", "INV_Misc_Coin_16", "=ds="..BabbleZone["Grizzly Hills"], "=q5="..AL["Venture Bay"]};
		{ 20, "PvP80Misc", "INV_Scroll_06", "=ds="..AL["PvP Misc"], "=q5="..AL["Level 80"]};
		Back = "PVPMENU";
		};

	AtlasLoot_Data["PVP80NONSETEPICS"] = {
		{ 2, "PvP80ClothNonSet0", "INV_Boots_Cloth_12", "=ds="..BabbleInventory["Cloth"], ""};
		{ 3, "PvP80MailNonSet0", "INV_Boots_Plate_06", "=ds="..BabbleInventory["Mail"], ""};
		{ 4, "PvP80ClassItems1", "Spell_Frost_SummonWaterElemental", "=ds="..BabbleInventory["Relic"], "" };
		{ 17, "PvP80LeatherNonSet0", "INV_Boots_08", "=ds="..BabbleInventory["Leather"], ""};
		{ 18, "PvP80PlateNonSet0", "INV_Boots_Plate_04", "=ds="..BabbleInventory["Plate"], ""};
		Back = "PVPMENU";
	};

	AtlasLoot_Data["LEVEL80PVPSETS"] = {
		{ 2, "PvP80DeathKnight", "Spell_Deathknight_DeathStrike", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], ""};
		{ 4, "PvP80DruidBalance", "Spell_Nature_InsectSwarm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
		{ 5, "PvP80DruidFeral", "Ability_Druid_Maul", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
		{ 6, "PvP80DruidRestoration", "Spell_Nature_Regeneration", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
		{ 8, "PvP80Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 10, "PvP80Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 12, "PvP80PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
		{ 13, "PvP80PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
		{ 17, "PvP80PriestHoly", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
		{ 18, "PvP80PriestShadow", "Spell_Shadow_AntiShadow", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
		{ 20, "PvP80Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 22, "PvP80ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
		{ 23, "PvP80ShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
		{ 24, "PvP80ShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
		{ 26, "PvP80Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		{ 28, "PvP80Warrior", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], ""};
		Back = "PVPMENU";
	};

	AtlasLoot_Data["WINTERGRASPMENU"] = {
		{ 2, "LakeWintergrasp2", "inv_helmet_136", "=ds="..BabbleInventory["Cloth"], ""};
		{ 3, "LakeWintergrasp3", "INV_Helmet_141", "=ds="..BabbleInventory["Leather"], ""};
		{ 4, "LakeWintergrasp4", "INV_Helmet_138", "=ds="..BabbleInventory["Mail"], ""};
		{ 5, "LakeWintergrasp5", "inv_helmet_134", "=ds="..BabbleInventory["Plate"], ""};
		{ 17, "LakeWintergrasp1", "inv_misc_rune_11", "=ds="..AL["Accessories"], ""};
		{ 18, "LakeWintergrasp6", "inv_sword_19", "=ds="..AL["Heirloom"], ""};
		{ 19, "LakeWintergrasp7", "inv_jewelcrafting_icediamond_02", "=ds="..AL["PVP Gems/Enchants/Jewelcrafting Designs"], ""};
		{ 20, "LakeWintergrasp8", "Ability_Mount_AlliancePVPMount", "=ds="..AL["WGMounts"], ""};
		Back = "PVPMENU";
	};

	