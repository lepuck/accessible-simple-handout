function Image(el)
  if FORMAT ~= 'typst' then
    return nil
  end

  local src = el.src
  local caption = pandoc.utils.stringify(el.caption)
  
  local alt = el.attributes["alt"] or caption
  
  -- Escape double quotes
  alt = alt:gsub('"', '\\"')

  local typst_code = string.format(
    '#image("%s", alt: "%s")',
    src, alt
  )
  
  return pandoc.RawInline('typst', typst_code)
end