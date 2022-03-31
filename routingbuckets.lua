-- Clientside--
TriggerServerEvent('multichar-routingbucket:SetRoutingBucket') -- Event that puts player in a different routing bucket

TriggerServerEvent('multichar-routingbucket:ClearRoutingBucket') -- Event that returns the player to the default bucket

-- Serverside--
RegisterNetEvent('multichar-routingbucket:SetRoutingBucket', function()
SetBucketToUse(source)
end)

RegisterNetEvent('multichar-routingbucket:ClearRoutingBucket', function()
ReturnToGameDefaultBucket(source)
end)

-- Default value will always return as 0
function SelectBucketToUse()
   return GetResourceKvpInt('BucketsInUse')
end

-- Checks the internal game storage for the value in the function above, and if it exists
-- It adds one to it. The idea being if 5 players are at the same screen they'll be in 5 
-- different routing buckets
function SetBucketToUse(PlayerId)
    local bucketid = SelectBucketToUse()
    local newid = bucketid + 1
    SetPlayerRoutingBucket(PlayerId, newid)
    SetResourceKvpInt('BucketsInUse', newid)
end

-- Function that returns the player to the default bucket, then removes the value of the kvp data by 1
function ReturnToGameDefaultBucket(Playerid)
    local bucketid = SelectBucketToUse()
    local newid = bucketid - 1
    SetPlayerRoutingBucket(PlayerId, 0)
    SetResourceKvpInt('BucketsInUse', newid)
end