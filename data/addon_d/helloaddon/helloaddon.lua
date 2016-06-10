--Use this command in the developer console to reload changes.
--dofile("../data/addon_d/helloaddon/helloaddon.lua");

--Create a namespace for us to use on the global table. Reduces conflicts.
helloAddon = _G["helloAddon"] or {};
helloAddon.updateCount = 0;

--ADDONNAME_ON_INIT is automatically called each time the map loads and is
--injected with addon and frame.
function HELLOADDON_ON_INIT(addon, frame)
	--Print the frame name.
	CHAT_SYSTEM(frame:GetName() .. " injected!");

	--Use the addon object to register a function with a message.
	addon:RegisterMsg("FPS_UPDATE", "HELLOADDON_UPDATE");
end

--A function to print "Hello, addon!" when the FPS_UPDATE message is received.
function HELLOADDON_UPDATE(frame, msg, argStr, argNum)
	helloAddon.updateMessageCount();
	helloAddon.printUpdateMessage();
end

--Use a namespace for all of your functions when you can.
function helloAddon.updateMessageCount()
	helloAddon.updateCount = helloAddon.updateCount + 1;
end

function helloAddon.printUpdateMessage()
	CHAT_SYSTEM("Hello, addon! " .. helloAddon.updateCount);
end

CHAT_SYSTEM("helloaddon loaded!");
