if not lib then return end

local Items = require 'modules.items.shared' --[[@as table<string, OxClientItem>]]

local function sendDisplayMetadata(data)
	SendNUIMessage({
		action = 'displayMetadata',
		data = data
	})
end

--- use array of single key value pairs to dictate order
---@param metadata string | table<string, string> | table<string, string>[]
---@param value? string
local function displayMetadata(metadata, value)
	local data = {}

	if type(metadata) == 'string' then
		if not value then return end

		data = { { metadata = metadata, value = value } }
	elseif table.type(metadata) == 'array' then
		for i = 1, #metadata do
			for k, v in pairs(metadata[i]) do
				data[i] = {
					metadata = k,
					value = v,
				}
			end
		end
	else
		for k, v in pairs(metadata) do
			data[#data + 1] = {
				metadata = k,
				value = v,
			}
		end
	end

	if client.uiLoaded then
		return sendDisplayMetadata(data)
	end

	CreateThread(function()
		repeat Wait(100) until client.uiLoaded

		sendDisplayMetadata(data)
	end)
end

exports('displayMetadata', displayMetadata)

---@param _ table?
---@param name string?
---@return table?
local function getItem(_, name)
	if not name then return Items end

	if type(name) ~= 'string' then return end

	name = name:lower()

	if name:sub(0, 7) == 'weapon_' then
		name = name:upper()
	end

	return Items[name]
end

setmetatable(Items --[[@as table]], {
	__call = getItem
})

---@cast Items +fun(itemName: string): OxClientItem
---@cast Items +fun(): table<string, OxClientItem>

local function Item(name, cb)
	local item = Items[name]
	if item then
		if not item.client?.export and not item.client?.event then
			item.effect = cb
		end
	end
end

local ox_inventory = exports[shared.resource]

-----------------------------------------------------------------------------------------------
-- Clientside item use functions
-----------------------------------------------------------------------------------------------

Item('bandage', function(data, slot)
	local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
	ox_inventory:useItem(data, function(data)
		if data then
			SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health + maxHealth / 16)))
			lib.notify({ description = 'You feel better already' })
		end
	end)
end)

Item('medikit', function(data, slot)
	local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
	ox_inventory:useItem(data, function(data)
		if data then
			SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health + maxHealth / 4)))
			lib.notify({ description = 'You feel better already' })
		end
	end)
end)

local busyclean = false

Item('cleankit', function(data, slot)
    if busyclean then
        lib.notify({
            title = 'Fehler',
            description = 'Du bist bereits dabei, ein Fahrzeug zu reinigen.',
            type = 'error'
        })
        return
    else
        local Player = PlayerPedId()
        Vehicle = lib.getClosestVehicle(GetEntityCoords(Player), 5.0, true)

        if not Vehicle then
            lib.notify({
                title = 'Fehler',
                description = 'Kein Fahrzeug in der Nähe gefunden.',
                type = 'error'
            })
            return
        end
        
        busyclean = true
        
        if lib.progressBar({
                duration = 2500,
                label = 'Fahrzeug wird gereinigt...',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    car = true,
                    move = true,
                },
                anim = {
                    dict = 'amb@world_human_maid_clean@',
                    clip = 'base',
                    flag = 49
                },
                prop = {
                    model = `prop_sponge_01`,
                    bone = 57005,
                    pos = { x = 0.1, y = 0.0, z = -0.02 },
                    rot = { x = -90.0, y = 0.0, z = 0.0 }
                }
            }) then
            
            local success = lib.skillCheck({ { areaSize = 35, speedMultiplier = 0.75 } }, { 'w' })

            if success then
                ox_inventory:useItem(data, function(data)
					local exp = math.random(5, 10)
                    if data then
                        SetVehicleDirtLevel(Vehicle, 0.0) -- Removes dirt from vehicle
                        lib.notify({
                            title = 'Blitzeblank!',
                            description = 'Dein Fahrzeug wurde gereinigt.',
                            type = 'success'
                        })
                        TaskTurnPedToFaceEntity(Player, Vehicle, 100)
                        busyclean = false
                    end
                end)
            else
                lib.notify({
                    title = 'Fehlgeschlagen',
                    description = 'Das Fahrzeug konnte nicht gereinigt werden...',
                    type = 'error'
                })
                busyclean = false
                TaskTurnPedToFaceEntity(Player, Vehicle, 100)
            end
        else
            lib.notify({
                title = 'Abgebrochen',
                description = 'Du hast die Reinigung abgebrochen...',
                type = 'error'
            })
            busyclean = false
            TaskTurnPedToFaceEntity(Player, Vehicle, 100)
        end
    end
end)

local busy = false

