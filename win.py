import json


file_name = "coc-settings.json"
with open(file_name) as f:
    text = json.loads(f.read())
    # print(text["snippets.ultisnips.directories"])
    text["snippets.ultisnips.directories"] = "C:/Users/85065/AppData/Local/nvim/Ultisnips"

    text["snippets.userSnippetsDirectory"] = "C:/Users/85065/AppData/Local/nvim/Ultisnips"
with open(file_name, "w+") as f:
    json.dump(text, f)
