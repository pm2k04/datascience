#Task 2: Zomato-style Restaurant Chatbot

restaurants = {
    "Pizza Palace": "Italian",
    "Spice Garden": "Indian",
    "Dragon House": "Chinese"
}

restaurant_name = input("Enter restaurant name: ")
cuisine = input("Enter cuisine: ")

if restaurant_name in restaurants and restaurants[restaurant_name].lower() == cuisine.lower():
    print(f"Yes, {restaurant_name} serves {cuisine} cuisine.")
else:
    print(f"Sorry, information for {restaurant_name} is unavailable.")