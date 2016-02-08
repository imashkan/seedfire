local function run(msg, matches)
 local text = سلام[2]
 if matches[1] == "saveplug" and is_sudo(msg) then
 
  return "Plugin Saved"
 end
end

return {
 description = "filemanager plugin saver!",
 usage = {
  "!saveplug [name][ext] [plugintxt] : save plugin",
 },
 patterns = {
  "^([Ss]aveplug) ([^%s]+) (.*)$",
 },
 run = run,
}
