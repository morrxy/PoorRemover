local _, L = ...

SLASH_REMOVEPOOR1, SLASH_REMOVEPOOR2 = '/removepoor', '/rmpr'

function SlashCmdList.REMOVEPOOR(msg, editBox)
    for i = 0, 4 do
        for j = 1, GetContainerNumSlots(i) do
            local k = GetContainerItemLink(i, j)
            if k then
                local _, _, r = GetItemInfo(k)
                if r == 0 then
                    PickupContainerItem(i, j)
                    DeleteCursorItem()
                    print(k .. L["destroyed"])
                end
            end
        end
    end
end
