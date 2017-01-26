local function run(msg, matches)
    if matches[1] == 'del' then
    if msg.chat_id_:match("^-100") then
       if is_mod(msg) then
          if tonumber(matches[2]) > 1000 or tonumber(matches[2]) < 1 then
             return '<b>🚫 1000> تعداد پیام های قابل حذف هر دفعه >1 🚫</b>'
             else 
             local x = 0
             local y = message_id_
             while (x < tonumber(matches[2])) do
                 y = y - 1
                 x = x + 1
                 tdcli.deleteMessages(msg.chat_id_, {[0] = y })
             end
             return '<b>'..x..'</b> <i>پیام اخیر پاک شد</i>'
         end
     else return '<i>شما دسترسی ندارید 💩🙁</i>'
         
     end
 else return 'این امکان فقط در <i>سوپر گروه</i> ممکن است.'
end
end

return {
    patterns = {
        '^[!#/]([Dd][Ee][Ll]) (%d*)$',
    },
    run = run
}
end