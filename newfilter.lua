function Image(img)
    if img.classes:find('newfilter',1) then
      local f = io.open("holder/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local caption = pandoc.utils.stringify(doc.meta.caption)
      local name = pandoc.utils.stringify(doc.meta.name)
      local am = pandoc.utils.stringify(doc.meta.id)
      local content = "> " .. caption .. "  \n>" .. "Ονοματεπωνυμο Φοιτητη:" .. name .. "\nAριθμος Mητρωου:" .. am
      return pandoc.RawInline('markdown',content)
    end
end
