
CreateThread(function()
    local dict = "missminuteman_1ig_2"

    
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
    local manosUp = false
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, 323) then -- con la X
            if not manosUp then
             TaskPlayAnim(GetPlayerPed(-1), dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
                manosUp = true
            else
                manosUp = false
                ClearPedTasks(GetPlayerPed(-1))
            end
        end
    end
end) 

