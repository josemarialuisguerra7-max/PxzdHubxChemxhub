-- Deobfuscated by ccjvwsod on Discord
-- Detected obfuscation: Luraph v15
-- Local names are inferred from use (the original names are not in the bytecode)

local fn, v, v2, defaultTab, Players, RunService, ReplicatedStorage, CoreGui, UserInputService, localPlayer
local networking, fn2, tbl, v3, fn3, fn4, tbl2, fn5, fn6, tbl3
local tbl4, fn7, n, n2, v4, v5, espSection, tbl5, color, sequence
local palettes, red

do
	local CollectionService, ProximityPromptService, v6, v7, tbl6, tbl7, tbl8

	do
		fn = function(arg)
			local genv = typeof(getgenv) == "function" and getgenv() or _G

			if type(genv.ChilliDebugPrint) == "function" then
				pcall(genv.ChilliDebugPrint, arg)
			end
		end

		task.spawn(pcall, function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/refs/heads/main/DiscordLink"))()
		end)

		local function fn8()
			local response = nil

			local function fn9()
				if type(response) == "string" and #response > 0 then
					return response
				end
				response = game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli%20Library")
				return response
			end

			local function fn10()
				local chilliHubSaeCleanup = (typeof(getgenv) == "function" and getgenv() or _G).ChilliHubSaeCleanup

				if type(chilliHubSaeCleanup) == "function" then
					pcall(chilliHubSaeCleanup)
				end

				local tbl9 = { game:GetService("CoreGui") }

				if typeof(gethui) == "function" then
					local ok, result = pcall(gethui)

					if ok and typeof(result) == "Instance" then
						table.insert(tbl9, result)
					end
				end

				local tbl10 = {
					Settings = true,
					ChilliLeftCenter = true,
					ChilliLibrarySettings = true,
					ChilliLibraryLauncher = true,
				}

				local n3 = 0

				for _, v8 in ipairs(tbl9) do
					for _, child in ipairs(v8:GetChildren()) do
						if child:IsA("ScreenGui") and (child:GetAttribute("ChilliLibraryOwned") == true or tbl10[child.Name]) then
							pcall(function()
								child:Destroy()
							end)

							n3 += 1
						end
					end
				end

				if n3 > 0 then
					fn("cleared " .. n3 .. " leftover PXZD UI screens")
				end
			end

			local function fn11()
				local v8 = fn9()
				local chunk, v9 = loadstring(v8)
				assert(chunk, v9)
				local v10 = chunk()
				assert(type(v10) == "function", "PXZD Library bootstrap is invalid.")
				local v11 = table.create(45)
				local n3 = 1

				for i = 1, 90, 2 do
					v11[n3] = string.char(bit32.bxor(tonumber(string.sub("306908100841206d474f00185f26635b2101387507010810127d7d477a473b6f435a0916573165562900226c00", i, i + 1), 16), string.byte("s9K!2vQ#", (n3 - 1) % 8 + 1)))
					n3 += 1
				end

				return v10(table.concat(v11))
			end

			local chilliLibraryFailedToLoad = "unknown"

			for i = 1, 6 do
				task.wait()
				pcall(fn10)
				local ok, result = pcall(fn11)
				if ok and type(result) == "table" then
					return result
				end
				chilliLibraryFailedToLoad = tostring(result)

				if type(chilliLibraryFailedToLoad) == "string" and string.find(chilliLibraryFailedToLoad, "HttpGet", 1, true) then
					response = nil
				end

				fn("library load attempt " .. i .. " failed: " .. chilliLibraryFailedToLoad)
				task.wait(1 + i * 0.5)
			end

			error("PXZD Library failed to load: " .. chilliLibraryFailedToLoad, 0)
		end

		v = fn8()
		assert(type(v) == "table" and type(v.CreateWindow) == "function" and type(v.Finalize) == "function", "PXZD Library returned an invalid API.")

		v.ManualQuickDefaults = {
			PinnedFeatures = { "Player > Movement > Speed Boost", "Player > Movement > Boost Speed" },
			Keybinds = { ["Player > Movement > Speed Boost"] = "Q" },
			PinGroups = {},
			LeftCenterHidden = true,
		}

		v2 = v:CreateWindow({ Name = "PXZD Hub - Steal An Egg", DefaultTab = "Farm" })
		defaultTab = v2:GetDefaultTab()
		Players = game:GetService("Players")
		RunService = game:GetService("RunService")
		ReplicatedStorage = game:GetService("ReplicatedStorage")
		CoreGui = game:GetService("CoreGui")
		UserInputService = game:GetService("UserInputService")
		CollectionService = game:GetService("CollectionService")
		game:GetService("LocalizationService")
		ProximityPromptService = game:GetService("ProximityPromptService")
		localPlayer = Players.LocalPlayer
		networking = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Networking")

		fn2 = function(arg)
			local ok, result = pcall(function()
				return require(arg())
			end)

			return ok and result or nil
		end

		tbl = {
			EggState = fn2(function()
				return ReplicatedStorage.Client.EggState
			end),
			AreaEggs = fn2(function()
				return ReplicatedStorage.Shared.Types.AreaEggs
			end),
			ToolGameplayGuard = fn2(function()
				return ReplicatedStorage.Client.ToolGameplayGuard
			end),
			Assets = fn2(function()
				return ReplicatedStorage.Data.Assets
			end),
			Guards = fn2(function()
				return ReplicatedStorage.Data.Guards
			end),
			EggRecords = fn2(function()
				return ReplicatedStorage.Shared.Util.EggRecords
			end),
			Mutations = fn2(function()
				return ReplicatedStorage.Shared.Modules.Mutations
			end),
			Save = fn2(function()
				return ReplicatedStorage.Shared.Save
			end),
			FuseKernel = fn2(function()
				return ReplicatedStorage.Shared.Util.FuseKernel
			end),
			AreaEggCycle = fn2(function()
				return ReplicatedStorage.Shared.Util.AreaEggCycle
			end),
			AreaEggResetWall = fn2(function()
				return ReplicatedStorage.Client.AreaEggResetWall
			end),
			AreaEggResetCycle = fn2(function()
				return ReplicatedStorage.Data.AreaEggResetCycle
			end),
			Gears = fn2(function()
				return ReplicatedStorage.Data.Gears
			end),
			Areas = fn2(function()
				return ReplicatedStorage.Data.Areas
			end),
			LimitedEgg = fn2(function()
				return ReplicatedStorage.Data.LimitedEgg
			end),
			BrainrotEgg = fn2(function()
				return ReplicatedStorage.Data.BrainrotEgg
			end),
			MonsterEgg = fn2(function()
				return ReplicatedStorage.Data.MonsterEgg
			end),
		}

		local save = tbl.Save

		if type(save) == "table" and (type(save.Get) ~= "function" or type(save.FieldSignal) ~= "function") then
			tbl.Save = setmetatable({
				Get = type(save.Get) == "function" and save.Get or save.Peek,
				FieldSignal = type(save.FieldSignal) == "function" and save.FieldSignal or save.Watch,
			}, { __index = save })
		end

		local function fn9()
			if typeof(gethui) == "function" then
				local ok, result = pcall(gethui)
				if ok and typeof(result) == "Instance" then
					return result
				end
			end

			return CoreGui
		end

		v3 = fn9()

		do
			local v8 = Random.new()
			local str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

			fn3 = function()
				local v9 = v8:NextInteger(12, 20)
				local v10 = table.create(v9)

				for i = 1, v9 do
					local v11 = v8:NextInteger(1, #str)
					v10[i] = string.sub("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", v11, v11)
				end

				return table.concat(v10)
			end
		end

		do
			local tbl9 = {}

			fn4 = function(arg)
				table.insert(tbl9, arg)
			end

			tbl2 = {}

			fn5 = function(arg, arg2)
				local n3 = 1000
				local n4 = 3
				local n5 = 12

				local function fn10(arg3)
					if arg3 <= 0 then
						return 0
					end
					local n6 = 10 ^ (math.floor(math.log10(arg3)) - 2)
					return math.floor(arg3 / n6 + 0.5) * n6
				end

				local function fn11(arg3)
					local n6 = math.clamp(tonumber(arg3) or 0, 0, 1000)
					if n6 <= 0 then
						return 0
					end
					return fn10(10 ^ (n4 + (n5 - n4) * n6 / n3))
				end

				local function fn12(arg3)
					local n6 = tonumber(arg3) or 0
					if n6 <= 0 then
						return 0
					end
					local n7 = n5 - n4
					return math.clamp(math.floor((math.log10(n6) - n4) / n7 * n3 * 100 + 0.5) / 100, 0, 1000)
				end

				local function fn13(arg3)
					local str = string.format(arg3 >= 100 and "%.0f" or arg3 >= 10 and "%.1f" or "%.2f", arg3)

					if string.find(str, ".", 1, true) then
						str = string.gsub(string.gsub(str, "0+$", ""), "%.$", "")
					end

					return str
				end

				local function fn14(arg3)
					local v8 = fn11(arg3)
					if v8 <= 0 then
						return "Off"
					end

					if v8 < 1000000 then
						return fn13(v8 / 1000) .. " K/s"
					end

					if v8 < 1e9 then
						return fn13(v8 / 1000000) .. " M/s"
					end
					return fn13(v8 / 1e9) .. " B/s"
				end

				local function fn15(arg3)
					local v8 = fn11(arg3)
					if v8 <= 0 then
						return "0"
					end

					if v8 < 1000000 then
						return fn13(v8 / 1000) .. "k"
					end
					return (string.gsub(string.gsub(string.format("%.3f", v8 / 1000000), "0+$", ""), "%.$", ""))
				end

				local tbl10 = { k = 1000, m = 1000000, b = 1e9, t = 1e12 }

				local function fn16(arg3)
					local v8 = string.gsub(string.lower(string.gsub(tostring(arg3 or ""), "[%s,/]", "")), "s$", "")
					if v8 == "" or v8 == "off" then
						return 0
					end
					local v9, v10 = string.match(v8, "^([%d%.]+)([kmbt]?)$")
					local num = tonumber(v9)
					if not num then
						return nil
					end
					return fn12(num * (tbl10[v10] or 1000000))
				end

				local v8 = arg:CreateSlider({
					Name = arg2.Name,
					Note = arg2.Note,
					SubOf = arg2.SubOf,
					Min = 0,
					Max = n3,
					Default = fn12(arg2.Default or 0),
					AllowDecimals = true,
					Increment = 0.01,
					ValueFormat = fn14,
					ValueParse = fn16,
					Callback = function(arg3)
						if type(arg2.OnRaw) == "function" then
							arg2.OnRaw(fn11(arg3))
						end
					end,
				})

				local value = type(v8) == "table" and rawget(v8, "Instance") or nil

				if typeof(value) == "Instance" then
					for _, descendant in ipairs(value:GetDescendants()) do
						if descendant:IsA("TextBox") then
							local connection = descendant.Focused:Connect(function()
								task.defer(function()
									if descendant:IsFocused() then
										local ok, result = pcall(v8.Get, v8)
										descendant.Text = fn15(ok and result or 0)
										descendant.CursorPosition = #descendant.Text + 1
										descendant.SelectionStart = 1
									end
								end)
							end)

							fn4(function()
								pcall(function()
									connection:Disconnect()
								end)
							end)
						end
					end
				end

				if type(arg2.Legacy) == "string" and type(arg2.SectionName) == "string" then
					table.insert(tbl2, { Handle = v8, Name = arg2.Name, Legacy = arg2.Legacy, Section = arg2.SectionName, StepOf = fn12 })
				end

				return v8
			end

			local text = "All"

			fn6 = function(arg)
				if type(arg) ~= "table" then
					return arg
				end
				local value = rawget(arg, "Instance")
				if typeof(value) ~= "Instance" then
					return arg
				end
				local flag = false

				local function fn10(arg2)
					if flag then
						return
					end

					if arg2.Text == "None" then
						flag = true
						arg2.Text = text
						flag = false
					end
				end

				local function fn11(descendant)
					if not descendant:IsA("TextLabel") or descendant.Name ~= "Value" then
						return
					end
					fn10(descendant)

					local connection = descendant:GetPropertyChangedSignal("Text"):Connect(function()
						fn10(descendant)
					end)

					fn4(function()
						pcall(function()
							connection:Disconnect()
						end)
					end)
				end

				for _, descendant in ipairs(value:GetDescendants()) do
					fn11(descendant)
				end

				local connection = value.DescendantAdded:Connect(fn11)

				fn4(function()
					pcall(function()
						connection:Disconnect()
					end)
				end)

				return arg
			end

			local genv = typeof(getgenv) == "function" and getgenv() or _G
			local chilliHubSaeCleanup = genv.ChilliHubSaeCleanup

			if type(chilliHubSaeCleanup) == "function" then
				pcall(chilliHubSaeCleanup)
			end

			genv.ChilliHubSaeCleanup = function()
				for i = #tbl9, 1, -1 do
					pcall(tbl9[i])
				end

				table.clear(tbl9)
			end
		end

		do
			local n3 = 0
			local fn10 = nil

			fn10 = function(arg, arg2)
				local n4 = arg2 or 0

				if type(arg) == "table" then
					if n4 > 3 then
						return
					end
					local n5 = 0

					for k, v8 in pairs(arg) do
						n5 += 1

						if not (n5 > 20) then
							fn10(k, n4 + 1)
							fn10(v8, n4 + 1)
							continue
						end

						break
					end
				elseif typeof(arg) == "Instance" then
					pcall(arg.GetFullName, arg)
				else
					n3 += #tostring(arg)
				end
			end

			local tbl9 = {}

			local function fn11(arg)
				tbl9[#tbl9 + 1] = arg
			end

			local function fn12()
				for _, v8 in ipairs(tbl9) do
					pcall(function()
						v8:Disconnect()
					end)
				end

				table.clear(tbl9)
			end

			local function chilliToolKeeper()
				fn12()

				for _, v8 in ipairs({
					"RE/GearSatchel/Lost",
					"RE/GearSatchel/Gained",
					"RE/RigSync/ProbeSatchel",
					"RE/RigSync/SeedSatchel",
					"RE/RigSync/CorrectionBegan",
					"RE/RigSync/Refresh",
					"RE/ToolTrigger/Trigger",
					"RE/BatSwing/Trigger",
				}) do
					local v9 = networking:FindFirstChild(v8)

					if v9 and v9:IsA("RemoteEvent") then
						fn11(v9.OnClientEvent:Connect(function(...)
							fn10({ ... })
						end))
					end
				end

				local function fn13(arg)
					if not arg then
						return
					end

					fn11(arg.ChildRemoved:Connect(function(child)
						if child:IsA("Tool") then
							fn10({ child.Name, child.Parent })
						end
					end))

					fn11(arg.ChildAdded:Connect(function(child)
						if child:IsA("Tool") then
							fn10({ child.Name })
						end
					end))
				end

				fn13(localPlayer:FindFirstChildOfClass("Backpack"))

				fn11(localPlayer.ChildAdded:Connect(function(child)
					if child:IsA("Backpack") then
						fn13(child)
					end
				end))

				task.spawn(function()
					pcall(function()
						local v8 = tbl.Save.Get()
						fn10({ v8.GearInventory, v8.Inventory }, 2)
					end)

					if type(getgc) == "function" then
						pcall(function()
							for _, v8 in ipairs(getgc(false)) do
								if type(v8) == "function" and islclosure(v8) then
									pcall(debug.info, v8, "n")
								end
							end
						end)
					end
				end)
			end
			;(typeof(getgenv) == "function" and getgenv() or _G).ChilliToolKeeper = chilliToolKeeper
			task.defer(chilliToolKeeper)
			fn4(fn12)
		end

		do
			local n3 = 0.35
			local n4 = 5
			local tbl9 = {}
			local flag = true

			tbl3 = {
				Add = function(arg)
					local tbl10 = { Run = arg, Gap = n3, Idle = n4, Repeat = false, Hold = 0 }
					table.insert(tbl9, tbl10)
					return tbl10
				end,
				Wake = function()
					flag = true
				end,
				Backoff = function(arg, arg2)
					if arg then
						arg.Hold = tonumber(arg2) or 6
					end
				end,
			}

			local connection = RunService.Heartbeat:Connect(function(deltaTime)
				local v8 = flag
				flag = false

				for _, v9 in ipairs(tbl9) do
					v9.Gap = v9.Gap + deltaTime
					v9.Idle = v9.Idle + deltaTime

					if v9.Hold > 0 then
						v9.Hold = v9.Hold - deltaTime
					elseif v9.Gap >= n3 and (v8 or v9.Repeat or v9.Idle >= n4) then
						v9.Gap = 0
						v9.Idle = 0
						local ok, result = pcall(v9.Run, v9)
						v9.Repeat = ok and result == true
					end
				end
			end)

			fn4(function()
				connection:Disconnect()
			end)
		end

		v6 = defaultTab:CreateSection({ Name = "Dr Scramble Event", Expanded = false })
		local v8
		v8 = defaultTab:CreateSection({ Name = "Auto Steal", Expanded = true })
		local v9
		v9 = defaultTab:CreateSection({ Name = "Auto Place Egg", Expanded = false })
		local v10
		v10 = defaultTab:CreateSection({ Name = "Auto Treadmill", Expanded = false })
		local v11
		v11 = defaultTab:CreateSection({ Name = "Auto Hatch & Equip", Expanded = false })
		local v12
		v12 = defaultTab:CreateSection({ Name = "Auto Sell", Expanded = false })
		local v13
		v13 = defaultTab:CreateSection({ Name = "Auto Fuse Machine", Expanded = false })
		local v14
		v14 = defaultTab:CreateSection({ Name = "Auto Favorite", Expanded = false })
		v7 = defaultTab:CreateSection({ Name = "Auto Rift & Boss", Expanded = false })
		tbl6 = { Paused = false }

		do
			local n3 = 0.5
			local v15 = nil
			local tbl9 = nil
			local tbl10 = {}
			local flag = false
			local n4 = 0

			local function fn10()
				for i = #tbl10, 1, -1 do
					local v16 = tbl10[i]

					if v16 and v16.Connected then
						v16:Disconnect()
					end

					tbl10[i] = nil
				end
			end

			local function fn11()
				fn10()
				local v16 = v15
				local v17 = tbl9
				v15 = nil
				tbl9 = nil
				if not v16 or not v16.Parent or not v17 then
					return
				end

				pcall(function()
					v16.BreakJointsOnDeath = v17.BreakJointsOnDeath
					v16.RequiresNeck = v17.RequiresNeck
					v16:SetStateEnabled(Enum.HumanoidStateType.Dead, v17.DeadEnabled)
				end)
			end

			local function fn12(arg)
				if not arg or not arg.Parent then
					return false
				end

				return pcall(function()
					arg.BreakJointsOnDeath = false
					arg.RequiresNeck = false
					arg:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
				end) and arg.BreakJointsOnDeath == false and arg.RequiresNeck == false and arg:GetStateEnabled(Enum.HumanoidStateType.Dead) == false
			end

			local function fn13(arg)
				if tbl6.Paused or arg ~= v15 or not arg or not arg.Parent or flag then
					return false
				end
				local maxHealth = arg.MaxHealth
				if maxHealth <= 0 then
					return false
				end

				if maxHealth == math.huge or arg.Health >= maxHealth then
					return true
				end
				flag = true

				local ok = pcall(function()
					arg.Health = maxHealth
				end)

				flag = false
				return ok and arg.Health >= maxHealth
			end

			local function fn14(arg)
				if arg == v15 and arg and arg.Parent then
					return true
				end
				fn11()
				if not arg or not arg:IsA("Humanoid") or not arg.Parent then
					return false
				end
				v15 = arg

				tbl9 = {
					BreakJointsOnDeath = arg.BreakJointsOnDeath,
					RequiresNeck = arg.RequiresNeck,
					DeadEnabled = arg:GetStateEnabled(Enum.HumanoidStateType.Dead),
				}

				if not fn12(arg) then
					fn11()
					return false
				end
				fn13(arg)

				tbl10[#tbl10 + 1] = arg.HealthChanged:Connect(function()
					fn13(arg)
				end)

				tbl10[#tbl10 + 1] = arg:GetPropertyChangedSignal("MaxHealth"):Connect(function()
					fn13(arg)
				end)

				tbl10[#tbl10 + 1] = arg.StateChanged:Connect(function(old, new)
					if new == Enum.HumanoidStateType.Dead and not tbl6.Paused then
						fn12(arg)
						fn13(arg)
					end
				end)

				n4 = os.clock()
				return true
			end

			local function fn15()
				local character = localPlayer.Character
				return character and character:FindFirstChildOfClass("Humanoid") or nil
			end

			local connection = localPlayer.CharacterAdded:Connect(function()
				task.defer(function()
					fn14(fn15())
				end)
			end)

			local connection2 = RunService.Heartbeat:Connect(function()
				local now = os.clock()
				if tbl6.Paused or now - n4 < n3 then
					return
				end
				n4 = now
				local v16 = fn15()
				if v16 ~= v15 then
					fn14(v16)
					return
				end

				if v16 then
					fn12(v16)
					fn13(v16)
				end
			end)

			task.defer(function()
				fn14(fn15())
			end)

			fn4(function()
				if connection then
					connection:Disconnect()
				end

				if connection2 then
					connection2:Disconnect()
				end

				fn11()
			end)
		end

		local tbl9 = { "bat", "katana", "axe", "staff", "club", "hammer", "sword", "blade" }

		tbl4 = {
			Steal = { Active = false, LastFinishedAt = 0, Carrying = false },
			Movement = {
				Owner = nil,
				PlaceWanted = false,
				StealFirst = false,
				MutationWanted = false,
				FracturedWanted = false,
			},
			AntiGuard = {
				Enabled = false,
				Busy = false,
				BusySince = 0,
				HitArms = 0,
				Handle = nil,
				Render = nil,
			},
			IsBatTool = function(arg)
				if typeof(arg) ~= "Instance" or not arg:IsA("Tool") then
					return false
				end

				if arg:GetAttribute("IsBat") == true then
					return true
				end
				local attribute = arg:GetAttribute("GearName")

				if type(attribute) == "string" then
					local gears = tbl.Gears
					local directory = type(gears) == "table" and g						end)
					elseif not fn35(n17, arg2, nil, n2) then
						return false
					end
				end

				if fn13(arg2) then
					return false
				end
				local flag3 = arg4 and typeof(arg4.CFrame) == "CFrame"
				local v21 = nil

				if flag3 then
					v21 = fn42(arg2, arg4.CFrame.Position + Vector3.new(0, 3, 0))
				end

				local str3 = "FirstAreaEgg_" .. tostring(localPlayer.UserId)
				local flag4 = type(arg.Uid) == "string" and string.sub(arg.Uid, 1, #str3) == str3 and string.match(arg.Uid, "_([%w ]+:Slot_%d+)$") or nil
				arg4 = arg4 and flag4
				local flag5 = false

				if arg4 then
					local eggState = tbl.EggState

					if type(eggState) == "table" and type(eggState.CarryFieldEgg) == "function" then
						str2 = "Taking the starter egg"

						task.spawn(function()
							pcall(eggState.CarryFieldEgg, arg.Uid, flag4)
						end)

						local n18 = 0

						while not tbl4.Steal.Carrying and n18 < 0.8 do
							if fn13(arg2) then
								return false
							end
							n18 += RunService.Heartbeat:Wait()
						end

						flag5 = tbl4.Steal.Carrying == true
					end
				end

				if not flag5 then
					str2 = "Taking the egg"
					flag5 = fn30(arg, arg2)

					if not flag5 and not fn13(arg2) then
						fn35(n17, arg2, nil, n2)
						flag5 = fn30(arg, arg2)
					end
				end

				if not flag5 and not fn31(arg.Uid, arg2) then
					if v21 then
						v21.Stop()
					end

					tbl18[arg.Uid] = os.clock() + n7
					str2 = "That egg would not come free"
					return false
				end

				if v21 then
					local reGuardPatrolForestStrike = networking:FindFirstChild("RE/GuardPatrol/ForestStrike")
					local v22 = fn39(arg) or fn39({ AreaId = "Forest" })
					local humanoidRootPart = v22 and v22:FindFirstChild("HumanoidRootPart")

					if reGuardPatrolForestStrike and reGuardPatrolForestStrike:IsA("RemoteEvent") and humanoidRootPart then
						str2 = "Calling the guard strike"

						pcall(function()
							reGuardPatrolForestStrike:FireServer({ EggUid = arg.Uid, GuardCFrame = humanoidRootPart.CFrame })
						end)
					end
				end

				tbl4.Steal.LastFinishedAt = os.clock()
				return true, v21
			end

			local n17 = 3
			local n18 = 30

			local function fn46(arg, arg2, arg3)
				local v21 = nil
				local v22 = nil

				for _, child in ipairs(workspace:GetChildren()) do
					if child.Name == "SmartPromptPart" and child:IsA("BasePart") then
						local carryAreaEgg = child:FindFirstChild("CarryAreaEgg")

						if carryAreaEgg and carryAreaEgg:IsA("ProximityPrompt") then
							local magnitude = (child.Position - arg).Magnitude

							if magnitude < arg2 then
								arg2 = magnitude
								v21 = carryAreaEgg
								v22 = child
							end
						end
					end
				end

				if v21 and v22 and type(arg3) == "string" and not fn26(v22, arg3, arg) then
					return nil
				end
				return v21, v22
			end

			local function fn47(arg)
				local areaEggSlotsClient = workspace:FindFirstChild("AreaEggSlotsClient")
				local v21 = workspace:FindFirstChild(arg) or areaEggSlotsClient and areaEggSlotsClient:FindFirstChild(arg)
				if not v21 then
					return nil
				end

				local ok, result = pcall(function()
					return v21:GetPivot().Position
				end)

				return ok and result or nil
			end

			local function fn48(arg)
				local rfEggWorldAskFieldEggSnapshot = networking:FindFirstChild("RF/EggWorld/AskFieldEggSnapshot")
				if not rfEggWorldAskFieldEggSnapshot or not rfEggWorldAskFieldEggSnapshot:IsA("RemoteFunction") then
					return nil
				end
				local ok, result = pcall(rfEggWorldAskFieldEggSnapshot.InvokeServer, rfEggWorldAskFieldEggSnapshot)
				local records = ok and type(result) == "table" and result.Records or nil
				if type(records) ~= "table" then
					return nil
				end

				for _, record in pairs(records) do
					if type(record) == "table" and record.Uid == arg and typeof(record.BottomCFrame) == "CFrame" then
						return record.BottomCFrame.Position
					end
				end

				return nil
			end

			local function fn49(arg)
				local v21 = workspace:FindFirstChild(arg)
				if not v21 then
					return false
				end

				for _, descendant in ipairs(v21:GetDescendants()) do
					if descendant:IsA("JointInstance") or descendant:IsA("WeldConstraint") or descendant:IsA("RigidConstraint") then
						local ok, result, result2 = pcall(function()
							return descendant.Part0, descendant.Part1
						end)

						if ok then
							for _, v22 in ipairs({ result, result2 }) do
								if typeof(v22) == "Instance" and not v22:IsDescendantOf(v21) then
									local model = v22:FindFirstAncestorOfClass("Model")
									if model and model ~= localPlayer.Character and Players:GetPlayerFromCharacter(model) then
										return true
									end
								end
							end
						end
					end
				end

				return false
			end

			local function fn50(arg, arg2)
				local carryUid = arg2 or tbl4.Steal.CarryUid
				if type(carryUid) ~= "string" then
					return false
				end
				fn22()
				str2 = "Following the egg"
				local n19 = nil
				local vector = Vector3.zero

				local connection = RunService.PreSimulation:Connect(function(deltaTime)
					local v21 = tbl4.Root()
					if not v21 or not n19 or tbl4.Steal.Carrying or fn13(arg) then
						return
					end

					if fn23() then
						if (v21.Position - n19).Magnitude > 2 then
							fn36(n19)
						end

						return
					end

					local n20 = math.max(deltaTime, 0.0041666666666666666)
					local n21 = vector + (n19 - v21.Position) / math.max(0.08, n20)
					local n22 = n2 + vector.Magnitude

					if n22 < n21.Magnitude then
						n21 = n21.Unit * n22
					end

					local assemblyLinearVelocity = n21 + Vector3.new(0, workspace.Gravity * n20 * 0.5, 0)

					pcall(function()
						v21.AssemblyLinearVelocity = assemblyLinearVelocity
						v21.AssemblyAngularVelocity = Vector3.zero
					end)
				end)

				local n20 = 0
				local huge = math.huge
				local v21 = nil
				local v22 = nil
				local n21 = 0
				local huge2 = math.huge
				local n22 = 0
				local flag3

				while true do
					flag3 = false

					if not (n20 < n18) then
						break
					else
						if not fn13(arg) then
							if tbl4.Steal.Carrying then
								flag3 = true
								break
							else
								local v23 = tbl4.Root()

								if v23 then
									local v24 = fn47(carryUid)
									local now, flag4, n23, flag5, v25, result

									if not v24 and huge >= 0.5 then
										v24 = fn48(carryUid)
										local n24 = 0

										if v24 then
											huge = n24

											if v24 then
												now = os.clock()
												flag4 = v21 and v22 and now > v22

												if flag4 then
													n23 = (v24 - v21) / math.max(now - v22, 0.0041666666666666666)

													if n23.Magnitude < 3000 then
														vector = vector:Lerp(n23, 0.3)
													end
												end

												n19 = v24 + Vector3.new(0, 3, 0)
												v21 = v24
												v22 = now
											end

											if n21 >= 0.4 then
												n21 = 0

												if fn49(carryUid) then
													str2 = "Another player took the egg"
													break
												else
													flag5 = n19 and (n19 - v23.Position).Magnitude <= n16 and huge2 >= 0.1

													if flag5 then
														v25 = fn46(n19 - Vector3.new(0, 3, 0), 6, carryUid)

														if v25 then
															pcall(function()
																v25.HoldDuration = 0
															end)

															huge2 = 0
															n22 = 0

															if typeof(fireproximityprompt) == "function" then
																pcall(fireproximityprompt, v25)
															end

															result = RunService.Heartbeat:Wait()
															n20 += result
															huge2 += result
															huge += result
															n21 += result
															continue
														else
															n22 += 1
															huge2 = 0

															if not (n22 >= 20) then
																result = RunService.Heartbeat:Wait()
																n20 += result
																huge2 += result
																huge += result
																n21 += result
																continue
															else
																break
															end
														end
													else
														result = RunService.Heartbeat:Wait()
														n20 += result
														huge2 += result
														huge += result
														n21 += result
														continue
													end
												end
											else
												flag5 = n19 and (n19 - v23.Position).Magnitude <= n16 and huge2 >= 0.1

												if flag5 then
													v25 = fn46(n19 - Vector3.new(0, 3, 0), 6, carryUid)

													if v25 then
														pcall(function()
															v25.HoldDuration = 0
														end)

														huge2 = 0
														n22 = 0

														if typeof(fireproximityprompt) == "function" then
															pcall(fireproximityprompt, v25)
														end

														result = RunService.Heartbeat:Wait()
														n20 += result
														huge2 += result
														huge += result
														n21 += result
														continue
													else
														n22 += 1
														huge2 = 0

														if not (n22 >= 20) then
															result = RunService.Heartbeat:Wait()
															n20 += result
															huge2 += result
															huge += result
															n21 += result
															continue
														else
															break
														end
													end
												else
													result = RunService.Heartbeat:Wait()
													n20 += result
													huge2 += result
													huge += result
													n21 += result
													continue
												end
											end
										end
									else
										if v24 then
											now = os.clock()
											flag4 = v21 and v22 and now > v22

											if flag4 then
												n23 = (v24 - v21) / math.max(now - v22, 0.0041666666666666666)

												if n23.Magnitude < 3000 then
													vector = vector:Lerp(n23, 0.3)
												end
											end

											n19 = v24 + Vector3.new(0, 3, 0)
											v21 = v24
											v22 = now
										end

										if n21 >= 0.4 then
											n21 = 0

											if fn49(carryUid) then
												str2 = "Another player took the egg"
												break
											else
												flag5 = n19 and (n19 - v23.Position).Magnitude <= n16 and huge2 >= 0.1

												if flag5 then
													v25 = fn46(n19 - Vector3.new(0, 3, 0), 6, carryUid)

													if v25 then
														pcall(function()
															v25.HoldDuration = 0
														end)

														huge2 = 0
														n22 = 0

														if typeof(fireproximityprompt) == "function" then
															pcall(fireproximityprompt, v25)
														end

														result = RunService.Heartbeat:Wait()
														n20 += result
														huge2 += result
														huge += result
														n21 += result
														continue
													else
														n22 += 1
														huge2 = 0

														if not (n22 >= 20) then
															result = RunService.Heartbeat:Wait()
															n20 += result
															huge2 += result
															huge += result
															n21 += result
															continue
														else
															break
														end
													end
												else
													result = RunService.Heartbeat:Wait()
													n20 += result
													huge2 += result
													huge += result
													n21 += result
													continue
												end
											end
										else
											flag5 = n19 and (n19 - v23.Position).Magnitude <= n16 and huge2 >= 0.1

											if flag5 then
												v25 = fn46(n19 - Vector3.new(0, 3, 0), 6, carryUid)

												if v25 then
													pcall(function()
														v25.HoldDuration = 0
													end)

													huge2 = 0
													n22 = 0

													if typeof(fireproximityprompt) == "function" then
														pcall(fireproximityprompt, v25)
													end

													result = RunService.Heartbeat:Wait()
													n20 += result
													huge2 += result
													huge += result
													n21 += result
													continue
												else
													n22 += 1
													huge2 = 0

													if not (n22 >= 20) then
														result = RunService.Heartbeat:Wait()
														n20 += result
														huge2 += result
														huge += result
														n21 += result
														continue
													else
														break
													end
												end
											else
												result = RunService.Heartbeat:Wait()
												n20 += result
												huge2 += result
												huge += result
												n21 += result
												continue
											end
										end
									end
								end
							end
						end

						break
					end
				end

				connection:Disconnect()
				fn21()
				return flag3 or tbl4.Steal.Carrying == true
			end

			local function fn51(arg, arg2)
				local position = typeof(arg.CFrame) == "CFrame" and arg.CFrame.Position or nil
				if not position then
					return false
				end

				if tbl4.InsideBase() and not tbl4.InsideBase(position) then
					local v21 = stealHome()

					if v21 then
						str2 = "Leaving the base through the safe zone"
						if not fn35(v21 + Vector3.new(0, 3, 0), arg2, nil, n2) then
							return false
						end
					end
				end

				str2 = "Flying to the egg"
				if not fn35(position + Vector3.new(0, 3, 0), arg2, nil, n2) then
					return false
				end
				str2 = "Taking the egg"
				local v21 = fn44(arg, arg2, 0.6, nil)

				if not v21 and not fn13(arg2) then
					v21 = fn30(arg, arg2)
				end

				if not v21 and not fn31(arg.Uid, arg2) then
					tbl18[arg.Uid] = os.clock() + n7
					return false
				end
				tbl4.Steal.LastFinishedAt = os.clock()
				return true
			end

			local tbl20 = { Uid = nil, Freed = nil, Token = nil }
			local n19 = 3

			local function fn52()
				local world = workspace:FindFirstChild("World") or workspace:FindFirstChild("__OBJECTS")
				world = world and world:FindFirstChild("Areas")
				world = world and world:FindFirstChild("GuardAreas")
				local v21 = tbl4.Root()
				if not world or not v21 then
					return nil
				end
				local str3 = tostring(localPlayer.UserId)
				local carryAreaId = tbl4.Steal.CarryAreaId and fn39({ AreaId = tostring(tbl4.Steal.CarryAreaId) }) or nil
				local huge = math.huge
				local v22 = nil

				for _, child in ipairs(world:GetChildren()) do
					local guard = child:FindFirstChild("Guard")

					if guard then
						if tostring(guard:GetAttribute("TargetPlayer")) == str3 or tostring(guard:GetAttribute("WakeTargetPlayer")) == str3 then
							return guard
						end

						local ok, result = pcall(function()
							return guard:GetPivot().Position
						end)

						if ok then
							local magnitude = (result - v21.Position).Magnitude

							if magnitude < huge then
								v22 = guard
								huge = magnitude
							end
						end
					end
				end

				return carryAreaId or v22
			end

			local function fn53(arg, arg2, arg3)
				local v21 = fn52()
				if not v21 then
					return false
				end
				local v22 = fn42(arg, arg3 + Vector3.new(0, 3, 0))
				local n20 = 0

				while true do
					if not v22.Landed and n20 < n12 and not fn13(arg) then
						local ok, result = pcall(function()
							return v21:GetPivot().Position
						end)

						local v23 = tbl4.Root()

						if not (not ok or not v23) then
							if n15 + 5 < (result - v23.Position).Magnitude then
								local vector = Vector3.new(v23.Position.X - result.X, 0, v23.Position.Z - result.Z)
								local n21 = result + (vector.Magnitude > 0.1 and vector.Unit * n15 or Vector3.zero)

								fn35(Vector3.new(n21.X, result.Y + 3, n21.Z), arg, nil, n2, true, function()
									if v22.Landed then
										return "hit"
									end
									return nil
								end)
							end

							n20 += RunService.Heartbeat:Wait()
							continue
						end
					end

					break
				end

				v22.Stop()
				if not v22.Landed then
					return false
				end
				return fn50(arg, arg2)
			end

			local function fn54(arg)
				local n20 = 0

				while tbl4.AntiGuard.Busy and n20 < 4 and not fn13(arg) do
					str2 = "Anti Guard is slipping past the guard"
					n20 += RunService.Heartbeat:Wait()
				end

				local n21 = 0

				while not tbl4.Steal.Carrying and n21 < n11 and not fn13(arg) do
					str2 = "Checking the egg in hand"
					n21 += RunService.Heartbeat:Wait()
				end

				if not tbl4.Steal.Carrying then
					str2 = "The egg is gone, staying to look for it"
					if not fn50(arg) then
						str2 = "The egg is gone"
						return false
					end
				end

				local v21 = stealHome()
				local v22 = tbl4.Root()
				if not v21 or not v22 then
					return false
				end
				local n22 = math.max(v22.Position.Y, v21.Y) + n5

				local function fn55()
					if tbl20.Uid and tbl20.Freed and tbl4.Steal.Carrying then
						return "priority"
					end
					return nil
				end

				local flag3 = true
				local n23 = 0

				while true do
					local v23 = tbl4.Root()

					if not v23 then
						return false
					else
						str2 = "Flying home"
						local position = v23.Position
						local n24 = math.max(n22, position.Y)
						local v24, v25 = fn35(Vector3.new(position.X + (v21.X - position.X) * 0.25, position.Y + (n24 - position.Y) * 0.7, position.Z + (v21.Z - position.Z) * 0.25), arg, flag3, nil, nil, fn55)

						if v24 then
							v24, v25 = fn35(Vector3.new(v21.X, n24, v21.Z), arg, flag3, nil, nil, fn55)
						end

						if v24 then
							v24, v25 = fn35(v21, arg, flag3, nil, nil, fn55)
						end

						if v24 then
							local character = localPlayer.Character
							character = character and character:FindFirstChildOfClass("Humanoid")

							if character then
								character.PlatformStand = false
							end

							task.wait(0.2)
							if not tbl4.Steal.Carrying then
								str2 = "Arrived without the egg"
								return false
							end
							local eggState = tbl.EggState

							if type(eggState) == "table" and type(eggState.DropFieldEgg) == "function" then
								pcall(eggState.DropFieldEgg, "PlayerRequest")
							end

							return true
						end

						if v25 == "priority" then
							local uid2 = tbl20.Uid
							local freed = tbl20.Freed
							local v26 = tbl20
							tbl20.Uid = nil
							v26.Freed = nil
							local v27 = tbl4.Root()
							if not v27 or not uid2 or not freed then
								return false
							end

							if (freed - v27.Position).Magnitude <= n2 * n19 then
								str2 = "Best egg fell nearby, swapping eggs"
								local eggState = tbl.EggState

								if type(eggState) == "table" and type(eggState.DropFieldEgg) == "function" then
									pcall(eggState.DropFieldEgg, "PlayerRequest")
								end

								local n25 = 0

								while tbl4.Steal.Carrying and n25 < 1 do
									n25 += RunService.Heartbeat:Wait()
								end

								if not fn50(arg, uid2) then
									return false
								end
							else
								str2 = "Best egg fell far away, riding a guard hit to it"
								if not fn53(arg, uid2, freed) then
									return false
								end
							end

							local v28 = tbl4.Root()
							n23 = 0

							if v28 then
								n22 = math.max(v28.Position.Y, v21.Y) + n5
							end

							continue
						end

						if v25 == "dropped" and n23 < n17 then
							n23 += 1
							if not fn50(arg) then
								return false
							end
							continue
						end

						break
					end
				end

				return false
			end

			local function fn55(arg)
				local n20 = tonumber(arg) or 0
				local tbl21 = { "", "K", "M", "B", "T", "Qa", "Qi" }
				local n21 = 1

				while math.abs(n20) >= 1000 and n21 < #tbl21 do
					n20 /= 1000
					n21 += 1
				end

				return string.format(n21 == 1 and "%.0f%s" or "%.2f%s", n20, tbl21[n21])
			end

			local function fn56(arg)
				if not arg then
					return "None"
				end
				local format = string.format
				local str3 = tostring(arg.Category)
				local n20 = tonumber(arg.Scale) or 0
				local v21 = tostring
				})

			fn44("Egg Value Threshold", "Sell eggs worth less than this (0 = off)", v22, function(arg)
				n20 = arg
			end)

			local v30 = nil

			v30 = v12:CreateToggle({
				Name = "Keep Mutated Eggs",
				Note = "Never sell mutated eggs",
				Default = true,
				SubOf = v22,
				Callback = function()
					flag4 = tbl4.Toggle(v30, true)
					tbl3.Wake()
				end,
			})

			fn6(v12:CreateMultiDropdown({
				Name = "Blacklist Sell Eggs",
				Note = "These eggs are never sold",
				Options = tbl26,
				Default = {},
				SubOf = v22,
				Callback = function(arg)
					tbl32 = fn35(arg, tbl27)
					tbl3.Wake()
				end,
			}))
		end

		local save3 = tbl.Save

		if type(save3) == "table" and type(save3.FieldSignal) == "function" then
			for _, v23 in ipairs({ "Inventory", "EggInventory", "EquippedAssets" }) do
				local ok, result = pcall(save3.FieldSignal, v23)

				if ok and type(result) == "table" and type(result.Connect) == "function" then
					local ok2, result2 = pcall(result.Connect, result, function()
						tbl3.Wake()
					end)

					if ok2 and result2 then
						fn4(function()
							pcall(function()
								result2:Disconnect()
							end)
						end)
					end
				end
			end
		end

		local n16
		n16 = 2
		local n17
		n17 = 3
		local n18
		n18 = 20
		local tbl28
		tbl28 = { "Lowest Rarity First", "Highest Rarity First", "Most Copies First", "Lowest Value First" }
		local tbl29
		tbl29 = { "Lowest To Highest", "Highest To Lowest" }
		local tbl30
		tbl30 = {}
		local tbl31
		tbl31 = {}
		local tbl32
		tbl32 = {}
		local tbl33
		tbl33 = {}

		do
			local directory = tbl.Assets and tbl.Assets.Directory
			local tbl34 = {}
			local tbl35 = {}

			if type(directory) == "table" then
				for k, v23 in pairs(directory) do
					local rarity = type(v23) == "table" and v23.Rarity or nil
					local flag3 = type(rarity) == "table"

					if flag3 then
						flag3 = tonumber(rarity.RarityNumber or rarity.Rank)
					end

					flag3 = flag3 or nil

					if flag3 then
						local str3 = tostring(rarity.DisplayName or rarity._id or flag3)
						tbl34[flag3] = tbl34[flag3] or str3

						table.insert(tbl35, {
							Category = tostring(k),
							Name = tostring(v23.DisplayName or k),
							Rarity = flag3,
							RarityName = str3,
						})
					end
				end
			end

			local tbl36 = {}

			for k in pairs(tbl34) do
				table.insert(tbl36, k)
			end

			table.sort(tbl36)

			for _, v23 in ipairs(tbl36) do
				local str3 = string.format("%d - %s", v23, tbl34[v23])
				table.insert(tbl30, str3)
				tbl31[str3] = v23
			end

			table.sort(tbl35, function(arg, arg2)
				if arg.Rarity ~= arg2.Rarity then
					return arg.Rarity < arg2.Rarity
				end
				return arg.Name < arg2.Name
			end)

			for _, v23 in ipairs(tbl35) do
				local str3 = string.format("%s [%s]", v23.Name, v23.RarityName)

				if tbl33[str3] then
					str3 = string.format("%s [%s] (%s)", v23.Name, v23.RarityName, v23.Category)
				end

				table.insert(tbl32, str3)
				tbl33[str3] = v23.Category
			end
		end

		do
			local function fn33(arg)
				for _, v23 in ipairs(tbl30) do
					if tbl31[v23] == arg then
						return v23
					end
				end

				return tbl30[#tbl30]
			end

			local v23 = nil
			local v24 = nil
			local v25 = tbl28[1]
			local v26 = tbl29[1]
			local n19 = 6
			local tbl34 = {}
			local flag3 = true
			local flag4 = true
			local flag5 = false
			local n20 = 0
			local n21 = 0
			local n22 = 0
			local tbl35 = {}

			local function fn34(arg, arg2)
				local v27 = networking:FindFirstChild(arg)
				if not v27 or not v27:IsA("RemoteFunction") then
					return false, nil
				end

				if arg2 == nil then
					return pcall(v27.InvokeServer, v27)
				end
				return pcall(v27.InvokeServer, v27, arg2)
			end

			local function fn35()
				local save4 = tbl.Save
				if type(save4) ~= "table" or type(save4.Get) ~= "function" then
					return nil
				end
				local ok, result = pcall(save4.Get)
				return ok and type(result) == "table" and result or nil
			end

			local function fn36(arg)
				local directory = tbl.Assets and tbl.Assets.Directory
				return type(directory) == "table" and directory[tostring(arg)] or nil
			end

			local function fn37(arg)
				local v27 = fn36(arg)
				local rarity = type(v27) == "table" and v27.Rarity or nil
				local flag6 = type(rarity) == "table"

				if flag6 then
					flag6 = tonumber(rarity.RarityNumber or rarity.Rank)
				end

				return flag6 or math.huge
			end

			local function fn38(arg)
				local v27 = fn36(arg)
				return tostring(type(v27) == "table" and v27.DisplayName or arg)
			end

			local function fn39(arg)
				local v27 = fn36(arg.Category)
				local n23 = type(v27) == "table" and tonumber(v27.EarningRate) or 0
				local n24 = tonumber(arg.Scale) or 0
				if n23 <= 0 or n24 <= 0 then
					return 0
				end
				local n25 = n24 > 5 and (n24 / 5) ^ 1.2 * 19.637875755794113 or n24 ^ 1.85
				local mutations = tbl.Mutations
				local flag6 = type(mutations) == "table" and type(mutations.EarningsFor) == "function"
				local n26 = 1

				if flag6 then
					local ok
					ok, n26 = pcall(mutations.EarningsFor, type(arg.Mutations) == "table" and arg.Mutations or {})
					ok = ok and type(n26) == "number"
					local n27 = 1

					if not ok then
						n26 = n27
					end
				end

				return n23 * n25 * n26
			end

			local function fn40(arg)
				return type(arg) == "table" and next(arg) ~= nil
			end

			local function fn41(arg)
				local n23 = tonumber(arg) or 0
				local tbl36 = { "", "K", "M", "B", "T", "Qa", "Qi" }
				local n24 = 1

				while math.abs(n23) >= 1000 and n24 < #tbl36 do
					n23 /= 1000
					n24 += 1
				end

				return string.format(n24 == 1 and "$%.0f%s" or "$%.2f%s", n23, tbl36[n24])
			end

			local function fn42(arg)
				local fuseKernel = tbl.FuseKernel
				if type(fuseKernel) ~= "table" or type(fuseKernel.PriceFor) ~= "function" then
					return nil
				end
				local ok, result = pcall(fuseKernel.PriceFor, arg)
				return ok and tonumber(result) or nil
			end

			local function fn43(arg, arg2, arg3)
				local flag6 = type(arg2) == "table" and arg2.IsFavorite ~= true and not arg3[arg] and fn37(arg2.Category) <= n19 and (next(tbl34) == nil or tbl34[tostring(arg2.Category)] == true)

				if flag6 then
					flag6 = not (flag3 and fn40(arg2.Mutations))
				end

				if flag6 then
					flag6 = (tbl35[arg] or 0) <= os.clock()
				end

				return flag6
			end

			local function fn44(arg)
				local inventory = type(arg.Inventory) == "table" and arg.Inventory or {}
				local tbl36 = {}
				local v27 = pairs
				local equippedAssets = arg.EquippedAssets or {}

				for _, equippedAsset in v27(equippedAssets) do
					tbl36[equippedAsset] = true
				end

				local tbl37 = {}
				local tbl38 = {}

				for i = 1, 3 do
					local flag6 = type(arg.FusionSlots) == "table" and arg.FusionSlots[i] or nil

					if flag6 ~= nil and type(inventory[flag6]) == "table" then
						table.insert(tbl37, flag6)
						tbl38[flag6] = true
					end
				end

				local tbl39 = {}

				for k, v28 in pairs(inventory) do
					if not tbl38[k] and type(v28) == "table" and v28.InFuse ~= true and fn43(k, v28, tbl36) then
						local str3 = tostring(v28.Category)
						tbl39[str3] = tbl39[str3] or {}
						table.insert(tbl39[str3], { Uid = k, Item = v28, Income = fn39(v28) })
					end
				end

				local function fn45(arg2)
					table.sort(arg2, function(arg3, arg4)
						if arg3.Income ~= arg4.Income then
							if v26 == tbl29[2] then
								return arg3.Income > arg4.Income
							end
							return arg3.Income < arg4.Income
						end

						return tostring(arg3.Uid) < tostring(arg4.Uid)
					end)
				end

				if #tbl37 > 0 then
					local str3 = tostring(inventory[tbl37[1]].Category)
					local flag6 = true

					for _, v28 in ipairs(tbl37) do
						local v29 = inventory[v28]

						if tostring(v29.Category) ~= str3 or not fn43(v28, v29, tbl36) then
							flag6 = false
						end
					end

					local tbl40 = tbl39[str3] or {}

					if flag6 and #tbl37 + #tbl40 >= 3 then
						fn45(tbl40)
						local tbl41 = { Category = str3, Load = {}, Items = {} }

						for _, v28 in ipairs(tbl37) do
							table.insert(tbl41.Items, inventory[v28])
						end

						for i = 1, 3 - #tbl37 do
							table.insert(tbl41.Load, tbl40[i].Uid)
							table.insert(tbl41.Items, tbl40[i].Item)
						end

						return tbl41
					end

					if flag4 then
						return { Category = str3, Eject = tbl37 }
					end
					return nil, "Machine holds pets that cannot finish a fuse"
				end

				local v28 = nil
				local v29 = nil

				for k, v30 in pairs(tbl39) do
					if #v30 >= 3 then
						local v31 = fn37(k)
						local n23 = 0

						for _, v32 in ipairs(v30) do
							n23 += v32.Income
						end

						local tbl40

						if v25 == tbl28[2] then
							tbl40 = { -v31, -#v30 }
						elseif v25 == tbl28[3] then
							tbl40 = { -#v30, v31 }
						elseif v25 == tbl28[4] then
							tbl40 = { n23 / #v30, v31 }
						else
							tbl40 = { v31, -#v30 }
						end

						if v28 == nil or tbl40[1] < v28[1] or tbl40[1] == v28[1] and (tbl40[2] < v28[2] or tbl40[2] == v28[2] and k < v29) then
							v28 = tbl40
							v29 = k
						end
					end
				end

				if not v29 then
					return nil, "No three matching pets"
				end
				local v30 = tbl39[v29]
				fn45(v30)
				local tbl40 = { Category = v29, Load = {}, Items = {} }

				for i = 1, 3 do
					table.insert(tbl40.Load, v30[i].Uid)
					table.insert(tbl40.Items, v30[i].Item)
				end

				return tbl40
			end

			local function fn45(arg)
				local v27 = fn35()
				if not v27 then
					return
				end

				if v27.FusionLocked == true then
					if type(v27.FusionEggReward) == "table" and os.clock() >= n22 then
						n22 = os.clock() + n17
						fn34("RF/Fusery/FinishReveal")
					end

					return
				end

				local v28 = fn44(v27)
				if not v28 then
					return
				end

				if v28.Eject then
					for _, v29 in ipairs(v28.Eject) do
						if arg ~= n20 then
							return
						end
						fn34("RF/Fusery/EjectPet", v29)
						task.wait(0.35)
					end

					return
				end

				local v29 = fn42(v28.Items)
				local num = tonumber(v27.Money)
				if v29 and num and num < v29 then
					return
				end

				for _, v30 in ipairs(v28.Load) do
					if arg ~= n20 then
						return
					end
					local LoadPet, v31 = fn34("RF/Fusery/LoadPet", v30)
					if not LoadPet or v31 == false then
						tbl35[v30] = os.clock() + n18
						return
					end
					task.wait(0.35)
				end

				if arg ~= n20 then
					return
				end
				local BeginFuse, v30 = fn34("RF/Fusery/BeginFuse")

				if BeginFuse and v30 ~= false then
					n22 = os.clock() + n17
				end
			end

			local function fn46(arg)
				if not arg then
					return "Fuse status unknown"
				end

				if arg.FusionLocked == true then
					return "Machine is fusing, waiting for the egg"
				end
				local v27, v28 = fn44(arg)
				if not v27 then
					return v28 or "No three matching pets"
				end

				if v27.Eject then
					return string.format("Would eject %d %s that cannot finish a fuse", #v27.Eject, fn38(v27.Category))
				end
				local v29 = fn42(v27.Items)
				local num = tonumber(arg.Money)
				local str3 = v29 and num and num < v29 and "  (not enough money)" or ""
				return string.format("Next fuse  -  3 %s for %s%s", fn38(v27.Category), v29 and fn41(v29) or "?", str3)
			end

			tbl3.Add(function()
				local v27 = fn35()

				if v24 and type(v24.Set) == "function" then
					pcall(v24.Set, v24, fn46(v27))
				end

				if not tbl4.Toggle(v23, false) or flag5 or os.clock() < n21 then
					return false
				end
				flag5 = true
				n21 = os.clock() + n16
				local v28 = n20

				task.spawn(function()
					pcall(fn45, v28)
					flag5 = false
					tbl3.Wake()
				end)

				return false
			end)

			v24 = v13:CreateText({ Name = "Fuse Preview", Text = "Fuse status unknown" })

			v23 = v13:CreateToggle({
				Name = "Auto Fuse Machine",
				Note = "Fuse 3 same pets into an egg, nonstop",
				Default = false,
				Callback = function()
					n20 += 1
					table.clear(tbl35)
					n21 = 0
					tbl3.Wake()
				end,
			})

			v13:CreateDropdown({
				Name = "Fuse Priority Mode",
				Options = tbl28,
				Default = tbl28[1],
				SubOf = v23,
				Callback = function(arg)
					if table.find(tbl28, arg) then
						v25 = arg
						tbl3.Wake()
					end
				end,
			})

			v13:CreateDropdown({
				Name = "Pets To Use",
				Options = tbl29,
				Default = tbl29[1],
				SubOf = v23,
				Callback = function(arg)
					if table.find(tbl29, arg) then
						v26 = arg
						tbl3.Wake()
					end
				end,
			})

			v13:CreateDropdown({
				Name = "Max Rarity to Fuse",
				Options = tbl30,
				Default = fn33(6),
				SubOf = v23,
				Callback = function(arg)
					n19 = tbl31[arg] or n19
					tbl3.Wake()
				end,
			})

			fn6(v13:CreateMultiDropdown({
				Name = "Specific Species to Fuse",
				Note = "Only fuse these species (empty = all)",
				Options = tbl32,
				Default = {},
				SubOf = v23,
				Callback = function(arg)
					local tbl36 = {}

					if type(arg) == "table" then
						for k, v27 in pairs(arg) do
							k = v27 == true and type(k) == "string" and k
							local flag6

							if k then
								flag6 = k
							else
								flag6 = type(v27) == "string" and v27
							end

							flag6 = flag6 or nil

							if flag6 and tbl33[flag6] then
								tbl36[tbl33[flag6]] = true
							end
						end
					end

					tbl34 = tbl36
					tbl3.Wake()
				end,
			}))

			local v27 = nil

			v27 = v13:CreateToggle({
				Name = "Skip Mutated Pets",
				Default = true,
				SubOf = v23,
				Callback = function()
					flag3 = tbl4.Toggle(v27, true)
					tbl3.Wake()
				end,
			})

			local v28 = nil

			v28 = v13:CreateToggle({
				Name = "Eject Incomplete Slots",
				Note = "Take out pets that can't make a set",
				Default = true,
				SubOf = v23,
				Callback = function()
					flag4 = tbl4.Toggle(v28, true)
					tbl3.Wake()
				end,
			})
		end

		local save4 = tbl.Save

		if type(save4) == "table" and type(save4.FieldSignal) == "function" then
			for _, v23 in ipairs({
				"Inventory",
				"EquippedAssets",
				"FusionSlots",
				"FusionLocked",
				"FusionEggReward",
				"Money",
			}) do
				local ok, result = pcall(save4.FieldSignal, v23)

				if ok and type(result) == "table" and type(result.Connect) == "function" then
					local ok2, result2 = pcall(result.Connect, result, function()
						tbl3.Wake()
					end)

					if ok2 and result2 then
						fn4(function()
							pcall(function()
								result2:Disconnect()
							end)
						end)
					end
				end
			end
		end

		local n19
		n19 = 2
		local n20
		n20 = 25
		local n21
		n21 = 4
		local tbl34
		tbl34 = { "Match Any", "Match All" }
		local str3, tbl35, tbl36, tbl37, tbl38, tbl39, tbl40

		do
			local tbl41 = { "Golden", "Silver", "Rainbow", "Boss", "Monstrous", "Sakura", "GreatBloom" }
			str3 = "Any Mutation"
			tbl35 = { "Off" }
			tbl36 = {}
			tbl37 = {}
			tbl38 = {}
			tbl39 = { "Any Mutation" }
			tbl40 = {}
			local directory = tbl.Assets and tbl.Assets.Directory
			local tbl42 = {}
			local tbl43 = {}

			if type(directory) == "table" then
				for k, v23 in pairs(directory) do
					local rarity = type(v23) == "table" and v23.Rarity or nil
					local flag3 = type(rarity) == "table"

					if flag3 then
						flag3 = tonumber(rarity.RarityNumber or rarity.Rank)
					end

					flag3 = flag3 or nil

					if flag3 then
						local str4 = tostring(rarity.DisplayName or rarity._id or flag3)
						tbl42[flag3] = tbl42[flag3] or str4

						table.insert(tbl43, {
							Category = tostring(k),
							Name = tostring(v23.DisplayName or k),
							Rarity = flag3,
							RarityName = str4,
						})
					end
				end
			end

			local tbl44 = {}

			for k in pairs(tbl42) do
				table.insert(tbl44, k)
			end

			table.sort(tbl44)

			for _, v23 in ipairs(tbl44) do
				local str4 = string.format("%d - %s", v23, tbl42[v23])
				table.insert(tbl35, str4)
				tbl36[str4] = v23
			end

			table.sort(tbl43, function(arg, arg2)
				if arg.Rarity ~= arg2.Rarity then
					return arg.Rarity < arg2.Rarity
				end
				return arg.Name < arg2.Name
			end)

			for _, v23 in ipairs(tbl43) do
				local str4 = string.format("%s [%s]", v23.Name, v23.RarityName)

				if tbl38[str4] then
					str4 = string.format("%s [%s] (%s)", v23.Name, v23.RarityName, v23.Category)
				end

				table.insert(tbl37, str4)
				tbl38[str4] = v23.Category
			end

			local tbl45 = {}
			local mutations = tbl.Mutations

			if type(mutations) == "table" and type(mutations.IdSet) == "table" then
				for k in pairs(mutations.IdSet) do
					table.insert(tbl45, tostring(k))
				end
			end

			if #tbl45 == 0 then
				tbl45 = table.clone(tbl41)
			end

			table.sort(tbl45, function(arg, arg2)
				return fn7(arg) < fn7(arg2)
			end)

			for _, v23 in ipairs(tbl45) do
				local v24 = fn7(v23)
				table.insert(tbl39, v24)
				tbl40[v24] = v23
			end
		end

		do
			local v23 = nil
			local v24 = nil
			local v25 = nil
			local createText = nil
			local v26 = tbl34[2]
			local v27 = nil
			local flag3 = false
			local tbl41 = {}
			local n22 = 0
			local tbl42 = {}
			local flag4 = false
			local n23 = 0
			local tbl43 = {}

			local function fn33()
				local save5 = tbl.Save
				if type(save5) ~= "table" or type(save5.Get) ~= "function" then
					return nil
				end
				local ok, result = pcall(save5.Get)
				return ok and type(result) == "table" and result or nil
			end

			local function fn34(arg)
				local directory = tbl.Assets and tbl.Assets.Directory
				return type(directory) == "table" and directory[tostring(arg)] or nil
			end

			local function fn35(arg)
				local v28 = fn34(arg)
				local rarity = type(v28) == "table" and v28.Rarity or nil
				local flag5 = type(rarity) == "table"

				if flag5 then
					flag5 = tonumber(rarity.RarityNumber or rarity.Rank)
				end

				return flag5 or 0
			end

			local function fn36(arg)
				local v28 = fn34(arg.Category)
				local n24 = type(v28) == "table" and tonumber(v28.EarningRate) or 0
				local n25 = tonumber(arg.Scale) or 0
				if n24 <= 0 or n25 <= 0 then
					return 0
				end
				local n26 = n25 > 5 and (n25 / 5) ^ 1.2 * 19.637875755794113 or n25 ^ 1.85
				local mutations = tbl.Mutations
				local flag5 = type(mutations) == "table" and type(mutations.EarningsFor) == "function"
				local n27 = 1

				if flag5 then
					local ok
					ok, n27 = pcall(mutations.EarningsFor, type(arg.Mutations) == "table" and arg.Mutations or {})
					local flag6 = ok and type(n27) == "number"
					local n28 = 1

					if not flag6 then
						n27 = n28
					end
				end

				return n24 * n26 * n27
			end

			local function fn37(arg)
				local tbl44 = {}

				if type(arg.Mutations) == "table" then
					for k, mutation in pairs(arg.Mutations) do
						if type(mutation) == "string" then
							tbl44[mutation] = true
						elseif mutation == true and type(k) == "string" then
							tbl44[k] = true
						end
					end
				end

				if type(arg.BaseMutation) == "string" and arg.BaseMutation ~= "" then
					tbl44[arg.BaseMutation] = true
				end

				return tbl44
			end

			local function fn38(arg)
				if tbl42[tostring(arg.Category)] then
					return true
				end
				local n24 = 0
				local n25 = 0

				if v27 then
					n24 = 1

					if v27 <= fn35(arg.Category) then
						n25 = 1
					end
				end

				if flag3 or next(tbl41) ~= nil then
					n24 += 1
					local v28 = fn37(arg)

					if flag3 and next(v28) ~= nil then
						n25 += 1
					else
						local flag5 = false

						for k in pairs(v28) do
							if tbl41[k] then
								flag5 = true
								break
							end
						end

						if flag5 then
							n25 += 1
						end
					end
				end

				if n22 > 0 then
					n24 += 1

					if n22 <= fn36(arg) then
						n25 += 1
					end
				end

				if n24 == 0 then
					return false
				end

				if v26 == tbl34[2] then
					return n25 == n24
				end
				return n25 > 0
			end

			local function fn39(arg)
				return (tbl43[arg] or 0) > os.clock()
			end

			local function fn40(arg)
				local tbl44 = {}
				local v28, v29, v30 = pairs(arg.I			end
			local huge = math.huge
			local v15 = nil

			for _, v16 in ipairs(fn44()) do
				local magnitude = ((fn43(v16) or v16.Position) - v14.Position).Magnitude
				local v17 = str3

				if v17 == "Rare First" then
					if v16.Tier == "AugmentedDrone" then
						magnitude -= 200000
					elseif v16.Tier == "ReactorDrone" then
						magnitude -= 100000
					end
				elseif v17 == "Most HP First" then
					magnitude -= (tonumber(v16.Health) or 0) * 100000
				end

				if magnitude < huge then
					huge = magnitude
					v15 = v16
				end
			end

			return v15
		end

		local fn46

		do
			local function fn47()
				local v14 = fn24()
				if not v14 then
					return nil, nil
				end
				local serverTimeNow = workspace:GetServerTimeNow()
				local huge = math.huge
				local v15 = nil
				local v16 = nil

				for k, v17 in pairs(tbl10) do
					if v17.ExpiresAt and v17.ExpiresAt < serverTimeNow then
						tbl10[k] = nil
					else
						local magnitude = (v17.Position - v14.Position).Magnitude

						if v17.Kind == "Part" then
							magnitude -= 100000
						end

						if magnitude < huge then
							huge = magnitude
							v15 = k
							v16 = v17
						end
					end
				end

				return v15, v16
			end

			fn13 = function()
				if not tbl22.Link then
					if tbl22.SwapWait then
						tbl22.SwapWait = nil
						tbl4.Shield("scramble", false)
					end

					return
				end

				tbl22.Link:Disconnect()
				local v14 = tbl22
				local v15 = tbl22
				local v16 = tbl22
				tbl22.Link = nil
				v14.Goal = nil
				v15.Look = nil
				v16.Character = nil
				local v17 = tbl22
				local v18 = tbl22
				local v19 = tbl22
				local v20 = tbl22
				tbl22.Track = nil
				v17.Dir = nil
				v18.Last = nil
				v19.LastAt = nil
				v20.Vel = nil
				tbl4.Driving = math.max(0, tbl4.Driving - 1)
				tbl4.Shield("scramble", false)
			end

			fn4(fn13)

			fn46 = function(goal, look, track)
				if track ~= tbl22.Track then
					local v14 = tbl22
					local v15 = tbl22
					tbl22.Last = nil
					v14.LastAt = nil
					v15.Vel = nil
				end

				local v14 = tbl22
				local v15 = tbl22
				tbl22.Goal = goal
				v14.Look = look
				v15.Track = track
				local character = localPlayer.Character

				if tbl22.Link and tbl22.Character ~= character then
					fn13()
					local v16 = tbl22
					local v17 = tbl22
					tbl22.Goal = goal
					v16.Look = look
					v17.Track = track
				end

				if tbl22.Link or not character then
					return
				end

				if not tbl4.Swapped() then
					tbl4.Shield("scramble", true)
					tbl22.SwapWait = tbl22.SwapWait or os.clock() + 6
					local swapWait = tbl22.SwapWait
					if os.clock() < swapWait then
						str = "Waiting for the character to settle"
						return
					end
				end

				if tbl22.SwapWait then
					tbl22.SwapWait = nil
				else
					tbl4.Shield("scramble", true)
				end

				tbl22.Character = character
				tbl4.Driving = tbl4.Driving + 1

				tbl22.Link = RunService.Heartbeat:Connect(function(deltaTime)
					local v16 = tbl4.Root()
					local goal2 = tbl22.Goal
					if not v16 or not goal2 or v16.Parent ~= tbl22.Character or tbl4.AntiGuard.Busy or tbl4.Movement.Owner ~= "scramble" then
						return
					end
					local position = v16.Position

					if tbl22.Track then
						local ok, last = pcall(tbl22.Track)

						if ok and typeof(last) == "Vector3" then
							local now = os.clock()

							if not tbl22.Last or not tbl22.LastAt then
								local v17 = tbl22
								tbl22.Last = last
								v17.LastAt = now
							elseif (last - tbl22.Last).Magnitude > 0.01 then
								local n22 = math.max(now - tbl22.LastAt, 0.0041666666666666666)
								local n23 = (last - tbl22.Last) / n22

								if n23.Magnitude < 400 then
									local n24 = math.clamp(n22 * 12, 0.2, 0.8)
									tbl22.Vel = tbl22.Vel and tbl22.Vel:Lerp(n23, n24) or n23
								end

								local v17 = tbl22
								tbl22.Last = last
								v17.LastAt = now
							elseif now - tbl22.LastAt > 0.25 and tbl22.Vel then
								tbl22.Vel = tbl22.Vel:Lerp(Vector3.zero, math.clamp(deltaTime * 6, 0, 1))
							end

							local vel = tbl22.Vel or Vector3.zero
							local look2 = tbl22.Last + vel * (math.clamp(now - tbl22.LastAt, 0, 0.25) + 0.1)
							local vector = Vector3.new(position.X - look2.X, 0, position.Z - look2.Z)

							if vector.Magnitude > 0.5 then
								local unit = vector.Unit
								local n22 = math.clamp(deltaTime * 5, 0, 1)
								local dir = tbl22.Dir and tbl22.Dir:Lerp(unit, n22) or unit
								tbl22.Dir = dir.Magnitude > 0.01 and dir.Unit or unit
							end

							goal2 = look2 + (tbl22.Dir or Vector3.new(0, 0, 1)) * n11 + Vector3.new(0, -1, 0)
							local v17 = tbl22
							tbl22.Goal = goal2
							v17.Look = look2

							if (goal2 - position).Magnitude <= 40 then
								local n22 = math.max(deltaTime, 0.0041666666666666666)
								local n23 = vel + (goal2 - position) / math.max(0.1, n22)
								local n24 = math.max(n9, vel.Magnitude + 80)

								if n24 < n23.Magnitude then
									n23 = n23.Unit * n24
								end

								local assemblyLinearVelocity = n23 + Vector3.new(0, workspace.Gravity * n22 * 0.5, 0)
								local vector2 = Vector3.new(look2.X - position.X, 0, look2.Z - position.Z)

								pcall(function()
									if vector2.Magnitude > 0.05 then
										v16.CFrame = CFrame.lookAt(position, position + vector2.Unit)
									end

									v16.AssemblyLinearVelocity = assemblyLinearVelocity
									v16.AssemblyAngularVelocity = Vector3.zero
								end)

								return
							end
						end
					end

					local vector

					if Vector3.new(goal2.X - position.X, 0, goal2.Z - position.Z).Magnitude > 250 then
						local n22 = math.max(n14, goal2.Y)
						vector = position.Y < n22 - 2 and Vector3.new(position.X, n22, position.Z) or Vector3.new(goal2.X, n22, goal2.Z)
					else
						vector = goal2
					end

					local n22 = vector - position
					local n23 = n9 * deltaTime
					vector = n22.Magnitude <= n23 and vector or position + n22.Unit * n23
					local look2 = tbl22.Look or goal2
					local vector2 = Vector3.new(look2.X - vector.X, 0, look2.Z - vector.Z)
					local cframe = vector2.Magnitude > 0.05 and CFrame.lookAt(Vector3.zero, vector2.Unit) or v16.CFrame.Rotation

					pcall(function()
						v16.CFrame = CFrame.new(vector) * cframe
						v16.AssemblyLinearVelocity = Vector3.zero
						v16.AssemblyAngularVelocity = Vector3.zero
					end)
				end)
			end

			local function fn48(arg)
				if typeof(arg) ~= "Instance" or not arg:IsA("Tool") then
					return false
				end
				local attribute = arg:GetAttribute("GearName")
				local gears = tbl.Gears
				local directory = type(gears) == "table" and gears.Directory or nil
				local flag4 = type(attribute) == "string" and type(directory) == "table" and directory[attribute] or nil
				return type(flag4) == "table" and (flag4.ToolController == "Slap" or flag4.SlapPower ~= nil)
			end

			local function fn49(arg)
				if typeof(arg) ~= "Instance" or not arg:IsA("Tool") then
					return false
				end

				if tostring(arg:GetAttribute("ItemType")) ~= "Gear" then
					return false
				end
				local str5 = tostring(arg:GetAttribute("GearName") or "")
				if str5 == "" then
					return false
				end
				return string.find(string.lower(str5), "scrambler", 1, true) ~= nil
			end

			local function fn50()
				return localPlayer.Character, localPlayer:FindFirstChildOfClass("Backpack")
			end

			local function fn51()
				local v14 = tbl4.FindBat()
				if v14 then
					return v14
				end
				local v15, v16 = fn50()

				for _, v17 in ipairs({ v15, v16 }) do
					if v17 then
						for _, child in ipairs(v17:GetChildren()) do
							if fn48(child) or fn49(child) then
								return child
							end
						end
					end
				end

				return nil
			end

			tbl19.Valid = function(arg)
				if typeof(arg) ~= "Instance" or not arg:IsA("Tool") then
					return false
				end
				return tbl4.IsBatTool(arg) or fn48(arg) or fn49(arg)
			end

			tbl19.Owned = function(arg)
				if typeof(arg) ~= "Instance" or not arg:IsA("Tool") then
					return false
				end
				local v14, v15 = fn50()
				local parent = arg.Parent
				return parent ~= nil and (parent == v14 or parent == v15)
			end

			tbl19.Name = function(arg)
				if fn49(arg) then
					return "The Scrambler"
				end
				return tostring(arg:GetAttribute("GearName") or arg.Name)
			end

			tbl19.Put = function(arg, arg2, parent)
				local equipAt = tbl19.EquipAt
				if os.clock() - equipAt < 0.4 then
					return false
				end
				tbl19.EquipAt = os.clock()

				pcall(function()
					arg2:EquipTool(arg)
				end)

				if arg.Parent ~= parent then
					pcall(function()
						arg.Parent = parent
					end)
				end

				return arg.Parent == parent
			end

			local function fn52()
				local character = localPlayer.Character
				local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
				if not character or not humanoid or humanoid.Health <= 0 then
					return nil, false
				end
				local tool = character:FindFirstChildWhichIsA("Tool")

				if tool ~= nil and tbl19.Valid(tool) then
					tbl19.Tool = tool
					str2 = tbl19.Name(tool)
					return tool, true
				end

				if not tbl19.Owned(tbl19.Tool) then
					tbl19.Tool = fn51()
				end

				local tool2 = tbl19.Tool
				if not tool2 then
					str2 = ""
					return nil, false
				end
				str2 = tbl19.Name(tool2)
				tbl19.Put(tool2, humanoid, character)
				return tool2, tool2.Parent == character
			end

			local function fn53()
				local v14, v15 = fn52()

				if v14 and v15 then
					if flag3 then
						pcall(function()
							v14:Activate()
						end)

						task.defer(function()
							pcall(function()
								v14:Deactivate()
							end)
						end)
					else
						pcall(function()
							v14:Deactivate()
							v14:Activate()
						end)
					end
				end

				return v14 ~= nil
			end

			local function fn54()
				local v14, v15 = fn50()
				local v16 = nil
				local v17 = nil
				local v18 = nil

				for _, v19 in ipairs({ v14, v15 }) do
					if v19 then
						for _, child in ipairs(v19:GetChildren()) do
							if tbl19.Valid(child) then
								if fn49(child) then
									v16 = v16 or child
								elseif tbl4.IsBatTool(child) and (v17 == nil or not tbl4.IsBatTool(v17)) then
									if v18 then
										v17 = child
									else
										v18 = v17
										v17 = child
									end
								elseif v17 == nil then
									v17 = child
								elseif v18 == nil then
									v18 = child
								end
							end
						end
					end
				end

				return v17, v16 or v18
			end

			local function fn55(arg)
				pcall(function()
					arg:Activate()
				end)

				task.defer(function()
					pcall(function()
						arg:Deactivate()
					end)
				end)
			end

			tbl20.SpamUntil = 0
			tbl20.List = {}
			tbl20.Dirty = true
			tbl20.BuiltAt = 0
			tbl20.NextBag = 0
			tbl20.Links = {}

			tbl20.Click = function(arg)
				pcall(arg.Deactivate, arg)
				pcall(arg.Activate, arg)
			end

			tbl20.Rebuild = function()
				tbl20.Dirty = false
				tbl20.BuiltAt = os.clock()
				table.clear(tbl20.List)
				local v14, v15 = fn50()

				for _, v16 in ipairs({ v14, v15 }) do
					if v16 then
						for _, child in ipairs(v16:GetChildren()) do
							if tbl19.Valid(child) then
								tbl20.List[#tbl20.List + 1] = child
							end
						end
					end
				end
			end

			tbl20.Beat = RunService.Heartbeat:Connect(function()
				local now = os.clock()
				if now >= tbl20.SpamUntil then
					return
				end

				if tbl20.Dirty or now - tbl20.BuiltAt > 1 then
					tbl20.Rebuild()
				end

				local character = localPlayer.Character
				local flag4 = now >= tbl20.NextBag

				if flag4 then
					tbl20.NextBag = now + 0.25
				end

				for _, v14 in ipairs(tbl20.List) do
					local parent = v14.Parent

					if parent == character then
						tbl20.Click(v14)
					elseif flag4 and parent ~= nil then
						tbl20.Click(v14)
					end
				end
			end)

			tbl20.Unwatch = function()
				for i = #tbl20.Links, 1, -1 do
					pcall(function()
						tbl20.Links[i]:Disconnect()
					end)

					tbl20.Links[i] = nil
				end
			end

			tbl20.Watch = function(arg)
				tbl20.Unwatch()
				tbl20.Dirty = true
				if not arg then
					return
				end

				tbl20.Links[#tbl20.Links + 1] = arg.ChildAdded:Connect(function(child)
					if not child:IsA("Tool") then
						return
					end
					tbl20.Dirty = true
					local spamUntil = tbl20.SpamUntil

					if os.clock() < spamUntil and tbl19.Valid(child) then
						tbl20.Click(child)
						task.defer(tbl20.Click, child)
					end
				end)

				tbl20.Links[#tbl20.Links + 1] = arg.ChildRemoved:Connect(function(child)
					if child:IsA("Tool") then
						tbl20.Dirty = true
					end
				end)

				task.defer(function()
					local backpack = localPlayer:FindFirstChildOfClass("Backpack") or localPlayer:WaitForChild("Backpack", 5)

					if backpack and localPlayer.Character == arg then
						tbl20.Links[#tbl20.Links + 1] = backpack.ChildAdded:Connect(function()
							tbl20.Dirty = true
						end)

						tbl20.Links[#tbl20.Links + 1] = backpack.ChildRemoved:Connect(function()
							tbl20.Dirty = true
						end)
					end
				end)
			end

			tbl20.Watch(localPlayer.Character)
			tbl20.CharLink = localPlayer.CharacterAdded:Connect(tbl20.Watch)

			fn4(function()
				tbl20.SpamUntil = 0
				tbl20.Unwatch()

				for _, v14 in ipairs({ "Beat", "CharLink" }) do
					if tbl20[v14] then
						pcall(function()
							tbl20[v14]:Disconnect()
						end)

						tbl20[v14] = nil
					end
				end
			end)

			local function fn56()
				local character = localPlayer.Character
				local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
				if not character or not humanoid or humanoid.Health <= 0 then
					return false
				end
				local v14, v15 = fn54()
				if not v14 or not v15 then
					return fn53()
				end
				local tbl28 = { v14, v15 }
				local tbl29 = { n12, n13 }
				local v16 = tbl28[tbl20.Index]

				if tbl20.Tool ~= v16 then
					local v17 = tbl20
					local v18 = tbl20
					local now = os.clock()
					v17.Tool = v16
					v18.Since = now
				end

				local flag4 = v16.Parent == character

				if flag4 then
					local since = tbl20.Since
					flag4 = os.clock() - since >= tbl29[tbl20.Index]
				end

				if flag4 then
					tbl20.Index = tbl20.Index == 1 and 2 or 1
					v16 = tbl28[tbl20.Index]
					local v17 = tbl20
					local v18 = tbl20
					local now = os.clock()
					v17.Tool = v16
					v18.Since = now
				end

				tbl19.Tool = v16
				str2 = tbl19.Name(v16)

				if v16.Parent ~= character then
					pcall(function()
						humanoid:EquipTool(v16)
					end)

					if v16.Parent ~= character then
						pcall(function()
							v16.Parent = character
						end)
					end

					tbl20.Since = os.clock()

					if v16.Parent == character then
						fn55(v16)
						task.defer(fn55, v16)
					end

					return true
				end

				fn55(v16)
				return true
			end

			local function fn57(arg, arg2, arg3)
				local now = os.clock()
				local n22 = now + n17

				while os.clock() < n22 and not arg() do
					local v14, v15 = fn47()
					local flag4 = not v15

					if not flag4 then
						if arg2 then
							flag4 = (v15.Position - arg2).Magnitude > (arg3 or 40)
						else
							flag4 = arg2
						end
					end

					if flag4 then
						if arg2 and os.clock() - now < 1.2 then
							task.wait(0.1)
							continue
						end
						return
					end

					if fn30() and not fn30(v15.Position) then
						fn13()
						str = "Leaving the base through the safe zone"
						if not fn33(v15.Position + Vector3.new(0, 2.5, 0), arg, 6) then
							return
						end
						continue
					end

					str = v15.Kind == "Part" and "Picking up a Drone Part" or "Picking up Samples"
					fn46(v15.Position + Vector3.new(0, 2.5, 0), v15.Position)
					local n23 = os.clock() + 2.5

					while tbl10[v14] and os.clock() < n23 and not arg() do
						task.wait(0.1)
					end

					tbl10[v14] = nil
					n22 = os.clock() + 1.2
				end
			end

			local function fn58(arg, arg2)
				local now = os.clock()
				local n22 = tonumber(arg.Health) or 0
				local now2 = nil
				local now3 = nil
				local fn59 = nil
				local flag4 = false

				while not arg2() do
					local v14 = tbl9[arg.Id]
					local flag5 = not v14
					local flag6

					if flag5 then
						flag6 = flag5
					else
						flag6 = (tonumber(v14.Health) or 0) <= 0
					end

					if flag6 then
						return true
					end
					local v15 = fn41(arg.Id)
					if v15 and v15:GetAttribute("DroneState") == "Death" then
						tbl9[arg.Id] = nil
						return true
					end
					local v16 = fn24()
					local flag7 = v16 ~= nil and v14.Position ~= nil

					if flag7 then
						flag7 = (v16.Position - (fn43(v14) or v14.Position)).Magnitude <= 30
					end

					if flag7 and not v15 then
						now2 = now2 or os.clock()
						if os.clock() - now2 > 1.5 then
							tbl9[arg.Id] = nil
							return false
						end
					else
						now2 = nil
					end

					local n23 = tonumber(v14.Health) or 0

					if n23 ~= n22 then
						now3 = nil
						n22 = n23
					end

					if n16 < os.clock() - now then
						tbl12[arg.Id] = os.clock() + 30
						return false
					end
					local position = fn43(v14) or v14.Position
					local v17 = fn24()
					if not v17 then
						return false
					end

					if fn30() and not fn30(position) then
						fn13()
						str = "Leaving the base through the safe zone"
						if not fn33(position, arg2, 12) then
							return false
						end

						if arg2() then
							return false
						end
					end

					if not fn59 then
						local v18 = nil
						local isBasePart = nil

						fn59 = function()
							local v19 = tbl9[arg.Id]
							if not v19 then
								return nil
							end

							if not v18 or not v18.Parent then
								v18 = fn41(arg.Id)
								local hitbox = v18 and v18:FindFirstChild("Hitbox")
								isBasePart = hitbox and hitbox:IsA("BasePart") and hitbox or v18 and v18.PrimaryPart or nil
							end

							if isBasePart and isBasePart.Parent then
								return isBasePart.Position
							end
							return v19.Position
						end
					end

					if flag3 then
						fn46(position + Vector3.new(0, -1, n11), position, fn59)
					else
						fn46(position + Vector3.new(0, -1, 5), position)
					end

					if (v17.Position - position).Magnitude <= 60 and not flag3 then
						fn52()
					end

					local flag8 = (v17.Position - position).Magnitude <= (flag3 and math.max(12, n11 + 7) or 12)

					if flag8 then
						if flag3 then
							tbl20.SpamUntil = os.clock() + 0.2
						end

						now3 = now3 or os.clock()
						if os.clock() - now3 > 8 then
							tbl12[arg.Id] = os.clock() + 30
							return false
						end

						if flag3 and fn56() or not flag3 and fn53() then
							str = string.format("Smashing %s  %d HP", v14.Tier ~= "" and v14.Tier or "drone", math.max(0, tonumber(v14.Health) or 0))
						elseif not flag4 then
							str = "No bat found, get any bat to smash drones"
							flag4 = true
						end
					else
						str = "Flying to a drone"
					end

					local wait = task.wait
					local v18 = flag3

					if not flag3 then
						flag8 = v18
					end

					wait(flag8 and 0.03 or 0.1)
				end

				return false
			end

			local function fn59(arg)
				for _, v14 in ipairs(tbl21) do
					if arg() then
						return false
					end
					str = "Looking for drones"
					fn46(v14)
					local n22 = os.clock() + 12

					while os.clock() < n22 and not arg() do
						fn42()
						if #fn44() > 0 then
							return true
						end

						if tbl4.DistanceTo(v14) < 8 then
							break
						end
						task.wait(0.2)
					end
				end

				return #fn44() > 0
			end

			local function fn60()
				local serverTimeNow = workspace:GetServerTimeNow()
				local v14, v15 = fn10()
				if v14 and v15 and v15 < 25 then
					return next(tbl10) ~= nil
				end

				for _, v16 in pairs(tbl10) do
					if v16.Kind == "Part" or v16.ExpiresAt and v16.ExpiresAt - serverTimeNow < 30 then
						return true
					end
				end

				return false
			end

			local v14 = nil

			local function fn61()
				local window = type(s
		local function fn21(arg)
			if flag3 and arg.Parent and arg.Health > 0 and arg.Health < arg.MaxHealth then
				pcall(function()
					arg.Health = arg.MaxHealth
				end)
			end
		end

		local function fn22(arg)
			fn20()
			if not flag3 or not arg then
				return
			end
			local humanoid = arg:FindFirstChildOfClass("Humanoid") or arg:WaitForChild("Humanoid", 5)
			if not flag3 or not humanoid or not humanoid:IsA("Humanoid") or arg ~= localPlayer.Character then
				return
			end

			table.insert(tbl17, humanoid.HealthChanged:Connect(function()
				fn21(humanoid)
			end))

			table.insert(tbl17, RunService.Heartbeat:Connect(function()
				fn21(humanoid)
			end))

			fn21(humanoid)
		end

		local connection = localPlayer.CharacterAdded:Connect(function(character)
			if flag3 then
				task.defer(fn22, character)
			end
		end)

		local v14 = tbl4.OnHumanoidChanged(function()
			if flag3 and localPlayer.Character then
				fn22(localPlayer.Character)
			end
		end)

		fn4(function()
			flag3 = false
			connection:Disconnect()
			v14:Disconnect()
			fn20()
		end)

		flag3 = true

		if localPlayer.Character then
			task.spawn(fn22, localPlayer.Character)
		end
	end

	do
		local v14 = nil
		local flag3 = true
		local tbl17 = {}
		local tbl18 = {}

		local function fn20(arg)
			if arg:IsA("BasePart") and tbl17[arg] == nil then
				tbl17[arg] = arg.CanTouch

				pcall(function()
					arg.CanTouch = false
				end)
			end
		end

		local function fn21(arg)
			if not flag3 or not arg.Parent then
				return
			end
			local name = localPlayer.Name
			if arg:GetAttribute("Owner") == name then
				return
			end
			fn20(arg)

			for _, descendant in ipairs(arg:GetDescendants()) do
				fn20(descendant)
			end

			table.insert(tbl18, arg.DescendantAdded:Connect(function(descendant)
				if flag3 then
					fn20(descendant)
				end
			end))
		end

		local function fn22()
			for _, v15 in ipairs(CollectionService:GetTagged("PlacedTrap")) do
				fn21(v15)
			end
		end

		local function fn23()
			for k, v15 in pairs(tbl17) do
				if k.Parent then
					pcall(function()
						k.CanTouch = v15
					end)
				end
			end

			table.clear(tbl17)
		end

		table.insert(tbl18, CollectionService:GetInstanceAddedSignal("PlacedTrap"):Connect(function(arg)
			task.defer(fn21, arg)
		end))

		v14 = v11:CreateToggle({
			Name = "Anti Trap",
			Note = "Traps from other players cannot catch you",
			Default = true,
			Callback = function()
				flag3 = tbl4.Toggle(v14, true) == true

				if flag3 then
					fn22()
				else
					fn23()
				end
			end,
		})

		fn22()

		fn4(function()
			flag3 = false

			for _, v15 in ipairs(tbl18) do
				pcall(function()
					v15:Disconnect()
				end)
			end

			table.clear(tbl18)
			fn23()
		end)
	end

	do
		local v14 = nil
		local str2 = "CarryAreaEgg"
		local tbl17 = { ClaimLostPart = true }
		local tbl18 = {}
		local connection = nil
		local connection2 = nil

		local function fn20(arg)
			if not arg:IsA("ProximityPrompt") or tbl17[arg.Name] then
				return
			end

			if tbl18[arg] == nil then
				if arg.HoldDuration <= 0 and arg.Name ~= str2 then
					return
				end
				tbl18[arg] = arg.HoldDuration
			end

			if arg.HoldDuration ~= 0 then
				pcall(function()
					arg.HoldDuration = 0
				end)
			end
		end

		local function fn21(arg)
			if arg.Name ~= "SmartPromptPart" then
				return nil
			end
			local carryAreaEgg = arg:FindFirstChild("CarryAreaEgg")
			return carryAreaEgg and carryAreaEgg:IsA("ProximityPrompt") and carryAreaEgg or nil
		end

		tbl4.PromptHold = function(arg)
			local v15 = tbl18[arg]
			if type(v15) == "number" then
				return v15
			end
			return arg.HoldDuration
		end

		local function fn22()
			if connection then
				return
			end

			connection2 = ProximityPromptService.PromptShown:Connect(function(arg)
				if tbl4.Toggle(v14, true) then
					fn20(arg)
				end
			end)

			for _, child in ipairs(workspace:GetChildren()) do
				local v15 = fn21(child)

				if v15 then
					fn20(v15)
				end
			end

			connection = workspace.ChildAdded:Connect(function(child)
				if child.Name ~= "SmartPromptPart" then
					return
				end

				task.defer(function()
					local carryAreaEgg = child:FindFirstChild("CarryAreaEgg") or child:WaitForChild("CarryAreaEgg", 2)

					if carryAreaEgg and carryAreaEgg:IsA("ProximityPrompt") and tbl4.Toggle(v14, true) then
						fn20(carryAreaEgg)
					end
				end)
			end)
		end

		local function fn23()
			for k, v15 in pairs(tbl18) do
				if k and k.Parent then
					pcall(function()
						k.HoldDuration = v15
					end)
				end
			end

			table.clear(tbl18)

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end
		end

		tbl4.PressStealPrompt = function(arg)
			if typeof(fireproximityprompt) ~= "function" or not arg then
				return false
			end
			local v15 = nil
			local huge = math.huge

			for _, child in ipairs(workspace:GetChildren()) do
				local v16 = fn21(child)

				if v16 and child:IsA("BasePart") then
					local magnitude = (child.Position - arg).Magnitude

					if magnitude < huge then
						v15 = v16
						huge = magnitude
					end
				end
			end

			if not v15 or huge > 14 then
				return false
			end

			if tbl4.Toggle(v14, true) then
				pcall(function()
					v15.HoldDuration = 0
				end)
			end

			local ok = pcall(fireproximityprompt, v15)

			if ok and v15.HoldDuration > 0 then
				task.wait(v15.HoldDuration + 0.1)
			end

			return ok
		end

		tbl3.Add(function()
			if tbl4.Toggle(v14, true) then
				fn22()

				for k in pairs(tbl18) do
					if not k.Parent then
						tbl18[k] = nil
					elseif k.HoldDuration ~= 0 then
						pcall(function()
							k.HoldDuration = 0
						end)
					end
				end
			elseif next(tbl18) ~= nil or connection then
				fn23()
			end

			return false
		end)

		v14 = v11:CreateToggle({
			Name = "Instant Prompts",
			Default = true,
			Callback = function()
				tbl3.Wake()
			end,
		})

		fn4(fn23)
	end

	tbl4.Combat = {}
	local combat
	combat = tbl4.Combat
	local n9, n10, n11, n12, n13, n14, n15, n16, n17, tbl17

	do
		local n18 = 15
		local n19 = 2
		n9 = 0.05
		n10 = 1
		n11 = 0.18
		n12 = -0.275
		n13 = 0.6
		n14 = 6
		n15 = 1.1
		n16 = 0.8
		n17 = 2.5
		local n20 = 35
		local n21 = 0.12
		local n22 = 6
		local n23 = 6
		local n24 = 3
		local tbl18 = { 0.12, 0.2, 0.28, 0.36, 0.46, 0.6 }
		local tbl19 = { ["WALL LEFT"] = true, ["WALL RIGHT"] = true }

		tbl17 = {
			Trigger = nil,
			LastFire = 0,
			Trace = 0,
			EquipAt = 0,
			Walls = {},
			WallsAt = 0,
			WallSide = setmetatable({}, { __mode = "k" }),
			Tracks = setmetatable({}, { __mode = "k" }),
			Stats = {},
			Option = 3,
			Pending = {},
			Holders = {},
			SpawnRagdoll = nil,
		}

		for i = 1, #tbl18 do
			tbl17.Stats[i] = { Hits = 0, Shots = 0 }
		end

		local raycastParams = RaycastParams.new()
		raycastParams.FilterType = Enum.RaycastFilterType.Exclude

		pcall(function()
			raycastParams.RespectCanCollide = true
		end)

		local function fn20()
			return workspace:GetServerTimeNow()
		end

		local function fn21()
			local trigger = tbl17.Trigger
			if trigger and trigger.Parent then
				return trigger
			end
			local reBatSwingTrigger = networking:FindFirstChild("RE/BatSwing/Trigger")
			tbl17.Trigger = reBatSwingTrigger
			return reBatSwingTrigger
		end

		local function fn22(arg)
			return tonumber(arg:GetAttribute("RagdollEndTime")) or 0
		end

		combat.SetLead = function(arg)
			n12 = math.clamp((tonumber(arg) or -275) / 1000, -0.4, 0.1)
		end

		combat.SetSweep = function(arg)
			n13 = math.clamp((tonumber(arg) or 60) / 100, 0, 2.5)
		end

		combat.Ragdolled = function(arg)
			return fn22(arg) > fn20()
		end

		combat.SelfRagdolled = function()
			local v14 = fn22(localPlayer)
			if v14 <= fn20() then
				return false
			end
			return v14 ~= tbl17.SpawnRagdoll
		end

		combat.Humanoid = function(arg)
			if not arg then
				return nil
			end
			local v14 = nil

			for _, child in ipairs(arg:GetChildren()) do
				if child:IsA("Humanoid") then
					if child.Health > 0 then
						return child
					end
					v14 = v14 or child
				end
			end

			return v14
		end

		local function fn23(arg)
			local gears = tbl.Gears
			local directory = type(gears) == "table" and gears.Directory or nil
			local flag3 = type(directory) == "table"
			local v14

			if flag3 then
				v14 = directory[tostring(arg:GetAttribute("GearName") or arg.Name)]
			else
				v14 = flag3
			end

			v14 = v14 or nil
			local batControllerData = type(v14) == "table" and v14.BatControllerData or nil
			return type(batControllerData) == "table" and tonumber(batControllerData.RangeBonus) or 0
		end

		combat.Range = function(arg)
			local n25 = workspace:GetAttribute("DragonEggEventActive") == true and 2.5 or 1
			return (n18 + n19 + (arg and fn23(arg) or 0)) * n25
		end

		combat.PickBat = function(arg)
			local tool = arg:FindFirstChildWhichIsA("Tool")
			if tool and tbl4.IsBatTool(tool) then
				return tool
			end
			local v14, v15, v16 = ipairs({ arg, localPlayer:FindFirstChildOfClass("Backpack") })
			local n25 = -1
			local v17 = nil

			for _, v18 in v14, v15, v16 do
				if v18 then
					for _, child in ipairs(v18:GetChildren()) do
						if tbl4.IsBatTool(child) then
							local v19 = fn23(child)

							if v19 > n25 then
								n25 = v19
								v17 = child
							end
						end
					end
				end
			end

			return v17
		end

		local function fn24(parent, arg, arg2)
			if arg2.Parent == parent then
				return true
			end
			local equipAt = tbl17.EquipAt
			if os.clock() - equipAt < 0.2 then
				return false
			end
			tbl17.EquipAt = os.clock()

			pcall(function()
				arg:EquipTool(arg2)
			end)

			if arg2.Parent ~= parent then
				pcall(function()
					arg2.Parent = parent
				end)
			end

			return arg2.Parent == parent
		end

		combat.Parts = function(arg)
			arg = arg and arg.Character
			local humanoidRootPart = arg and arg:FindFirstChild("HumanoidRootPart")
			local humanoid = arg and arg:FindFirstChildOfClass("Humanoid")
			if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
				return nil, nil
			end
			return arg, humanoidRootPart
		end

		combat.Hittable = function(arg)
			if not arg or arg == localPlayer or arg.Parent ~= Players then
				return false
			end
			local v14, v15 = combat.Parts(arg)
			if not v14 then
				return false
			end

			if v14:GetAttribute("IsTrapped") == true or arg:GetAttribute("InBossArena") then
				return false
			end
			return not tbl4.InsideBase(v15.Position)
		end

		local function fn25()
			local wallsAt = tbl17.WallsAt
			if os.clock() < wallsAt then
				return tbl17.Walls
			end
			tbl17.WallsAt = os.clock() + 5
			local walls = {}
			local world = workspace:FindFirstChild("World") or workspace:FindFirstChild("__OBJECTS")
			world = world and world:FindFirstChild("Build")

			if world then
				for _, child in ipairs(world:GetChildren()) do
					local collisions = child:FindFirstChild("COLLISIONS")
					collisions = collisions and collisions:FindFirstChild("GUARD NO COLLIDE")

					if collisions then
						for _, child2 in ipairs(collisions:GetChildren()) do
							if tbl19[child2.Name] then
								if child2:IsA("BasePart") then
									table.insert(walls, child2)
								end

								for _, descendant in ipairs(child2:GetDescendants()) do
									if descendant:IsA("BasePart") then
										table.insert(walls, descendant)
									end
								end
							end
						end
					end
				end
			end

			tbl17.Walls = walls
			return walls
		end

		local function fn26(arg)
			if arg.X <= arg.Y and arg.X <= arg.Z then
				return "X", "Y", "Z"
			end

			if arg.Y <= arg.Z then
				return "Y", "X", "Z"
			end
			return "Z", "X", "Y"
		end

		local function fn27(arg)
			local n25 = math.abs(arg.RightVector.Y)
			local n26 = math.abs(arg.UpVector.Y)
			local n27 = math.abs(arg.LookVector.Y)
			if n25 >= n26 and n25 >= n27 then
				return "X"
			end

			if n26 >= n27 then
				return "Y"
			end
			return "Z"
		end

		local function fn28(arg, arg2, arg3, arg4)
			if arg3 == arg4 then
				return true
			end
			local n25 = arg2[arg3] + n22
			return math.abs(arg[arg3]) <= n25
		end

		local function fn29(arg, arg2)
			for _, v14 in ipairs(fn25()) do
				if v14.Parent then
					local cFrame = v14.CFrame
					local size = v14.Size
					local v15, v16, v17 = fn26(size)
					local v18 = fn27(cFrame)
					local n25 = size / 2
					local v19 = cFrame:PointToObjectSpace(arg2)

					if fn28(v19, n25, v16, v18) and fn28(v19, n25, v17, v18) then
						local v20 = cFrame:PointToObjectSpace(arg)
						local n26 = math.abs(v20[v15])
						local n27 = tbl17.WallSide[v14]

						if n26 >= n25[v15] + n22 * 0.5 or n27 == nil and n26 >= n25[v15] then
							n27 = v20[v15] >= 0 and 1 or -1
							tbl17.WallSide[v14] = n27
						elseif n27 == nil then
							n27 = v20[v15] >= 0 and 1 or -1
						end

						local n28 = n25[v15] + n22

						if v19[v15] * n27 < n28 then
							local tbl20 = { X = v19.X, Y = v19.Y, Z = v19.Z, [v15] = n27 * n28 }
							arg2 = cFrame:PointToWorldSpace(Vector3.new(tbl20.X, tbl20.Y, tbl20.Z))
						end
					end
				end
			end

			return arg2
		end

		combat.KeepOffWalls = function(arg, arg2)
			local v14 = fn29(arg, arg2)
			local n25 = v14 - arg

			if n22 < n25.Magnitude then
				local v15 = arg

				for i = 1, 6 do
					local n26 = arg + n25 * i / n23
					local v16 = fn29(v15, n26)
					if (v16 - n26).Magnitude > 0.01 then
						return fn29(arg, v16)
					end
					v15 = v16
				end
			end

			return v14
		end

		combat.ResetWalls = function()
			table.clear(tbl17.WallSide)
		end

		local n25 = 0
		local v14 = nil

		local function fn30(arg)
			local character = localPlayer.Character

			if os.clock() - n25 > 0.5 or character ~= v14 then
				n25 = os.clock()
				v14 = character
				local filterDescendantsInstances = {}

				for _, player in ipairs(Players:GetPlayers()) do
					if player.Character then
						table.insert(filterDescendantsInstances, player.Character)
					end
				end

				raycastParams.FilterDescendantsInstances = filterDescendantsInstances
			end

			local hit = workspace:Raycast(arg + Vector3.new(0, 60, 0), Vector3.new(0, -400, 0), raycastParams)
			if hit and arg.Y < hit.Position.Y + n24 then
				return Vector3.new(arg.X, hit.Position.Y + n24, arg.Z)
			end
			return arg
		end

		local function fn31(arg, arg2)
			local tbl20 = tbl17.Tracks[arg]

			if not tbl20 then
				tbl20 = { Samples = {}, Smooth = nil, Heading = nil }
				tbl17.Tracks[arg] = tbl20
			end

			local now = os.clock()
			local samples = tbl20.Samples
			table.insert(samples, { Time = now, Position = arg2.Position })

			while #samples > 2 and now - samples[1].Time > n21 do
				table.remove(samples, 1)
			end

			local assemblyLinearVelocity = arg2.AssemblyLinearVelocity
			local v15 = samples[1]
			local n26 = now - v15.Time

			if n26 >= 0.03 then
				local n27 = (arg2.Position - v15.Position) / n26

				if n27.Magnitude <= 1500 and assemblyLinearVelocity.Magnitude <= n27.Magnitude * 1.4 then
					assemblyLinearVelocity = n27
				end
			end

			local vector = Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z)
			tbl20.Smooth = tbl20.Smooth and tbl20.Smooth:Lerp(vector, 0.25) or vector
			local smooth = tbl20.Smooth

			if smooth.Magnitude > 1 then
				local heading = tbl20.Heading and tbl20.Heading:Lerp(smooth.Unit, 0.25) or smooth.Unit
				tbl20.Heading = heading.Magnitude > 0.01 and heading.Unit or smooth.Unit
			end

			return assemblyLinearVelocity, vector, smooth, tbl20
		end

		local function fn32()
			local n26 = 0

			for _, stat in ipairs(tbl17.Stats) do
				n26 += stat.Shots
			end

			local option = tbl17.Option
			local n27 = -math.huge

			for i, stat in ipairs(tbl17.Stats) do
				local n28 = stat.Shots + 1
				local n29 = (stat.Hits + 1) / (stat.Shots + 2) + math.sqrt(2 * math.log(n26 + 2) / n28) * 0.35

				if n29 > n27 then
					n27 = n29
					option = i
				end
			end

			tbl17.Option = option
			return option
		end

		local function fn33()
			local now = os.clock()

			for i = #tbl17.Pending, 1, -1 do
				local v15 = tbl17.Pending[i]
				local v16 = tbl17.Stats[v15.Option]

				if v15.RagdollBefore + 0.01 < fn22(v15.Target) then
					v16.Hits = v16.Hits + 1
					v16.Shots = v16.Shots + 1
					table.remove(tbl17.Pending, i)
				elseif v15.Wait < now - v15.At then
					if (v15.Tool and tonumber(v15.Tool:GetAttribute("CooldownEndTime")) or 0) > v15.CooldownBefore + 0.01 then
						v16.Shots = v16.Shots + 1
					end

					table.remove(tbl17.Pending, i)
				end
			end
		end

		combat.Plan = function(arg, arg2, arg3, arg4)
			if not arg3 then
				local v15
				v15, arg3 = combat.Parts(arg)
			end

			if not arg3 or not arg3.Parent then
				return nil
			end
			local n26 = math.clamp(localPlayer:GetNetworkPing(), 0, 1)
			local n27 = math.clamp(n26 + n9, 0.05, 0.35)
			local v15, v16, v17, v18 = fn31(arg or arg3, arg3)
			local v19 = fn32()
			local v20 = tbl18[v19]
			local position = arg3.Position
			local n28 = position + v15 * math.max(0, v20 + n26 - n27)
			local n29 = position + v15 * (v20 + n26)
			local magnitude = v17.Magnitude
			local heading = v18.Heading

			if not heading then
				local vector = Vector3.new(arg2.Position.X - position.X, 0, arg2.Position.Z - position.Z)
				heading = vector.Magnitude > 0.1 and vector.Unit or Vector3.new(0, 0, 1)
			end

			local character = localPlayer.Character
			local v21 = combat.Range(character and combat.PickBat(character) or nil)
			local n30 = position + v17 * (n26 + v20 + n11 + n12) + (magnitude > 1 and v17.Unit * n14 * n13 or Vector3.zero)
			local n31 = math.max(5, math.min(v21 * 0.7, 6 + magnitude * 0.07)) * n13
			local now = os.clock()
			local n32 = (math.sin(now * 2 * 3.1415926535897931 / n15) * 0.5 + 0.5) * n31
			local n33 = math.sin(now * 2 * 3.1415926535897931 / n16) * n17
			local vector = Vector3.new(-heading.Z, 0, heading.X)

			if vector:Dot(arg2.Position - n30) < 0 then
				vector = -vector
			end

			local n34 = n30 + heading * n32 + vector * (v16.Magnitude < n20 and 3 or 1.5) + Vector3.new(0, n33, 0)
			local position2 = arg2.Position

			if not arg4 then
				position2 = combat.KeepOffWalls(arg2.Position, fn30(Vector3.new(n34.X, n34.Y, position.Z)))
			end

			return {
				Goal = position2,
				Velocity = Vector3.new(v17.X, 0, v17.Z),
				Face = n29,
				Current = n29,
				Historical = n28,
				Option = v19,
				Distance = (position - arg2.Position).Magnitude,
			}
		end

		combat.Steer = function(arg, arg2, arg3, arg4, arg5)
			local n26 = math.max(arg5, 0.0041666666666666666)
			local velocity = arg2.Velocity
			local n27 = velocity + (arg2.Goal - arg.Position) / math.max(0.12, n26)
			local n28 = math.min(arg3 + velocity.Magnitude, arg4)

			if n28 < n27.Magnitude then
				n27 = n27.Unit * n28
			end

			local position = arg.Position
			local n29 = position + n27 * n26
			local v15 = combat.KeepOffWalls(position, n29)

			if (v15 - n29).Magnitude > 0.01 then
				n27 = (v15 - position) / n26
			end

			local v16 = combat.KeepOffWalls(position, position)

			if (v16 - position).Magnitude > 0.01 then
				n27 = (v16 - position) / math.max(0.12, n26)
			end

			local assemblyLinearVelocity = n27 + Vector3.new(0, workspace.Gravity * n26 * 0.5, 0)

			pcall(function()
				local vector = Vector3.new(arg2.Face.X - position.X, 0, arg2.Face.Z - position.Z)

				if vector.Magnitude > 0.05 then
					arg.CFrame = CFrame.lookAt(position, position + vector.Unit)
				end

				arg.AssemblyLinearVelocity = assemblyLinearVelocity
				arg.AssemblyAngularVelocity = Vector3.zero
			end)
		end

		combat.TryHit = function(arg, arg2)
			fn33()
			if workspace:GetAttribute("PvPDisabled") == true then
				return "Player hits are off right now"
			end
			local character = localPlayer.Character
			local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
			local v15 = combat.Humanoid(character)
			if not humanoidRootPart or not v15 or v15.Health <= 0 then
							local v18 = createImageLabel(frame, 2)
				v18.ScaleType = Enum.ScaleType.Crop
				local uiCorner = Instance.new("UICorner")
				uiCorner.Name = fn3()
				uiCorner.CornerRadius = UDim.new(1, 0)
				uiCorner.Parent = v18
				local v19 = createTextLabel(frame, 1)
				v19.TextColor3 = Color3.fromRGB(7, 19, 34)
				v19.TextTransparency = 0.05
				local v20 = createTextLabel(frame, 2)
				v20.TextColor3 = Color3.fromRGB(255, 255, 255)
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Name = fn3()
				fn19(uiStroke, Color3.fromRGB(255, 255, 255), 0.044, 1.4)
				uiStroke.Parent = v20
				local uiGradient = Instance.new("UIGradient")
				uiGradient.Name = fn3()
				uiGradient.Color = colorSequence
				uiGradient.Rotation = 90
				uiGradient.Parent = uiStroke
				local uiGradient2 = Instance.new("UIGradient")
				uiGradient2.Name = fn3()
				uiGradient2.Color = v15
				uiGradient2.Rotation = 90
				uiGradient2.Parent = v20
				local v21 = createImageLabel(frame, 1)
				v21.ImageColor3 = Color3.fromRGB(0, 0, 0)
				v21.ImageTransparency = 0.35

				local tbl26 = {
					Player = arg,
					Highlight = highlight,
					Billboard = billboardGui,
					Avatar = v18,
					Shadow = v19,
					Name = v20,
					ToolShadow = v21,
					ToolIcon = createImageLabel(frame, 2),
				}

				fn20(tbl26)
				return tbl26
			end

			local function fn22(arg)
				if arg.NameHumanoid and arg.NameHumanoid.Parent and arg.NameDistance ~= nil then
					pcall(function()
						arg.NameHumanoid.NameDisplayDistance = arg.NameDistance
					end)
				end

				arg.NameHumanoid = nil
				arg.NameDistance = nil
			end

			local function fn23(arg, arg2)
				local humanoid = arg2 and arg2:FindFirstChildOfClass("Humanoid")
				if not humanoid then
					return
				end

				if arg.NameHumanoid ~= humanoid then
					fn22(arg)
					arg.NameHumanoid = humanoid
					arg.NameDistance = humanoid.NameDisplayDistance
				end

				pcall(function()
					humanoid.NameDisplayDistance = 0
				end)
			end

			local function fn24(arg)
				tbl5.DisconnectAll(arg.CharacterConnections)

				if arg.Tag then
					pcall(function()
						arg.Tag.Highlight:Destroy()
					end)

					pcall(function()
						arg.Tag.Billboard:Destroy()
					end)

					arg.Tag = nil
				end

				fn22(arg)
				arg.Character = nil
			end

			local function fn25(arg)
				if not arg.Tag or not arg.Character then
					return
				end
				local v18 = fn16(arg.Character:FindFirstChildOfClass("Tool"))
				arg.Tag.ToolIcon.Image = v18
				arg.Tag.ToolShadow.Image = v18
				fn20(arg.Tag)
			end

			local function fn26(arg, arg2, arg3)
				local image = tbl23[arg2.UserId]

				if image == nil then
					local ok

					ok, image = pcall(function()
						return Players:GetUserThumbnailAsync(arg2.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
					end)

					image = ok and image or ""
					tbl23[arg2.UserId] = image
				end

				if flag3 and arg.Version == arg3 and arg.Tag then
					arg.Tag.Avatar.Image = image
				end
			end

			local function fn27(arg, arg2, character)
				fn24(arg)
				arg.Version = arg.Version + 1
				local version = arg.Version
				if not flag3 or not character then
					return
				end
				arg.Character = character

				task.spawn(function()
					local head = character:FindFirstChild("Head") or character:WaitForChild("Head", 5)
					if not flag3 or arg.Version ~= version or not head or not head:IsA("BasePart") or not character:IsDescendantOf(workspace) then
						return
					end

					if not v16 or not v16.Parent then
						v16 = tbl5.CreateRuntime()
					end

					local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
					arg.Tag = fn21(arg2, character, head, humanoidRootPart and humanoidRootPart:IsA("BasePart") and humanoidRootPart or nil)
					fn23(arg, character)

					local function fn28()
						task.defer(function()
							if flag3 and arg.Version == version then
								fn25(arg)
							end
						end)
					end

					table.insert(arg.CharacterConnections, character.ChildAdded:Connect(function(child)
						if child:IsA("Tool") then
							fn28()
						elseif child:IsA("Humanoid") then
							fn23(arg, character)
						end
					end))

					table.insert(arg.CharacterConnections, character.ChildRemoved:Connect(function(child)
						if child:IsA("Tool") then
							fn28()
						end
					end))

					table.insert(arg.CharacterConnections, character.AncestryChanged:Connect(function()
						if arg.Version == version and not character:IsDescendantOf(workspace) then
							arg.Version = arg.Version + 1
							fn24(arg)
						end
					end))

					fn25(arg)
					fn26(arg, arg2, version)
				end)
			end

			local function fn28(player)
				local v18 = tbl21[player]
				if not v18 then
					return
				end
				v18.Version = v18.Version + 1
				fn24(v18)
				tbl5.DisconnectAll(v18.PlayerConnections)
				tbl21[player] = nil
			end

			local function fn29(player)
				if player == localPlayer or tbl21[player] then
					return
				end

				local tbl26 = {
					Version = 0,
					Character = nil,
					Tag = nil,
					NameHumanoid = nil,
					NameDistance = nil,
					CharacterConnections = {},
					PlayerConnections = {},
				}

				tbl21[player] = tbl26

				table.insert(tbl26.PlayerConnections, player.CharacterAdded:Connect(function(character)
					fn27(tbl26, player, character)
				end))

				table.insert(tbl26.PlayerConnections, player.CharacterRemoving:Connect(function(character)
					if tbl26.Character == character then
						tbl26.Version = tbl26.Version + 1
						fn24(tbl26)
					end
				end))

				fn27(tbl26, player, player.Character)
			end

			local function fn30()
				for _, v18 in pairs(tbl21) do
					if v18.Tag then
						fn20(v18.Tag)
					end
				end
			end

			local function fn31()
				flag3 = false
				n21 += 1
				tbl5.DisconnectAll(tbl22)
				local tbl26 = {}

				for k in pairs(tbl21) do
					table.insert(tbl26, k)
				end

				for _, v18 in ipairs(tbl26) do
					fn28(v18)
				end

				if v16 then
					v16:Destroy()
					v16 = nil
				end
			end

			local function fn32()
				if flag3 then
					return
				end
				flag3 = true
				n21 += 1
				local v18 = n21
				v16 = tbl5.CreateRuntime()

				for _, player in ipairs(Players:GetPlayers()) do
					fn29(player)
				end

				table.insert(tbl22, Players.PlayerAdded:Connect(fn29))
				table.insert(tbl22, Players.PlayerRemoving:Connect(fn28))
				local currentCamera = workspace.CurrentCamera

				if currentCamera then
					table.insert(tbl22, currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(fn30))
				end

				task.spawn(function()
					while true do
						if flag3 and v18 == n21 then
							task.wait(1)

							if not (not flag3 or v18 ~= n21) then
								for k, v19 in pairs(tbl21) do
									local character = k.Character
									local adornee = v19.Tag and v19.Tag.Billboard.Parent and v19.Tag.Billboard.Adornee and v19.Tag.Billboard.Adornee:IsDescendantOf(workspace)

									if character and character:IsDescendantOf(workspace) and (v19.Character ~= character or not adornee) then
										fn27(v19, k, character)
									end
								end

								continue
							end
						end

						break
					end
				end)
			end

			local function fn33()
				if flag5 then
					return
				end

				if tbl5.ReadToggle(v17, flag4) then
					fn32()
				elseif flag3 then
					fn31()
				end
			end

			fn4(function()
				flag5 = true
				fn31()
			end)

			v17 = espSection:CreateToggle({
				Name = "ESP Players",
				Default = false,
				Callback = function(arg)
					flag4 = arg == true
					tbl5.SyncSoon(fn33)
				end,
			})

			fn6(espSection:CreateMultiDropdown({
				Name = "ESP Player Info",
				Options = { "Name", "Username", "Avatar", "Tool" },
				Default = { "Name", "Tool" },
				SubOf = v17,
				Callback = function(arg)
					local tbl26 = { Name = false, Username = false, Avatar = false, Tool = false }

					if type(arg) == "table" then
						for k, v18 in pairs(arg) do
							if type(v18) == "string" and tbl26[v18] ~= nil then
								tbl26[v18] = true
							elseif type(k) == "string" and v18 == true and tbl26[k] ~= nil then
								tbl26[k] = true
							end
						end
					end

					tbl24 = tbl26
					fn30()
				end,
			}))

			espSection:CreateSlider({
				Name = "ESP Player Size",
				Min = 50,
				Max = 200,
				Default = 75,
				Increment = 5,
				Unit = "%",
				SubOf = v17,
				Callback = function(arg)
					local num = tonumber(arg)

					if num and n22 ~= num / 100 then
						n22 = math.clamp(num / 100, 0.5, 2)
						fn30()
					end
				end,
			})
		end

		n3 = 3
		n4 = 0.002
		n5 = 4
		tbl7 = { "Value", "Rarity", "Weight", "Distance" }
		n6 = 0.3
		n7 = 0.62
		n8 = 0.86
		n9 = 5.2173913043478262
		n10 = 1.392
		n11 = 1.03
		tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
		tweenInfo2 = TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		tweenInfo3 = TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		tweenInfo4 = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
		tweenInfo5 = TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		TweenService = game:GetService("TweenService")
		color2 = Color3.fromRGB

		fn8 = function(arg)
			local tbl25 = {}

			for i, v18 in ipairs(arg) do
				tbl25[i] = ColorSequenceKeypoint.new(v18[1], v18[2])
			end

			return ColorSequence.new(tbl25)
		end

		tbl8 = {}

		do
			local hud = {}
			local tbl25 = {}
			local tbl26 = { 0, color2(0, 118, 255) }
			local tbl27 = { 1, color2(72, 204, 255) }
			tbl25[1] = tbl26
			tbl25[2] = tbl27
			hud.Color = fn8(tbl25)
			hud.Rotation = -90
			hud.Stroke = color2(0, 28, 76)
			hud.Light = color2(172, 226, 255)
			tbl8.Hud = hud
		end
	end

	do
		local steal = {}
		local tbl9 = {}
		local tbl10 = { 0, color2(60, 255, 0) }
		local tbl11 = { 1, color2(136, 255, 0) }
		tbl9[1] = tbl10
		tbl9[2] = tbl11
		steal.Color = fn8(tbl9)
		steal.Rotation = -90
		steal.Stroke = color2(11, 72, 0)
		steal.Light = color2(190, 255, 180)
		tbl8.Steal = steal
	end

	do
		local queued = {}
		local tbl9 = {}
		local tbl10 = { 0, color2(118, 118, 132) }
		local tbl11 = { 1, color2(172, 172, 186) }
		tbl9[1] = tbl10
		tbl9[2] = tbl11
		queued.Color = fn8(tbl9)
		queued.Rotation = -90
		queued.Stroke = color2(28, 28, 34)
		queued.Light = color2(214, 214, 226)
		tbl8.Queued = queued
	end

	do
		local priorityOn = {}
		local tbl9 = {}
		local tbl10 = { 0, color2(255, 247, 0) }
		local tbl11 = { 1, color2(255, 136, 0) }
		tbl9[1] = tbl10
		tbl9[2] = tbl11
		priorityOn.Color = fn8(tbl9)
		priorityOn.Rotation = 90
		priorityOn.Stroke = color2(0, 0, 0)
		priorityOn.Light = color2(132, 112, 0)
		tbl8.PriorityOn = priorityOn
	end

	do
		local cancel = {}
		local tbl9 = {}
		local tbl10 = { 0, color2(214, 17, 17) }
		local tbl11 = { 1, color2(253, 20, 20) }
		tbl9[1] = tbl10
		tbl9[2] = tbl11
		cancel.Color = fn8(tbl9)
		cancel.Rotation = -90
		cancel.Stroke = color2(72, 0, 0)
		cancel.Light = color2(255, 103, 103)
		tbl8.Cancel = cancel
	end

	do
		local chilli = {}
		local tbl9 = {}
		local tbl10 = { 0, color2(132, 74, 255) }
		local tbl11 = { 0.34, color2(178, 74, 255) }
		local tbl12 = { 0.6, color2(255, 104, 206) }
		local tbl13 = { 0.78, color2(255, 168, 232) }
		local tbl14 = { 1, color2(146, 66, 255) }
		tbl9[1] = tbl10
		tbl9[2] = tbl11
		tbl9[3] = tbl12
		tbl9[4] = tbl13
		tbl9[5] = tbl14
		chilli.Color = fn8(tbl9)
		chilli.Rotation = -115
		chilli.Stroke = color2(44, 10, 80)
		chilli.Light = color2(226, 178, 255)
		tbl8.Chilli = chilli
	end

	local fn9

	do
		local tbl9 = {}
		local tbl10 = { 0, color2(255, 255, 255) }
		local tbl11 = { 0.2, color2(206, 212, 224) }
		local tbl12 = { 0.42, color2(74, 80, 94) }
		local tbl13 = { 0.58, color2(42, 46, 56) }
		local tbl14 = { 0.78, color2(158, 166, 182) }
		local tbl15 = { 1, color2(250, 252, 255) }
		tbl9[1] = tbl10
		tbl9[2] = tbl11
		tbl9[3] = tbl12
		tbl9[4] = tbl13
		tbl9[5] = tbl14
		tbl9[6] = tbl15
		local v9 = fn8(tbl9)
		local tbl16 = {}
		local rarityGradients = nil

		fn9 = function(arg)
			local v10 = tbl16[arg]
			if v10 then
				return v10
			end
			local directory = tbl.Assets and tbl.Assets.Directory
			local flag = type(directory) == "table" and directory[arg] or nil
			local rarity = type(flag) == "table" and type(flag.Rarity) == "table" and flag.Rarity or nil
			local rarityGradient = rarity and rarity.RarityGradient or nil

			if rarity and typeof(rarityGradient) ~= "Instance" then
				if rarityGradients == nil then
					local assets = ReplicatedStorage:FindFirstChild("Assets")
					assets = assets and assets:FindFirstChild("UI")
					rarityGradients = assets and assets:FindFirstChild("RarityGradients") or false
				end

				rarityGradient = rarityGradients

				if rarityGradients then
					rarityGradient = rarityGradients:FindFirstChild(tostring(rarity._id or rarity.DisplayName or ""))
				end

				rarityGradient = rarityGradient and rarityGradient:FindFirstChild("RarityGradient") or nil
			end

			local str

			if rarity then
				str = tostring(rarity.DisplayName or rarity._id or "")
			else
				str = rarity
			end

			str = str or ""
			local color3 = rarity and typeof(rarity.Color) == "Color3" and rarity.Color or color2(255, 255, 255)
			local color4 = fn8({ { 0, color3 }, { 1, color3 } })
			local gradientRotation

			if string.upper(str) == "SECRET" then
				color4 = v9
				gradientRotation = 90
			else
				local isUIGradient = typeof(rarityGradient) == "Instance" and rarityGradient:IsA("UIGradient")
				gradientRotation = 90

				if isUIGradient then
					color4 = rarityGradient.Color
					gradientRotation = rarityGradient.Rotation
				end
			end

			local icon = type(flag) == "table" and flag.Icon or nil

			if tonumber(icon) then
				icon = "rbxassetid://" .. tostring(icon)
			end

			local tbl17 = {}
			local name = type(flag) == "table"

			if name then
				name = tostring(flag.DisplayName or arg)
			end

			tbl17.Name = name or tostring(arg)
			tbl17.Icon = icon and tostring(icon) or ""

			if rarity then
				rarity = tonumber(rarity.RarityNumber or rarity.Rank)
			end

			tbl17.RarityNumber = rarity or 0
			tbl17.GradientColor = color4
			tbl17.GradientRotation = gradientRotation
			tbl17.EarningRate = type(flag) == "table" and tonumber(flag.EarningRate) or 0
			tbl16[arg] = tbl17
			return tbl17
		end
	end

	local fn10

	fn10 = function(arg, arg2)
		local n12 = tonumber(arg.AssetScale) or 1
		local n13 = n12 > 5 and (n12 / 5) ^ 1.2 * 19.637875755794113 or n12 ^ 1.85
		local mutations = type(arg.Mutations) == "table" and arg.Mutations or {}

		if #mutations == 0 and type(arg.BaseMutation) == "string" and arg.BaseMutation ~= "" then
			mutations = { arg.BaseMutation }
		end

		local mutations2 = tbl.Mutations
		local flag = type(mutations2) == "table" and type(mutations2.EarningsFor) == "function"
		local n14 = 1

		if flag then
			local ok, result = pcall(mutations2.EarningsFor, mutations)

			if ok and type(result) == "number" then
				n14 = result
			end
		end

		return arg2.EarningRate * n13 * n14
	end

	local fn11
	local tbl9 = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx" }

	fn11 = function(arg)
		local n12 = tonumber(arg) or 0
		local n13 = 1

		while n12 >= 1000 and n13 < #tbl9 do
			n12 /= 1000
			n13 += 1
		end

		local str = n13 == 1 and tostring(math.floor(n12)) or string.format("%.1f", math.floor(n12 * 10) / 10)
		local str2 = tbl9[n13] .. "/s"
		return "$" .. string.gsub(str, "%.0$", "") .. str2
	end

	local fn12

	fn12 = function(arg, text)
		if arg and arg.Text ~= text then
			arg.Text = text
		end
	end

	local flag
	flag = false
	local n12
	n12 = 0
	local flag2
	flag2 = false
	local v9
	v9 = nil
	local v10
	v10 = nil
	local v11
	v11 = nil
	local imageLabel
	imageLabel = nil
	local v12
	v12 = nil
	local v13
	v13 = nil
	local position
	position = nil
	local title
	title = nil
	local v14
	v14 = nil
	local v15
	v15 = nil
	local v16
	v16 = nil
	local flag3
	flag3 = false
	local v17
	v17 = v2:CreateState({ Name = "Steal Panel Open", Default = true })
	local flag4
	flag4 = false
	local tween
	tween = nil
	local tween2
	tween2 = nil
	local n13
	n13 = 0
	local tbl10
	tbl10 = nil
	local tbl11
	tbl11 = nil
	local n14
	n14 = 1
	local tbl12
	tbl12 = {}
	local tbl13
	tbl13 = {}
	local n15
	n15 = 1
	local tbl14
	tbl14 = {}
	local uiStroke, thickness, flag5, flag6, flag7, fn13, fn14, fn15, fn16, tbl15
	local fn17, fn18

	do
		local obj = setmetatable({}, { __mode = "k" })
		uiStroke = nil
		thickness = nil
		flag5 = false
		flag6 = false
		flag7 = false
		fn13 = nil

		fn14 = function()
			local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
			local hud = playerGui and playerGui:FindFirstChild("HUD")
			local gameHUD = hud and hud:FindFirstChild("GameHUD")
			local rightButtons = gameHUD and gameHUD:FindFirstChild("RightButtons")
			local activePets = playerGui and playerGui:FindFirstChild("ActivePets")

			local tbl16 = {
				Hud = hud,
				GameHud = gameHUD,
				Column = rightButtons,
				Eggs = rightButtons and rightButtons:FindFirstChild("EggsButton"),
				Pets = rightButtons and rightButtons:FindFirstChild("PetsButton"),
				ActivePets = activePets,
				GrowingEggs = playerGui and playerGui:FindFirstChild("GrowingEggs"),
			}

			if not (hud and gameHUD and rightButtons and tbl16.Eggs and tbl16.Pets and activePets and activePets:FindFirstChild("Frame")) then
				return nil
			end
			return tbl16
		end

		fn15 = function(arg)
			local ok, result = pcall(function()
				return arg:Clone()
			end)

			if not ok or typeof(result) ~= "Instance" then
				return nil
			end

			for _, descendant in ipairs(result:GetDescendants()) do
				if descendant:IsA("LuaSourceContainer") then
					descendant:Destroy()
				end
			end

			return result
		end

		fn16 = function(arg)
			arg.Name = fn3()

			for _, descendant in ipairs(arg:GetDescendants()) do
				descendant.Name = fn3()
			end
		end

		local n16 = 2.3120369911193848
		local n17 = 556
		local n18 = 86.24
		tbl15 = { Panel = n16, Hud = n16 }

		local function fn19(arg)
			if arg then
				local x = v13 and v13.AbsoluteSize.X or 0
				return x > 0 and n16 * x / n17 or nil
			end
			local button = v11 and v11.Button
			button = button and button.Size.X.Offset or 0
			return button > 0 and n16 * button / n18 or nil
		end

		local function fn20(arg, arg2)
			local v18 = fn19(arg2.Panel)

			if v18 and arg.Parent then
				arg.Thickness = arg2.Ratio * v18
			end
		end

		fn17 = function(arg, arg2)
			local panel = arg2 and tbl15.Panel or tbl15.Hud

			if not panel or panel <= 0 then
				panel = 2.3120369911193848
			end

			for _, descendant in ipairs(arg:GetDescendants()) do
				if descendant:IsA("UIStroke") then
					local ok, result = pcall(function()
						return descendant.StrokeSizingMode
					end)

					if not ok or result ~= Enum.StrokeSizingMode.ScaledSize then
						local tbl16 = { Ratio = descendant.Thickness / panel, Panel = arg2 == true }
						obj[descendant] = tbl16
						fn20(descendant, tbl16)
					end
				end
			end
		end

		fn18 = function()
			for k, v18 in pairs(obj) do
				fn20(k, v18)
			end
		end
	end

	local fn19

	fn19 = function()
		fn18()
	end

	local fn20

	fn20 = function(arg)
		if not arg then
			return nil
		end

		return {
			Button = arg,
			Gradient = arg:FindFirstChildOfClass("UIGradient"),
			Stroke = arg:FindFirstChild("UIStroke"),
			Light = arg:FindFirstChild("UIStrokeClr"),
			Label = arg:FindFirstChild("Label") or arg:FindFirstChild("TextLabel"),
			Scale = arg:FindFirstChild("BtnScale"),
		}
	end

	local fn21

	fn21 = function(arg, style)
		if not arg or arg.Style == style then
			return
		end
		arg.Style = style

		if arg.Gradient then
			arg.Gradient.Color = style.Color
			arg.Gradient.Rotation = style.Rotation
		end

		if arg.Stroke then
			arg.Stroke.Color = style.Stroke
		end

		if arg.Light then
			arg.Light.Color = style.Light
		end
	end

	local fn22

	fn22 = function(arg)
		if not arg then
			return
		end
		local scale = arg.Scale

		if not scale then
			scale = Instance.			local size = v11.Size
			v11.Size = UDim2.fromOffset(math.max(1, math.floor(arg2 * n17 + 0.5)), 100000)
			local y = v11.TextBounds.Y
			v11.Size = size
			if y <= 0 then
				return nil
			end
			return y / n17
		end

		local function fn16(arg)
			local v11 = tbl9[arg]

			if not v11 then
				local v12 = v10:Text({ Name = "Line", X = 0, Y = 0, Width = 1, Height = 1, Wrap = true, Visible = false })
				tbl9[arg] = v12
				v11 = v12
			end

			return v11
		end

		local function fn17(arg)
			local v11 = tbl8[arg]
			if v11 then
				return v11
			end

			local tbl11 = {
				Frame = v10:Frame({
					Name = "Slot",
					Background = "#000000",
					BackgroundTransparency = 0.74,
					Corner = 0.35,
					X = 0,
					Y = 0,
					Width = 1,
					Height = 1,
					Visible = false,
				}),
			}

			tbl11.Icon = v10:Image({
				Parent = tbl11.Frame,
				X = n11,
				Y = 0,
				Width = n10,
				Height = n10,
				Corner = 0.35,
				Background = "#000000",
				BackgroundTransparency = 0.45,
				StrokeThickness = n15,
				StrokeTransparency = 0,
			})

			tbl11.Name = v10:Text({
				Parent = tbl11.Frame,
				X = n11 + n13,
				Y = 0,
				Width = 1,
				Height = n7,
				Scale = n8,
				Wrap = false,
				Gradient = tbl6.NameGradient,
				TextStrokeTransparency = 1,
			})

			tbl11.Rarity = v10:Text({
				Parent = tbl11.Frame,
				X = n11 + n13,
				Y = 0,
				Width = 1,
				Height = n7,
				Scale = n9,
				Wrap = false,
				Font = tbl6.RarityFont,
				TextStrokeTransparency = 1,
				StrokeTransparency = 0.08,
				StrokeThickness = n18,
			})

			tbl11.Detail = v10:Text({
				Parent = tbl11.Frame,
				X = n11 + n13,
				Y = n7,
				Width = math.max(1, n16 - n13 - n11 * 2),
				Height = 1,
				Wrap = true,
			})

			tbl11.Status = v10:Text({
				Parent = tbl11.Frame,
				X = 0,
				Y = 0,
				Width = 1,
				Height = n7,
				Wrap = false,
				Align = "Right",
				Color = color2.Hint,
			})

			tbl8[arg] = tbl11
			return tbl11
		end

		local function fn18()
			if n16 <= 0 then
				return
			end
			flag = false
			local n24 = math.max(1, n16 - n6)
			local v11 = fn14(tbl7.Rarity)

			if v11 then
				n23 = v11 + 0.1
			else
				flag = true
			end

			local v12 = fn14(tbl7.Name)

			if v12 then
				n22 = math.min(v12 + 0.1, math.max(1, n24 - n23 - n14))
			else
				flag = true
			end

			tbl7.Name.Set({ X = n6, Y = 0, Width = n22, Height = n7 })

			tbl7.Rarity.Set({
				X = n6 + n22 + n14,
				Y = 0,
				Width = math.max(0.5, math.min(n23, n24 - n22 - n14)),
				Height = n7,
			})

			tbl7.Info.Set({ X = n6, Y = n7, Width = n24, Height = math.max(1, n5 - n7) })
			local n25 = math.max(1, n16 - n13 - n11 * 2)
			local n26 = 0

			for _, v13 in ipairs(tbl10) do
				if v13.Kind == "text" then
					local handle = v13.Handle
					local v14 = fn15(handle, n16)

					if v14 then
						v13.Height = v14
					else
						flag = true
					end

					local n27 = math.max(1, v13.Height or 1)
					handle.Set({ X = 0, Y = n26 + (v13.Gap and 0.5 or 0), Width = n16, Height = n27 })
					n26 += n27 + n3 * 0.5 + (v13.Gap and 0.5 or 0)
				else
					local slot = v13.Slot
					local v14 = fn15(slot.Detail, n25)

					if v14 then
						slot.DetailUnits = v14
					else
						flag = true
					end

					local n27 = math.clamp(slot.DetailUnits or 1, 1, 4)
					local v15 = fn14(slot.Status)

					if v15 then
						slot.StatusUnits = v15 + 0.23
					else
						flag = true
					end

					local n28 = math.min(n25 * 0.42, math.max(2.73, slot.StatusUnits or 2.73))
					local n29 = math.max(1, n25 - n28 - n14)
					local v16 = fn14(slot.Rarity)

					if v16 then
						slot.RarityUnits = v16 + 0.1
					else
						flag = true
					end

					local n30 = math.min(slot.RarityUnits or 3, n29 * 0.5)
					local v17 = fn14(slot.Name)

					if v17 then
						slot.NameUnits = v17 + 0.1
					else
						flag = true
					end

					local min = math.min
					local max = math.max
					local nameUnits = slot.NameUnits or 4
					local max2 = math.max
					local n31 = n29 - n30 - n14
					local v18 = min(max(1, nameUnits), max2(1, n31))
					local n32 = n12 * 2
					local n33 = math.max(n27 + n7, 2.3) + n32
					local n34 = (n33 - n27 - n7) / 2
					slot.Frame.Set({ X = 0, Y = n26, Width = n16, Height = n33 })
					slot.Icon.Set({ Y = (n33 - n10) / 2 })
					slot.Name.Set({ X = n11 + n13, Y = n34, Width = v18 })
					slot.Rarity.Set({ X = n11 + n13 + v18 + n14, Y = n34, Width = math.max(0.5, n30) })
					slot.Detail.Set({ X = n11 + n13, Y = n34 + n7, Width = n25, Height = n27 })
					slot.Status.Set({ X = n11 + n13 + n25 - n28, Y = n34, Width = math.max(0.5, n28) })
					n26 += n33 + n3
				end
			end

			local n27 = math.max(1, n26)

			if math.abs(n27 - n21) > 0.01 then
				n21 = n27
				v10:SetContentLines(n27)
			end
		end

		local v11 = fn2(function()
			return ReplicatedStorage.Data.Rift
		end)

		local n24 = 30
		local tbl11 = { Verdant = "#6BFFB0", Umbral = "#C08BFF", Radiant = "#FFD34D" }
		local v12 = nil
		local flag2 = false
		local n25 = 0
		local tbl12 = { Banner = {}, Odds = {}, Chance = {}, Clears = 0 }

		local function fn19(arg)
			return tbl11[tostring(arg)] or color2.Text
		end

		local function fn20(arg, ...)
			if type(v11) ~= "table" or type(v11[arg]) ~= "function" then
				return nil
			end
			local ok, result = pcall(v11[arg], ...)
			if ok then
				return result
			end
			return nil
		end

		local function fn21(arg)
			return tostring(fn20("GetBannerDisplayName", arg) or arg)
		end

		local function fn22(arg)
			local v13 = tbl12.Banner[arg]

			if v13 == nil then
				local BannerIdForPeriod = fn20("BannerIdForPeriod", arg) or false
				tbl12.Banner[arg] = BannerIdForPeriod
				v13 = BannerIdForPeriod
			end

			return v13 or nil
		end

		local function fn23(arg)
			local v13, v14, v15 = ipairs(type(v11) == "table" and v11.Banners or {})
			local n26 = 0
			local n27 = 0

			for _, v16 in v13, v14, v15 do
				local n28 = tonumber(fn20("GetBannerWeight", v16.Id)) or 0
				n26 += n28

				if v16.Id == arg then
					n27 = n28
				end
			end

			return n26 > 0 and n27 / n26 * 100 or 0
		end

		local function fn24(arg)
			local v13 = tbl12.Chance[arg]

			if v13 == nil then
				v13 = fn23(arg)
				tbl12.Chance[arg] = v13
			end

			return v13
		end

		local function fn25(arg)
			local GetBanner = fn20("GetBanner", arg)
			local tbl13 = {}
			local v13 = ipairs
			local pets = type(GetBanner) == "table" and GetBanner.Pets or {}
			local n26 = 0

			for _, pet in v13(pets) do
				local n27 = tonumber(fn20("GetPetWeight", arg, pet.AssetId)) or 0

				if n27 > 0 then
					n26 += n27
					table.insert(tbl13, { AssetId = pet.AssetId, Weight = n27 })
				end
			end

			for _, v14 in ipairs(tbl13) do
				v14.Chance = n26 > 0 and v14.Weight / n26 * 100 or 0
			end

			table.sort(tbl13, function(arg2, arg3)
				return arg2.Chance > arg3.Chance
			end)

			return tbl13
		end

		local function fn26(arg)
			local v13 = tbl12.Odds[arg]

			if v13 == nil then
				v13 = fn25(arg)
				tbl12.Odds[arg] = v13
			end

			return v13
		end

		local function fn27(arg)
			local ok, result = pcall(os.date, "%I:%M %p", math.floor(arg))
			if not ok then
				return ""
			end
			return (string.gsub(tostring(result), "^0", ""))
		end

		local function fn28(arg)
			local n26 = math.max(0, math.floor(arg))
			local n27 = math.floor(n26 / 86400)
			local n28 = math.floor(n26 % 86400 / 3600)
			local n29 = math.floor(n26 % 3600 / 60)
			if n27 > 0 then
				return string.format("%dd %dh %02dm", n27, n28, n29)
			end
			return string.format("%dh %02dm", n28, n29)
		end

		local function fn29(arg)
			local income = arg >= 10 and color2.Income or arg >= 1 and color2.Clock or "#FF7A7A"
			local str = string.format(arg >= 1 and "%.1f%%" or "%.2f%%", arg)
			return bold(paint(income, str))
		end

		local function fn30(arg)
			if arg <= 0 then
				return ""
			end
			local n26 = 100 / arg
			return paint(color2.Hint, n26 < 10 and string.format("1 in %.1f", n26) or string.format("1 in %d", math.floor(n26 + 0.5)))
		end

		local function fn31()
			if flag2 or os.clock() < n25 then
				return
			end
			flag2 = true
			n25 = os.clock() + n24

			task.spawn(function()
				local rfRiftAskState = networking:FindFirstChild("RF/Rift/AskState")

				if rfRiftAskState and rfRiftAskState:IsA("RemoteFunction") then
					local ok, result = pcall(rfRiftAskState.InvokeServer, rfRiftAskState)

					if ok and type(result) == "table" then
						v12 = result
					end
				end

				flag2 = false
			end)
		end

		local function fn32(arg, arg2, arg3)
			local flag3 = arg ~= nil
			v10:SetDock(flag3 and 5 or 0, { Gap = n3 })
			tbl7.Icon.Set({ Visible = flag3 })
			tbl7.Name.Set({ Visible = flag3 })
			tbl7.Rarity.Set({ Visible = flag3 })
			tbl7.Info.Set({ Visible = flag3 })
			if not flag3 then
				return
			end
			local v13 = fn19(arg)
			local GetBannerEggIcon = fn20("GetBannerEggIcon", arg)

			tbl7.Icon.Set({
				Visible = type(GetBannerEggIcon) == "string" and GetBannerEggIcon ~= "",
				Image = type(GetBannerEggIcon) == "string" and GetBannerEggIcon or "",
				StrokeColor = Color3.fromHex(v13),
			})

			tbl7.Name.Set({ Text = tbl6.Escape(fn21(arg)) })
			tbl7.Rarity.Set({ Text = "ACTIVE", Color = Color3.fromHex(color2.Ready), Gradient = nil })
			local n26 = arg3 - arg2 % arg3
			local tbl13 = {}
			local str = bold(paint(color2.Clock, "Ends in " .. tbl6.FormatClock(n26))) .. tbl6.Separator() .. paint(color2.Text, fn27(arg2 + n26))
			local str2 = paint(color2.Hint, "Banner chance ") .. fn29(fn24(arg))
			tbl13[1] = str
			tbl13[2] = str2
			local v14 = v12

			if type(v14) == "table" and v14.BannerId == arg then
				if v14.Unlocked == false then
					table.insert(tbl13, paint("#FF7A7A", "Locked on this account"))
				else
					table.insert(tbl13, paint(color2.Hint, "Pity ") .. bold(paint(color2.Text, string.format("%s/%s", tostring(v14.PityCount or 0), tostring(v14.PityThreshold or 0)))) .. tbl6.Separator() .. paint(color2.Hint, "Free rerolls ") .. bold(paint(color2.Text, tostring(v14.FreeRefreshesRemaining or 0))))
				end
			end

			tbl7.Info.Set({ Text = table.concat(tbl13, "\n") })
		end

		local function fn33()
			if not v10 then
				return
			end
			n4 = 2
			table.clear(tbl10)
			local n26 = 0
			local n27 = 0

			local function fn34(arg, arg2)
				n26 += 1
				local v13 = fn16(n26)
				v13.Set({ Visible = true, Text = arg })
				table.insert(tbl10, { Kind = "text", Handle = v13, Gap = arg2 })
			end

			local function fn35(arg, arg2)
				local flag3 = #tbl10 > 0
				fn34(string.format("<b><font color=\"%s\">%s</font></b>", arg2, arg), flag3)
			end

			local function fn36()
				n27 += 1
				local v13 = fn17(n27)
				v13.Frame.Set({ Visible = true })
				table.insert(tbl10, { Kind = "slot", Slot = v13 })
				return v13
			end

			local serverTimeNow = workspace:GetServerTimeNow()
			local n28 = tonumber(fn20("RotationSeconds")) or 10800
			local n29 = math.floor(serverTimeNow / n28)
			local clears = tbl12.Clears

			if os.clock() >= clears then
				tbl12.Clears = os.clock() + 60
				table.clear(tbl12.Banner)
				table.clear(tbl12.Odds)
				table.clear(tbl12.Chance)
			end

			local v13 = fn22(n29)

			if type(v11) ~= "table" or v13 == nil then
				fn32(nil)
				fn34(bold(paint(color2.Hint, "Rift data is not available yet")), false)
			else
				fn32(v13, serverTimeNow, n28)
				local v14 = v12

				if type(v14) == "table" and v14.BannerId == v13 and type(v14.Requirements) == "table" and #v14.Requirements > 0 then
					fn35("CURRENT RECIPE", color2.Text)
					local tbl13 = {}

					for _, requirement in ipairs(v14.Requirements) do
						local v15 = tbl6.AssetInfo(requirement)
						local insert = table.insert
						local v16 = table.pack(bold(paint(v15.Hex, tbl6.Escape(v15.Name))))
						insert(tbl13, table.unpack(v16, 1, v16.n))
					end

					fn34(table.concat(tbl13, tbl6.Separator()), false)
				end

				fn35("REWARD ODDS" .. tbl6.Separator() .. string.upper(fn21(v13)), fn19(v13))
				local v15 = fn26(v13)

				for i, v16 in ipairs(v15) do
					local v17 = tbl6.AssetInfo(v16.AssetId)
					local v18 = fn36()
					v18.Icon.Set({ Visible = v17.Icon ~= nil, Image = v17.Icon or "", StrokeColor = v17.Color })
					v18.Name.Set({ Text = tbl6.Escape(v17.Name) })

					v18.Rarity.Set({
						Text = string.upper(tostring(v17.Rarity)),
						Color = fn10(v17),
						Gradient = fn9(v17),
						GradientRotation = fn11(v17),
					})

					v18.Status.Set({ Text = fn29(v16.Chance) })
					local v19 = fn30(v16.Chance)

					if i == #v15 then
						v19 ..= tbl6.Separator() .. bold(paint(color2.Clock, "Chase pet"))
					end

					v18.Detail.Set({ Text = v19 })
				end

				fn35("UPCOMING RIFTS", color2.Text)

				for i = 1, 6 do
					local v16 = fn22(n29 + i)
					local n30 = (n29 + i) * n28
					local v17 = fn36()
					local GetBannerEggIcon = fn20("GetBannerEggIcon", v16)
					local v18 = fn19(v16)

					v17.Icon.Set({
						Visible = type(GetBannerEggIcon) == "string" and GetBannerEggIcon ~= "",
						Image = type(GetBannerEggIcon) == "string" and GetBannerEggIcon or "",
						StrokeColor = Color3.fromHex(v18),
					})

					v17.Name.Set({ Text = tbl6.Escape(fn21(v16)) })
					v17.Rarity.Set({ Text = i == 1 and "NEXT" or "#" .. i, Color = Color3.fromHex(v18), Gradient = nil })
					v17.Status.Set({ Text = bold(paint(color2.Clock, "in " .. fn28(n30 - serverTimeNow))) })
					local v19 = fn26(v16)
					local v20 = v19[#v19]
					local str = paint(color2.Hint, "Starts ") .. paint(color2.Text, fn27(n30))

					if v20 then
						local v21 = tbl6.AssetInfo(v20.AssetId)
						str ..= tbl6.Separator() .. paint(color2.Hint, "Chase ") .. bold(paint(v21.Hex, tbl6.Escape(v21.Name))) .. " " .. fn29(v20.Chance)
					end

					v17.Detail.Set({ Text = str })
				end

				fn35("NEXT TIME EACH RIFT OPENS", color2.Text)
				local v16 = ipairs
				local banners = v11.Banners or {}

				for _, banner in v16(banners) do
					local v17 = fn19(banner.Id)
					local v18 = table.pack(tbl6.Escape(fn21(banner.Id)))
					local v19 = paint
					v18.n = 2 + v18.n - 1
					table.move(v18, 1, v18.n, 2, v18)
					v18[1] = v17
					local v20 = bold(v19(table.unpack(v18, 1, v18.n)))
					local str

					if banner.Id == v13 then
						str = v20 .. tbl6.Separator() .. bold(paint(color2.Ready, "Open now"))
					else
						local v21 = nil

						for i = 1, 2000 do
							local id = banner.Id

							if fn22(n29 + i) == id then
								v21 = i
								break
							else
								v21 = nil
							end
						end

						if v21 then
							local n30 = (n29 + v21) * n28
							str = v20 .. tbl6.Separator() .. bold(paint(color2.Clock, "in " .. fn28(n30 - serverTimeNow))) .. tbl6.Separator() .. paint(color2.Text, fn27(n30))
						else
							str = v20 .. tbl6.Separator() .. paint(color2.Hint, "Not soon")
						end
					end

					fn34(str .. tbl6.Separator() .. paint(color2.Hint, "chance ") .. fn29(fn24(banner.Id)), false)
				end
			end

			for i = n26 + 1, #tbl9 do
				tbl9[i].Set({ Visible = false })
			end

			for i = n27 + 1, #tbl8 do
				tbl8[i].Frame.Set({ Visible = false })
			end

			fn18()
			n4 = 2
		end

		if not tbl6.Ready then
			v7:CreateText({
				Name = "Rift Predictor",
				Text = "Update the PXZD Library to use the predictor canvas.",
			})
		else
			local v13 = v7:CreateCanvas({
				Name = "Rift Predictor",
				Layout = "free",
				Style = {
					TextScale = 0.84,
					LineHeight = 1.1,
					MinLines = 16,
					MaxLines = 34,
					BackgroundTransparency = 0.5,
					ScrollBarColor = Color3.fromRGB(170, 174, 184),
					TextColor = Color3.fromRGB(255, 255, 255),
					TextStrokeTransparency = 0.7,
				},
				Build = function(arg)
					fn12(arg)
					pcall(fn33)
				end,
			})

			fn4(function()
				v13:Destroy()
			end)

			local n26 = 1

			local connection = RunService.Heartbeat:Connect(function(deltaTime)
				if not v10 or not tbl6.PageVisible() or not tbl6.IsShown(v10:Root()) then
					return
				end
				fn31()
				n26 += deltaTime

				if n26 >= 1 then
					n26 = 0
					pcall(fn33)
				end

				if n4 > 0 or flag then
					if n4 > 0 then
						n4 -= 1
					end

					pcall(fn18)
				end
			end)

			fn4(function()
				connection:Disconnect()
			end)
		end
	end

	local paint2, bold2, color3, n5, n6, n7, n8, n9, n10, n11
	local n12, n13, n14, n15, v11

	do
		local tbl11 = {
			{ min = 0.85, max = 1.05, weight = 2000 },
			{ min = 1.45, max = 1.55, weight = 250 },
			{ min = 1.9, max = 2.1, weight = 125 },
			{ min = 2.85, max = 3.15, weight = 62.5 },
			{ min = 3.8, max = 4.2, weight = 31.25 },
			{ min = 0.3, max = 0.45, weight = 18 },
			{ min = 0.1, max = 0.2, weight = 5 },
			{ min = 5.8, max = 6.2, weight = 15.625 },
			{ min = 9.5, max = 12.5, weight = 3 },
			{ min = 12, max = 17, weight = 0.05 },
			{ min = 20, max = 35, weight = 0.0001 },
		}

		paint2 = tbl6.Paint
		bold2 = tbl6.Bold
		color3 = tbl6.Color
		n5 = 5
		n6 = n5 + 0.8
		n7 = 1.2
		n8 = 1.2
		n9 = 0.936
		n10 = 2.3
		n11 = 0.25
		n12 = 0.18
		n13 = n10 + 0.6
		n14 = 0.24
		n15 = 0.22
		local n16 = 0.0909
		v11 = nil
		local tbl12 = {}
		local tbl13 = {}
		local tbl14 = {}
		local tbl15 = {}
		local n17 = 0
		local n18 = 0
		local n19 = 0.06
		local n20 = -1
		local n21 = -1
		local n22 = -1
		local n23 = 4
		local n24 = 3
		local flag2 = false
		local n25 = 0
		local v12 = nil

		local tbl16 = {
			{ Min = 0, Color = "#8F98A8" },
			{ Min = 0.3, Color = "#C6CDDA" },
			{ Min = 0.85, Color = "#FFFFFF" },
			{ Min = 1.45, Color = "#7CFF9E" },
			{ Min = 1.9, Color = "#4FE0FF" },
			{ Min = 2.85, Color = "#6FA0FF" },
			{ Min = 3.8, Color = "#C08BFF" },
			{ Min = 5.8, Color = "#FF9A3D" },
			{ Min = 9.5, Color = "#FF5C5C" },
			{ Min = 12, Color = "#FFD34D" },
			{ Min = 20, Color = "#FF4DE8" },
		}

		local function fn13(arg)
			local n26 = -math.huge
			local str = "#FFFFFF"

			for _, v13 in ipairs(tbl16) do
				if arg + 0.001 >= v13.Min and v13.Min > n26 then
					str = v13.Color
					n26 = v13.Min
				end
			end

			return str
		end

		local function fn14(arg, arg2)
			local eggRecords = tbl.EggRecords
			if type(eggRecords) ~= "table" or type(eggRecords.WeightKgForScale) ~= "function" then
				return nil
			end
			local ok, result = pcall(eggRecords.WeightKgForScale, arg, arg2)
			if ok and type(result) == "number" and result > 0 then
				return result
			end
			return nil
		end

		local function fn15(arg)
			if type(arg) ~= "table" or #arg == 0 then
				return nil
			end
			local n26 = -math.huge
			local v13 = nil

			for _, v14 in ipairs(arg) do
				local v15 = tbl6.MutationMultiplier({ v14 })

				if v15 > n26 then
					n26 = v15
					v13 = v14
				end
			end

			return v13
		end

		local function fn16()
			if v12 then
				return v12
			end
			local eggRecords = tbl.EggRecords
			local getupvalues_ = type(debug) == "table" and debug.getupvalues or getupvalues

			if type(eggRecords) == "table" and type(eggRecords.DrawAssetScale) == "function" and type(getupvalues_) == "function" then
				local ok, result = pcall(getupvalues_, eggRecords.DrawAssetScale)

				if ok and type(result) == "table" then
					for _, v13 in pairs(result) do
						if type(v13) == "table" and type(v13[1]) == "table" and v13[1].min and v13[1].weight then
							v12 = v13
							break
						end
					end
				end
			end

			v12 = v12 or tbl11
			return v12
		end

		local function fn17(arg, arg2, arg3)
			local fuseKernel = tbl.FuseKernel

			if type(fuseKernel) == "table" and type(fuseKernel.BandWeightBias) == "function" then
				local ok, result = pcall(fuseKernel.BandWeightBias, arg, arg2, arg3)
				if ok and type(result) == "number" then
					return result
				end
			end

			return math.exp(math.log((arg[1] + arg[2] + arg[3]) / 3) / 0.69314718055994529 * math.log((arg2 + arg3) / 2) / 0.69314718055994529 * 0.6)
		end

		local function fn18()
			local save = tbl.Save
			if type(save) ~= "table" or type(save.Get) ~= "function" then
				return nil
			end
			local ok, result = pcall(save.Get)
			if not ok or type(result) ~= "table" then
				return nil
			end
			local fusionSlots = type(result.FusionSlots) == "table" and 		WeldScanGap = 0.03,
		BusyLimit = 2.5,
	}

	local function fn12(arg, arg2, arg3, arg4, arg5, arg6)
		local tbl12 = {}

		for i = 1, arg do
			tbl12[#tbl12 + 1] = { At = arg2 + arg3 * (i - 1), To = "home" }
		end

		tbl12[#tbl12 + 1] = { At = arg4, To = "start" }

		return {
			Target = "home",
			LineOffset = 8,
			Height = 0,
			OffsetX = 0,
			OffsetZ = 0,
			Jitter = 0,
			Point = false,
			Disguise = true,
			Limp = false,
			Facing = "Zero",
			Freeze = true,
			StartAt = 0,
			StartRandom = 0,
			HopRandom = 0.085,
			HoldRandom = 0.395,
			Steps = tbl12,
			ReleaseAt = arg5,
			WeldScanGap = 0.03,
			BusyLimit = arg6,
		}
	end

	chilliAntiGuard = { LightDark = tbl7, Default = fn12(25, 0, 0.05, 1.27, 1.52, 2.5) }

	pcall(function()
		getgenv().ChilliAntiGuard = chilliAntiGuard
	end)

	tbl8 = {
		Card = Color3.fromRGB(15, 15, 19),
		CardTop = Color3.fromRGB(24, 22, 28),
		Stroke = Color3.fromRGB(48, 46, 56),
		Text = Color3.fromRGB(240, 238, 244),
		AccentA = Color3.fromRGB(255, 72, 72),
		AccentB = Color3.fromRGB(255, 150, 60),
		Good = Color3.fromRGB(80, 220, 140),
		Work = Color3.fromRGB(255, 190, 70),
		Bad = Color3.fromRGB(240, 90, 90),
		Off = Color3.fromRGB(58, 56, 66),
	}

	tbl9 = {
		{ Path = { "GearGiver_Slap", "Podium" }, Offset = Vector3.new(-16.415, 21.072, -6.106) },
		{
			Path = { "World", "Machines", "RiftMachine", "Rift", "Meshes/VoidPortal_Cube.003" },
			Offset = Vector3.new(-26.776, 1.75, 18.665),
		},
		{
			Path = { "__OBJECTS", "Machines", "RiftMachine", "Rift", "Meshes/VoidPortal_Cube.003" },
			Offset = Vector3.new(-26.776, 1.75, 18.665),
		},
	}

	n3 = 52
	flag = true
	tbl10 = {}

	tbl11 = {
		AreaId = nil,
		SignalCarrying = false,
		WeldCarrying = false,
		Carrying = false,
		Active = false,
		Disguise = nil,
		FlashRequest = nil,
		FlashUntil = 0,
	}

	fn9 = function()
		local tbl12 = {}

		for i = 1, math.random(10, 16) do
			tbl12[i] = string.char(math.random(97, 122))
		end

		return table.concat(tbl12)
	end

	hui = nil

	pcall(function()
		hui = gethui()
	end)

	hui = hui or CoreGui

	local function fn13(arg, parent, arg2)
		local instance = Instance.new(arg)
		instance.Name = fn9()
		local v10 = pairs
		local tbl12 = arg2 or {}

		for k, v11 in v10(tbl12) do
			instance[k] = v11
		end

		instance.Parent = parent
		return instance
	end

	fn10 = function(arg, arg2, arg3, arg4)
		local ok, result = pcall(function()
			return TweenService:Create(arg, TweenInfo.new(arg2, arg4 or Enum.EasingStyle.Quint, Enum.EasingDirection.Out), arg3)
		end)

		if ok and result then
			result:Play()
		end
	end

	ScreenGui = fn13("ScreenGui", nil, {
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		DisplayOrder = -100,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	})

	local Frame = fn13("Frame", ScreenGui, {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 1, -120),
		Size = UDim2.fromOffset(226, 52),
		BackgroundTransparency = 1,
	})

	local UIScale2 = fn13("UIScale", Frame, { Scale = 1 })

	local Frame2 = fn13("Frame", Frame, {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = tbl8.Card,
		BorderSizePixel = 0,
		Active = true,
	})

	fn13("UICorner", Frame2, { CornerRadius = UDim.new(0, 14) })
	UIScale = fn13("UIScale", Frame2, { Scale = 0.86 })
	fn13("UIGradient", Frame2, { Color = ColorSequence.new(tbl8.CardTop, tbl8.Card), Rotation = 90 })

	local UIStroke = fn13("UIStroke", Frame2, {
		Thickness = 1.5,
		Color = Color3.fromRGB(255, 255, 255),
		Transparency = 0.2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	})

	local UIGradient = fn13("UIGradient", UIStroke, { Color = ColorSequence.new(tbl8.Stroke, tbl8.Stroke) })

	local Frame3 = fn13("Frame", Frame2, {
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 10, 0.5, 0),
		Size = UDim2.fromOffset(36, 36),
		BackgroundColor3 = Color3.fromRGB(28, 26, 32),
		BorderSizePixel = 0,
		ZIndex = 2,
	})

	fn13("UICorner", Frame3, { CornerRadius = UDim.new(0, 11) })
	local UIStroke2 = fn13("UIStroke", Frame3, { Thickness = 1.5, Color = tbl8.Off, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })

	local ImageLabel = fn13("ImageLabel", Frame3, {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromScale(0.86, 0.86),
		BackgroundTransparency = 1,
		Image = "rbxassetid://108485396062507",
		ImageTransparency = 0.35,
		ScaleType = Enum.ScaleType.Crop,
		ZIndex = 3,
	})

	fn13("UICorner", ImageLabel, { CornerRadius = UDim.new(0, 8) })
	local UIScale3 = fn13("UIScale", ImageLabel, { Scale = 1 })
	local color2 = Color3.fromRGB

	fn13("UIGradient", fn13("TextLabel", Frame2, {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 56, 0, 7),
		Size = UDim2.new(1, -112, 0, 15),
		Font = Enum.Font.BuilderSansExtraBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		Text = "PXZD Hub",
		ZIndex = 2,
	}), { Color = ColorSequence.new(Color3.fromRGB(52, 199, 89), color2(255, 149, 0)) })

	fn13("TextLabel", Frame2, {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 56, 0, 22),
		Size = UDim2.new(1, -112, 0, 20),
		Font = Enum.Font.GothamBlack,
		TextSize = 15,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = tbl8.Text,
		Text = "Anti Guard",
		ZIndex = 2,
	})

	local TextButton = fn13("TextButton", Frame2, {
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, -12, 0.5, 0),
		Size = UDim2.fromOffset(42, 22),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		AutoButtonColor = false,
		BorderSizePixel = 0,
		Text = "",
		ZIndex = 2,
	})

	fn13("UICorner", TextButton, { CornerRadius = UDim.new(1, 0) })
	local UIGradient2 = fn13("UIGradient", TextButton, { Color = ColorSequence.new(tbl8.Off, tbl8.Off) })

	local Frame4 = fn13("Frame", TextButton, {
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 3, 0.5, 0),
		Size = UDim2.fromOffset(16, 16),
		BackgroundColor3 = Color3.fromRGB(245, 245, 250),
		BorderSizePixel = 0,
		ZIndex = 3,
	})

	fn13("UICorner", Frame4, { CornerRadius = UDim.new(1, 0) })

	local function fn14()
		return antiGuard.Enabled and tbl8.AccentA or tbl8.Off
	end

	local function render(arg)
		local n4 = arg and 0 or 0.28

		if antiGuard.Enabled then
			UIGradient2.Color = ColorSequence.new(tbl8.AccentA, tbl8.AccentB)
			local v10 = UIGradient
			local colorSequence = ColorSequence.new
			local tbl12 = {}
			local v11 = ColorSequenceKeypoint.new(0, tbl8.Stroke)
			local v12 = ColorSequenceKeypoint.new(0.45, tbl8.AccentA)
			local v13 = ColorSequenceKeypoint.new(0.55, tbl8.AccentB)
			tbl12[1] = v11
			tbl12[2] = v12
			tbl12[3] = v13

			do
				local values = table.pack(ColorSequenceKeypoint.new(1, tbl8.Stroke))
				table.move(values, 1, values.n, 4, tbl12)
			end

			v10.Color = colorSequence(tbl12)
			fn10(Frame4, n4, { Position = UDim2.new(1, -19, 0.5, 0) }, Enum.EasingStyle.Back)
			fn10(ImageLabel, n4, { ImageTransparency = 0 })
			fn10(UIStroke, 0.3, { Transparency = 0 })
		else
			UIGradient2.Color = ColorSequence.new(tbl8.Off, tbl8.Off)
			UIGradient.Color = ColorSequence.new(tbl8.Stroke, tbl8.Stroke)
			fn10(Frame4, n4, { Position = UDim2.new(0, 3, 0.5, 0) }, Enum.EasingStyle.Back)
			fn10(ImageLabel, n4, { ImageTransparency = 0.35 })
			fn10(UIStroke, 0.3, { Transparency = 0.2 })
		end

		if tbl11.FlashUntil <= os.clock() then
			fn10(UIStroke2, n4, { Color = fn14() })
		end
	end

	fn11 = function(arg, arg2)
		tbl11.FlashRequest = { Color = arg, Hold = arg2 }
	end

	local function fn15()
		local flashRequest = tbl11.FlashRequest
		if not flashRequest then
			return
		end
		tbl11.FlashRequest = nil
		tbl11.FlashUntil = os.clock() + (flashRequest.Hold or 0)
		fn10(UIStroke2, 0.2, { Color = flashRequest.Color })

		if flashRequest.Hold then
			task.delay(flashRequest.Hold, function()
				local flag2 = flag

				if flag then
					local flashUntil = tbl11.FlashUntil
					flag2 = os.clock() >= flashUntil
				end

				if flag2 then
					fn10(UIStroke2, 0.3, { Color = fn14() })
				end
			end)
		end
	end

	local function fn16(arg)
		local handle = antiGuard.Handle
		if type(handle) ~= "table" then
			return
		end

		for _, v10 in ipairs({ "Set", "SetValue" }) do
			local ok, result = pcall(function()
				return handle[v10]
			end)

			if ok and type(result) == "function" and pcall(result, handle, arg) then
				return
			end
		end
	end

	antiGuard.Render = render

	local TextButton2 = fn13("TextButton", Frame2, {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Text = "",
		ZIndex = 10,
	})

	tbl10[#tbl10 + 1] = TextButton2.MouseButton1Click:Connect(function()
		antiGuard.Enabled = not antiGuard.Enabled
		render(false)
		fn16(antiGuard.Enabled)
		fn10(UIScale3, 0.12, { Scale = 1.15 })

		task.delay(0.12, function()
			if flag then
				fn10(UIScale3, 0.3, { Scale = 1 }, Enum.EasingStyle.Back)
			end
		end)
	end)

	local size = TextButton.Size

	tbl10[#tbl10 + 1] = TextButton2.MouseEnter:Connect(function()
		fn10(TextButton, 0.15, { Size = size + UDim2.fromOffset(2, 2) })
	end)

	tbl10[#tbl10 + 1] = TextButton2.MouseLeave:Connect(function()
		fn10(TextButton, 0.15, { Size = size })
	end)

	local tbl12 = {
		Hotbar = true,
		HotBar = true,
		Toolbar = true,
		ToolBar = true,
		Backpack = true,
		Inventory = true,
	}

	local tbl13 = {}
	local huge = math.huge
	local huge2 = math.huge
	local rotation = 0
	local n4 = nil

	local function fn17(arg)
		while arg do
			if arg:IsA("GuiObject") and not arg.Visible then
				return false
			end

			if arg:IsA("LayerCollector") then
				return arg.Enabled
			end
			arg = arg.Parent
		end

		return false
	end

	local function fn18()
		local ok, result = pcall(function()
			return GuiService:GetGuiInset().Y
		end)

		return ok and result or 0
	end

	local function fn19(arg)
		local v10 = nil

		for _, descendant in ipairs(arg:GetDescendants()) do
			if descendant:IsA("GuiButton") and descendant.Visible and descendant.AbsoluteSize.Y > 8 and descendant.AbsoluteSize.X > 8 then
				local y = descendant.AbsolutePosition.Y

				if not v10 or y < v10 then
					v10 = y
				end
			end
		end

		return v10 or arg.AbsolutePosition.Y
	end

	local function fn20()
		table.clear(tbl13)
		local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
		if not playerGui then
			return
		end

		for _, descendant in ipairs(playerGui:GetDescendants()) do
			if descendant:IsA("GuiObject") and tbl12[descendant.Name] then
				tbl13[#tbl13 + 1] = descendant
			end
		end
	end

	local function fn21()
		local tbl14 = {}

		pcall(function()
			if not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) then
				return
			end

			for _, child in ipairs(CoreGui.RobloxGui.Backpack:GetChildren()) do
				if child:IsA("GuiObject") then
					tbl14[#tbl14 + 1] = child
				end
			end
		end)

		for _, v10 in ipairs(tbl13) do
			if v10.Parent then
				tbl14[#tbl14 + 1] = v10
			end
		end

		return tbl14
	end

	local function fn22()
		local currentCamera = workspace.CurrentCamera
		if not currentCamera then
			return
		end
		local viewportSize = currentCamera.ViewportSize
		if viewportSize.X < 10 or viewportSize.Y < 10 then
			return
		end
		local flag2 = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
		local n5 = math.min(viewportSize.X / 1280, viewportSize.Y / 720)
		local scale = flag2 and math.clamp(n5 * 1.05, 0.6, 0.8) * 0.97 or math.clamp(n5, 0.8, 1.1)
		UIScale2.Scale = scale
		local backgroundTransparency = flag2 and 0.3 or 0

		if Frame2.BackgroundTransparency ~= backgroundTransparency then
			Frame2.BackgroundTransparency = backgroundTransparency
			Frame3.BackgroundTransparency = backgroundTransparency
		end

		local n6 = viewportSize.Y - 8 * scale
		local flag3 = false

		for _, v10 in ipairs(fn21()) do
			local ok, result = pcall(fn17, v10)

			if ok and result then
				local absoluteSize = v10.AbsoluteSize
				local y = v10.AbsolutePosition.Y

				if absoluteSize.X > 20 and absoluteSize.Y > 20 and absoluteSize.Y < viewportSize.Y * 0.4 and y + absoluteSize.Y / 2 > viewportSize.Y * 0.5 then
					local ok2, result2 = pcall(fn19, v10)
					y = ok2 and result2 or y
					flag3 = true
					n6 = math.min(n6, y + fn18(v10))
				end
			end
		end

		if flag3 then
			n4 = viewportSize.Y - n6
		elseif n4 then
			n6 = viewportSize.Y - n4
		end

		local n7 = math.max(n6 - (flag2 and 4 or 6) * scale - n3 * scale / 2, n3 * scale / 2 + 8)
		Frame.Position = UDim2.new(0.5, 0, 0, n7)
	end

	tbl10[#tbl10 + 1] = RunService.RenderStepped:Connect(function(deltaTime)
		fn15()
		huge += deltaTime
		huge2 += deltaTime

		if huge >= 3 then
			huge = 0
			pcall(fn20)
		end

		if huge2 >= 0.2 then
			huge2 = 0
			pcall(fn22)
		end

		if antiGuard.Enabled then
			rotation = (rotation + deltaTime * (tbl11.Active and 360 or 90)) % 360
			UIGradient.Rotation = rotation
		end
	end)

	render(true)
end

antiGuard.ShowPanel = function(arg)
	ScreenGui.Enabled = arg == true
end

ScreenGui.Enabled = antiGuard.PanelShown == true
ScreenGui.Parent = hui
fn10(UIScale, 0.45, { Scale = 1 }, Enum.EasingStyle.Back)

do
	local function fn12()
		local v10 = tbl4.Root()
		if not v10 then
			return nil
		end

		for _, child in ipairs(workspace:GetChildren()) do
			if child:IsA("Model") and child:FindFirstChild("Hitbox") then
				for _, descendant in ipairs(child:GetDescendants()) do
					if descendant:IsA("JointInstance") or descendant:IsA("WeldConstraint") or descendant:IsA("RigidConstraint") then
						local ok, result, result2 = pcall(function()
							return descendant.Part0, descendant.Part1
						end)

						if ok and (result == v10 or result2 == v10) then
							return child
						end
					end
				end
			end
		end

		return nil
	end

	local function fn13(arg, parent)
		local tbl12 = {}

		for _, descendant in ipairs(arg:GetDescendants()) do
			tbl12[descendant] = descendant.Archivable

			pcall(function()
				descendant.Archivable = true
			end)
		end

		local archivable = arg.Archivable
		arg.Archivable = true

		local ok, result = pcall(function()
			return arg:Clone()
		end)

		arg.Archivable = archivable

		for k, v10 in pairs(tbl12) do
			pcall(function()
				k.Archivable = v10
			end)
		end

		if not ok or not result then
			return nil
		end
		result.Name = fn9()

		for _, descendant in ipairs(result:GetDescendants()) do
			if descendant:IsA("LuaSourceContainer") or descendant:IsA("Sound") or descendant:IsA("ForceField") or descendant:IsA("JointInstance") or descendant:IsA("Constraint") or descendant:IsA("WeldConstraint") or descendant:IsA("BodyMover") or descendant:IsA("ProximityPrompt") or descendant:IsA("BillboardGui") then
				pcall(function()
					descendant:Destroy()
				end)
			elseif descendant:IsA("BasePart") then
				descendant.Anchored = true
				descendant.CanCollide = false
				descendant.CanQuery = false
				descendant.CanTouch = false
			elseif descendant:IsA("Humanoid") then
				descendant.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
				descendant.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
			end
		end

		result.Parent = parent
		return result
	end

	local function fn14(arg, arg2)
		local currentCamera = workspace.CurrentCamera
		if not arg or not currentCamera or tbl11.Disguise then
			return
		end
		arg2 = arg2 or Vector3.zero
		local disguise = { Camera = currentCamera, CameraType = currentCamera.CameraType, CameraCFrame = currentCamera.CFrame, Copies = {}, Hidden = {} }
		tbl11.Disguise = disguise
		local tbl12 = { arg }
		local ok, result = pcall(fn12)

		if ok and result then
			tbl12[#tbl12 + 1] = result
		end

		for _, v10 in ipairs(tbl12) do
			for _, descendant in ipairs(v10:GetDescendants()) do
				if descendant:IsA("BasePart") or descendant:IsA("Decal") or descendant:IsA("Texture") then
					disguise.Hidden[#disguise.Hidden + 1] = descendant
				end
			end
		end

		local function fn15()
			for _, v10 in ipairs(disguise.Hidden) do
				pcall(function()
					v10.LocalTransparencyModifier = 1
				end)
			end

			pcall(function()
				if currentCamera.CameraType ~= Enum.CameraType.Scriptable then
					currentCamera.CameraType = Enum.CameraType.Scriptable
				end

				currentCamera.CFrame = disguise.CameraCFrame
			end)
		end

		fn15()
		disguise.BindName = fn9()

		if not pcall(function()
			RunService:BindToRenderStep(disguise.BindName, Enum.RenderPriority.Last.Value + 1, fn15)
		end) then
			disguise.BindName = nil
			disguise.Link = RunService.RenderStepped:Connect(fn15)
		end

		disguise.Beat = RunService.Heartbeat:Connect(fn15)

		for _, v10 in ipairs(tbl12) do
			local ok2, result2 = pcall(fn13, v10, currentCamera)

			if ok2 and result2 then
				if arg2.Magnitude > 0.01 then
					for _, descendant in ipairs(result2:GetDescendants()) do
						if descendant:IsA("BasePart") then
							pcall(function()
								descendant.CFrame = descendant.CFrame + arg2
							end)
						end
					end
				end

				disguise.Copies[#disguise.Copies + 1] = result2
			end
		end
	end

	local function fn15()
		local disguise = tbl11.Disguise
		if not disguise then
			return
		end
		tbl11.Disguise = nil

		if disguise.BindName then
			pcall(function()
				RunService:UnbindFromRenderStep(disguise.BindName)
			end)
		end

		if disguise.Link then
			pcall(function()
				disguise.Link:Disconnect()
			end)
		end

		if disguise.Beat then
			pcall(function()
				disguise.Beat:Disconnect()
			end)
		end

		for _, v10 in ipairs(disguise.Hidden) do
			pcall(function()
				v10.LocalTransparencyModifier = 0
			end)
		end

		pcall(function()
			disguise.Camera.CameraType = disguise.CameraType
		end)

		for _, copy in ipairs(disguise.Copies) do
			pcall(function()
				copy:Destroy()
			end)
		end
	end

	local function fn16()
		for _, v10 in ipairs(tbl9) do
			local v11 = workspace

			for _, v12 in ipairs(v10.Path) do
				v11 = v11 and v11:FindFirstChild(v12) or nil
			end

			if v11 and v11:IsA("BasePart") then
				return v11.CFrame:PointToWorldSpace(v10.Offset)
			end
		end

		return Vector3.new(528.7, 70.57, -364.11)
	end

	local function fn17(arg, arg2, arg3, arg4, arg5)
		local cFrame = CFrame.new(arg3) * arg4

		pcall(function()
			arg:PivotTo(cFrame)
		end)

		if (arg2.Position - arg3).Magnitude > 3 then
			pcall(function()
				arg2.CFrame = cFrame
			end)
		end

		if arg5 == false then
			return
		end

		for _, descendant in ipairs(arg:GetDescendants()) do
			if descendant:IsA("BasePart") then
				pcall(function()
					descendant.AssemblyLinearVelocity = Vector3.zero
					descendant.AssemblyAngularVelocity = Vector3.zero
				end)
			end
		end
	end

	local function fn18()
		local areaId = tbl11.AreaId

		if type(areaId) ~= "string" or areaId == "" then
			areaId = type(tbl4.Steal) == "table" and tbl4.Steal.CarryAreaId or nil
		end

		if type(areaId) ~= "string" or areaId == "" then
			areaId = localPlayer:GetAttribute("AreaId")
			areaId = type(areaId) == "string" and areaId or nil
		end

		return areaId
	end

	local tbl12 = { lightdark = "LightDark" }

	local function fn19(arg)
		if type(arg) ~= "string" then
			return "Default"
		end
		local lower = string.lower
		local v10 = string.gsub(arg, "[^%a]", "")
		return tbl12[lower(v10)] or "Default"
	end

	local function fn20()
		local ok, result = pcall(function()
			return getgenv().ChilliAntiGuard
		end)

		if ok and type(result) == "table" then
			if type(result.Steps) == "table" then
				return result
			end
			local default = result[fn19(fn18())] or result.Default
			if type(default) == "table" then
				return default
			end
		end

		return chilliAntiGuard[fn19(fn18())] or tbl7
	end

	local function fn21(arg, arg2)
		local world = workspace:FindFirstChild("World") or workspace:FindFirstChild("__OBJECTS")
		world = world and world:FindFirstChild("Areas")
		world = world and world:FindFirstChild("SeparationLine")

		if world and world:IsA("BasePart") then
			local cFrame = world.CFrame
			local v10 = (Vector3.new(0, 1, 0)):Cross(world.Size.X >= world.Size.Z and cFrame.RightVector or cFrame.LookVector)
			local vector = Vector3.new(v10.X, 0, v10.
