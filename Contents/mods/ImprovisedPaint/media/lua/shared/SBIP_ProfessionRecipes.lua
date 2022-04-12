
-- On Player Load, check their professions and if it matches
-- one we're expecting, add some free recipes to their character
function AddRecipesToExistingPlayers(id, player)
    local profession = player:getDescriptor():getProfession();

    -- Adjust engineers to get Improvised Recipes immediately
    if profession == "repairman" then
        player:learnRecipe("ImprovisedPaint");
        player:learnRecipe("ImprovisedPlaster");
        player:learnRecipe("ImprovisedPaintBucket");
        player:learnRecipe("ImprovisedPaintBrush");
    end   

end

-- Character loads into the world
Events.OnCreatePlayer.Add(AddRecipesToExistingPlayers);
