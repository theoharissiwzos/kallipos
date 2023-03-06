function Image(img)
        if img.classes:find('comment',1) then
                local f = io.open("comment/" .. img.src, 'r')
                local doc = pandoc.read(f:read('*a'))
                f:close()
                local caption = pandoc.utils.stringify(doc.meta.caption) or "Ep>
                local student = pandoc.utils.stringify(doc.meta.student) or "St>
                local studentid = pandoc.utils.stringify(doc.meta.studentid) or>
                local credentials = "Student: " .. student .. " (" .. studentid>
                local tag = ">_" .. caption .. "_  \n\n> " .. "**" .. credentia>
                return pandoc.RawInline('markdown',tag)
        end
end


