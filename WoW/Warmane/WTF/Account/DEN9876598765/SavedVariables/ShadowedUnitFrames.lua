
ShadowedUFDB = {
	["profileKeys"] = {
		["Asummi - Blackrock [PvP only]"] = "mk1",
		["Bloodstorm - Blackrock [PvP only]"] = "mk1",
		["Openchest - Blackrock [PvP only]"] = "Default",
		["Acumii - Blackrock [PvP only]"] = "Default",
		["Hotwiffe - Blackrock [PvP only]"] = "Default",
		["Etanhunt - Blackrock [PvP only]"] = "Default",
		["Fafhesifdj - Blackrock [PvP only]"] = "Default",
		["Fsdfqfd - Blackrock [PvP only]"] = "Default",
		["Wheretotem - Blackrock [PvP only]"] = "Default",
		["Testcloth - Blackrock [PvP only]"] = "Default",
		["Gadig - Blackrock [PvP only]"] = "Default",
		["Fsfqfweff - Blackrock [PvP only]"] = "Default",
		["Ffwefsf - Blackrock [PvP only]"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["revision"] = 1,
			["powerColors"] = {
				["FUEL"] = {
					["b"] = 0.36,
					["g"] = 0.47,
					["r"] = 0.85,
				},
				["FOCUS"] = {
					["b"] = 0,
					["g"] = 0.85,
					["r"] = 1,
				},
				["AMMOSLOT"] = {
					["b"] = 0.55,
					["g"] = 0.6,
					["r"] = 0.85,
				},
				["ENERGY"] = {
					["b"] = 0.1,
					["g"] = 0.85,
					["r"] = 1,
				},
				["MANA"] = {
					["b"] = 0.85,
					["g"] = 0.5,
					["r"] = 0.3,
				},
				["RUNIC_POWER"] = {
					["r"] = 0.35,
					["g"] = 0.45,
					["b"] = 0.6,
				},
				["RUNES"] = {
					["b"] = 0.5,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["HAPPINESS"] = {
					["b"] = 0.7,
					["g"] = 0.9,
					["r"] = 0.5,
				},
				["RAGE"] = {
					["b"] = 0.3,
					["g"] = 0.2,
					["r"] = 0.9,
				},
			},
			["hidden"] = {
				["buffs"] = false,
			},
			["castColors"] = {
				["cast"] = {
					["b"] = 0.3,
					["g"] = 0.7,
					["r"] = 1,
				},
				["finished"] = {
					["b"] = 0.1,
					["g"] = 1,
					["r"] = 0.1,
				},
				["channel"] = {
					["b"] = 1,
					["g"] = 0.25,
					["r"] = 0.25,
				},
				["uninterruptible"] = {
					["b"] = 1,
					["g"] = 0,
					["r"] = 0.71,
				},
				["interrupted"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
			},
			["auras"] = {
				["borderType"] = "light",
			},
			["loadedLayout"] = true,
			["backdrop"] = {
				["borderTexture"] = "None",
				["edgeSize"] = 5,
				["tileSize"] = 1,
				["borderColor"] = {
					["a"] = 1,
					["b"] = 0.5,
					["g"] = 0.3,
					["r"] = 0.3,
				},
				["backgroundColor"] = {
					["a"] = 0.8,
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["backgroundTexture"] = "Chat Frame",
				["inset"] = 1,
				["clip"] = 1,
			},
			["units"] = {
				["arenatarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 90,
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["height"] = 25,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
				},
				["mainassisttarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 150,
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[(()afk() )][name]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[level( )][classification( )][perpp]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["height"] = 40,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
				},
				["targettargettarget"] = {
					["enabled"] = false,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 80,
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "RIGHT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 1,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["height"] = 30,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
				},
				["partytarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 90,
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["height"] = 25,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["highlight"] = {
						["size"] = 10,
					},
				},
				["arenapet"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["width"] = 90,
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["height"] = 25,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["highlight"] = {
						["size"] = 10,
					},
				},
				["party"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["lfdRole"] = {
							["y"] = 14,
							["x"] = 3,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BR",
							["size"] = 14,
						},
						["masterLoot"] = {
							["y"] = -10,
							["x"] = 16,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 12,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["role"] = {
							["y"] = -11,
							["x"] = 30,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["pvp"] = {
							["y"] = -21,
							["x"] = 11,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TR",
							["size"] = 22,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["ready"] = {
							["y"] = 0,
							["x"] = 35,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LC",
							["size"] = 24,
						},
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["perRow"] = 1,
							["y"] = 0,
							["selfTimers"] = false,
							["x"] = 0,
							["anchorPoint"] = "LT",
							["maxRows"] = 3,
							["raid"] = true,
							["enabled"] = true,
							["size"] = 17,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 60,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["offset"] = 0,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["hideSemiRaid"] = true,
					["unitsPerColumn"] = 5,
					["hideAnyRaid"] = false,
					["width"] = 150,
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["columnSpacing"] = 30,
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["height"] = 40,
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[(()afk() )][name]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[level][( )race]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curpp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["attribAnchorPoint"] = "LEFT",
					["attribPoint"] = "BOTTOM",
				},
				["maintanktarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 150,
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[(()afk() )][name]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[classification( )][perpp]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["height"] = 40,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
				},
				["focus"] = {
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 60,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["width"] = 120,
					["height"] = 30,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["role"] = {
							["y"] = -11,
							["x"] = 30,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["lfdRole"] = {
							["y"] = 14,
							["x"] = 3,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BR",
							["size"] = 14,
						},
						["masterLoot"] = {
							["y"] = -10,
							["x"] = 16,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 12,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["pvp"] = {
							["y"] = -21,
							["x"] = 11,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TR",
							["size"] = 22,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[(()afk() )][name]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curpp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
				},
				["target"] = {
					["portrait"] = {
						["enabled"] = true,
						["type"] = "3D",
						["alignment"] = "RIGHT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[(()afk() )][name]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[perhp][( )curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[race]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curpp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["auras"] = {
						["buffs"] = {
							["perRow"] = 9,
							["anchorOn"] = true,
							["enabled"] = true,
							["maxRows"] = 2,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["y"] = 0,
							["player"] = false,
							["prioritize"] = false,
							["raid"] = false,
							["selfTimers"] = false,
							["size"] = 20,
						},
						["debuffs"] = {
							["perRow"] = 7,
							["anchorOn"] = false,
							["y"] = -2,
							["maxRows"] = 1,
							["enabled"] = true,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["raid"] = false,
							["player"] = true,
							["size"] = 20,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 60,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["width"] = 200,
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["height"] = 45,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["role"] = {
							["y"] = -11,
							["x"] = 30,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["lfdRole"] = {
							["y"] = 14,
							["x"] = 3,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BR",
							["size"] = 14,
						},
						["masterLoot"] = {
							["y"] = -10,
							["x"] = 16,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 12,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["pvp"] = {
							["y"] = -21,
							["x"] = 11,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TR",
							["size"] = 22,
						},
					},
					["comboPoints"] = {
						["y"] = 8,
						["x"] = -3,
						["spacing"] = -4,
						["order"] = 60,
						["isBar"] = true,
						["growth"] = "LEFT",
						["size"] = 14,
					},
					["highlight"] = {
						["size"] = 10,
					},
				},
				["raid"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["role"] = {
							["enabled"] = false,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["y"] = 14,
							["anchorPoint"] = "BR",
							["size"] = 14,
						},
						["pvp"] = {
							["anchorPoint"] = "BL",
							["x"] = 0,
							["anchorTo"] = "$parent",
							["y"] = 11,
							["size"] = 22,
						},
						["masterLoot"] = {
							["anchorPoint"] = "TR",
							["x"] = -2,
							["anchorTo"] = "$parent",
							["y"] = -10,
							["size"] = 12,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["ready"] = {
							["anchorPoint"] = "LC",
							["x"] = 25,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["size"] = 24,
						},
					},
					["scale"] = 0.85,
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["groupSpacing"] = 0,
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.3,
					},
					["groupsPerRow"] = 8,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "none",
						["height"] = 1.2,
					},
					["unitsPerColumn"] = 8,
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["width"] = 100,
					["maxColumns"] = 8,
					["attribAnchorPoint"] = "LEFT",
					["columnSpacing"] = 5,
					["height"] = 30,
					["incHeal"] = {
						["cap"] = 1,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[(()afk() )][name]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[missinghp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["highlight"] = {
						["size"] = 10,
					},
				},
				["bosstarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 90,
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["height"] = 25,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
				},
				["focustarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 100,
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "RIGHT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[(()afk() )][name]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["height"] = 25,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
						["enabled"] = false,
					},
					["highlight"] = {
						["size"] = 10,
					},
				},
				["pettarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 190,
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[perpp]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["height"] = 30,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.7,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
				},
				["partypet"] = {
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["width"] = 90,
					["height"] = 25,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
				},
				["targettarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 100,
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "RIGHT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[perpp]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curpp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["height"] = 25,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
						["enabled"] = false,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
				},
				["player"] = {
					["xpBar"] = {
						["order"] = 55,
						["background"] = true,
						["height"] = 0.25,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["druidBar"] = {
						["order"] = 25,
						["background"] = true,
						["height"] = 0.4,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curpp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name][( ()group())]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["totemBar"] = {
						["order"] = 70,
						["background"] = false,
						["height"] = 0.4,
						["enabled"] = true,
					},
					["runeBar"] = {
						["order"] = 70,
						["background"] = false,
						["height"] = 0.4,
						["enabled"] = true,
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 60,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["width"] = 200,
					["portrait"] = {
						["enabled"] = true,
						["type"] = "class",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["height"] = 45,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["role"] = {
							["y"] = -11,
							["x"] = 30,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["lfdRole"] = {
							["y"] = 14,
							["x"] = 3,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BR",
							["size"] = 14,
						},
						["pvp"] = {
							["y"] = -21,
							["x"] = 11,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TR",
							["size"] = 22,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["masterLoot"] = {
							["y"] = -10,
							["x"] = 16,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 12,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["ready"] = {
							["y"] = 0,
							["x"] = 35,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LC",
							["size"] = 24,
						},
					},
					["powerBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 20,
					},
					["auras"] = {
						["buffs"] = {
							["anchorPoint"] = "BL",
							["temporary"] = false,
							["maxRows"] = 1,
							["y"] = 0,
							["x"] = 0,
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["maxRows"] = 1,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
				},
				["raidpet"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
					},
					["scale"] = 0.85,
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["groupSpacing"] = 0,
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.3,
					},
					["groupsPerRow"] = 8,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "none",
						["height"] = 1.2,
					},
					["unitsPerColumn"] = 8,
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["width"] = 90,
					["maxColumns"] = 8,
					["attribAnchorPoint"] = "LEFT",
					["columnSpacing"] = 5,
					["height"] = 30,
					["incHeal"] = {
						["cap"] = 1,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[missinghp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["highlight"] = {
						["size"] = 10,
					},
				},
				["maintank"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 60,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["offset"] = 5,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["unitsPerColumn"] = 5,
					["highlight"] = {
						["size"] = 10,
					},
					["width"] = 150,
					["maxColumns"] = 1,
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["columnSpacing"] = 5,
					["incHeal"] = {
						["cap"] = 1,
					},
					["height"] = 40,
					["attribAnchorPoint"] = "LEFT",
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[(()afk() )][name]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[perpp]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
				},
				["boss"] = {
					["offset"] = 20,
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[perpp]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["auras"] = {
						["buffs"] = {
							["perRow"] = 8,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["enabled"] = true,
							["y"] = 0,
							["size"] = 16,
						},
						["debuffs"] = {
							["perRow"] = 8,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["enabled"] = true,
							["y"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 40,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["height"] = 40,
					["width"] = 160,
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
				},
				["arena"] = {
					["offset"] = 25,
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[perpp]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
					["auras"] = {
						["buffs"] = {
							["perRow"] = 9,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["enabled"] = true,
							["y"] = 0,
							["size"] = 16,
						},
						["debuffs"] = {
							["perRow"] = 9,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["enabled"] = true,
							["y"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 60,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["width"] = 170,
					["height"] = 45,
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
				},
				["pet"] = {
					["xpBar"] = {
						["order"] = 55,
						["background"] = true,
						["height"] = 0.25,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 60,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "none",
						["height"] = 1.2,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["width"] = 150,
					["height"] = 30,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["happiness"] = {
							["y"] = 13,
							["x"] = 3,
							["enabled"] = false,
							["size"] = 14,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.7,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[smartrace]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curhp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["text"] = "[curpp]",
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
				},
				["mainassist"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["auras"] = {
						["buffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["debuffs"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["y"] = 0,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["enabled"] = true,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["order"] = 60,
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["rank"] = true,
							["anchorPoint"] = "CLI",
							["enabled"] = true,
							["size"] = 0,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["offset"] = 5,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["reactionType"] = "npc",
						["height"] = 1.2,
					},
					["unitsPerColumn"] = 5,
					["highlight"] = {
						["size"] = 10,
					},
					["width"] = 150,
					["maxColumns"] = 1,
					["emptyBar"] = {
						["reactionType"] = "none",
						["background"] = true,
						["height"] = 1,
						["order"] = 0,
					},
					["columnSpacing"] = 5,
					["incHeal"] = {
						["cap"] = 1,
					},
					["height"] = 40,
					["attribAnchorPoint"] = "LEFT",
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["text"] = {
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[(()afk() )][name]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [1]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [2]
						{
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["text"] = "[level( )][perpp]",
							["y"] = 0,
							["width"] = 0.5,
						}, -- [3]
						{
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
							["width"] = 0.6,
						}, -- [4]
						{
							["anchorPoint"] = "CLI",
							["text"] = "[(()afk() )][name]",
							["x"] = 3,
							["width"] = 1,
						}, -- [5]
					},
				},
			},
			["healthColors"] = {
				["neutral"] = {
					["b"] = 0,
					["g"] = 0.9300000000000001,
					["r"] = 0.9300000000000001,
				},
				["static"] = {
					["b"] = 0.9,
					["g"] = 0.2,
					["r"] = 0.7,
				},
				["friendly"] = {
					["b"] = 0.2,
					["g"] = 0.9,
					["r"] = 0.2,
				},
				["enemyUnattack"] = {
					["b"] = 0.2,
					["g"] = 0.2,
					["r"] = 0.6,
				},
				["tapped"] = {
					["b"] = 0.5,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["hostile"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0.9,
				},
				["green"] = {
					["b"] = 0.2,
					["g"] = 0.9,
					["r"] = 0.2,
				},
				["offline"] = {
					["b"] = 0.5,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["yellow"] = {
					["b"] = 0,
					["g"] = 0.9300000000000001,
					["r"] = 0.9300000000000001,
				},
				["inc"] = {
					["b"] = 0.23,
					["g"] = 0.35,
					["r"] = 0,
				},
				["red"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0.9,
				},
			},
			["xpColors"] = {
				["normal"] = {
					["b"] = 0.55,
					["g"] = 0,
					["r"] = 0.58,
				},
				["rested"] = {
					["b"] = 0.88,
					["g"] = 0.39,
					["r"] = 0,
				},
			},
			["font"] = {
				["extra"] = "",
				["name"] = "Myriad Condensed Web",
				["color"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["shadowX"] = 0.8,
				["shadowY"] = -0.8,
				["shadowColor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["size"] = 11,
			},
			["classColors"] = {
				["HUNTER"] = {
					["b"] = 0.45,
					["g"] = 0.83,
					["r"] = 0.67,
				},
				["WARRIOR"] = {
					["b"] = 0.43,
					["g"] = 0.61,
					["r"] = 0.78,
				},
				["ROGUE"] = {
					["b"] = 0.41,
					["g"] = 0.96,
					["r"] = 1,
				},
				["MAGE"] = {
					["b"] = 0.94,
					["g"] = 0.8,
					["r"] = 0.41,
				},
				["VEHICLE"] = {
					["b"] = 0.23,
					["g"] = 0.41,
					["r"] = 0.23,
				},
				["PRIEST"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["WARLOCK"] = {
					["b"] = 0.79,
					["g"] = 0.51,
					["r"] = 0.58,
				},
				["DEATHKNIGHT"] = {
					["b"] = 0.23,
					["g"] = 0.12,
					["r"] = 0.77,
				},
				["PET"] = {
					["b"] = 0.2,
					["g"] = 0.9,
					["r"] = 0.2,
				},
				["DRUID"] = {
					["b"] = 0.04,
					["g"] = 0.49,
					["r"] = 1,
				},
				["SHAMAN"] = {
					["b"] = 1,
					["g"] = 0.35,
					["r"] = 0.14,
				},
				["PALADIN"] = {
					["b"] = 0.73,
					["g"] = 0.55,
					["r"] = 0.96,
				},
			},
			["locked"] = true,
			["bars"] = {
				["spacing"] = -1.25,
				["backgroundAlpha"] = 0.2,
				["alpha"] = 1,
				["texture"] = "Minimalist",
			},
			["positions"] = {
				["arenatarget"] = {
					["anchorPoint"] = "RT",
					["anchorTo"] = "$parent",
				},
				["mainassisttarget"] = {
					["anchorPoint"] = "RT",
					["anchorTo"] = "$parent",
				},
				["targettargettarget"] = {
					["anchorPoint"] = "RC",
					["anchorTo"] = "#SUFUnittargettarget",
				},
				["arenapet"] = {
					["anchorPoint"] = "RB",
					["anchorTo"] = "$parent",
				},
				["party"] = {
					["anchorPoint"] = "LT",
					["x"] = -50,
					["anchorTo"] = "#SUFUnitplayer",
					["movedAnchor"] = "TL",
					["y"] = 250,
				},
				["maintanktarget"] = {
					["anchorPoint"] = "RT",
					["anchorTo"] = "$parent",
				},
				["focus"] = {
					["anchorPoint"] = "RT",
					["anchorTo"] = "#SUFUnittarget",
				},
				["target"] = {
					["anchorPoint"] = "RC",
					["anchorTo"] = "#SUFUnitplayer",
				},
				["raid"] = {
					["anchorPoint"] = "C",
				},
				["bosstarget"] = {
					["anchorPoint"] = "RB",
					["anchorTo"] = "$parent",
				},
				["focustarget"] = {
					["anchorPoint"] = "TL",
					["anchorTo"] = "#SUFUnitfocus",
				},
				["pettarget"] = {
					["anchorPoint"] = "C",
				},
				["targettarget"] = {
					["anchorPoint"] = "TR",
					["anchorTo"] = "#SUFUnittarget",
				},
				["player"] = {
					["y"] = 112.9889064703859,
					["x"] = -90.05529600121059,
					["point"] = "BOTTOM",
					["relativePoint"] = "BOTTOM",
				},
				["raidpet"] = {
					["anchorPoint"] = "C",
				},
				["maintank"] = {
					["anchorPoint"] = "C",
				},
				["boss"] = {
					["anchorPoint"] = "C",
				},
				["arena"] = {
					["anchorPoint"] = "C",
				},
				["pet"] = {
					["anchorPoint"] = "BL",
					["anchorTo"] = "#SUFUnitplayer",
				},
				["mainassist"] = {
					["anchorPoint"] = "C",
				},
			},
			["advanced"] = true,
		},
		["mk1"] = {
			["powerColors"] = {
				["MANA"] = {
					["r"] = 0.3,
					["g"] = 0.5,
					["b"] = 0.85,
				},
				["FOCUS"] = {
					["r"] = 1,
					["g"] = 0.85,
					["b"] = 0,
				},
				["RUNIC_POWER"] = {
					["b"] = 0.6,
					["g"] = 0.45,
					["r"] = 0.35,
				},
				["RAGE"] = {
					["r"] = 0.9,
					["g"] = 0.2,
					["b"] = 0.3,
				},
				["AMMOSLOT"] = {
					["r"] = 0.85,
					["g"] = 0.6,
					["b"] = 0.55,
				},
				["FUEL"] = {
					["r"] = 0.85,
					["g"] = 0.47,
					["b"] = 0.36,
				},
				["RUNES"] = {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 0.5,
				},
				["HAPPINESS"] = {
					["r"] = 0.5,
					["g"] = 0.9,
					["b"] = 0.7,
				},
				["ENERGY"] = {
					["r"] = 1,
					["g"] = 0.85,
					["b"] = 0.1,
				},
			},
			["advanced"] = true,
			["healthColors"] = {
				["neutral"] = {
					["r"] = 0.9300000000000001,
					["g"] = 0.9300000000000001,
					["b"] = 0,
				},
				["static"] = {
					["r"] = 0.7,
					["g"] = 0.2,
					["b"] = 0.9,
				},
				["friendly"] = {
					["r"] = 0.2,
					["g"] = 0.9,
					["b"] = 0.2,
				},
				["enemyUnattack"] = {
					["r"] = 0.6,
					["g"] = 0.2,
					["b"] = 0.2,
				},
				["tapped"] = {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 0.5,
				},
				["hostile"] = {
					["r"] = 0.9,
					["g"] = 0,
					["b"] = 0,
				},
				["green"] = {
					["r"] = 0.2,
					["g"] = 0.9,
					["b"] = 0.2,
				},
				["yellow"] = {
					["r"] = 0.9300000000000001,
					["g"] = 0.9300000000000001,
					["b"] = 0,
				},
				["offline"] = {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 0.5,
				},
				["inc"] = {
					["r"] = 0,
					["g"] = 0.35,
					["b"] = 0.23,
				},
				["red"] = {
					["r"] = 0.9,
					["g"] = 0,
					["b"] = 0,
				},
			},
			["xpColors"] = {
				["normal"] = {
					["r"] = 0.58,
					["g"] = 0,
					["b"] = 0.55,
				},
				["rested"] = {
					["r"] = 0,
					["g"] = 0.39,
					["b"] = 0.88,
				},
			},
			["locked"] = true,
			["positions"] = {
				["arenatarget"] = {
					["anchorPoint"] = "RT",
					["anchorTo"] = "$parent",
				},
				["mainassisttarget"] = {
					["anchorPoint"] = "RT",
					["anchorTo"] = "$parent",
				},
				["targettargettarget"] = {
					["anchorPoint"] = "RC",
					["anchorTo"] = "#SUFUnittargettarget",
				},
				["arenapet"] = {
					["anchorPoint"] = "RB",
					["anchorTo"] = "$parent",
				},
				["party"] = {
					["y"] = 250,
					["x"] = -50,
					["anchorTo"] = "#SUFUnitplayer",
					["movedAnchor"] = "TL",
					["anchorPoint"] = "LT",
				},
				["maintanktarget"] = {
					["anchorPoint"] = "RT",
					["anchorTo"] = "$parent",
				},
				["focus"] = {
					["anchorPoint"] = "RT",
					["anchorTo"] = "#SUFUnittarget",
				},
				["target"] = {
					["anchorPoint"] = "RC",
					["anchorTo"] = "#SUFUnitplayer",
				},
				["raid"] = {
					["anchorPoint"] = "C",
				},
				["bosstarget"] = {
					["anchorPoint"] = "RB",
					["anchorTo"] = "$parent",
				},
				["focustarget"] = {
					["anchorPoint"] = "TL",
					["anchorTo"] = "#SUFUnitfocus",
				},
				["targettarget"] = {
					["anchorPoint"] = "TR",
					["anchorTo"] = "#SUFUnittarget",
				},
				["pet"] = {
					["anchorPoint"] = "BL",
					["anchorTo"] = "#SUFUnitplayer",
				},
				["player"] = {
					["y"] = 112.9889064703859,
					["x"] = -90.05529600121059,
					["point"] = "BOTTOM",
					["relativePoint"] = "BOTTOM",
				},
				["pettarget"] = {
					["anchorPoint"] = "C",
				},
				["maintank"] = {
					["anchorPoint"] = "C",
				},
				["raidpet"] = {
					["anchorPoint"] = "C",
				},
				["arena"] = {
					["anchorPoint"] = "C",
				},
				["mainassist"] = {
					["anchorPoint"] = "C",
				},
				["boss"] = {
					["anchorPoint"] = "C",
				},
			},
			["revision"] = 1,
			["castColors"] = {
				["cast"] = {
					["r"] = 1,
					["g"] = 0.7,
					["b"] = 0.3,
				},
				["finished"] = {
					["r"] = 0.1,
					["g"] = 1,
					["b"] = 0.1,
				},
				["channel"] = {
					["r"] = 0.25,
					["g"] = 0.25,
					["b"] = 1,
				},
				["uninterruptible"] = {
					["r"] = 0.71,
					["g"] = 0,
					["b"] = 1,
				},
				["interrupted"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
			},
			["loadedLayout"] = true,
			["backdrop"] = {
				["inset"] = 1,
				["edgeSize"] = 5,
				["tileSize"] = 1,
				["borderColor"] = {
					["a"] = 1,
					["r"] = 0.3,
					["g"] = 0.3,
					["b"] = 0.5,
				},
				["clip"] = 1,
				["backgroundTexture"] = "Chat Frame",
				["backgroundColor"] = {
					["a"] = 0.8,
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["borderTexture"] = "None",
			},
			["units"] = {
				["arenatarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 90,
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["height"] = 25,
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
				["mainassisttarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 150,
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["height"] = 40,
					["text"] = {
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[level( )][classification( )][perpp]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
				["targettargettarget"] = {
					["enabled"] = false,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 80,
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["height"] = 30,
					["text"] = {
						{
							["width"] = 1,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["width"] = 1,
							["anchorPoint"] = "CLI",
							["x"] = 3,
						}, -- [5]
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "RIGHT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
				["partytarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["highlight"] = {
						["size"] = 10,
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["width"] = 90,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["height"] = 25,
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
				["arenapet"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["width"] = 90,
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["height"] = 25,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["highlight"] = {
						["size"] = 10,
					},
				},
				["party"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["lfdRole"] = {
							["y"] = 14,
							["x"] = 3,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BR",
							["size"] = 14,
						},
						["masterLoot"] = {
							["y"] = -10,
							["x"] = 16,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 12,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["role"] = {
							["y"] = -11,
							["x"] = 30,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["ready"] = {
							["y"] = 0,
							["x"] = 35,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LC",
							["size"] = 24,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["pvp"] = {
							["y"] = -21,
							["x"] = 11,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TR",
							["size"] = 22,
						},
					},
					["auras"] = {
						["debuffs"] = {
							["perRow"] = 1,
							["y"] = 0,
							["anchorPoint"] = "LT",
							["x"] = 0,
							["selfTimers"] = false,
							["maxRows"] = 3,
							["raid"] = true,
							["enabled"] = true,
							["size"] = 17,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 60,
					},
					["hideAnyRaid"] = false,
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["offset"] = 0,
					["height"] = 40,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["hideSemiRaid"] = true,
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["attribAnchorPoint"] = "LEFT",
					["width"] = 150,
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[level][( )race]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "[curpp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["columnSpacing"] = 30,
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["unitsPerColumn"] = 5,
					["attribPoint"] = "BOTTOM",
				},
				["maintanktarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 150,
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["height"] = 40,
					["text"] = {
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[classification( )][perpp]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
				["focus"] = {
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 60,
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 120,
					["height"] = 30,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["role"] = {
							["y"] = -11,
							["x"] = 30,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["lfdRole"] = {
							["y"] = 14,
							["x"] = 3,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BR",
							["size"] = 14,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["masterLoot"] = {
							["y"] = -10,
							["x"] = 16,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 12,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["pvp"] = {
							["y"] = -21,
							["x"] = 11,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TR",
							["size"] = 22,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "[curpp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
				},
				["target"] = {
					["portrait"] = {
						["enabled"] = true,
						["type"] = "3D",
						["alignment"] = "RIGHT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["auras"] = {
						["debuffs"] = {
							["enabled"] = true,
							["anchorOn"] = false,
							["maxRows"] = 1,
							["anchorPoint"] = "BL",
							["player"] = true,
							["perRow"] = 7,
							["x"] = 0,
							["raid"] = false,
							["y"] = -2,
							["size"] = 20,
						},
						["buffs"] = {
							["enabled"] = true,
							["anchorOn"] = true,
							["x"] = 0,
							["player"] = false,
							["anchorPoint"] = "BL",
							["maxRows"] = 2,
							["perRow"] = 9,
							["y"] = 0,
							["prioritize"] = false,
							["raid"] = false,
							["selfTimers"] = false,
							["size"] = 20,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 60,
					},
					["comboPoints"] = {
						["order"] = 60,
						["isBar"] = true,
						["growth"] = "LEFT",
						["y"] = 8,
						["x"] = -3,
						["spacing"] = -4,
						["size"] = 14,
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["text"] = {
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[perhp][( )curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[race]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "[curpp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["width"] = 200,
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["height"] = 45,
					["highlight"] = {
						["size"] = 10,
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["role"] = {
							["y"] = -11,
							["x"] = 30,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["lfdRole"] = {
							["y"] = 14,
							["x"] = 3,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BR",
							["size"] = 14,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["masterLoot"] = {
							["y"] = -10,
							["x"] = 16,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 12,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["pvp"] = {
							["y"] = -21,
							["x"] = 11,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TR",
							["size"] = 22,
						},
					},
				},
				["raid"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["role"] = {
							["enabled"] = false,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BR",
							["y"] = 14,
							["size"] = 14,
						},
						["ready"] = {
							["anchorPoint"] = "LC",
							["x"] = 25,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["size"] = 24,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["masterLoot"] = {
							["anchorPoint"] = "TR",
							["x"] = -2,
							["anchorTo"] = "$parent",
							["y"] = -10,
							["size"] = 12,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["pvp"] = {
							["anchorPoint"] = "BL",
							["x"] = 0,
							["anchorTo"] = "$parent",
							["y"] = 11,
							["size"] = 22,
						},
					},
					["scale"] = 0.85,
					["highlight"] = {
						["size"] = 10,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["height"] = 30,
					["groupSpacing"] = 0,
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.3,
					},
					["groupsPerRow"] = 8,
					["text"] = {
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[missinghp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "none",
					},
					["attribAnchorPoint"] = "LEFT",
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["width"] = 100,
					["maxColumns"] = 8,
					["incHeal"] = {
						["cap"] = 1,
					},
					["unitsPerColumn"] = 8,
					["columnSpacing"] = 5,
				},
				["bosstarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 90,
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["height"] = 25,
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
				["focustarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["highlight"] = {
						["size"] = 10,
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["width"] = 100,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["height"] = 25,
					["text"] = {
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
						["enabled"] = false,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "RIGHT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
				["pettarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 190,
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
					},
					["height"] = 30,
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[perpp]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.7,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
				["partypet"] = {
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 90,
					["height"] = 25,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
				},
				["mainassist"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 60,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["columnSpacing"] = 5,
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["incHeal"] = {
						["cap"] = 1,
					},
					["offset"] = 5,
					["unitsPerColumn"] = 5,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["highlight"] = {
						["size"] = 10,
					},
					["attribAnchorPoint"] = "LEFT",
					["width"] = 150,
					["maxColumns"] = 1,
					["height"] = 40,
					["text"] = {
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[level( )][perpp]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
				},
				["player"] = {
					["xpBar"] = {
						["order"] = 55,
						["background"] = true,
						["height"] = 0.25,
					},
					["highlight"] = {
						["size"] = 10,
					},
					["totemBar"] = {
						["order"] = 70,
						["background"] = false,
						["enabled"] = true,
						["height"] = 0.4,
					},
					["runeBar"] = {
						["order"] = 70,
						["background"] = false,
						["enabled"] = true,
						["height"] = 0.4,
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 60,
					},
					["powerBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 20,
					},
					["healthBar"] = {
						["colorType"] = "class",
						["reactionType"] = "npc",
						["background"] = true,
						["height"] = 1.2,
						["order"] = 10,
					},
					["druidBar"] = {
						["order"] = 25,
						["background"] = true,
						["height"] = 0.4,
					},
					["text"] = {
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "[curpp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name][( ()group())]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["width"] = 200,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["role"] = {
							["y"] = -11,
							["x"] = 30,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["lfdRole"] = {
							["y"] = 14,
							["x"] = 3,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BR",
							["size"] = 14,
						},
						["ready"] = {
							["y"] = 0,
							["x"] = 35,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LC",
							["size"] = 24,
						},
						["status"] = {
							["y"] = -2,
							["x"] = 12,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "LB",
							["size"] = 16,
						},
						["masterLoot"] = {
							["y"] = -10,
							["x"] = 16,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 12,
						},
						["leader"] = {
							["y"] = -12,
							["x"] = 2,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TL",
							["size"] = 14,
						},
						["pvp"] = {
							["y"] = -21,
							["x"] = 11,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "TR",
							["size"] = 22,
						},
					},
					["height"] = 45,
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["maxRows"] = 1,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["temporary"] = false,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["y"] = 0,
							["maxRows"] = 1,
							["size"] = 16,
						},
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["portrait"] = {
						["enabled"] = true,
						["type"] = "class",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
				["pet"] = {
					["xpBar"] = {
						["order"] = 55,
						["background"] = true,
						["height"] = 0.25,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 60,
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.7,
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "none",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 150,
					["height"] = 30,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["happiness"] = {
							["y"] = 13,
							["x"] = 3,
							["enabled"] = false,
							["size"] = 14,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["text"] = {
						{
							["text"] = "[smartrace]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[curhp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
				},
				["arena"] = {
					["highlight"] = {
						["size"] = 10,
					},
					["auras"] = {
						["debuffs"] = {
							["perRow"] = 9,
							["anchorPoint"] = "BL",
							["enabled"] = true,
							["x"] = 0,
							["y"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["perRow"] = 9,
							["anchorPoint"] = "BL",
							["enabled"] = true,
							["x"] = 0,
							["y"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 60,
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[perpp]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["width"] = 170,
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["offset"] = 25,
					["height"] = 45,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
				},
				["boss"] = {
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["auras"] = {
						["debuffs"] = {
							["perRow"] = 8,
							["anchorPoint"] = "BL",
							["enabled"] = true,
							["x"] = 0,
							["y"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["perRow"] = 8,
							["anchorPoint"] = "BL",
							["enabled"] = true,
							["x"] = 0,
							["y"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[perpp]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["highlight"] = {
						["size"] = 10,
					},
					["width"] = 160,
					["offset"] = 20,
					["height"] = 40,
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
				},
				["maintank"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 60,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 50,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["columnSpacing"] = 5,
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 1,
					},
					["incHeal"] = {
						["cap"] = 1,
					},
					["offset"] = 5,
					["unitsPerColumn"] = 5,
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["highlight"] = {
						["size"] = 10,
					},
					["attribAnchorPoint"] = "LEFT",
					["width"] = 150,
					["maxColumns"] = 1,
					["height"] = 40,
					["text"] = {
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[perpp]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[(()afk() )][name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
				},
				["raidpet"] = {
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
					},
					["scale"] = 0.85,
					["highlight"] = {
						["size"] = 10,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["height"] = 30,
					["groupSpacing"] = 0,
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.3,
					},
					["groupsPerRow"] = 8,
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "[missinghp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["text"] = "[name]",
							["width"] = 1,
							["x"] = 3,
							["anchorPoint"] = "CLI",
						}, -- [5]
					},
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "none",
					},
					["attribAnchorPoint"] = "LEFT",
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "LEFT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
					["width"] = 90,
					["maxColumns"] = 8,
					["incHeal"] = {
						["cap"] = 1,
					},
					["unitsPerColumn"] = 8,
					["columnSpacing"] = 5,
				},
				["targettarget"] = {
					["healthBar"] = {
						["colorType"] = "class",
						["order"] = 10,
						["background"] = true,
						["height"] = 1.2,
						["reactionType"] = "npc",
					},
					["emptyBar"] = {
						["height"] = 1,
						["background"] = true,
						["order"] = 0,
						["reactionType"] = "none",
					},
					["width"] = 100,
					["castBar"] = {
						["time"] = {
							["enabled"] = true,
							["x"] = -1,
							["anchorTo"] = "$parent",
							["y"] = 0,
							["anchorPoint"] = "CRI",
							["size"] = 0,
						},
						["name"] = {
							["y"] = 0,
							["x"] = 1,
							["anchorTo"] = "$parent",
							["size"] = 0,
							["enabled"] = true,
							["anchorPoint"] = "CLI",
							["rank"] = true,
						},
						["height"] = 0.6,
						["background"] = true,
						["icon"] = "HIDE",
						["order"] = 40,
					},
					["auras"] = {
						["debuffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
						["buffs"] = {
							["y"] = 0,
							["anchorPoint"] = "BL",
							["x"] = 0,
							["size"] = 16,
						},
					},
					["highlight"] = {
						["size"] = 10,
					},
					["indicators"] = {
						["raidTarget"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "C",
							["size"] = 20,
						},
						["class"] = {
							["y"] = 0,
							["x"] = 0,
							["anchorTo"] = "$parent",
							["anchorPoint"] = "BL",
							["size"] = 16,
						},
					},
					["height"] = 25,
					["text"] = {
						{
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [1]
						{
							["text"] = "",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [2]
						{
							["text"] = "[perpp]",
							["width"] = 0.5,
							["anchorPoint"] = "CLI",
							["x"] = 3,
							["y"] = 0,
						}, -- [3]
						{
							["text"] = "[curpp]",
							["width"] = 0.6,
							["anchorPoint"] = "CRI",
							["x"] = -3,
							["y"] = 0,
						}, -- [4]
						{
							["width"] = 1,
							["anchorPoint"] = "CLI",
							["x"] = 3,
						}, -- [5]
					},
					["powerBar"] = {
						["order"] = 20,
						["background"] = true,
						["height"] = 0.6,
						["enabled"] = false,
					},
					["portrait"] = {
						["type"] = "3D",
						["alignment"] = "RIGHT",
						["fullAfter"] = 100,
						["height"] = 0.5,
						["fullBefore"] = 0,
						["order"] = 15,
						["width"] = 0.22,
					},
				},
			},
			["auras"] = {
				["borderType"] = "light",
			},
			["font"] = {
				["shadowX"] = 0.8,
				["name"] = "Myriad Condensed Web",
				["shadowColor"] = {
					["a"] = 1,
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["shadowY"] = -0.8,
				["extra"] = "",
				["size"] = 11,
			},
			["classColors"] = {
				["HUNTER"] = {
					["r"] = 0.67,
					["g"] = 0.83,
					["b"] = 0.45,
				},
				["WARRIOR"] = {
					["r"] = 0.78,
					["g"] = 0.61,
					["b"] = 0.43,
				},
				["PALADIN"] = {
					["r"] = 0.96,
					["g"] = 0.55,
					["b"] = 0.73,
				},
				["MAGE"] = {
					["r"] = 0.41,
					["g"] = 0.8,
					["b"] = 0.94,
				},
				["VEHICLE"] = {
					["r"] = 0.23,
					["g"] = 0.41,
					["b"] = 0.23,
				},
				["PRIEST"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["WARLOCK"] = {
					["r"] = 0.58,
					["g"] = 0.51,
					["b"] = 0.79,
				},
				["ROGUE"] = {
					["r"] = 1,
					["g"] = 0.96,
					["b"] = 0.41,
				},
				["PET"] = {
					["r"] = 0.2,
					["g"] = 0.9,
					["b"] = 0.2,
				},
				["DRUID"] = {
					["r"] = 1,
					["g"] = 0.49,
					["b"] = 0.04,
				},
				["SHAMAN"] = {
					["r"] = 0.14,
					["g"] = 0.35,
					["b"] = 1,
				},
				["DEATHKNIGHT"] = {
					["r"] = 0.77,
					["g"] = 0.12,
					["b"] = 0.23,
				},
			},
			["bars"] = {
				["texture"] = "Minimalist",
				["backgroundAlpha"] = 0.2,
				["alpha"] = 1,
				["spacing"] = -1.25,
			},
			["hidden"] = {
				["buffs"] = false,
			},
		},
	},
}
