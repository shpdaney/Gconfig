local ORI_ConfigCache, max, min, abs, sin, cos, atan2 = {}, math.max, math.min, math.abs, sin, cos, atan2

local function cc(m, f, ...)
	f[m](f, ...)
	return f
end
local darken do
	local CSL = CreateFrame("ColorSelect")
	function darken(r,g,b, vf, sf)
		CSL:SetColorRGB(r,g,b)
		local h,s,v = CSL:GetColorHSV()
		CSL:SetColorHSV(h, s*(sf or 1), v*(vf or 1))
		return CSL:GetColorRGB()
	end
end
local function shortBindName(bind)
	local a, s, c, k = bind:match("ALT%-"), bind:match("SHIFT%-"), bind:match("CTRL%-"), bind:match("[^-]*.$"):gsub("^(.).-(%d+)$","%1%2");
	return (a and "A" or "") .. (s and "S" or "") .. (c and "C" or "") .. k;
end
local function cooldownFormat(cd)
	if cd == 0 or not cd then return "" end
	local f, n, unit = cd > 10 and "%d%s" or "%.1f", cd, ""
	if n > 86400 then n, unit = ceil(n/86400), "d"
	elseif n > 3600 then n, unit = ceil(n/3600), "h"
	elseif n > 60 then n, unit = ceil(n/60), "m"
	elseif n > 10 then n = ceil(n) end
	return f, n, unit
end

local ORI_Frame = cc("SetFrameStrata", cc("SetSize", CreateFrame("Frame", nil, UIParent), 128, 128), "FULLSCREEN")
ORI_Frame.anchor = cc("SetPoint", cc("SetSize", CreateFrame("Frame", nil, UIParent), 1, 1), "CENTER")
ORI_Frame:SetPoint("CENTER", ORI_Frame.anchor)
local ORI_SetRotationPeriod, CreateQuadTexture do
	local function qf(f)
		return function (self, ...)
			for i=1,4 do
				local v = self[i];
				v[f](v, ...);
			end
		end
	end
	local quad, animations, quadPoints, quadTemplate = {}, {}, {"BOTTOMRIGHT", "BOTTOMLEFT", "TOPLEFT", "TOPRIGHT"}, {__index={SetVertexColor=qf("SetVertexColor"), SetAlpha=qf("SetAlpha"), SetShown=qf("SetShown")}}
	for i=1,4 do
		quad[i] = cc("SetPoint", cc("SetSize", CreateFrame("Frame", nil, ORI_Frame), 32, 32), quadPoints[i], ORI_Frame, "CENTER");
		local g = cc("SetLooping", cc("SetIgnoreFramerateThrottle", quad[i]:CreateAnimationGroup(), 1), "REPEAT");
		animations[i] = cc("SetOrigin", cc("SetDegrees", cc("SetDuration", g:CreateAnimation("Rotation"), 4), -360), quadPoints[i], 0, 0);
		g:Play();
	end
	function CreateQuadTexture(parent, layer, size, file)
		local group, size = setmetatable({}, quadTemplate), size/2
		for i=1,4 do
			local tex, d, l = cc("SetSize", cc("SetTexture", (parent or quad[i]):CreateTexture(nil, layer), file), size, size), i > 2, 2 > i or i > 3
			tex:SetTexCoord(l and 0 or 1, l and 1 or 0, d and 1 or 0, d and 0 or 1)
			group[i] = cc("SetPoint", tex, quadPoints[i], parent or quad[i], parent and "CENTER" or quadPoints[i])
		end
		return group
	end
	function ORI_SetRotationPeriod(p)
		local p = max(0.1, p)
		for i=1,4 do animations[i]:SetDuration(p) end
	end
