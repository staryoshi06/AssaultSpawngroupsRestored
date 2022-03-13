Hooks:PostHook(ElementSpawnEnemyGroup, "init", "star_asr_init_spawn_group_element", function(self, ...)
    local groups = self._values.preferred_spawn_groups

    if groups ~= nil then
        for k, v in pairs(groups) do
            if v == "tac_swat_rifle_flank" then
                table.insert(groups, "tac_swat_rifle")
                table.insert(groups, "tac_swat_shotgun_flank")
                table.insert(groups, "tac_swat_shotgun_rush")
                break
            end
        end
    end
    --testing
    --for k, v in pairs(groups) do
        --log("Key: " .. k .. " Data: " .. v)
    --end
end)