# What are routing buckets?

_For those unaware or lazy to search, one can assign a player or entity to a routing bucket, and they will only see entities (and players) that belong to the same routing bucket. In addition to that, each routing bucket will have its own ‘world grid’ for determining population owners, so even if you have population enabled, you’ll notice nothing unusual at all when using routing buckets._

Source: [FiveM Cookbook](https://cookbook.fivem.net/2020/11/27/routing-buckets-split-game-state/)

As we can see from the official definition, routing buckets allow us to create a state were a player will only see players and entities (Such as spawned props) in the same routing bucket as them. By default, routing buckets start off at 0. Routing buckets are most particularly useful to in frameworks that make use of character selection screens - as a commonly reported problem with various scripts that have such a feature is the entities of other players being visible to the player in a scenario where they shouldn't be.

## What is the purpose of this repo?

Inside of the routinbuckets.lua file, there's three server sided functions showcasing an example of how to utilize routing buckets. The sample code contains no context of use, but shows an efficient method of how you could use routing buckets in your project. The two events and their triggers are for the sake of ease of access for the sake of demo,** I do not recommend these sample events in a live project unless you make them more secure! In their current state, a kid with an injector could easily troll your entire server by segregating your players into separate routing buckets!**
