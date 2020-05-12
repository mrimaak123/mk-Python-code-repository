import requests

resp = requests.get ('http://nasa.gov')
textbody = resp.text
if resp.status_code == 200:
    with open('createHTML.html','w') as outputfile:
        for line in textbody:
            outputfile.write(line)
    print("length of the text: ", len(resp.text))
    

