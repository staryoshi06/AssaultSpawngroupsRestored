local old_spawn_groups = ElementSpawnEnemyGroup.spawn_groups

function ElementSpawnEnemyGroup:spawn_groups()
    local groups = old_spawn_groups(self)

    if groups ~= nil then
        if groups[-47] ~= "done" then
            for k, v in pairs(groups) do
                if v == "tac_swat_rifle_flank" then
                    table.insert(groups, "tac_swat_rifle")
                    table.insert(groups, "tac_swat_shotgun_flank")
                    table.insert(groups, "tac_swat_shotgun_rush")
                    break
                end
            end
            --negative index shouldn't be read by iterators and number hopefully won't be chosen by anyone else lol
                --we use this so we don't add units multiple times. there are multiple tables I think so we can't use a global
                --and we don't want to keep checking constantly
                groups[-47] = "done"
        end
    --testing
    --for k, v in pairs(groups) do
        --log("Key: " .. k .. " Data: " .. v)
    --end
    end
    return groups
end