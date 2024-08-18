local http = require('socket.http')
local ltn12 = require('ltn12')
local json = require('luajson')

function translate(text, source, target)
  local url = "https://libretranslate.com/translate"

  local request = json.encode({
    q = text,
    source = source,
    target = target
  })

  -- response
  local response = {}
  local _, code, headers = http.request{
    url = url,
    method = "POST",
    headers = {
      ['Content-Type'] = "application/json",
      ["Content-Length"] = tostring(#request)
    },
    source = ltn12.source.string(request),
    sink = ltn12.sink.table(response)
  }
  
end


local word = "hello"
local translated_word, err = translate(word, "en", "es")

if translated_word then 
  print(word)
  print(translated_word)
else
  print(err)
end
