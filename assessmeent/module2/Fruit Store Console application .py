dict_fruit = { }
while True:
    print("welcome to the fruit market")
    print("1. Manager")
    print("2. Customer")
    print("3. Exit")
    choice = input("Please enter your choice (1-3): ")

    if choice == '1':
        while True:
            print("1. Add Fruit Stock")
            print("2. View Fruit Stock")
            print("3. Update Fruit Stock")
            print("4. Go Back to Main Menu")
            manager_choice = input("Enter your choice (1-4): ")
            if manager_choice == '1':
                fruit_name = input("Enter the name of the fruit: ")
                quantity = int(input("Enter the quantity of the fruit: "))
                price = float(input("Enter the price of the fruit: "))
                dict_fruit[fruit_name] = {'quantity': quantity, 'price': price}
                print(f"{fruit_name} added with quantity {quantity} and price ₹{price}.")
            elif manager_choice == '2':
                if dict_fruit:
                    print("Current Fruit Stock:")
                    for fruit, info in dict_fruit.items():
                        print(f"{fruit}: {info['quantity']}: ₹{info['price']}")
                else:
                    print("No fruits in stock.")
            elif manager_choice == '3':
                fruit_name = input("Enter the name of the fruit to update: ")
                if fruit_name in dict_fruit:
                    new_quantity = int(input(f"Enter new quantity for {fruit_name}: "))
                    new_price = float(input(f"Enter new price for {fruit_name}: "))
                    dict_fruit[fruit_name]['quantity'] = new_quantity
                    dict_fruit[fruit_name]['price'] = new_price
                    print(f"{fruit_name} updated to quantity {new_quantity} and price ₹{new_price}.")
                else:
                    print(f"{fruit_name} not found in stock.")
            elif manager_choice == '4':
                print("Going back to main menu.")
                break
            else:
                print("Invalid choice. Please try again.")
    elif choice == '2':
        print("Customer functionality not implemented yet.")
   
    else:
        print("Invalid choice. Please enter 1, 2, or 3.")










