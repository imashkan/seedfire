local function run(msg)
    if msg.to.type == 'chat' and not is_momod(msg) then
        chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        return 'استفاده از کلمات بد ممنوع است'
    end
end

return {
    patterns = {
    "[Kk][Ii][Rr]",
    "[Kk][Oo][Ss]",
    "[Nn][Aa][Nn][Aa][Tt]",
    "[Nn][Ee][Nn][Ee]",
    "[Mm][Aa][Dd][Aa][Rr]",
    "کص",
    "کیر",
    "کون",
    "ننت",
    "ننه",
    "مادر"
    }, 
run = run
}
