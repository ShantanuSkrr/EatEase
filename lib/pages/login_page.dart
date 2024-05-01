// ignore_for_file: unnecessary_import

import 'package:eatease/components/my_button.dart';
import 'package:eatease/components/my_textfield.dart';
import 'package:eatease/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class LoginPage extends StatefulWidget {
  final void Function()? onTap;


   const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

//login method
void login() async {
  // instace of auth service
 final _authService = AuthService();

  //try sign in
 try {
    await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
 }


  //any error
catch (e) {
showDialog(
  context: context, 
  builder: (context) => AlertDialog(
    title: Text(e.toString()),
  )
  );
}


// forgot password
void forgotPw() {
  showDialog(
    context: context, 
    builder: (context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text("User tapped forgot password"),
    ),
    );
}

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView (
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(height: 50,),


            //logo

            Icon(
              Icons.restaurant,
              size:100,
              color: Theme.of(context).colorScheme.inversePrimary,
              
            ),

            const SizedBox(height: 50,),

            //slogan

            Text(
              "EatEase",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

             const SizedBox(height: 25,),

             //email
             MyTextField(
              controller: emailController,
               hintText: "Email", 
               obscureText: false,
               ),

               const SizedBox(height: 10,),

              //password

              MyTextField(
              controller: passwordController,
               hintText: "Password", 
               obscureText: true,
               ),

              const SizedBox(height: 25,),

              //sign in
              MyButton(
                text: "Sign In", 
                onTap: login,
                ),

                const SizedBox(height: 25,),

                // Register

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member? ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                      ),

                      const SizedBox(width: 4,),

                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text("Register now ",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),

                  ],
                )




          ],
          )
          ),
        ),
        
          )
    );
  }
}