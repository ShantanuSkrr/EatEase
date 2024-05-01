import 'package:collection/collection.dart';
import 'package:eatease/models/cart_item.dart';
import 'package:flutter/material.dart';

import 'package:eatease/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //food menu 
  
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger", 
      description: "A juicy Veg patty with melted cheese, lettuce, tomato, and hint of onion and pickle", 
      imagePath: "lib/images/burgers/burger.jpg",
      price: 249, 
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Paneer", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),
      Food(
      name: "Spice Burger", 
      description: "Hot paprika chilli with a choice of grilled chicken, smashed lamb, smashed buff.", 
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 299, 
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Paneer", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),
      Food(
      name: "Crispy Veg Burger", 
      description: "Masaledar Veg Patty, Onion & Our Signature Tomato Herby Sauce.", 
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 99, 
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "sauce", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),
      Food(
      name: "Fiery Chicken Burger", 
      description: "Spicy Fried Chicken, Loads Of Sauces In Square Masala Buns. ", 
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 209, 
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Paneer", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),
      Food(
      name: "Chicken Whopper", 
      description: "Our Signature Whopper with Flame Grilled Chicken Patty, Onions, Lettuce, Tomatoes (Seasonal), Gherkins, Creamy And Smoky Sauces", 
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 199, 
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "chicken", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),


      //salads
      Food(
      name: "Paneer Tikka Whole Bowl [High Protein]", 
      description: "Paneer Tikka 200 gms, Lettuce, Kale & Red Cabbage, Barley, Bell Peppers, Cucumber, Jalapeno, Olive, Garlic Yogurt dressing topped", 
      imagePath: "lib/images/salads/salad1.jpg",
      price: 199, 
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra mayo", price: 20),
        Addon(name: "paneer", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),
       Food(
      name: "Chicken Tikka Super Bowl [High Protein]", 
      description: "Chicken Tikka 200 gms, Lettuce, Kale & Red Cabbage, Barley, Bell Peppers, Cucumber, Jalapeno, Olive, Garlic Yogurt dressing topped", 
      imagePath: "lib/images/salads/salad4.jpg",
      price: 249, 
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra mayo", price: 20),
        Addon(name: "chicken", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),
       Food(
      name: "BBQ Chicken Beast Bowl [High Protein]", 
      description: "BBQ Chicken 200 gms, Lettuce, Kale & Red Cabbage, Barley, Bell Peppers, Cucumber, Jalapeno, Olive, Garlic Yogurt dressing topped", 
      imagePath: "lib/images/salads/salad3.jpg",
      price: 299, 
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra mayo", price: 20),
        Addon(name: "chickenr", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),
       Food(
      name: "Veggie Delight Happy Salad", 
      description: "Lettuce, Kale & Red Cabbage, Barley, Bell Peppers, Cucumber, Jalapeno, Olive, Garlic Yogurt dressing topped with Super Seed", 
      imagePath: "lib/images/salads/salad4.jpg",
      price: 219, 
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra mayo", price: 20),
        Addon(name: "paneer", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),
       Food(
      name: "Mushroom Very Merry Salad", 
      description: "Roast Mushrooms 80 gms, Lettuce, Kale & Red Cabbage, Barley, Bell Peppers, Cucumber, Jalapeno, Olive, Garlic Yogurt dressing topped with Super Seed", 
      imagePath: "lib/images/salads/salad5.jpg",
      price: 199, 
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra mayo", price: 20),
        Addon(name: "paneer", price: 50),
        Addon(name: "Avocado", price: 20),
      ], 
      ),

      //desserts

      Food(
      name: "Tout Chocolate", 
      description: "Flourless chocolate cake, 70% Guanaja chocolate mousse, roasted cocoa nib praline, 72% chocolate cream", 
      imagePath: "lib/images/desserts/dessert1.jpg",
      price:340, 
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra choclate", price: 50),
        Addon(name: "cream", price: 50),
      ], 
      ),
      Food(
      name: "Caramel Fluer De Sel", 
      description: "Salted milk chocolate mousse, crème caramel, caramel chantilly, mixed praline crumble", 
      imagePath: "lib/images/desserts/dessert2.jpg",
      price:320, 
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra caramel", price: 50),
        Addon(name: "choclate cream", price: 50),
      ], 
      ),
      Food(
      name: "Swiss Truffle", 
      description: "Dark chocolate cake, 66% caraibe mousse, truffle, chocolate chip cookies and vanilla mascarpone chantilly", 
      imagePath: "lib/images/desserts/dessert3.jpg",
      price:249, 
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra choclate", price: 50),
      ], 
      ),
      Food(
      name: "J'adore", 
      description: "Lemon streusel, berry compote, strawberry cream cheese ganache mousse, lemon vanilla genoise", 
      imagePath: "lib/images/desserts/dessert4.jpg",
      price:360, 
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra choclate", price: 50),
        Addon(name: "cherry", price: 50),
      ], 
      ),
      Food(
      name: "Mango Dutch Truffle", 
      description: "Flourless chocolate cake, 70% Guanaja chocolate mousse, roasted cocoa nib praline, 72% chocolate cream", 
      imagePath: "lib/images/desserts/dessert5.jpg",
      price:340, 
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra choclate", price: 50),
        Addon(name: "cream", price: 50),
      ], 
      ),


    

    //sides
      Food(
      name: "Cheezy Sprinkled Fries", 
      description: "Baked fries seasoned with cheezy seasoning ", 
      imagePath: "lib/images/sides/fries.jpg",
      price: 130, 
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
      ], 
      ),
      Food(
      name: "Tanzanian Chips Mayai", 
      description: "a delicious, savoury and indulgent French fry omelette ", 
      imagePath: "lib/images/sides/friesomlete.jpg",
      price: 249, 
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Extra fries", price: 50)
      ], 
      ),
      Food(
      name: "Pink Sauce Pasta", 
      description: "Fusilli pasta tossed in creamy pink sauce, green capsicum, sweet corn, black olives & topped with Parmesan cheese.", 
      imagePath: "lib/images/sides/pasta.jpg",
      price: 330, 
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra sauce", price: 20),
      ], 
      ),
      Food(
      name: "Garlic Bread", 
      description: "Fresh flatbread baked with garlic butter and chefs secret seasoning, infused with creamy sauce ", 
      imagePath: "lib/images/sides/garlicbread.jpg",
      price: 130, 
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
      ], 
      ),
      Food(
      name: "Peri Peri chicken strips - 3 pc", 
      description: "Fresh 3 Pieces Spicy Peri Peri chicken boneless strips ", 
      imagePath: "lib/images/sides/chicken.jpg",
      price: 199, 
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Chipotle Cheesy Dip", price: 20),
        Addon(name: "Cheesy Dip", price: 20)
      ], 
      ),

      //drinks
      
      Food(
      name: "Coctail Juice", 
      description: "An explosion of flavors. Made using grapes, anar, apple & pineapple. A delicious drink that is healthy for your digestion. ", 
      imagePath: "lib/images/drinks/coctail2.jpg",
      price: 149, 
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra 500ml", price: 40),
      ], 
      ),
      Food(
      name: "Lemon Vodka Cocktail", 
      description: "It’s light and refreshing, and perfect on a warm summer day! ", 
      imagePath: "lib/images/drinks/coctail1.jpg",
      price: 120, 
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra 500ml", price: 40),
        
        //
      ], 
      ),
      Food(
      name: "Sparkling Paloma Cocktail", 
      description: "An explosion of flavors.paloma cocktail made with sparkling water and agave nectar. ", 
      imagePath: "lib/images/drinks/coctail3.jpg",
      price: 220, 
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra 500ml", price: 40),
  
        //
      ], 
      ),
      Food(
      name: "Jungle Bird", 
      description: "An explosion of flavors. Made using grapes, anar, apple & pineapple. A delicious drink that is healthy for your digestion. ", 
      imagePath: "lib/images/drinks/coctail4.jpg",
      price: 149, 
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra 500ml", price: 40),
      
        
      ], 
      ),
      Food(
      name: "Sex on the Beach Cocktail", 
      description: "A combination of vodka, peach schnapps, orange juice, cranberry juice ", 
      imagePath: "lib/images/drinks/coctail5.jpg",
      price: 250, 
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra 500ml", price: 40),
        //
      ], 
      ),


  ];
  
