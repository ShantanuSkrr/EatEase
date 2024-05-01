import 'package:eatease/components/my_button.dart';
import 'package:eatease/components/my_cart_tile.dart';
import 'package:eatease/models/restaurant.dart';
import 'package:eatease/pages/payment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        //scaffold 

      return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            // cear cart
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                   builder: (context) => AlertDialog(
                  title: const Text("Are you sure you want to clear the cart?"),
                  actions: [
                    //cancel button
                    TextButton(
                      onPressed: () => Navigator.pop(context), 
                      child: const Text("Cancel"),
                      ),

                      //yes button
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          restaurant.clearCart();
                        },
                         child: const Text("Yes"),
                         )
                  ],
                   ),
                   );
              }, 
              icon: const Icon(Icons.delete),
              )
          ],

        ),
        body: Column(
          children: [
            Expanded(
              child: 
              
                //list of cart
                Column(
              children: [
                userCart.isEmpty?
                const Expanded ( 
                  child: Center(
                    child: 
                     Text("Your cart is empty :( ",style: TextStyle(),)
                    ) 
                    ) :
                Expanded(
                  child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context, index) {
              
                      final CartItem = userCart[index];
              
                      
                      return MyCartTile(
                        cartItem: CartItem);
                    } 
                    ),
                    ),
              ],
              ),
            ),
              
              //button to pay
              MyButton(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                    ),
                    ),
              
                
                text: "Go to checkout",
                ),
              
              const SizedBox(height: 25)
              ],
            ),
        );
      }
    );
  }
}