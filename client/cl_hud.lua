Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
    DrawHud("$ " .. tonumber(string.format("%.2f", "25.0")) .. "    G " .. tonumber(string.format("%.2f", "1.0")), 0.75, 0.0, 0.4, 0.4, true, 255, 255, 255)
    end
    end)







function DrawHud(str, x, y, w, h, enableShadow, col1, col2, col3)
    local str = CreateVarString(10, "LITERAL_STRING", str)


    --Citizen.InvokeNative(0x66E0276CC5F6B9DA, 2)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), 255)
	SetTextCentre(true)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    DrawText(str, x, y)
end

function CreateVarString(p0, p1, variadic)
    return Citizen.InvokeNative(0xFA925AC00EB830B9, p0, p1, variadic, Citizen.ResultAsLong())
end