// cart
  final List<CartItem> _cart = [];
  
// delivery address 
 
 String _deliveryAddress = 'Vidyalankar College';
 
  /*
  
  Getters

  */


  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;


  /*
  
  operationss

  */

  



  // add to cart

  void addToCart(Food food, List<Addon> selectedAddons) {

    // if already item in car

    CartItem? cartItem = _cart.firstWhereOrNull((item) {

      //if same item

      // if addon same
      bool isSameAddons = 
        ListEquality().equals(item.selectedAddons, selectedAddons);

        return isSameAddons && isSameAddons;
    });

    // already item then increase quantty or add new item
    if (cartItem != null) {
      cartItem.quantity++;
    }

    else {
      _cart.add(
        CartItem(
          food: food,
         selectedAddons: selectedAddons
         ),
      );

    }
    notifyListeners();



  }



  //remove cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1) {
      if (_cart[cartIndex].quantity >1) {
        _cart[cartIndex].quantity--;

      }
      else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price
  double getTotalPrice() {
  double total = 0.0;

  for (CartItem cartItem in _cart) {
    double itemTotal = cartItem.food.price;

    // Add price of selected addons
    for (Addon addon in cartItem.selectedAddons) {
      itemTotal += addon.price;
    }

    // Multiply by quantity
    itemTotal *= cartItem.quantity;

    // Accumulate item total to the total price
    total += itemTotal;
  }

  return total;
}


  //get total no of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }


  //clear cart
  void clearCart () {
    _cart.clear();
    notifyListeners();
  }

  // update address

  void updateDeliveeryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

 /*
  
  Helpers


  */

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
      receipt.writeln("Here is your receipt.");
      receipt.writeln();    
    
//format date receipt
String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("-----------");

  for (final cartItem in _cart) {
    receipt.writeln(
      "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
    );

    if (cartItem.selectedAddons.isNotEmpty) {
      receipt.writeln(
        "Add-ons: ${_formatAddons(cartItem.selectedAddons)}"
      );
      
    }
    receipt.writeln();
  }

  receipt.writeln("---------");
  receipt.writeln();
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
  receipt.writeln();
  receipt.writeln("Delivering to: $deliveryAddress");

  return receipt.toString();

  }
   


 
  // format double value into ,oney
  String _formatPrice(double price) {
    return "\₹${price.toStringAsFixed(2)}";
  }

  //format lsit of addons
  String _formatAddons(List<Addon> addons) {
    return addons
    .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(", ");
  }
  
}