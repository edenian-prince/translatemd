function Str(el)
  -- Print just the text in the span; removes all markup.
  print(pandoc.utils.stringify(el))
end

-- Note: to output this into a txt file, use 
-- something like quarto render single-doc.qmd --lua-filter=test.lua |& tee idk.txt
-- the '|& tee file.txt' sends all the outputs to a file 
