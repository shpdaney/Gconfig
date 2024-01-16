﻿local _, ns = ...
local t = ns.ThreatPlates
local L = t.L
local class = t.Class()

TidyPlatesThreat = LibStub("AceAddon-3.0"):NewAddon("TidyPlatesThreat", "AceConsole-3.0", "AceEvent-3.0")

t.Print = function(val)
	local db = TidyPlatesThreat.db.profile
	if db.verbose then
		print(t.Meta("title")..": "..val)
	end
end

local tankRole = L["|cff00ff00tanking|r"]
local dpsRole = L["|cffff0000dpsing / healing|r"]

local changelog = {
	"Fixed option setting for CVars while in combat.",
	"",
	"",
	"",
	""
}

StaticPopupDialogs["TPTP_ChangeLog"] = {
	preferredIndex = STATICPOPUP_NUMDIALOGS,
	text = t.Meta("title").." "..t.Meta("version").." Change Log:\n"..t.TTS(changelog), 
	button1 = "Thanks for the info!",
	timeout = 0,
	whileDead = 1, 
	hideOnEscape = 1, 
	OnAccept = function() 
		t.Print("Type '/tptp' to review the options!")
	end,
}

StaticPopupDialogs["SetToThreatPlates"] = {
	preferredIndex = STATICPOPUP_NUMDIALOGS,
	text = t.Meta("title")..L[":\n----------\nWould you like to \nset your theme to |cff89F559Threat Plates|r?\n\nClicking '|cff00ff00Yes|r' will set you to Threat Plates & reload UI. \n Clicking '|cffff0000No|r' will open the Tidy Plates options."], 
	button1 = L["Yes"], 
	button2 = L["Cancel"],
	button3 = L["No"],
	timeout = 0,
	whileDead = 1, 
	hideOnEscape = 1, 
	OnAccept = function() 
		TidyPlatesOptions.primary = "Threat Plates"
		TidyPlatesOptions.secondary = "Threat Plates"
		TidyPlates:ActivateTheme("Threat Plates")
		TidyPlatesThreat:StartUp()
		t.Update()
	end,
	OnAlt = function() 
		InterfaceOptionsFrame_OpenToCategory("Tidy Plates")
	end,
	OnCancel = function() 
		t.Print(L["-->>|cffff0000Activate Threat Plates from the Tidy Plates options!|r<<--"])
	end,
}


-- Callback Functions
function TidyPlatesThreat:ProfChange()
	t.SetThemes(self)
	--t.ClearTidyPlatesWidgets(self)
	--t.SetTidyPlatesWidgets(self)
	t.Update()
	self:ConfigRefresh();
	self:StartUp();
	TidyPlates:ForceUpdate();
end

-- Dual Spec Functions
local currentSpec = {}
function TidyPlatesThreat:SetRole(value,index)
	if index then
		self.db.char.spec[index] = value
	else
		self.db.char.spec[t.Active()] = value
	end
end

function TidyPlatesThreat:RoleText()
	if TidyPlatesThreat.db.char.spec[t.Active()] then
		return tankRole
	else
		return dpsRole
	end
end

function TidyPlatesThreat:SpecName()
	local s = self.db.char.specInfo[t.Active()].name
	if s then
		return s
	else
		return L["Undetermined"]
	end		
end

