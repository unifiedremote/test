
-- Metadata

local obj = nil;

events.destroy = function ()
	obj = nil;
	collectgarbage();
end

actions.valid_word = function ()
	local word = luacom.CreateObject("Word.Application")
	assert(word)
	word.Visible = true;
	word:Activate();
	word = nil;
	collectgarbage();
end


actions.invalid = function ()
	local junk = luacom.CreateObject("kajsdlfkjsdöf");
	print(junk);
end

actions.invalid_2 = function ()
	obj = luacom.CreateObject("Word.Application");
	print(obj);
end
