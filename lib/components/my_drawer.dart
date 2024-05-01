import 'package:eatease/components/my_drawer_tile.dart';
import 'package:eatease/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout () {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [

          //logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
           child: Icon(
            Icons.restaurant,
            size: 80,
            color: Theme.of(context).colorScheme.inversePrimary,
          ), 
        ),
          
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
          ),
      
          // home list
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),


          //settings list
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
             Navigator.pop(context);
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ), 
               ); 

            },
          ),

        const Spacer(),
          //logout list 
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () {
              logout();
              Navigator.pop(context);
            },
          ),

        const SizedBox(height: 25,),
        ],
      ),
    );
  }
}