do
local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = matches[1]
    user = string.gsub(user," ","_")
	if msg.to.type == 'chat' then
    local chat = ''
    return user
  else 
    return 'شما در این گپ هستید'
  end
end

return {
  description = "این هم مشخصات شما", 
  usage = {
    "/info (@user) : get id by username", },
  patterns = {
    "^[Ii]nfo (.*)$",
  }, 
  run = run,
  moderation = true 
}

end
