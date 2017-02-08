from bottle import SimpleTemplate
import importlib

languages = ["en", "de", "fr", "nl"]
wordlists = {
    "en": "words/english.txt",
    "de": "words/german.txt",
    "fr": "words/french.txt",
    "nl": "words/netherlands.txt",
}
pages = ["index.html", "compact.html", "options.html"]

strings = dict()

for language in languages:
    
    mod = importlib.import_module(language)
    strings = mod.strings
    strings["wordlist"] = "";
    strings["currentlang"] = language;
    
    with open(wordlists[language]) as wordlistfile:
        wordcount = 0;
        for line in wordlistfile:
            if wordcount > 0:
                strings["wordlist"] += " "
            strings["wordlist"] += line[:-1];
            wordcount += 1;
            #if wordcount % 10 == 0:
            #    strings["wordlist"] += ""\n";
    
        for page in pages:
            strings["currentsite"] = page;
            
            with open(language + "/" + page, 'w') as outputfile:
                with open('template.tpl', 'r') as templatefile:
                    outputfile.write(SimpleTemplate(templatefile.read()).render(strings));
