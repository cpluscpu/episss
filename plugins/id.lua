do
function run(msg, matches)
local reply_id = msg['id']
local info = "👤Your Name: "..msg.from.print_name.."\n👤Username: "..(msg.from.username or "Error 404 Not Found!!").."\n👤Your ID: "..msg.from.id.."\n👤phone number "..(msg.from.phone or " Error 404 Not Found!").."\n____________________".."\n👥SuperGroup Name: "..msg.to.print_name.."\n👥SuperGroup ID: "..msg.to.id.."\n____________________"\n@dimon_team"
reply_msg(reply_id, info, ok_cb, false)
end

return {
patterns = {
"^[!/#](id)$",
"^([Ii]d)"
},
run = run
}

end
