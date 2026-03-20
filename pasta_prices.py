# Lucca's Pasta Price Checker, or, will my resturant survive?
import psycopg2

conn = psycopg2.connect("postgresql://pastalover:mamamia@localhost/lucca_pasta_db")
cur = conn.cursor()

print("Showing all recipes to prove im not stupid")
cur.execute("SELECT * FROM recipes ORDER BY recipe_id;")
rows = cur.fetchall()
for r in rows:
    print(r)
#now that we know the prices, lets see if you want to update any

change_prices = True

while change_prices:
    print("Which recipe do you want to change the price of for maximum profits?")
    recipe_id_to_change = int(input())
    print("What should the new price be?")
    new_price = float(input()) #you need dollars and cents dumbass
    cur.execute("UPDATE recipes SET price = %s WHERE recipe_id = %s RETURNING name, price;", (new_price, recipe_id_to_change))
    result = cur.fetchone()
    print("Recipe price updated")
    print(result[0])
    print(result[1])
    
    print("Do you want to do another?")
    change_prices_input = str(input())
    if change_prices_input.lower() in ["yes", "y"]:
        change_prices = True
    else:
        change_prices = False
conn.commit()


cur.close()
conn.close()