end
local ORI_Circle = CreateQuadTexture(nil, "ARTWORK", 64, [[Interface\AddOns\OPie\gfx\circle]])
local ORI_Glow = CreateQuadTexture(nil, "BACKGROUND", 128, [[Interface\AddOns\OPie\gfx\glow]])
local ORI_Pointer = cc("SetTexture", cc("SetPoint", cc("SetSize", ORI_Frame:CreateTexture(nil, "ARTWORK"), 192, 192), "CENTER"), [[Interface\AddOns\OPie\gfx\pointer]])
local ORI_CenterCaption = cc("SetPoint", ORI_Frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall"), "TOP", ORI_Frame, "CENTER", 0, -52)
local ORI_CenterCooldownText = cc("SetPoint", ORI_Frame:CreateFontString(nil, "OVERLAY", "NumberFontNormalHuge"), "CENTER")

local ORI_CreateIndicator, ORI_CreateDefaultIndicator, ORI_IndicatorAPI do
	ORI_IndicatorAPI = {SetPoint=0, SetScale=0, GetScale=0, SetShown=0, SetParent=0}
	for k,v in pairs(ORI_IndicatorAPI) do
		ORI_IndicatorAPI[k] = function(self, ...)
			local w = self[v]
			return w[k](w, ...)
		end
	end
	function ORI_IndicatorAPI:SetIcon(texture)
		self.icon:SetTexture(texture)
		local ofs = (texture:match("^[Ii][Nn][Tt][Ee][Rr][Ff][Aa][Cc][Ee][\\/][Ii][Cc][Oo][Nn][Ss][\\/]") or texture == [[Interface\AddOns\OPie\gfx\opie_ring_icon]]) and (2.5/64) or (-2/64)
		self.icon:SetTexCoord(ofs, 1-ofs, ofs, 1-ofs)
	end
	function ORI_IndicatorAPI:SetIconTexCoord(a,b,c,d, e,f,g,h)
		if a and b and c and d then
			if e and f and g and h then
				self.icon:SetTexCoord(a,b,c,d, e,f,g,h)
			else
				self.icon:SetTexCoord(a,b,c,d)
			end
		end
	end
	function ORI_IndicatorAPI:SetIconVertexColor(r,g,b)
		self.icon:SetVertexColor(r,g,b)
	end
	function ORI_IndicatorAPI:SetUsable(usable, usableCharge, cd, nomana, norange)
		local state = usable and 0 or (norange and 1 or (nomana and 2 or 3))
		if self.ustate == state then return end
		self.ustate = state
		if not usable and (nomana or norange) then
			self.ribbon:Show()
			if norange then
				self.ribbon:SetVertexColor(1, 0.20, 0.15)
			else
				self.ribbon:SetVertexColor(0.15, 0.75, 1)
			end
			self.veil:SetAlpha(0)
		else
			self.ribbon:Hide()
			self.veil:SetAlpha(usable and 0 or 0.40)
		end
	end
	function ORI_IndicatorAPI:SetDominantColor(r,g,b)
		r, g, b = r or 1, g or 1, b or 0.6
		local cd, r2, g2, b2 = self.cd, darken(r,g,b, 0.20)
		local r3, g3, b3 = darken(r,g,b, 0.10, 0.50)
		self.hiEdge:SetVertexColor(r, g, b)
		self.iglow:SetVertexColor(r, g, b)
		self.oglow:SetVertexColor(r, g, b)
		self.edge:SetVertexColor(darken(r,g,b, 0.80))
		self.cdText:SetTextColor(r, g, b)		
		cd.spark:SetVertexColor(r, g, b)
		for i=1,4 do
			cd[i]:SetVertexColor(r2, g2, b2)
			cd[i+4]:SetVertexColor(r3, g3, b3)
		end
		cd[9]:SetVertexColor(r3, g3, b3)
	end
	function ORI_IndicatorAPI:SetOverlayIcon(texture, w, h, ...)
		if not texture then
			self.overIcon:Hide()
		else
			self.overIcon:Show()
			self.overIcon:SetTexture(texture)
			self.overIcon:SetSize(w, h)
			if ... then
				self.overIcon:SetTexCoord(...)
			end
		end
	end
	function ORI_IndicatorAPI:SetCount(count)
		self.count:SetText(count or "")
	end
	function ORI_IndicatorAPI:SetBindingText(text)
		self.key:SetText(text or "")
	end
	function ORI_IndicatorAPI:SetCooldown(remain, duration, usable)
		if (duration or 0) <= 0 or (remain or 0) <= 0 then
			self.cd:Hide()
		else
			local expire, usable, cd = GetTime() + remain, not not usable, self.cd
			local d = expire - (cd.expire or 0)
			if d < -0.05 or d > 0.05 then
				cd.duration, cd.expire, cd.updateCooldownStep, cd.updateCooldown = duration, expire, duration/1536/self[0]:GetEffectiveScale()
				cd:Show()
			end
			if cd.usable ~= usable then
				cd.usable = usable
				for i=1,4 do cd[i]:SetAlpha(usable and 0.45 or 1) end
				for i=5,9 do cd[i]:SetAlpha(usable and 0.25 or 0.85) end
				cd.spark:SetShown(usable)
			end
		end
	end
	function ORI_IndicatorAPI:SetCooldownFormattedText(format, ...)
		self.cdText:SetFormattedText(format, ...)
	end
	function ORI_IndicatorAPI:SetHighlighted(highlight)
		self.hiEdge:SetShown(highlight)
	end
	function ORI_IndicatorAPI:SetActive(active)
		self.iglow:SetShown(active)
	end
	function ORI_IndicatorAPI:SetOuterGlow(shown)
		self.oglow:SetShown(shown)
	end
	local createCooldown do
		local function onUpdate(self, elapsed)
			local ucd, expire, time = self.updateCooldown or 0, self.expire or 0, GetTime()
			if ucd > elapsed and time < expire then
				self.updateCooldown = ucd - elapsed
				return
			end
			self.updateCooldown = self.updateCooldownStep
			local duration = self.duration or 0
			local progress = 1 - (expire - time)/duration
			if progress > 1 or duration == 0 then
				self:Hide()
			else
				progress = progress < 0 and 0 or progress
				local tri, pos, sp, pp, scale = self[9], 1+4*(progress - progress % 0.25), progress % 0.25 >= 0.125, (progress % 0.125) * 8, self.scale
				if self.pos ~= pos then
					for i=1,4 do
						self[i]:SetShown(i >= pos)
						self[4+i]:SetShown(i > pos or (i == pos and not sp))
						if i > pos then
							self[i]:SetSize(24, 24)
							local L, T = i > 2, i == 1 or i == 4
							self[i]:SetTexCoord(L and 0 or 0.5, L and 0.5 or 1, T and 0 or 0.5, T and 0.5 or 1)
							self[4+i]:SetSize(21*scale, 21*scale)
						end
					end
					tri:ClearAllPoints()
					tri:SetPoint((pos % 4 < 2 and "BOTTOM" or "TOP") .. (pos < 3 and "LEFT" or "RIGHT") , self, "CENTER")
					local iH, iV = pos == 2 or pos == 3, pos > 2
					tri:SetTexCoord(iH and 1 or 0, iH and 0 or 1, iV and 1 or 0, iV and 0 or 1)
					self.pos = pos
				end

				local l, r, inv = sp and 21 or (pp * 21), 21 - (sp and pp * 21 or 0), pos == 2 or pos == 4
				l, r = l > 0 and l or 0.00000001, r > 0 and r or 0.00000001
				tri:SetSize((inv and r or l)*scale, (inv and l or r)*scale)

				local chunk, shrunk = self[4+pos], 21 - 21*pp
				chunk:SetSize((inv and 21 or shrunk)*scale, (inv and shrunk or 21)*scale)
				chunk:SetShown(not sp or pp >= 0.9999)

				local p1, p2, e, p1a, p2a = sp and 1 or pp, sp and pp or 0, self[pos]
				if p1 > 0.9 and p2 < 0.1 then
					p1a = 0.9 + (p1 + p2 - 0.9)/2
					p2a = 1-(1.81 - p1a*p1a)^0.5
				else
					p1a, p2a = p1, p2
				end
				if p2 > 0.5 then
				elseif p2 > 0.06 then
					p2 = 0.20 + (p2 - 0.06)*30/44
				elseif p1 > 0.96 then
					p1, p2 = 1, (p2 + p1 - 0.96) * 2
				elseif p1 > 0.56 then
					p1 = p1 + (p1 - 0.56)*0.1
				end
				local p1c, p2c = 24 - 21*p1, 24 - 24*p2
				e:SetSize(inv and p2c or p1c, inv and p1c or p2c)
				if pos == 1 then
					e:SetTexCoord(0.5 + 28/64*p1, 1, 0.5*p2, 0.5)
					self.spark:SetPoint("CENTER", self, "TOP", 22.5 * p1a, -22.5*p2a-1.5)
				elseif pos == 2 then
					e:SetTexCoord(0.5, 1-0.5*p2, 0.5 + 28/64*p1, 1)
					self.spark:SetPoint("CENTER", self, "RIGHT", -22.5*p2a-1.5, -22.5*p1a)
				elseif pos == 3 then
					e:SetTexCoord(0, 0.5 - 28/64*p1, 0.5, 1 - 0.5*p2)
					self.spark:SetPoint("CENTER", self, "BOTTOM", -22.5 * p1a, 1.5+22.5*p2a)
				else
					e:SetTexCoord(0.5*p2, 0.5, 0, 0.5 - 28/64*p1)
					self.spark:SetPoint("CENTER", self, "LEFT", 1.5+22.5*p2a, 22.5*p1a)
				end
				if p2 >= 0.9999 then e:Hide() end
			end
		end
		local function onHide(self)
			local toExpire = GetTime() - (self.expire or 0)
			self.expire, self.pos = nil
			for i=5,9 do self[i]:Hide() end
			if -0.1 < toExpire and toExpire < 0.25 then
				self.flashAG:Play()
			end
			self:Hide()
		end
		local function onShow(self)
			self[9]:Show()
		end
		function createCooldown(parent, size)
			local cd, scale = cc("SetScale", cc("SetAllPoints", CreateFrame("FRAME", nil, parent)), size/48), size * 87/4032
			cc("SetScript", cc("SetScript", cc("SetScript", cd, "OnShow", onShow), "OnHide", onHide), "OnUpdate", onUpdate)
			
			cd.scale, cd.spark = scale, cc("SetSize", cc("SetTexture", cc("SetDrawLayer", cd:CreateTexture(), "OVERLAY", 2), [[Interface\AddOns\OPie\gfx\spark]]), 24, 24)
			local sparkAG = cc("SetIgnoreFramerateThrottle", cc("SetLooping", cd.spark:CreateAnimationGroup(), "REPEAT"), true)
			cc("SetDuration", cc("SetDegrees", sparkAG:CreateAnimation("Rotation"), 90), 1/3)
			sparkAG:Play()
			
			cd.flash = cc("SetPoint", cc("SetBlendMode", cc("SetTexture", parent:CreateTexture(nil, "OVERLAY"), [[Interface\cooldown\star4]]), "ADD"), "CENTER")
			cc("SetAlpha", cc("SetSize", cd.flash, 60*size/64, 60*size/64), 0)
			cd.flashAG = cc("SetIgnoreFramerateThrottle", cd.flash:CreateAnimationGroup(), true)
			cc("SetDuration", cc("SetDegrees", cd.flashAG:CreateAnimation("ROTATION"), -90), 1/2)
			cc("SetDuration", cc("SetChange", cd.flashAG:CreateAnimation("ALPHA"), 0.7), 1/8)
			cc("SetDuration", cc("SetStartDelay", cc("SetChange", cd.flashAG:CreateAnimation("ALPHA"), -0.7), 1/8), 3/8)
			
			cd[1] = cc("SetPoint", cc("SetTexture", cd:CreateTexture(nil, "ARTWORK"), [[Interface\AddOns\OPie\gfx\borderlo]]), "BOTTOMRIGHT", cd, "RIGHT")
			cd[2] = cc("SetPoint", cc("SetTexture", cd:CreateTexture(nil, "ARTWORK"), [[Interface\AddOns\OPie\gfx\borderlo]]), "BOTTOMLEFT", cd, "BOTTOM")
			cd[3] = cc("SetPoint", cc("SetTexture", cd:CreateTexture(nil, "ARTWORK"), [[Interface\AddOns\OPie\gfx\borderlo]]), "TOPLEFT", cd, "LEFT")
			cd[4] = cc("SetPoint", cc("SetTexture", cd:CreateTexture(nil, "ARTWORK"), [[Interface\AddOns\OPie\gfx\borderlo]]), "TOPRIGHT", cd, "TOP")
			for i=1,4 do
				cd[4+i] = cc("SetPoint", cc("SetTexture", cc("SetDrawLayer", parent:CreateTexture(), "ARTWORK", 3), 1,1,1),
					(i % 4 < 2 and "TOP" or "BOTTOM") .. (i < 3 and "RIGHT" or "LEFT"), cd, "CENTER", (i < 3 and 21 or -21)*scale, (i % 4 < 2 and 21 or -21)*scale)
			end
			cd[9] = cc("SetTexture", cc("SetDrawLayer", parent:CreateTexture(), "ARTWORK", 3), [[Interface\AddOns\OPie\gfx\tri]])
			
			return cd
		end
	end
	
	local apimeta = {__index=ORI_IndicatorAPI}
	function ORI_CreateDefaultIndicator(name, parent, size, nested)
		local e = cc("SetSize", CreateFrame("Frame", name, parent), size, size)
		return setmetatable({[0]=e,
			edge = cc("SetAllPoints", cc("SetTexture", e:CreateTexture(nil, "OVERLAY"), [[Interface\AddOns\OPie\gfx\borderlo]])),
			hiEdge = cc("SetAllPoints", cc("SetTexture", cc("SetDrawLayer", e:CreateTexture(), "OVERLAY", 1), [[Interface\AddOns\OPie\gfx\borderhi]])),
			oglow = cc("SetShown", CreateQuadTexture(e, "BACKGROUND", size*2, [[Interface\AddOns\OPie\gfx\oglow]]), false),
			iglow = cc("SetAllPoints", cc("SetAlpha", cc("SetTexture", cc("SetDrawLayer", e:CreateTexture(nil), "ARTWORK", 1), [[Interface\AddOns\OPie\gfx\iglow]]), nested and 0.60 or 1)),
			icon = cc("SetPoint", cc("SetSize", e:CreateTexture(nil, "ARTWORK"), 60*size/64, 60*size/64), "CENTER"),
			veil = cc("SetTexture", cc("SetPoint", cc("SetSize", cc("SetDrawLayer", e:CreateTexture(), "ARTWORK", 2), 60*size/64, 60*size/64), "CENTER"), 0, 0, 0),
			ribbon = cc("SetShown", cc("SetTexture", cc("SetAllPoints", cc("SetDrawLayer", e:CreateTexture(), "ARTWORK", 2)), [[Interface\AddOns\OPie\gfx\ribbon]]), false),
			overIcon = cc("SetPoint", cc("SetDrawLayer", e:CreateTexture(), "ARTWORK", 3), "BOTTOMLEFT", e, "BOTTOMLEFT", 4, 4),
			count = cc("SetPoint", cc("SetJustifyH", e:CreateFontString(nil, "OVERLAY", "NumberFontNormalLarge"), "RIGHT"), "BOTTOMRIGHT", -4, 4),
			key = cc("SetPoint", cc("SetJustifyH", e:CreateFontString(nil, "OVERLAY", "NumberFontNormalSmallGray"), "RIGHT"), "TOPRIGHT", -1, -4),
			cdText = cc("SetPoint", e:CreateFontString(nil, "OVERLAY", "NumberFontNormalHuge"), "CENTER"),
			cd = createCooldown(e, size),
		}, apimeta)
	end
end

local function SetAngle(self, angle, radius)
	self:SetPoint("CENTER", radius*cos(90+angle), radius*cos(angle))
end
local function SetScaleSmoothed(self, scale, speed)
	local old, limit = self:GetScale(), speed/GetFramerate();
	self:SetScale(old + min(limit, max(-limit, scale-old)));
end
local function CalculateRingRadius(n, fLength, aLength, min, baseAngle)
	if n < 2 then return min end
	local radius, mLength, astep = max(min, (fLength + aLength * (n-1))/6.2831853071796), (fLength+aLength)/2, 360 / n
	repeat
		local ox, oy, clear, angle, i = radius*cos(baseAngle), radius*sin(baseAngle), true, baseAngle + astep, 1
		while clear and i <= n do
			local nx, ny, sideLength = radius*cos(angle), radius*sin(angle), (i == 1 or i == n) and mLength or aLength
			if abs(ox - nx) < sideLength and abs(oy - ny) < sideLength then
				radius, clear = radius + 5
			end
			ox, oy, angle, i = nx, ny, angle + astep, i + 1
		end
	until clear
	return radius
end

local ORI_Slices = setmetatable({}, {__index=function(t, k)
	local v = ORI_CreateIndicator(nil, ORI_Frame, 48)
	t[k] = v
	return v
end})
local GhostIndication = {} do
	local spareGroups, spareSlices, currentGroups, activeGroup = {}, {}, {};
	local function freeGroup(g)
		g:Hide()
		for i=2,g.count or 0 do
			g[i]:SetShown(false)
			spareSlices[g[i]], g[i] = g[i]
		end
		spareGroups[g], g.incident, g.count = g
	end
	local function createGroup()
		return cc("SetScale", cc("SetSize", CreateFrame("Frame", nil, ORI_Frame), 1, 1), 0.80)
	end
	local function AnimateHide(self, elapsed)
		local total = ORI_ConfigCache.XTZoomTime;
		self.expire = (self.expire or total) - elapsed;
		if self.expire < 0 then
			self.expire = nil; self:SetScript("OnUpdate", nil); self:Hide();
		else
			self:SetAlpha(self.expire/total);
		end
	end
	local function AnimateShow(self, elapsed)
		local total = ORI_ConfigCache.XTZoomTime/2;
		self.expire = (self.expire or total) - elapsed;
		if self.expire < 0 then
			self.expire = nil; self:SetScript("OnUpdate", nil); self:SetAlpha(1);
		else
			self:SetAlpha(1-self.expire/total);
		end
	end
	function GhostIndication:ActivateGroup(index, count, incidentAngle, mainRadius, mainScale)
		local ret, config = currentGroups[index] or next(spareGroups) or createGroup(), ORI_ConfigCache;
		currentGroups[index], spareGroups[ret] = ret;
		if not ret:IsShown() then ret:SetScript("OnUpdate", AnimateShow); ret:Show(); end
		if activeGroup ~= ret then GhostIndication:Deactivate(); end
		if ret.incident ~= incidentAngle or ret.count ~= count then
			local radius, angleStep = CalculateRingRadius(count, 48*mainScale, 48*0.80, 30, incidentAngle-180)/0.80, 360/count;
			local angle = 90 + incidentAngle + angleStep;
			for i=2,count do
				local cell = ret[i] or next(spareSlices) or ORI_CreateIndicator(nil, ret, 48, true)
				cell:SetParent(ret); SetAngle(cell, angle, radius); cell:SetShown(true);
				ret[i], angle, spareSlices[cell] = cell, angle + angleStep;
			end
			ret.incident, ret.count = incidentAngle, count;
			ret:SetPoint("CENTER", (mainRadius/0.80+radius)*cos(incidentAngle), (mainRadius/0.80+radius)*sin(incidentAngle));
			ret:Show();
		end
		activeGroup = ret;
		return ret;
	end
	function GhostIndication:Deactivate()
		if activeGroup then
			activeGroup:SetScript("OnUpdate", AnimateHide);
			activeGroup = nil;
		end
	end
	function GhostIndication:Reset()
		for k, v in pairs(currentGroups) do
			freeGroup(v)
			currentGroups[k] = nil
		end
		activeGroup = nil
	end
	function GhostIndication:Wipe()
		GhostIndication:Reset()
		wipe(spareSlices)
	end
end

local lhc, lhcPal do
	local ht = [[d��d��d����&d��d����M��Bd����M��MLW�M��L����Ly�L���L�M���������L��L���&������­��L���4)�D.BY�_�k}��Hx�_qd�:���C��}��E�����d�O�!��4"()A�(#�z�d{�E� \zO��A����C�U�_戥�H:�rߟ��Ul{Ο�	td���#�r3�g�<� >O�w���k����#��|A'��+���-!����%}�âr0�tw'�)#���r>�O�$<�&��>�Ed��,������#>�������tby]���w��I������� w�K�v�w�l�����AD���.'�I�8c�G�����r0��d�G���?�GK�D'O���� �Н��d�}=i_҈��O��� G��G����_y�}D���V�^Di��,�+8��ˈJ�D2/K�T�t��79"�G�<�C��I��=z�1.C"�%lc��q �N��2rs�.~��%,��VP�8J�-�����}_����g��:����:H�d���'�{>���B��~d-�В%"�w��!�L�'��K:��,�K���/��W'�n ?�I���?��%��92K���$���Јc�t1h ��O͈J�އ���E�|H���)^Pv3�Y�*1r�Ғ;�^r٤�,���<�������~=)9"ޅ�J�E? ��e�y�w�FQ�������5�/��?O҄#� 	I���ӎD8��&u��[(����e$t�&wQ��%4,��t"�#�g��g���Ȋ��;���8#���:�_��N��.�G���;���M��M��O�,�i��?��].��I?#9r8�Y*�� �Oȿ�G�-h��V��"ؗ��u{a(��4N y>�`�B~�=�9�E��#�� ��O�,!��g!"���:%#��>$NB~D�М1�q�BL��(C��y�a�	!�ȯ���9����$w���F}�'�t��8|�E��[Ȍ|���Q�v3�}3��'�F?�u����>�''L���$�8��O�$:N���1���ĉ�������a����F__����a-��� �����>�=���tE���$�������4��8G�C����~Uv�}gw���_��W���>O�A,tJ�2"R��2��D�� #΂qϯ�z~3�Ћ���I�.K.���&w�g�g��X��	C�ßl B'���$z=	b�'�����$��U:e��y>�E��s�$��r�/N�Iζ,�8��D'�vcS���&��I?O��dH�=�%#�c�_���r �#c������H>���t��� A��|�#���a�3�u��$OⳞ(��ͽ ����{���?��&K_z�[�)�d�&_'���6	;췡�	����O�� u~��������Nr��&�'�0�}�C܏�� ��߰���"�:>��G���.q���=�$�����|��I�\�'���w��s����$��FQ8_�?ٟ#���ȏ��[O������a%D-������"���.\P�}9z1O����9�Jt����O�' 9�I��1gG���C�Zߑ��nK��&%$E���Oa���e�8��9$�?'ѣ��#t�"P��.z�~+�#��I"���z.��� y��u�ϒ9���r3������{&	���O�gЙ},Z>O�(\P�%�!	�% s���d�q�-s"^�����T�� cK�$]��+�s������KД-���GK���u����)Y/�n@���'�زqI7��?��؛=d2N�u������ [�%�h#�x��G�?�_��4�� '����?���D�L��&}h�c�&��Bi+ C��#�'�,�d���g;݄��J�Y�_�?�h9&w!��Љ�?��"~�8�ι�d��,���gʇJ)rh�b���?�C�T� y?#���~�}�"+I?�A����	�����'4��^���|��_��8�,��Jd��w�o�$�>t����r؆�b��|�<��E��K�LV��q8_����w�H���Ȕ�ߚP�?җE�r�!����I�܋y����&��E�o݄]�WGM;��E�'�vK� ;��1y)��._���;9������I'����KI�\���8�"F���Ž����u�+KO��br���bȴ��8;�F]a�I��t��/'��8� ���}(#������;R�܈�� �"I%�#���y:����#�}r@�з|���C6���c��I�y�E�� C�?�k�f��'uw�i#�O"� Y%_�$�����������g�.I��8� ���Bw<�q(�%4��� z����Bނ���w̟;΂$�8qɑ���������|��}g��D#�Y�ġ�eH��2#0�~���_�$>�^�B��ƤY�D�?r^���/_c��_G��'�c?��v����8'�vG�#�/�������<�D�dy��>HF�2|�_�F.���J ��E����Qk ��!��%���C���C��-1[���~��=&I!d���-���t:�O��,� DI���O����?���#�vo������D�M1�~hD1�b�hG�9/A#���{1<9��׶~+C��"�:{�, �>v�G�O��u~���#���rN�}�<lþ�%_���$BK��	��+����I��Kr�s���@��o#��)AD.���珿���������E�i�γ���BHġd\�s�gNw#�!��7 ��FQ�\E��"���yyO�"�O����$al��Dl rb�}���~/:��_9�}���h��>��V�~�Dh�1o%'���'և�� �X�}q�c�D%���Kv��i��|���w�� O�G��"1���:>��i��Ϭ� rO���D?�����ĕ��,�d~s�.�#���8��_!�="�~_JOO��r8����#�?��������&M��Z��|� ���1_������ĥ�'�}�k9�}l�G�t�����:!������^�B	(�?\uH�$�A�ĝr֚ �k�Y;-'g��,�:*M�� C���.��-$�?9�9�w<�g���'k���|� [��}�"��	�#����� [G��!��!vY(��;�ힳKK��}i!�D|�C$�|�MS���g����@|��Q18�������<�O��]Jh��#���B�W��w-qF?T���>O�2 "�|��D�Otq��gȽ�� "sR[�����s��O�H�ɏ�J���Ik��';��>C��Ju�2���_ y��o&H�$�q�?�ZO���дD�KBE�>��i�ȸ��Ŝ�3�=�o�J�t���R�!�q��o�9?5�����E�Gܳ��C��}��	���z�D� ����x����<���$K��П:>�l�Y?�3й��	�>E��J��'�	R���������9�Zɿ����u���sЄ=�>�2+wޏ��Z\s�� r�2g�R�c"��w�t������!��n:���t���w?�Ge8[�'���Ħ�b	�>���{ECδ9�"$|��JX�&Sg����"�,!{����8JH��#��E��/��e>�z0��PB=l�◿� DY�~p�'�t;�D�D��<����в����y%\��蜮|U� �������G�G\���$Q6/��<I}	<�D���X���I��H�'ж.��H��b:���Y�3�4 L�',���/��B���k�)c�� z�ʬ�{�t�A>�K���� qO�;tPϝ�:?C��b~���<Y�h�r �Ⱥ�o���!�!D!�N&w� aӲi<����DV����Mb�͓?��8��t�����cC�5"ä�G�C�����_M忸�rV�U�J�#� $Ȓ~LB��DE.t�,����&'�� "�I�9�y����9	з �?щM	r~�8:��,����1g╸�?е���܏�>3������Gض&sO[��8��!��+ ��Ȝ�a�����F!v'�����>D8�?��^�����!D�,8�����9���!�B8��VD��"Od=^~�~:~_\%@9��b�u=Pu��bHD}���~���p���_�hB��_;�_ğk"�?�����Z�w��	��8������\�_�Κ�h���"Y}��Vy���1�u�H���]u�gw�y��OU�i[�*C�u�����d ��-/���D"��	Ŧ_ ��[$K�Ϻ�O�B����8����9���)%)}�a�$S�[���zJ�d�#�#�&=�Fe�s����F�F>C�,�܇��Y"�������:�s�/�]��Jq:�7}$y:�[�.��w�? �Q��w�)��%\u��_�r}�9��A�ӳ�����q ���-ĒfF-Nr=1At���<���A�e����|�s"��E����L����$�bd��8�>uċ<���ߊ�$Kk{����A�����:C�s��ϱ�8w�ɣ��G��[�,�N�����2�G��JgwɅ��]rovfϜ�a��L��F?�K?���8G�t�G�zg\�����d�'���u�>�%��G-�D]�����4��Lnzi�@a%T�� �X��bX���M���	� t�C����G���%���dHی?���̫�x��B?���r/��q8J���"~��?Yٕ���ș%o� ��#%7����.�C�Ӭ��%�ɓ��+#���s��d��8�����'ȕ��:���g�rUi��G̉�	�[>� ��?x��YJf�<㨯���w~��C�N��8� 9);�6_��|�w�v3�!ℽ'��9Һֲ#1eI/�_ 'ؿ��ZPG��#������ދ ���=2\P�?�<܏��:*��ks�dE�#E���*�r���gKE���Oe��u}??�y��;#�s8a���n�	7��}*�8�zH� �E�,�g��-�Y���&�DU!���:&�=�K�$��%H�} �V���������?��J��e�#�ϻ����U���D&��$D��'��rc�ȟq��}�?�$��j�o g���I>E�)����y" � �~�U�ֲ:l���(���� �&��,rPxH��~t��<�O��8���ݟ&��#�|�gg�s������r��I���%^��;���R�k7��Jq!�w����L������"e�(BH}�_��E���H�"g+#�Gȃ���>��N �����)Вc"E����E��&���bVI}���\�s0�!�r_�H�B~����C���ܒ}dz>����"��iE�$dI��w��D?؂P�����d!Ώ��K>z��C������$�����8������đ;B7O�C���?���������z�	�t��8�����-$����R�&?���do�y�u���Ⱥ|�%�D�hBȌS�{����?/�� ">y������������d���@6����%���k���1���G�w�$��I���;�8��}��䓩���?\�#䣿_����O��A}�\b��%5f"t}, ����w�e��Ј?����8:����ϣ�]tO��y0��tX�Og�w$�w�R2H ;	G=q>�1q�4�#	�mw�) ����������D]��Fk�>Rw�T�s��h���5��"���G��}h�S��vY�dZVŝ38�SdF��׆=�yȲbg�>�}�A:��[��!�z�/�w���K/�����G�A>�,'Q�3zo�?�'�4��BGm��Bi� J*��1;�B�"X�~q%?�|���D/D���O���?c��g>���;�t���R�&: :XO�6wֲ~Gr��$�z#���'��s�%i���Cr&,s��8� a֏�O�����uNFL���$����~����h|��%��z�idꏣ"&��$ ^E�(;�x��r/���s���8=3�����d:nM�K����'��?I?s�+���|�8J]��d�b���bE�_t��;q�D}6��v_JH���� ��%���~���AY�D"oE����J������?DnM�� �γ�����?��1�;�Gև�R�9�/���O�$G�B�����y��������8I���������Iw;?e��K/��<O9N����Y�IR5K����!��z�DI� gr%ݛ�����r|�g�O�?E�t����#���'qO��z��	"D�� Yݟ�3��Ή9���['迲5I?b}k�.}|�:ؖ���2)�ҿ�n{�I}�A��y΃��"]�|�"�_��d�~�'c$��� "H�E�_�I_�#y0������>�'��B9����?���3���y��Z>�؟ ��{0��.G��Bғ�g[��'� B�H���{-ty�vYn}��Ňb���Yy�M]:�"dO�� �����t}���>���;W�C�I!вFKI�C�A���_��?� 9Ӛʈ�����(���9�?���d�=G����r>���K��,�[>�M�$�S�D���[>���1R%����_ � �c$#���̏��-�D]��_䓽�{5��Gև|� BHM�s�g��2Aɴ-�����o!�D���o���ȿ�_\Ov'>�V|��_�� ��g����?a����%�u��f����8�1�������������.��rz~�Yߨ�� ��uБ�I�܉c����>���L�����Ȝ��?/�g�\��ϡȃ�����ʧ 9������.�&G���Y$��;�O�t�E�?B��������[r|�t��tEY���=�Y���K:Q�'��-?�vN��ع�� ��?��"c��?��@�>V�%'����ZPO�<�>y>�8y҆8��Y��S���)���U���E��r~ϰ���H��J&>DFO��B���� I?��Z����f3�f[�hK(D��Z��D�'Ο��;,E��!>��o ��B,�G������j�ɽ�#��I��� �>���Nf��P�3����y>�0�G��2�����b&�&�?��������Qd��.��w�?�G�_'�s��8�?%�2��4~H;�������_C���_�s�(]��U�{>w=�gVs��G��� a���Y���:>��t��tI�#����f��Mo?�s�� ���~?9	Źt$Q�����w�9b4���%X���:>L�������Y���.'Ȅ"�I��=�ȇ|�~"�} �x��?�Z�b�j�y?������:(�� ��������ls�G}ߊoC�� Y��I�����ȉ�ӱ���fxz�w��I�b����Js��'�t]�a>�}3���I���������d�֜���W��f>D��w�/��z�%��u�?tj�����(I"���Y����#����$G�?�������$���Ħ���H�)?�dc�����(:����"$�g�?WE���o��?��������(8�Q.3�;��ʨ$����_���g���?�/����}�ҏ������Ǵ�������8���߻����?���<�&?Z/�����uڟ;>�����s���7����4�:�������PN.���ݓ�b��)��[�F�&�>�=p��?�}����d��������8���J�&��<����)�}���܋������6�#�\�3�̚,�[�����G<瑀�z.����6�7������K�����m�������7�s�,�Wf���������2E�������ΆĞy��.�����1�=Ό������؇�������^����-/����^ϗg�������q��)��?��╮�D鋻-��=�`���6�m���F�Ʉ��g��|�����߈�2������<��=��Ɲq���������5��4�����?���ܖ��������b�����؛���܂B�]��<�q�ڛ��t�����+���䒷�W��������)��<��֏&���������K�J�I�7����&,�7�%$������ٛ����[������ჱ����?������c�6�����6���j���6��<�x���>֕ȇ^�Պ�>����ȗ��ݘ9�������P���6h�Ո�����Γs�D�%��>��y����ցƔ������^��3b(��)�&����ܟ���<�ƈK�7��������c�7����\<���^�?���J���򒷚r����Μ7�5���0�r��%�\'	��k�}�Yr����3��K���@�&�g�М\�����[����?����H��K�o$�=)�Ԍr�,�y���)�J����� @�󑌝Ɠ ���ȗ�V�ޗg�ڑ���	�l��&$��������=��̉y�'�q�e=���]�����A��� �4��q�Ҍ+�X���M���62`����%��?����&� ���5����t���}��?Z��=)�ԛY��u�?�ҝ[h8����j��ً���΁z����������������Ѝ�7�����Η[�Ȉ&��(���fg��z���������7�c�������<�艏1.���ь؃�������������t鞰�芇�J���X�J=����J��0����P�c�}���e��G�֍\�'��Ջ��8��Iј=k%��?Z�՚��+���E������Ε]��G�ސ蓦�'�b����֓]�`�0���㛓��������,����V�=���[�*���+�[>�i����C���<�M(�l?������.jd�k�=���[C���a� �:�P�z�R���[�ф��ޟ�1�x�͞�ΜՌ�6�o�j�?5g=�ƛ�<�,���>R���ٔ�>1=ΐ�3����3�@T����睩��<���X������'�P�=����W�󝰝��ːЊ��B��5�����m+h����ٓ�㐀�2��� =΄Jo���V���蟡��W�X���3� ���r�g���I�`=ΐ������Y�ݕ�����c�����F�m?��ՙ?/�m�ɟ������m�l%��&�D革�ϟ?�g���?�m���s����֊��2�О��7��>���d���}�7�������=k�k�����������}����#.��&���&�����������s�?�����%�ǋǑ�6�u<�m����U����P�l��/�����y����	�������،�� ��t��%��[?9���[�F���}�͐�ȉ�ހ#�^���Țf��m���\�������l�g�H�&�`�یz���\�`8����z���T�����[莧�]�����������Ǟ�ٟ��ٙٓ�=�g�H�{(�%(���7��D�cBr���s�ϛe�y����t��8�����������ٞƀ�ٝ󏲒����.��<��[>���%������&�5%ĝq�?�Ē�����=�ǕG��=)���+�s�W����@����t��Տ��f(�����B���s<��l�9:��X���s�����I�y�󙑖&����r����F�*�P�[����+����=k��K����Uq��&���y�{���s$󕉂������c�[蜽��V=g��m�e�Ѝ��j�)<睂��W��q�2����H����.$������작�����t�����΂i����� �x%��ߜ�0���s�腷�E�˅ȋ3�����)ǞP�B<��U��E���ه� �n��:����ϊH������ۈt�e���\���)�,�T�)����2�9����[�0���K�1�D�:�ю���=h�:���Z�܊&��=��i�͓ �x�q�ـ��Ҟ)��[��],�{���?��'�������̖�7�D���Z��򝰍\�ҍ�`�2?��[�e�����������l�7?��G�ƕ���ߓ �����)�R%����ۓ �q����H��l����?��:�Г]�c�T����������8������ۖV�ǘJ������$��6�\���Ѓ5�����󍸎a�4�ܔm�����,蓦��>1���]���ǎm5	���@��s�c��2���&�^��6<��ϗ%?��؍y�J�[���ϕ��\�Π���J�J�A�\���4��0���ˈh�[�:���>Ru;��3���A�����J�؈��J%֖���̉𔊘�������l�%���7�[�J�P�E���ҏl������E�5���T�x�q�͛Y���A��o���Ƃ�Hp����n�c<��7�'���ؚ�Йd��'�>s��<��F�G�q�Ս�䆳��؈t���H���Ćt�s������(���?P�˞:<��͍�0���4�ߌ+�K���>�F��>1�ҍ������I���\�?�i�W�������������M�T�{��Ά��H�c����x��	������s?��&ȉA������s�����}�z�c�7�5��J����뗸�ٝ�6�7��ZD������x0��������*�ڂ�[%�2Q��6���{�����څ�&���0������� �F������甸$���7�q���%l�ˈ��J������Z��m���ғs�7��7�t�W�&��>R<��%���}���\�t���>1A�Вq��A���[t䑝������󚛍\�a���+�J�r�f��+9̑[�.���q�^]�ςB�������Η}���^����B���ǅP��҇j(�H���*�]����)���ߎ��ܓ �.�V$�����=��@�I��Л��՘9���E�A�E�Z@�\���%����K������@���ٖ�����������������<�>R�c4��A(���i�%�y�ؗ6�W����@��7�K��W������k�����{�g����9������ކD��=���ȇj�����ȟΆ�=��H鋁�K������=���=)��`�����5�&��$��H�P�ȃm�>1����Ξ��󛓚���}���ق�9$�Д����lg���؜�&��F�c�Y�\����ږ�h� ��y�0����<��ߔF-h���%�ךr��N+����[�z=��<��(\������߃�s�ǜ���Y�������x�6>s����J�A�J5o�W���y���?1��W�)�Ƅ(�,�(��>���J���[����ِ�����<�.�՘(���4����(�����c�Jփ��A�B�g�c�B�W�����C�g�ߑ�%�������E���ƌ���G�����:��c���F�l�\���ހ��,���E���5����5�q*i��=k�ڝ%��4�����y�d�́X����V�����z���띓�7�b�܀����r�[���H���3�'�٘�����]�X�ƛ��W�g������˟Θȇ�r.�М7���2��Ċ˝[�����&�Ҕ��y������0>s�H�ݙ�%�x�ߕ�ݜ�8��k����Ƙ�ZP����J�e�(�g��T���{�y��H�ҝJ���(�����%<畮���󏜍������+���?���z*�&�ז��e�y��,����Y��2�m��<�����睂���{�Ξ:��(@��m��V�#A(�j�=Κr�֏��%U����ĔF�ٞ�󏜟�Y�ی��.h%�e�������������[���B��&U=)�&����<疷�ř�����6�>��?�-���܋kM3�t�7=)�,��]ǆ'���&�����������.g�[�<���?����]�}��Δݞc�������������}�&��(�H�.���0��]����������ً>��7�לr��猱�&�]�Fp��s�&������c������r��]]
	local byte, cr, k2, a3, b3, m3, sp = string.byte, {}
	for i=1,byte(ht,1) do cr[3*i-2], cr[3*i-1], cr[3*i] = byte(ht, 3*i-1, 3*i+1) end
	for i=1,#cr do cr[i] = cr[i] > 1 and (cr[i]/255) or 0 end
	local function r16(p) local a,b = byte(ht, p, p+1) return a*256 + b end	
	k2, m3, a3, b3, sp, lhcPal = r16(#cr+2), r16(#cr+4), r16(#cr+6), r16(#cr+8), #cr + 10, cr

	local function get(s)
		local h, l, a, a2, b, c, d, e, f, o, m = 8388593, #s
		for i=1, l+1, 2 do
			a, b = byte(s, i, i+1)
			h = (h * 4093 + (a or l) * k2 + (b or l) * 65521) % 268435399
		end
		m = -2 * (((h * a3 + b3) % 2147483629) % m3 + 1)
		a, b = byte(ht, m, m + 1)
		if a < 128 then
			return ((h * (a - a % 4) / 4) % 2147483629 % 2 > 0 and (b % 32) or ((a % 4) * 8 + (b - b % 32) / 32)) * 3 - 2
		else
			o = sp + a*256 + b - 32769
			m, a = byte(ht, o, o + 1)
			a = (h * (m * 256 + a) + m) % 2147483629 % m
			a, a2 = (a - a % 8)*5/8, a % 8
			b, c, d, e, f = byte(ht, o+a+2, o+a+6)
			a = b * 4294967296 + c * 16777216 + d * 65536 + e * 256 + f
			return ((a - a % 32^a2) / 32^a2 % 32) * 3 - 2
		end
	end
	lhc = setmetatable({}, {__index=function(t, s)
		local i = type(s) == "string" and get(s:match("[^/\\]*$"):lower():gsub("%.blp$", ""))
		if s then t[s] = cr[i] and i or -3 end
		return i
	end})
end

local ORI, ORI_cR, ORI_cG, ORI_cB, ORI_caption, ORI_icon, ORI_qHint = {}, {}, {}, {}, {}, {}, {}
local function ORI_SliceColor(token, icon)
	if ORI_cR[token] then return ORI_cR[token], ORI_cG[token], ORI_cB[token] end
	local li = lhc[icon] or -3
	return lhcPal[li] or 0.70, lhcPal[li+1] or 1, lhcPal[li+2] or 0.6
end
local function extractAux(ext, v)
	if not ext then
	elseif v == "coord" and type(ext.iconCoords) == "table" then
		return unpack(ext.iconCoords)
	elseif v == "coord" then
		return ext.iconCoords()
	elseif v == "color" and type(ext.iconR) == "number" and type(ext.iconG) == "number" and type(ext.iconB) == "number" then
		return ext.iconR, ext.iconG, ext.iconB
	end
end
local function check(ok, ...)
	if ok then return ... end
end
local function ORI_UpdateCenterIndication(self, si, osi)
	local tok, usable, state, icon, caption, count, cd, cd2, tipFunc, tipArg, ext = OneRingLib:GetOpenRingSliceAction(si);
	caption = ORI_caption[tok] or caption
	ORI_CenterCooldownText:SetFormattedText(cooldownFormat(tok and ORI_ConfigCache[usable and "ShowRecharge" or "ShowCooldowns"] and cd or 0));
	ORI_CenterCaption:SetText(tok and ORI_ConfigCache.ShowCenterCaption and caption or "");
		
	if tok then
		local r,g,b = ORI_SliceColor(tok, ORI_icon[tok] or icon or "INV_Misc_QuestionMark")
		ORI_Pointer:SetVertexColor(r,g,b, 0.9);
		ORI_Circle:SetVertexColor(r,g,b, 0.9);
		ORI_Glow:SetVertexColor(r,g,b);
		ORI_CenterCaption:SetTextColor(r,g,b);
		ORI_CenterCooldownText:SetTextColor(r,g,b);
	elseif si ~= osi then
		ORI_Pointer:SetVertexColor(1,1,1, 0.1);
		ORI_Circle:SetVertexColor(1,1,1, 0.3);
		ORI_Glow:SetVertexColor(0.75,0.75,0.75);
	end

	if ORI_ConfigCache.UseGameTooltip then
		if tipFunc and tipArg then
			GameTooltip_SetDefaultAnchor(GameTooltip, ORI_Frame)
			tipFunc(GameTooltip, tipArg)
			GameTooltip:Show()
		elseif caption and caption ~= "" then
			GameTooltip_SetDefaultAnchor(GameTooltip, ORI_Frame)
			GameTooltip:AddLine(caption)
			GameTooltip:Show()
		elseif GameTooltip:IsOwned(ORI_Frame) then
			GameTooltip:Hide()
		end
	end

	local gAnim, gEnd, oIG, time, usable = self.gAnim, self.gEnd, self.oldIsGlowing, GetTime(), not not usable
	if usable ~= oIG then
		gAnim, gEnd = usable and "in" or "out",  time + 0.3 - (gEnd and gEnd > time and (gEnd-time) or 0);
		self.oldIsGlowing, self.gAnim, self.gEnd = usable, gAnim, gEnd;
		ORI_Glow:SetShown(true);
	end
	if gAnim and gEnd <= time or oIG == nil then
		self.gAnim, self.gEnd = nil, nil;
		ORI_Glow:SetShown(usable);
		ORI_Glow:SetAlpha(0.75);
	elseif gAnim then
		local pg = (gEnd-time)/0.3*0.75;
		ORI_Glow:SetAlpha(usable and (0.75 - pg) or pg);
	end
	self.oldSlice = si
end
local function ORI_UpdateSlice(indic, selected, tok, usable, state, icon, _, count, cd, cd2, tf, ta, ext)
	state, icon, ext = state or 0, ORI_icon[tok] or icon  or "Interface/Icons/INV_Misc_QuestionMark", not ORI_icon[tok] and ext or nil
	local active, overlay, faded, usableCharge, ok, r,g,b = state % 2 > 0, state % 4 > 1, not usable, usable or (state % 128 >= 64)
	indic:SetIcon(icon)
	if ext then
		indic:SetIconTexCoord(check(pcall(extractAux, ext, "coord")))
		ok, r,g,b = pcall(extractAux, ext, "color", c)
	end
	indic:SetUsable(usable, usableCharge, cd and cd > 0, state % 16 > 7, state % 32 > 15)
	indic:SetIconVertexColor(ok and r or 1, g or 1, g or 1)
	indic:SetDominantColor(ORI_SliceColor(tok, icon))
	indic:SetOuterGlow(overlay)
	indic:SetOverlayIcon((ORI_qHint[tok] or ((state or 0) % 64 >= 32)) and "Interface\\MINIMAP\\TRACKING\\OBJECTICONS", 21, 28, 40/256, 64/256, 32/64, 1)
	indic:SetCooldown(cd, cd2, usableCharge)
	indic:SetCooldownFormattedText(cooldownFormat(ORI_ConfigCache[usableCharge and "ShowRecharge" or "ShowCooldowns"] and cd or 0))
	indic:SetCount((count or 0) > 0 and count)
	indic:SetActive(active)
	indic:SetHighlighted(selected and not faded)
end
local function ORI_GhostUpdate(self, slice)
	local count, offset = self.count, self.offset;
	local _, _, _, nestedCount = OneRingLib:GetOpenRingSlice(slice or 0);
	if (nestedCount or 0) == 0 then return GhostIndication:Deactivate(); end
	local scaleM = ORI_ConfigCache.MIScale and 1.10 or 1;
	local group = GhostIndication:ActivateGroup(slice, nestedCount, 90 - 360/count*(slice-1) - offset, self.radius*scaleM, 1.10);
	for i=2,nestedCount do
		ORI_UpdateSlice(group[i], false, OneRingLib:GetOpenRingSliceAction(slice, i));
	end
end
local function ORI_Update(self, elapsed)
	local time, config, count, offset = GetTime(), ORI_ConfigCache, self.count, self.offset

	local scale, l, b, w, h = self:GetEffectiveScale(), self:GetRect();
	local x, y = GetCursorPosition();
	local dx, dy = (x / scale) - (l + w / 2), (y / scale) - (b + h / 2);
	local radius2 = dx*dx+dy*dy;

	local angle, isInFastClick = atan2(dy, dx) % 360, config.CenterAction and radius2 <= 400 and self.fastClickSlice > 0 and self.fastClickSlice <= self.count;
	if isInFastClick then
		angle = (offset + 90 - (self.fastClickSlice-1)*360/count) % 360;
	end

	local oangle = (not isInFastClick) and self.angle or angle;
	local adiff, arate = min((angle-oangle) % 360, (oangle-angle) % 360);
	if adiff > 60 then
		arate = 420 + 120*sin(min(90, adiff-60));
	elseif adiff > 15 then
		arate = 180 + 240*sin(min(90, max((adiff-15)*2, 0)));
	else
		arate = 20 + 160*sin(min(90, adiff*6));
	end
	local abound, arotDirection = arate/GetFramerate(), ((oangle - angle) % 360 < (angle - oangle) % 360) and -1 or 1;
	abound = abound * 2^config.XTPointerSpeed;
	self.angle = (adiff < abound) and angle or (oangle + arotDirection * abound) % 360;
	ORI_Pointer:SetRotation(self.angle/180*3.1415926535898 - 90/180*3.1415926535898);

	local si = isInFastClick and self.fastClickSlice or (count <= 0 and 0) or (radius2 < 1600 and 0) or
		(floor(((atan2(dx, dy) - offset) * count/360 + 0.5) % count) + 1)
	ORI_UpdateCenterIndication(self, si, self.oldSlice);

	if config.MultiIndication and count > 0 then
		local cmState, mut = (IsShiftKeyDown() and 1 or 0) + (IsControlKeyDown() and 2 or 0) + (IsAltKeyDown() and 4 or 0), self.schedMultiUpdate or 0;
		if self.omState ~= cmState or mut >= 0  then
			self.omState, self.schedMultiUpdate = cmState, -0.05;
			for i=1,count do
				ORI_UpdateSlice(ORI_Slices[i], si == i, OneRingLib:GetOpenRingSliceAction(i));
			end
			if config.GhostMIRings then
				ORI_GhostUpdate(self, si);
			end
		else
			self.schedMultiUpdate = mut + elapsed;
		end

		for i=1,config.MIScale and count or 0 do
			SetScaleSmoothed(ORI_Slices[i], i == si and 1.10 or 1, 2^ORI_ConfigCache.XTScaleSpeed)
		end
	end
end
local function ORI_ZoomIn(self, elapsed)
	self.eleft = self.eleft - elapsed;
	local delta, config = max(0, self.eleft/ORI_ConfigCache.XTZoomTime), ORI_ConfigCache;
	if delta == 0 then self:SetScript("OnUpdate", ORI_Update); end
	self:SetScale(config.RingScale/max(0.2,cos(65*delta))); self:SetAlpha(1-delta);
	return ORI_Update(self, elapsed);
end
local function ORI_ZoomOut(self, elapsed)
	self.eleft = self.eleft - elapsed;
	local delta = max(0, self.eleft/ORI_ConfigCache.XTZoomTime);
	if delta == 0 then return self:Hide(), self:SetScript("OnUpdate", nil); end
	if ORI_ConfigCache.MultiIndication and ORI_ConfigCache.MISpinOnHide then
		local count = self.count;
		if count > 0 then
			local baseAngle, angleStep, radius, prog = 45 - self.offset + 45*delta, 360/count, self.radius, (1-delta)*150*max(0.5, min(1, GetFramerate()/60));
			for i=1,count do
				ORI_Slices[i]:SetPoint("CENTER", cos(baseAngle)*radius + cos(baseAngle-90)*prog, sin(baseAngle)*radius + sin(baseAngle-90)*prog);
				baseAngle = baseAngle - angleStep;
			end
		end
		self:SetScale(ORI_ConfigCache.RingScale*(1.75 - .75*delta));
	else
		self:SetScale(ORI_ConfigCache.RingScale*delta);
	end
	self:SetAlpha(delta);
end
ORI_Frame:SetScript("OnHide", function(self)
	if self:IsShown() and self:GetScript("OnUpdate") == ORI_ZoomOut then
		self:SetScript("OnUpdate", nil)
		self:Hide()
	end
end)

function ORI:Show(ringName, fcSlice, fastOpen)
	local frame, config, _ = ORI_Frame, ORI_ConfigCache;
	_, frame.count, frame.offset = OneRingLib:GetOpenRing(config);
	frame.radius = CalculateRingRadius(frame.count or 3, 48, 48, 95, 90-(frame.offset or 0))
	frame:SetScript("OnUpdate", ORI_ZoomIn);
	frame.eleft, frame.fastClickSlice, frame.oldSlice, frame.angle, frame.omState, frame.oldIsGlowing = config.XTZoomTime * (fastOpen and 0.5 or 1), fcSlice or 0, -1;
	ORI_SetRotationPeriod(config.XTRotationPeriod)
	MouselookStop();
	GhostIndication:Reset();

	local astep, radius = frame.count == 0 and 0 or -360/frame.count, frame.radius;
	for i=1,config.MultiIndication and frame.count or 0 do
		local indic, _, _, sliceBind  = ORI_Slices[i], OneRingLib:GetOpenRingSlice(i);
		indic:SetBindingText(config.ShowKeys and sliceBind and shortBindName(sliceBind));
		SetAngle(indic, (i - 1) * astep - frame.offset, radius);
		indic:SetShown(true)
		indic:SetScale(1)
	end
	for i=config.MultiIndication and (frame.count+1) or 1, #ORI_Slices do
		ORI_Slices[i]:SetShown(false)
	end

	config.RingScale = max(0.1, config.RingScale);
	frame:SetScale(config.RingScale); frame.anchor:SetScale(config.RingScale);
	if config.RingAtMouse then
		local es, cx, cy = frame:GetEffectiveScale(), GetCursorPosition()
		frame.anchor:SetPoint("CENTER", nil, "BOTTOMLEFT", (cx + config.IndicationOffsetX)/es, (cy - config.IndicationOffsetY)/es);
	else
		local es = frame:GetEffectiveScale()
		frame.anchor:SetPoint("CENTER", nil, "CENTER", config.IndicationOffsetX/es, -config.IndicationOffsetY/es);
	end
	frame:Show();

	ORI_Update(frame, 0);
end
function ORI:Hide()
	ORI_Frame:SetScript("OnUpdate", ORI_ZoomOut);
	ORI_Frame.eleft = ORI_ConfigCache.XTZoomTime;
	GhostIndication:Deactivate();
	if GameTooltip:IsOwned(ORI_Frame) then
		GameTooltip:Hide()
	end
end
function ORI:SetDisplayOptions(token, icon, caption, r,g,b)
	if type(r) ~= "number" or type(g) ~= "number" or type(b) ~= "number" then r,g,b = nil end
	ORI_cR[token], ORI_cG[token], ORI_cB[token], ORI_caption[token], ORI_icon[token] = r,g,b, caption, icon
end
function ORI:SetQuestHint(sliceToken, hint)
	ORI_qHint[sliceToken] = hint or nil
end
function ORI:GetTexColor(icon)
	return ORI_SliceColor(nil, icon)
end
function ORI:SetIndicatorConstructor(func)
	if func then
		local s = func(nil, ORI_Frame, 48)
		for k,v in pairs(ORI_IndicatorAPI) do
			local tk, te = type(s[k]), type(v)
			if tk ~= te then
				return error(("Expected %s for indicator key %q, got %s."):format(te, k, tk), 2)
			end
		end
	end
	ORI_CreateIndicator = func or ORI_CreateDefaultIndicator
	GhostIndication:Wipe()
	for k,v in pairs(ORI_Slices) do
		ORI_Slices[k] = nil
		v:SetShown(false)
	end
	ORI_Frame:Hide()
end

OneRingLib.ext.OPieUI = ORI
ORI:SetIndicatorConstructor(ORI_CreateDefaultIndicator)
OneRingLib:SetAnimator(ORI)
for k,v in pairs({ShowCenterCaption=false, ShowCooldowns=false, ShowRecharge=false, MultiIndication=true, UseGameTooltip=true, ShowKeys=true,
	MIScale=true, MISpinOnHide=true, GhostMIRings=true, XTPointerSpeed=0, XTScaleSpeed=0, XTZoomTime=0.3, XTRotationPeriod=4}) do
	OneRingLib:RegisterOption(k,v)
end