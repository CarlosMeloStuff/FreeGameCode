--------------------------------------------------------------------
--
-- Main.lua
-- main, and shit.
--
--------------------------------------------------------------------

require "AgentManager"
require "MessageManager"
require "Time"
require "Tools"

print("Starting Main.lua");

--------------------------------------------------------------------
-- Initialize the pseudo random number generator (from the Lua manual)
--------------------------------------------------------------------
math.randomseed( GetTime() )
math.random(); math.random(); math.random()

--------------------------------------------------------------------
-- Program Contents
--------------------------------------------------------------------

-- init
AgentManager_AddAgent( "Sean" )
AgentManager_AddAgent( "Charlie" )
AgentManager_AddAgent( "Crystal" )
AgentManager_AddAgent( "Erika" )
AgentManager_AddAgent( "Link" )
AgentManager_AddAgent( "Zelda" )

-- main loop
while( 1 ) do
	-- send messages that aren't immediately fired
	SendDelayedMessages()
	
	-- update the agents
	AgentManager_Update()
	
	-- wait 500ms (horrible hack, but it's what we've got)
	-- if you're trying to run this on something other than Mac OS X,
	-- you're gonna have to change it to whatever your system has
	if os.execute("/bin/sleep 0.5") ~= 0 then break end
end

--------------------------------------------------------------------
-- End Program Contents
--------------------------------------------------------------------
print("Ending Main.lua");