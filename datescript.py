import time

# Welcome! Who are you on a date with? 

print("Welcome to DateNight!")
time.sleep(3)

DateName = input("What's your dates name? ")
time.sleep(3)

# How much money do you have? 

Budget = int(input("What's your budget? ")
             time.sleep(3)

# Menu
Menu = {"Burger": 20, "Wings": 15, "Lobster": 40,}

# Display the menu
print("\nMenu")
for item, price in Menu.items():
    print(f"{item}: ${price}")
    time.sleep(3)

# Ask the user for their order and convert it to lowercase
Order = input("\nWhat did you order? ").capitalize()
DateOrder = input("\nWhat did your date order? ").capitalize()
time.sleep(3)

#Cost variable
total_cost = 0
# Check for orders, total cost
if Order in Menu:
    print(f"You ordered {Order} for ${Menu[Order]}.")
    total_cost += Menu[Order]
else:
    print("You forgot what you ate?")
if DateOrder in Menu:
    print(f"Your date ordered {DateOrder} for ${Menu[DateOrder]}.")
    total_cost += Menu[DateOrder]
    print(total_cost)
else:
    print("Your date forgot what they ate?")

# Budget reminder
if Budget >= total_cost:
 print(f"Wallet check ${Budget - total_cost}") 
 dateAnsw = input("You have some extra, after hours spot? ").lower()

 if dateAnsw == 'yes':
        print("Shooters shoot.")
        print("You should start planning ya second date playboy.")

 elif dateAnsw == 'no':
        print("You never hit the shots you don't take.")
       
 else:
        print("Invalid input. Please answer 'yes' or 'no.'")
     time.sleep(3)
elif Budget < total_cost:
    print("Balling on a budget, go home.")
    time.sleep(3)
    print("Your not seeing them again.")
    time.sleep(3)