Item('repairkit', function(data, slot)
	if busy then
		lib.notify({
			title = 'Fehler',
			description = 'Du bist bereits dabei ein Fahrzeug zu reparieren.',
			type = 'error'
		})
		return
	elseif not busy and IsPedInAnyVehicle(PlayerPedId(), false) then 
		lib.notify({
			title = 'Fehler',
			description = 'Du kannst kein Fahrzeug reparieren, während du in einem Fahrzeug bist.',
			type = 'error'
		})
		return
	else
		local Player = PlayerPedId()
		Vehicle = lib.getClosestVehicle(GetEntityCoords(Player), 5.0, true)
		repairVehicle = Vehicle

		TriggerEvent('ox_inventory:disarm', Player, false)

		if not Vehicle then
			lib.notify({
				title = 'Fehler',
				description = 'Kein Fahrzeug in der Nähe gefunden.',
				type = 'error'
			})
			return
		end
		if lib.progressBar({
				duration = 2500,
				label = 'Benutze Reparaturkit',
				useWhileDead = false,
				canCancel = true,
				disable = {
					car = true,
					move = true,
				},
				anim = {
					dict = 'mini@repair',
					clip = 'fixing_a_player',
					flag = 49
				},
			}) then
			local anim = { dict = 'mini@repair', clip = 'fixing_a_player', flag = 49 }
			lib.playAnim(PlayerPedId(), anim.dict, anim.clip, 3.0, 3.0, -1, anim.flag, 0, false, false, false)
			local success = lib.skillCheck({ { areaSize = 35, speedMultiplier = 0.75 } }, { 'w' })
			ClearPedTasks(PlayerPedId())

			if success then
				local exp = math.random(5, 700)
				ox_inventory:useItem(data, function(data)
					if data then
						Wait(500)
						SetVehicleFixed(Vehicle)
						SetVehicleDeformationFixed(Vehicle)
						SetVehicleUndriveable(Vehicle, false)
						lib.notify({
							title = 'So gut wie neu',
							description = 'Dein Auto wurde repariert.',
							type = 'success'
						})
						TaskTurnPedToFaceEntity(Player, Vehicle, 100)
						busy = false
					end
				end)
			else
				lib.notify({
					title = 'Fehlgeschlagen',
					description = 'Dein Auto wurde nicht repariert...',
					type = 'error'
				})
				busy = false
				TaskTurnPedToFaceEntity(Player, Vehicle, 100)
			end
		else
			lib.notify({
				title = 'Abgebrochen',
				description = 'Du hast die Reperatur abgebrochen...',
				type = 'error'
			})
			busy = false
			TaskTurnPedToFaceEntity(Player, Vehicle, 100)
		end
	end
end)


Item('armour', function(data, slot)
	if GetPedArmour(cache.ped) < 100 then
		ox_inventory:useItem(data, function(data)
			if data then
				SetPlayerMaxArmour(PlayerData.id, 100)
				SetPedArmour(cache.ped, 100)
			end
		end)
	end
end)

Item('handcuffs', function(data, slot)
	ox_inventory:useItem(data, function(data)
		TriggerEvent("jobs_creator:actions:hardHandcuff")
	end)
end)

Item('ziptie', function(data, slot)
	ox_inventory:useItem(data, function(data)
		TriggerEvent("jobs_creator:actions:softHandcuff")
	end)
end)

client.parachute = false
Item('parachute', function(data, slot)
	if not client.parachute then
		ox_inventory:useItem(data, function(data)
			if data then
				local chute = `GADGET_PARACHUTE`
				SetPlayerParachuteTintIndex(PlayerData.id, -1)
				GiveWeaponToPed(cache.ped, chute, 0, true, false)
				SetPedGadget(cache.ped, chute, true)
				lib.requestModel(1269906701)
				client.parachute = { CreateParachuteBagObject(cache.ped, true, true), slot?.metadata?.type or -1 }
				if slot.metadata.type then
					SetPlayerParachuteTintIndex(PlayerData.id, slot.metadata.type)
				end
			end
		end)
	end
end)

Item('phone', function(data, slot)
	local success, result = pcall(function()
		return exports['roadphone']:isPhoneOpen()
	end)

	if success then
		exports['roadphone']:togglePhone()
	end
end)

Item('clothing', function(data, slot)
	local metadata = slot.metadata

	if not metadata.drawable then return print('Clothing is missing drawable in metadata') end
	if not metadata.texture then return print('Clothing is missing texture in metadata') end

	if metadata.prop then
		if not SetPedPreloadPropData(cache.ped, metadata.prop, metadata.drawable, metadata.texture) then
			return print('Clothing has invalid prop for this ped')
		end
	elseif metadata.component then
		if not IsPedComponentVariationValid(cache.ped, metadata.component, metadata.drawable, metadata.texture) then
			return print('Clothing has invalid component for this ped')
		end
	else
		return print('Clothing is missing prop/component id in metadata')
	end

	ox_inventory:useItem(data, function(data)
		if data then
			metadata = data.metadata

			if metadata.prop then
				local prop = GetPedPropIndex(cache.ped, metadata.prop)
				local texture = GetPedPropTextureIndex(cache.ped, metadata.prop)

				if metadata.drawable == prop and metadata.texture == texture then
					return ClearPedProp(cache.ped, metadata.prop)
				end

				-- { prop = 0, drawable = 2, texture = 1 } = grey beanie
				SetPedPropIndex(cache.ped, metadata.prop, metadata.drawable, metadata.texture, false);
			elseif metadata.component then
				local drawable = GetPedDrawableVariation(cache.ped, metadata.component)
				local texture = GetPedTextureVariation(cache.ped, metadata.component)

				if metadata.drawable == drawable and metadata.texture == texture then
					return -- item matches (setup defaults so we can strip?)
				end

				-- { component = 4, drawable = 4, texture = 1 } = jeans w/ belt
				SetPedComponentVariation(cache.ped, metadata.component, metadata.drawable, metadata.texture, 0);
			end
		end
	end)
end)

-----------------------------------------------------------------------------------------------

exports('Items', function(item) return getItem(nil, item) end)
exports('ItemList', function(item) return getItem(nil, item) end)

return Items