--[[Options and Default Settings]]--
function TidyPlatesThreat:OnInitialize()
	local defaults 	= {
		global = {
			version = "",
		},
		char = {
			welcome = false,
			specInfo = {
				[1] = {
					name = "",
					role = "",
				},
				[2] = {
					name = "",
					role = "",
				},
			},
			spec = {
				[1] = false,
				[2] = false,
			},
			stances = {
				ON = false,
				[0] = false, -- No Stance
				[1] = false, -- Battle Stance
				[2] = true, -- Defensive Stance
				[3] = false -- Berserker Stance
			},
			shapeshifts = {
				ON = false,
				[0] = false, -- Caster Form
				[1] = true, -- Bear Form
				[2] = false, -- Aquatic Form
				[3] = false, -- Cat Form
				[4] = false, -- Travel Form				
				[5] = false, -- Moonkin Form, Tree of Life, (Swift) Flight Form
				[6] = false -- Flight Form (if moonkin or tree spec'd)
			},
			presences = {
				ON = false,
				[0] = false, -- No Presence
				[1] = true, -- Blood
				[2] = false, -- Frost
				[3] = false -- Unholy
			},
			auras = {
				ON = false,
				[0] = false, -- No Aura
				[1] = true, -- Devotion Aura
				[2] = false, -- Retribution Aura
				[3] = false, -- Concentration Aura
				[4] = false, -- Resistance Aura
				[5] = false -- Crusader Aura
			},
		},
		profile = {
			cache = {},
			OldSetting = true,
			verbose = true,
			blizzFadeA = {
				toggle  = true,
				amount = -0.3
			},
			blizzFadeS = {
				toggle  = true,
				amount = -0.3
			},
			tidyplatesFade = false,
			healthColorChange = false,
			customColor =  false,
			allowClass = false,
			friendlyClass = false,
			friendlyClassIcon = false,
			cacheClass = false,
			castbarColor = {
				toggle = true,
				r = 1,
				g = 0.56, 
				b = 0.06,
				a = 1
			},
			castbarColorShield = {
				toggle = true,
				r = 1,
				g = 0,
				b = 0,
				a = 1
			},
			aHPbarColor = {
				r = 0,
				g = 1,
				b = 0
			},
			bHPbarColor = {
				r = 1,
				g = 1,
				b = 0
			},
			cHPbarColor = {
				r = 1,
				g = 0,
				b = 0
			},
			fHPbarColor = {
				r = 1,
				g = 1, 
				b = 1
			},
			nHPbarColor = {
				r = 1,
				g = 1, 
				b = 1
			},
			tapHPbarColor = {
				r = 1,
				g = 1, 
				b = 1
			},
			HPbarColor = {
				r = 1,
				g = 1, 
				b = 1
			},
			tHPbarColor = {
				r = 0,
				g = 0.5,
				b = 1,
			},
			text = {
				amount = true,
				percent = true,
				full = false,
				max = false,
				deficit = false,
				truncate = true
			},
			totemWidget = {
				ON = true,
				scale = 35,
				x = 0,
				y = 35,
				level = 1,
				anchor = "CENTER"
			},
			arenaWidget = {
				ON = true,
				scale = 16,
				x = 36,
				y = -6,
				anchor = "CENTER",
				colors = {
					[1] = {
						r = 1,
						g = 0,
						b = 0,
						a = 1
					},
					[2] = {
						r = 1,
						g = 1,
						b = 0,
						a = 1
					},
					[3] = {
						r = 0,
						g = 1,
						b = 0,
						a = 1
					},
					[4] = {
						r = 0,
						g = 1,
						b = 1,
						a = 1
					},
					[5] = {
						r = 0,
						g = 0,
						b = 1,
						a = 1
					},
				},
				numColors = {
					[1] = {
						r = 1,
						g = 1,
						b = 1,
						a = 1
					},
					[2] = {
						r = 1,
						g = 1,
						b = 1,
						a = 1
					},
					[3] = {
						r = 1,
						g = 1,
						b = 1,
						a = 1
					},
					[4] = {
						r = 1,
						g = 1,
						b = 1,
						a = 1
					},
					[5] = {
						r = 1,
						g = 1,
						b = 1,
						a = 1
					},
				},
			},
			healerTracker = {
				ON = true,
				scale = 1,
				x = 0,
				y = 35,
				level = 1,
				anchor = "CENTER"
			},
			debuffWidget = {
				ON = true,
				x = 18,
				y = 32,
				mode = "whitelist",
				style = "square",
				displays = {
					[1] = true,
					[2] = true,
					[3] = true,
					[4] = true,
					[5] = true,
					[6] = true
				},
				targetOnly = false,
				showFriendly = true,
				showEnemy = true,
				scale = 1,
				anchor = "CENTER",
				filter = {}
			},
			uniqueWidget = {
				ON = true,
				scale = 35,
				x = 0,
				y = 35,
				level = 1,
				anchor = "CENTER"
			},
			classWidget = {
				ON = true,
				scale = 22,
				x = -74,
				y = -7,
				theme = "default",
				anchor = "CENTER",
			},
			targetWidget = {
				ON = true,
				theme = "default",
				r = 1,
				g = 1,
				b = 1,
				a = 1
			},
			threatWidget = {
				ON = false,
				x = 0,
				y = 26,
				anchor = "CENTER",
			},
			tankedWidget = {
				ON = false,
				scale = 1,
				x = 65,
				y = 6,
				anchor = "CENTER",
			},
			comboWidget = {
				ON = false,
				scale = 1,
				x = 0,
				y = -8,
			},
			eliteWidget = {
				ON = true,
				theme = "default",
				scale = 15,
				x = 64,
				y = 9,
				anchor = "CENTER"
			},
			socialWidget = {
				ON = false,
				scale = 16,
				x = 65,
				y = 6,
				anchor = "CENTER",
			},
			totemSettings = {
				hideHealthbar = false,
			--	["Reference"] = {allow totem nameplate, allow hp color, r, g, b, show icon, style}
				-- Air Totems
				["A1"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.67,g = 1,b = 1}},
				["A2"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.67,g = 1,b = 1}},
				["A3"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.67,g = 1,b = 1}},
				["A4"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.67,g = 1,b = 1}},
				["A5"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.67,g = 1,b = 1}},
				["A6"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.67,g = 1,b = 1}},
				-- Earth Totems
				["E1"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.7,b = 0.12}},
				["E2"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.7,b = 0.12}},
				["E3"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.7,b = 0.12}},
				["E4"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.7,b = 0.12}},
				["E5"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.7,b = 0.12}},
				["E6"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.7,b = 0.12}},
				-- Fire Totems
				["F1"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.4,b = 0.4}},
				["F2"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.4,b = 0.4}},
				["F3"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.4,b = 0.4}},
				["F4"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.4,b = 0.4}},
				["F5"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.4,b = 0.4}},
				["F6"] = {true,true,true,nil, nil, nil,"normal",color = {r = 1,g = 0.4,b = 0.4}},
				-- Water Totems
				["W1"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.58,g = 0.72,b = 1}},
				["W2"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.58,g = 0.72,b = 1}},
				["W3"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.58,g = 0.72,b = 1}},
				["W4"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.58,g = 0.72,b = 1}},
				["W5"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.58,g = 0.72,b = 1}},
				["W6"] = {true,true,true,nil, nil, nil,"normal",color = {r = 0.58,g = 0.72,b = 1}}
			},
			uniqueSettings = {
				list = {},
				["**"] = {
					name = "",
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "",
					scale = 1,
					alpha = 1,					
					color = {
						r = 1,
						g = 1,
						b = 1
					},
				},
				[1] = {
					name = L["Shadow Fiend"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U1",
					scale = 0.45,
					alpha = 1,					
					color = {
						r = 0.61,
						g = 0.40,
						b = 0.86
					},		
				},
				[2] = {
					name = L["Spirit Wolf"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U2",
					scale = 0.45,
					alpha = 1,					
					color = {
						r = 0.32,
						g = 0.7,
						b = 0.89
					},		
				},
				[3] = {
					name = L["Ebon Gargoyle"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U3",
					scale = 0.45,
					alpha = 1,					
					color = {
						r = 1,
						g = 0.71,
						b = 0
					},		
				},
				[4] = {
					name = L["Water Elemental"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U4",
					scale = 0.45,
					alpha = 1,					
					color = {
						r = 0.33,
						g = 0.72,
						b = 0.44
					},		
				},
				[5] = {
					name = L["Treant"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U5",
					scale = 0.45,
					alpha = 1,					
					color = {
						r = 1,
						g = 0.71,
						b = 0
					},		
				},
				[6] = {
					name = L["Viper"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U6",
					scale = 0.45,
					alpha = 1,					
					color = {
						r = 0.39,
						g = 1,
						b = 0.11
					},		
				},
				[7] = {
					name = L["Venomous Snake"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U6",
					scale = 0.45,
					alpha = 1,					
					color = {
						r = 0.75,
						g = 0,
						b = 0.02
					},		
				},
				[8] = {
					name = L["Army of the Dead Ghoul"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U7",
					scale = 0.45,
					alpha = 1,					
					color = {
						r = 0.87,
						g = 0.78,
						b = 0.88
					},		
				},
				[9] = {
					name = L["Shadowy Apparition"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U8",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.62,
						g = 0.19,
						b = 1
					},		
				},
				[10] = {
					name = L["Shambling Horror"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U9",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.69,
						g = 0.26,
						b = 0.25
					},		
				},
				[11] = {
					name = L["Web Wrap"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U10",
					scale = 0.75,
					alpha = 1,					
					color = {
						r = 1,
						g = 0.39,
						b = 0.96
					},		
				},
				[12] = {
					name = L["Immortal Guardian"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U11",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.33,
						g = 0.33,
						b = 0.33
					},		
				},
				[13] = {
					name = L["Marked Immortal Guardian"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U12",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.75,
						g = 0,
						b = 0.02
					},		
				},
				[14] = {
					name = L["Empowered Adherent"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U13",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.29,
						g = 0.11,
						b = 1
					},
				},
				[15] = {
					name = L["Deformed Fanatic"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U14",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.55,
						g = 0.7,
						b = 0.29
					},
				},
				[16] = {
					name = L["Reanimated Adherent"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U15",
					scale = 1,
					alpha = 1,					
					color = {
						r = 1,
						g = 0.88,
						b = 0.61
					},
				},
				[17] = {
					name = L["Reanimated Fanatic"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U15",
					scale = 1,
					alpha = 1,					
					color = {
						r = 1,
						g = 0.88,
						b = 0.61
					},
				},
				[18] = {
					name = L["Bone Spike"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U16",
					scale = 1,
					alpha = 1,					
					color = {
						r = 1,
						g = 1,
						b = 1
					},
				},
				[19] = {
					name = L["Onyxian Whelp"],
					showNameplate = false,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U17",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.33,
						g = 0.28,
						b = 0.71
					},
				},
				[20] = {
					name = L["Gas Cloud"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U18",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.96,
						g = 0.56,
						b = 0.07
					},
				},
				[21] = {
					name = L["Volatile Ooze"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U19",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.36,
						g = 0.95,
						b = 0.33
					},
				},
				[22] = {
					name = L["Darnavan"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U20",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.78,
						g = 0.61,
						b = 0.43
					},
				},
				[23] = {
					name = L["Val'kyr Shadowguard"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U21",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.47,
						g = 0.89,
						b = 1
					},
				},
				[24] = {
					name = L["Kinetic Bomb"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U22",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.91,
						g = 0.71,
						b = 0.1
					},
				},
				[25] = {
					name = L["Lich King"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U23",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.77,
						g = 0.12,
						b = 0.23
					},
				},
				[26] = {
					name = L["Raging Spirit"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U24",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.77,
						g = 0.27,
						b = 0
					},
				},
				[27] = {
					name = L["Drudge Ghoul"],
					showNameplate = true,
					showIcon = false,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U25",
					scale = 0.85,
					alpha = 1,					
					color = {
						r = 0.43,
						g = 0.43,
						b = 0.43
					},
				},
				[28] = {
					name = L["Living Inferno"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U27",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0,
						g = 1,
						b = 0
					},
				},
				[29] = {
					name = L["Living Ember"],
					showNameplate = true,
					showIcon = false,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U28",
					scale = 0.60,
					alpha = 0.75,					
					color = {
						r = 0.25,
						g = 0.25,
						b = 0.25
					},
				},
				[30] = {
					name = L["Fanged Pit Viper"],
					showNameplate = false,
					showIcon = false,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "",
					scale = 0,
					alpha = 0,					
					color = {
						r = 1,
						g = 1,
						b = 1
					},
				},
				[31] = {
					name = L["Canal Crab"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U29",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0,
						g = 1,
						b = 1
					},
				},
				[32] = {
					name = L["Muddy Crawfish"],
					showNameplate = true,
					showIcon = true,
					useStyle = true,
					useColor = true,
					allowMarked = true,
					overrideScale = false,
					overrideAlpha = false,
					icon = "Interface\\Addons\\TidyPlates_ThreatPlates\\Widgets\\UniqueIconWidget\\U30",
					scale = 1,
					alpha = 1,					
					color = {
						r = 0.96,
						g = 0.36,
						b = 0.34
					},
				},
				[33] = {},
				[34] = {},
				[35] = {},
				[36] = {},
				[37] = {},
				[38] = {},
				[39] = {},
				[40] = {},
				[41] = {},
				[42] = {},
				[43] = {},
				[44] = {},
				[45] = {},
				[46] = {},
				[47] = {},
				[48] = {},
				[49] = {},
				[50] = {},				
				[51] = {},
				[52] = {},
				[53] = {},
				[54] = {},
				[55] = {},
				[56] = {},
				[57] = {},
				[58] = {},
				[59] = {},
				[60] = {},				
				[61] = {},
				[62] = {},
				[63] = {},
				[64] = {},
				[65] = {},
				[66] = {},
				[67] = {},
				[68] = {},
				[69] = {},
				[70] = {},				
				[71] = {},
				[72] = {},
				[73] = {},
				[74] = {},
				[75] = {},
				[76] = {},
				[77] = {},
				[78] = {},
				[79] = {},
				[80] = {},
			},
			settings = {
				frame = {
					y = 0,
				},
				highlight = {
					texture = "TP_HealthBarHighlight",
				},
				elitehealthborder = {
					texture = "TP_HealthBarEliteOverlay",
					show = true,
				},
				healthborder = {
					texture = "TP_HealthBarOverlay",
					backdrop = "",
					show = true,
				},
				threatborder = {
					show = true,
				},
				healthbar = {
					texture = "ThreatPlatesBar",					
				},
				castnostop = {
					texture = "TP_CastBarLock",
					x = 0,
					y = -15,
					show = true,
				},
				castborder = {
					texture = "TP_CastBarOverlay",
					x = 0,
					y = -15,
					show = true,
				},
				castbar = {
					texture = "ThreatPlatesBar",
					x = 0,
					y = -15,
					show = true,
				},
				name = {
					typeface = "Accidental Presidency",
					width = 116,
					height = 14,
					size = 14,
					x = 0,
					y = 13,
					align = "CENTER",
					vertical = "CENTER",
					shadow = true,
					flags = "NONE",
					color = {
						r = 1,
						g = 1,
						b = 1					
					},
					show = true,
				},
				level = {
					typeface = "Accidental Presidency",
					size = 12,
					width = 20,
					height = 14,
					x = 50,
					y = 0,
					align = "RIGHT",
					vertical = "TOP",
					shadow = true,
					flags = "NONE",
					show = true,
				},
				eliteicon = {
					show = true,
					theme = "default",
					scale = 15,
					x = 64,
					y = 9,
					level = 22,
					anchor = "CENTER"
				},
				customtext = {
					typeface = "Accidental Presidency",
					size = 12,
					width = 110,
					height = 14,
					x = 0,
					y = 1,
					align = "CENTER",
					vertical = "CENTER",
					shadow = true,
					flags = "NONE",
					show = true,
				},
				spelltext = {
					typeface = "Accidental Presidency",
					size = 12,
					width = 110,
					height = 14,
					x = 0,
					y = -13,
					align = "CENTER",
					vertical = "CENTER",
					shadow = true,
					flags = "NONE",
					show = true,
				},
				raidicon = {
					scale = 20,
					x = 0,
					y = 27,
					anchor = "CENTER",
					hpColor = true,
					show = true,
					hpMarked = {
						["STAR"] = {
							r = 0.85,
							g = 0.81,
							b = 0.27						
						},
						["MOON"] = {
							r = 0.60,
							g = 0.75,
							b = 0.85						
						},
						["CIRCLE"] = {
							r = 0.93,
							g = 0.51,
							b = 0.06						
						},
						["SQUARE"] = {
							r = 0,
							g = 0.64,
							b = 1						
						},
						["DIAMOND"] = {
							r = 0.7,
							g = 0.06,
							b = 0.84						
						},
						["CROSS"] = {
							r = 0.82,
							g = 0.18,
							b = 0.18						
						},
						["TRIANGLE"] = {
							r = 0.14,
							g = 0.66,
							b = 0.14						
						},
						["SKULL"] = {
							r = 0.89,
							g = 0.83,
							b = 0.74						
						},
					},
				},
				spellicon = {
					scale = 20,
					x = 75,
					y = -7,
					anchor = "CENTER",
					show = true,
				},
				customart = {
					scale = 22,
					x = -74,
					y = -7,
					anchor = "CENTER",
					show = true,
				},
				skullicon = {
					scale = 16,
					x = 55,
					y = 0,
					anchor = "CENTER",
					show = true,					
				},
				unique = {
					threatcolor = {
						LOW = {
							r = 0,
							g = 0,
							b = 0,
							a = 0
						},
						MEDIUM = { 
							r = 0, 
							g = 0, 
							b = 0, 
							a = 0
						},
						HIGH = { 
							r = 0,
							g = 0, 
							b = 0, 
							a = 0
						},
					},
				},
				totem = {
					threatcolor = {
						LOW = {
							r = 0,
							g = 0,
							b = 0,
							a = 0
						},
						MEDIUM = { 
							r = 0, 
							g = 0, 
							b = 0, 
							a = 0
						},
						HIGH = { 
							r = 0,
							g = 0, 
							b = 0, 
							a = 0
						},
					},
				},
				normal = {
					threatcolor = {
						LOW = {
							r = 1,
							g = 1,
							b = 1,
							a = 1
						},
						MEDIUM = { 
							r = 1, 
							g = 1, 
							b = 0, 
							a = 1
						},
						HIGH = { 
							r = 1,
							g = 0, 
							b = 0, 
							a = 1
						},
					},
				},
				dps = {
					threatcolor = {
						LOW = {
							r = 0,
							g = 1,
							b = 0,
							a = 1
						},
						MEDIUM = { 
							r = 1, 
							g = 1, 
							b = 0, 
							a = 1
						},
						HIGH = { 
							r = 1,
							g = 0, 
							b = 0, 
							a = 1
						},
					},
				},
				tank = {
					threatcolor = {
						LOW = {
							r = 1,
							g = 0,
							b = 0,
							a = 1
						},
						MEDIUM = { 
							r = 1, 
							g = 1, 
							b = 0, 
							a = 1
						},
						HIGH = { 
							r = 0,
							g = 1, 
							b = 0, 
							a = 1
						},
					},
				},
			},
			threat = {
				ON = true,
				marked = false,
				nonCombat = true,
				hideNonCombat = false,
				useType = true,
				useScale = true,
				useAlpha = true,
				useHPColor = true,
				art = {
					ON = true,
					theme = "default",
				},				
				scaleType = {
					["Normal"] = -0.2,
					["Elite"] = 0,
					["Boss"] = 0.2
				},
				toggle = {
					["Boss"]	= true,
					["Elite"]	= true,
					["Normal"]	= true,
					["Neutral"]	= true,
					["Tapped"] 	= true
				},
				dps = {
					scale = {
						LOW 		= 0.8,
						MEDIUM		= 0.9,
						HIGH 		= 1.25
					},
					alpha = {
						LOW 		= 1,
						MEDIUM		= 1,
						HIGH 		= 1
					},
				},
				tank = {
					scale = {
						LOW 		= 1.25,
						MEDIUM		= 0.9,
						HIGH 		= 0.8
					},
					alpha = {
						LOW 		= 1,
						MEDIUM		= 0.85,
						HIGH 		= 0.75
					},
				},
				marked = {
					alpha = false,
					art = false,
					scale = false					
				},
			},
			nameplate = {
				toggle = {
					["Boss"]	= true,
					["Elite"]	= true,
					["Normal"]	= true,
					["Neutral"]	= true,
					["Tapped"] 	= true,
					["TargetA"]  = false, -- Custom Target Alpha
					["NoTargetA"]  = false, -- Custom Target Alpha
					["TargetS"]  = false, -- Custom Target Scale
					["NoTargetS"]  = false, -- Custom Target Alpha
					["MarkedA"] = false,
					["MarkedS"] = false
				},
				scale = {
					["Target"]		= 1, 
					["NoTarget"]	= 1, 
					["Totem"]		= 0.75,
					["Boss"]		= 1.1,
					["Elite"]		= 1.04,
					["Normal"]		= 1,
					["Neutral"]		= 0.9,
					["Tapped"] 		= 0.9,
					["Marked"] 		= 1					
				},
				alpha = {
					["Target"]		= 1, 
					["NoTarget"]	= 1, 
					["Totem"]		= 1,
					["Boss"]		= 1,
					["Elite"]		= 1,
					["Normal"]		= 1,
					["Neutral"]		= 1,
					["Tapped"]		= 1,
					["Marked"] 		= 1
				},
			},
		}
    }
	local db = LibStub('AceDB-3.0'):New('ThreatPlatesDB', defaults, 'Default')
	self.db = db
	
	local RegisterCallback = db.RegisterCallback
	
	RegisterCallback(self, 'OnProfileChanged', 'ProfChange')
	RegisterCallback(self, 'OnProfileCopied', 'ProfChange')
	RegisterCallback(self, 'OnProfileReset', 'ProfChange')
	
	self:SetUpInitialOptions()
end

local function ShowConfigPanel()
	TidyPlatesThreat:OpenOptions()
end
------------
-- EVENTS --
------------
function TidyPlatesThreat:SetSpecInfo()
	for i=1,2 do
		local role, name
		role, name = t.SpecZInfo(i)
		self.db.char.specInfo[i] = {
			role = role,
			name = name			
		}
	end
	t.Update()
end

------------------
-- ADDON LOADED --
------------------
function TidyPlatesThreat:OnEnable()
	local ProfDB = self.db.profile
	local setup = {
		SetStyle = self.SetStyle,
		SetScale = self.SetScale,
		SetAlpha = self.SetAlpha,
		SetCustomText = self.SetCustomText,
		SetNameColor = self.SetNameColor,
		SetThreatColor = self.SetThreatColor,
		SetCastbarColor = self.SetCastbarColor,
		SetHealthbarColor = self.SetHealthbarColor,
		OnInitialize = ThreatPlatesWidgets.CreateWidgets,
		OnUpdate = ThreatPlatesWidgets.UpdatePlate,
		OnContextUpdate = ThreatPlatesWidgets.UpdatePlate,
		ShowConfigPanel = ShowConfigPanel,
	}
	TidyPlatesThemeList["Threat Plates"] = setup
	
	
	if ProfDB.debuffWidget.style == "square" then
		TidyPlatesWidgets.UseSquareDebuffIcon()
	elseif ProfDB.debuffWidget.style == "wide" then
		TidyPlatesWidgets.UseWideDebuffIcon()
	end
	if ProfDB.tidyplatesFade then
		TidyPlates:EnableFadeIn()
	else
		TidyPlates:DisableFadeIn()
	end
	
	self:StartUp()
	
	local events = {
		"PLAYER_ALIVE",
		"PLAYER_ENTERING_WORLD",
		"PLAYER_LEAVING_WORLD",
		"PLAYER_LOGIN",
		"PLAYER_LOGOUT",
		"PLAYER_REGEN_DISABLED",
		"PLAYER_REGEN_ENABLED",
		"PLAYER_TALENT_UPDATE"
	}
	for i=1,#events do
		self:RegisterEvent(events[i])
	end
end

function TidyPlatesThreat:StartUp()
	self:SetSpecInfo()
	if not self.db.char.welcome then
		self.db.char.welcome = true
		local Welcome = L["|cff89f559Welcome to |rTidy Plates: |cff89f559Threat Plates!\nThis is your first time using Threat Plates and you are a(n):\n|r|cff"]..t.HCC[class]..self:SpecName().." "..UnitClass("player").."|r|cff89F559.|r\n"
		if class == "SHAMAN" or class == "MAGE" or class == "HUNTER" or class == "ROGUE" or class == "PRIEST" or class == "WARLOCK" then 
			for i=1, GetNumSpecGroups() do
				self:SetRole(false,i)
			end
			local NotTank = Welcome..L["|cff89f559Your dual spec's have been set to |r"]..self:RoleText().."|cff89f559.|r"
			t.Print(NotTank)
		else
			for i=1, GetNumSpecGroups() do
				self:SetRole(t.IsTank(i),i)
			end
			local Currently = Welcome..L["|cff89f559You are currently in your "]..self:RoleText()..L["|cff89f559 role.|r"]
			t.Print(Currently)
		end
		t.Print(L["|cff89f559Additional options can be found by typing |r'/tptp'|cff89F559.|r"])
		if ((TidyPlatesOptions.primary ~= "Threat Plates") and (TidyPlatesOptions.secondary ~= "Threat Plates")) then
			StaticPopup_Show("SetToThreatPlates")
		end
	else
		local GlobDB = self.db.global
		if GlobDB.version ~= tostring(t.Meta("version")) then
			GlobDB.version = tostring(t.Meta("version"))
			if self.db.profile.verbose then
				StaticPopup_Show("TPTP_ChangeLog")
			end
		end
	end
	
	t.SetThemes(self)
	--t.SetTidyPlatesWidgets(self)
	t.Update()
	
end


function TidyPlatesThreat:PLAYER_ALIVE()
	
end

function TidyPlatesThreat:PLAYER_ENTERING_WORLD()
	local _,type = IsInInstance()
	local ProfDB = self.db.profile
	if type == "pvp" or type == "arena" then
		ProfDB.OldSetting = ProfDB.threat.ON
		ProfDB.threat.ON = false
	else
		ProfDB.threat.ON = ProfDB.OldSetting
	end
	self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
end

function TidyPlatesThreat:PLAYER_LEAVING_WORLD()
	
end

function TidyPlatesThreat:PLAYER_LOGIN(...)
	self.db.profile.cache = {}
	if self.db.char.welcome and ((TidyPlatesOptions.primary == "Threat Plates") or (TidyPlatesOptions.secondary == "Threat Plates")) then
		t.Print(L["|cff89f559Threat Plates:|r Welcome back |cff"]..t.HCC[class]..UnitName("player").."|r!!")
	end
	if class == "WARRIOR" or class == "DRUID" or class == "DEATHKNIGHT" or class == "PALADIN" then
		self:RegisterEvent("UPDATE_SHAPESHIFT_FORM")
	end 
end

function TidyPlatesThreat:PLAYER_LOGOUT(...)
	self.db.profile.cache = {}
end

local set = false
function TidyPlatesThreat:SetCvars()
	if not set then
		SetCVar("ShowClassColorInNameplate", 1)
		local ProfDB = self.db.profile
		if GetCVar("nameplateShowEnemyTotems") == "1" then
			ProfDB.nameplate.toggle["Totem"] = true
		else
			ProfDB.nameplate.toggle["Totem"] = false
		end
	
		if GetCVar("ShowVKeyCastbar") == "1" then
			ProfDB.settings.castbar.show = true
		else
			ProfDB.settings.castbar.show = false
		end
	
		set = true
	end
end

function TidyPlatesThreat:SetGlows()
	local ProfDB = self.db.profile.threat
	if ProfDB.ON and (GetCVar("threatWarning") ~= 3) then
		SetCVar("threatWarning", 3)
	elseif not ProfDB.ON and (GetCVar("threatWarning") ~= 0) then
		SetCVar("threatWarning", 0)
	end
end


function TidyPlatesThreat:PLAYER_REGEN_DISABLED()
	-- Disabled while 5.4.8 changes are being officilizedself
	--self:SetGlows()
end

function TidyPlatesThreat:PLAYER_REGEN_ENABLED()
	self:SetGlows()
	self:SetCvars()
end

function TidyPlatesThreat:PLAYER_TALENT_UPDATE()
	self:SetSpecInfo()
end

function TidyPlatesThreat:UPDATE_SHAPESHIFT_FORM()
	
end

function TidyPlatesThreat:ACTIVE_TALENT_GROUP_CHANGED()
	self:SetSpecInfo()
	if ((TidyPlatesOptions.primary == "Threat Plates") or (TidyPlatesOptions.secondary == "Threat Plates")) and self.db.profile.verbose then
		t.Print(L["|cff89F559Threat Plates|r: Player spec change detected: |cff"]..t.HCC[class]..self:SpecName()..L["|r, you are now in your |cff89F559"]..t.ActiveText()..L["|r spec and are now in your "]..self:RoleText()..L[" role."])
	end
end

--[[
local f = CreateFrame("Frame")
function f:Events(self,event,...)
	local ProfDB = TidyPlatesThreat.db.profile
	local CharDB = TidyPlatesThreat.db.char
	if event == "ADDON_LOADED" then
		if arg1 == "TidyPlates_ThreatPlates" then
						
		end
		f:UnregisterEvent("ADDON_LOADED")
	elseif event == "PLAYER_ALIVE" then
		f:UnregisterEvent("PLAYER_ALIVE")
	elseif event == "PLAYER_LOGIN" then
		CharDB.tanking = TidyPlatesThreat:currentRoleBool(Active()) -- Aligns tanking role with current spec on log in.
		
		SetCVar("ShowClassColorInNameplate", 1)
		--SetCVar("bloattest", 1)
		if CharDB.welcome and ((TidyPlatesOptions.primary == "Threat Plates") or (TidyPlatesOptions.secondary == "Threat Plates")) then
			t.Print(L["|cff89f559Threat Plates:|r Welcome back |cff"]..t.HCC[class]..UnitName("player").."|r!!")
		end
		-- Enable Stances / Shapeshifts and Create Options Tables
		if class == "WARRIOR" or class == "DRUID" or class == "DEATHKNIGHT" or class == "PALADIN" then
			f:RegisterEvent("UPDATE_SHAPESHIFT_FORM")
		end
	elseif event == "PLAYER_ENTERING_WORLD" then
		
		local inInstance, iType = IsInInstance()
		if iType == "arena" or iType == "pvp" then
			ProfDB.threat.ON = false
		elseif iType == "party" or iType == "raid" or iType == "none" then
			ProfDB.threat.ON = ProfDB.OldSetting
		end
		
		self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
		-- Set Debuff Widget Style
		--self.db.char.spec[t.Active()] = TidyPlatesThreat:currentRoleBool(Active()) -- Aligns tanking role with current spec on log in, post setup.
		
		TidyPlates:ForceUpdate()
	elseif event == "PLAYER_LEAVING_WORLD" then
		self:UnregisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
	elseif event == "ACTIVE_TALENT_GROUP_CHANGED" then
		TidyPlatesThreat:SetSpecInfo()
		local s = CharDB.specInfo[Active()]
		CharDB.tanking = TidyPlatesThreat:currentRoleBool(Active())
		if ((TidyPlatesOptions.primary == "Threat Plates") or (TidyPlatesOptions.secondary == "Threat Plates")) and ProfDB.verbose then
			t.Print(L["|cff89F559Threat Plates|r: Player spec change detected: |cff"]..t.HCC[class]..TidyPlatesThreat:specName()..L["|r, you are now in your |cff89F559"]..TidyPlatesThreat:dualSpec()..L["|r spec and are now in your "]..TidyPlatesThreat:roleText()..L[" role."])
		end
		TidyPlates:ForceUpdate()
	elseif event == "PLAYER_REGEN_DISABLED" or event == "PLAYER_REGEN_ENABLED" then
		
	elseif event == "PLAYER_LOGOUT" then
		ProfDB.cache = {}
	elseif event == "PLAYER_TALENT_UPDATE" then
		TidyPlatesThreat:SetSpecInfo()
	elseif event == "RAID_TARGET_UPDATE" then
		--TidyPlates:Update()
	elseif event == "UPDATE_SHAPESHIFT_FORM" then -- Set tanking per Stances / Shapeshifts
		TidyPlatesThreat.ShapeshiftUpdate()
	end
end]]