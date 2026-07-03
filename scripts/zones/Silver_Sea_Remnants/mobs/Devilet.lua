-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Devilet
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    local instance = mob:getInstance()
    if not instance then
        return
    end

    local door = GetNPCByID(ID.npc[1][1].DOOR1, instance)
    if optParams.isKiller then
        local stage = instance:getStage()

        -- Floor 2 SE Path
        if stage == 2 then
            if
                ID.npc[2] and
                ID.npc[2][3] and
                ID.npc[2][3].DOOR1
            then
                local door = GetNPCByID(ID.npc[2][3].DOOR1, instance)
                if door then
                    local openCount = door:getLocalVar('open')
                    door:setLocalVar('open', openCount + 1)
                end
            end

            local drops = ID.drops[3].CELLS
            if drops and #drops >= 2 then
                -- Safely pick two distinct random indices
                local index1 = math.random(1, #drops)
                local index2 = math.random(1, #drops - 1)

                if index2 >= index1 then
                    index2 = index2 + 1
                end

                local cell1 = drops[index1]
                local cell2 = drops[index2]

                player:addTreasure(cell1, mob)
                player:addTreasure(cell1, mob)
                player:addTreasure(cell2, mob)
                player:addTreasure(cell2, mob)
            end

            local prog = instance:getProgress()
            instance:setProgress(prog + 1)

        elseif stage == 3 then
            local door = GetNPCByID(ID.npc[3][1].DOOR5, instance)
            if door then
                door:setLocalVar('open', 1)
            end

            local slot = GetNPCByID(ID.npc[3][1].SLOT, instance)
            if slot then
                slot:setStatus(xi.status.NORMAL)
            end

            for i = xi.item.CASTELLANUS_CELL, xi.item.STRATUS_CELL do
                player:addTreasure(i, mob)
            end

            player:addTreasure(xi.item.CUMULUS_CELL, mob)
        end
    end
end

return entity
