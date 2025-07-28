--PLEASE ENABLE HTTP SERVICE FOR IT TO WORK!
local HttpService = game:GetService("HttpService")

local authCookie = "Put the cookie of the alt account!!"

local success, result = pcall(function()
	return 	HttpService:GetAsync("https://apis.roproxy.com/game-passes/v1/game-passes/universes/1855108028/creator?count=100", false, {
		["Cookie"] = '.ROBLOSECURITY='..authCookie..';'
	})
end)

if success then
	print(HttpService:JSONDecode(result))
else
	warn("Request failed:", result)
end

--[[ 
NOTES:
1. REMOVE This on the cookie: "_|WARNING:-DO-NOT-SHARE-THIS.--Sharing-this-will-allow-someone-to-log-in-as-you-and-to-steal-your-ROBUX-and-items.|_"
2. Do not use your main account’s .ROBLOSECURITY cookie — this poses a serious security risk.
3. This project was created to help research and detect dynamic/regional pricing on Roblox gamepasses.
]]
