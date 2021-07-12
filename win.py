import json


file_name = "coc-settings.json"
with open(file_name) as f:
   text = json.loads(f.read())
   #print(text["snippets.ultisnips.directories"])
   text["snippets.ultisnips.directories"] = "$HOME/Appdata/Local/nvim/Ultisnips"

   text["snippets.userSnippetsDirectory"] = "$HOME/Appdata/Local/nvim/Ultisnips"

   
