import webbrowser
recipe = {1:"https://www.foodnetwork.com/recipes/jeff-mauro/detroit-style-pepperoni-pizza-4718298" ,
           2:"https://www.seriouseats.com/recipes/2017/02/detroit-style-pizza-recipe.html",
           3:"https://www.kingarthurflour.com/recipes/king-arthurs-detroit-style-pizza-recipe",
           4:"https://joeats.net/home/detroit-style-pizza/",
           5:"http://thebeeroness.com/2012/11/29/beer-pizza-dough/"
           }


note = "\nAlso, go ahead and use the regular mixer paddle until the ten minute rest.  \nMixing with the dough hook sucks."

code = int(input("Enter recipe code: "))

print(recipe.get(code))
print ("\nNote for prepare Dough: ",note)

webUrl  = recipe.get(code)
webbrowser.open(webUrl, new=0, autoraise=True)

