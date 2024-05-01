

// ignore_for_file: use_build_context_synchronously, no_leading_underscores_for_local_identifiers



import 'package:eatease/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {

   final void Function()? onTap;
  const RegisterPage({super.key, 
  required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();


//register method
void register(BuildContext context) async{

//auth service

final _authService = AuthService();

// check if passwords match create user

if (passwordController.text == confirmpasswordController.text) {
  //try creating new user

  try {
    await _authService.signUpWithEmailPassword(emailController.text, passwordController.text,);

  }

  // display error
  catch (e) {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text(e.toString()),
      ),
    
    );
  }
}
  // password dont match
  else {
     showDialog(
      context: context, 
      builder: (context) => const AlertDialog(
        title: Text("Passwords dont't match"),
      ),
    
    );
  }
  
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center (
          child: SingleChildScrollView(
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
              "Let's create an account for you :D",
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

               const SizedBox(height: 15,),

              //confirm password

              MyTextField(
              controller: confirmpasswordController,
               hintText: "Confirm Password", 
               obscureText: true,
               ),


              const SizedBox(height: 25,),

              //sign up
              MyButton(
                text: "Sign Up", 
                onTap: () => register(context),
                ),

                const SizedBox(height: 25,),

                 // Already account

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                      ),

                      const SizedBox(width: 4,),

                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text("Login now ",
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