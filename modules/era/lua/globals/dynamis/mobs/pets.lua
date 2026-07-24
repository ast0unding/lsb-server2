-----------------------------------
-- Era Dynamis - pet AI helpers
--
-- Shared behavior for BST/DRG/SMN pets released by dynamis mobs.
-- For mobs with multiple pets we risk unexpected behavior, since pet
-- AI relies on the master's AI state and core actions assume a single
-- pet; as an interim fix, pets despawn when their master dies.
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

xi.dynamis.onFightApocDRG = function(mob, target)
    local master = mob:getMaster()

    if
        not master or
        master:getHP() == 0 or
        GetSystemTime() >= master:getLocalVar('next2hrTime')
    then
        DespawnMob(mob:getID())
    end
end

xi.dynamis.onRoamApocDRG = function(mob)
    local master = mob:getMaster()

    if not master or master:getHP() == 0 then
        DespawnMob(mob:getID())
        return
    end

    if master:getTarget() then
        mob:updateEnmity(master:getTarget())
    end

    if GetSystemTime() >= master:getLocalVar('next2hrTime') then
        DespawnMob(mob:getID())
    end
end

xi.dynamis.onFightMultiPet = function(mob, target)
    if not mob:getMaster() or mob:getMaster():isDead() then
        DespawnMob(mob:getID())
    end
end

xi.dynamis.onRoamMultiPet = function(mob)
    if not mob:getMaster() or mob:getMaster():isDead() then
        DespawnMob(mob:getID())
    end
end

xi.dynamis.onPetDeath = function(mob)
    local master = mob:getMaster()
    if master and master:getMainJob() == xi.job.BST then
        -- Queue Charm as the master's next job special so it can call a fresh pet.
        master:setLocalVar('[jobSpecial]ability_1', xi.mobSkill.CHARM)
    end
end
