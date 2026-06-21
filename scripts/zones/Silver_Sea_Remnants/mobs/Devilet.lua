-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Devilet
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    local instance = mob:getInstance()
    if not instance then
        return
    end

    local stage = instance:getStage()

    if isKiller then
        -- Floor 2 SE Path
        if stage == 2 then
            if ID.npc[2] and ID.npc[2][3] and ID.npc[2][3].DOOR4 then
                local door4 = GetNPCByID(ID.npc[2][3].DOOR4, instance)
                if door4 then
                    local openCount = door4:getLocalVar("open")
                    door4:setLocalVar("open", openCount + 1)
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

            -- Count towards Powderkeg Yanadahn
            local prog = instance:getProgress()
            instance:setProgress(prog + 1)
        end
    end
end

return entity
