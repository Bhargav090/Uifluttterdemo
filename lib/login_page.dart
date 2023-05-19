import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_with_firebase/components/my_button.dart';
import 'package:login_with_firebase/components/my_textfield.dart';
import 'package:login_with_firebase/components/squ.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signinUser() async {

    showDialog(context: context, builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    },);
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      Navigator.pop(context);
    }
    on FirebaseAuthException catch (e){
      Navigator.pop(context);
      if(e.code == 'user-not-found'){
        wrongEmailMessage();

      }

        else if (e.code == 'wrong-password'){
          wrongPasswordMessage();
        }
    }
    

    
    
    
  }

  void wrongEmailMessage(){
    showDialog(context: context, builder: (context){
      return const AlertDialog(
        title: Text("Incorrect Email"),
      );
    });
  }

  void wrongPasswordMessage(){
    showDialog(context: context, builder: (context){
      return const AlertDialog(
        title: Text("Incorrect Password"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 46.2),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'lib/images/logo.jpg',
                      height: 200,
                      width: 200,
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Holla! Wecome to Nature_view2",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800]),
            ),
            const SizedBox(
              height: 30,
            ),
      
            // user name
            MyTextField(
              controller: emailController,
              hintText: 'Username',
              obscureText: false,
            ),
      
            //-------------- // password //
      
            MyTextField(
              controller: passwordController,
              hintText: 'password',
              obscureText: true,
            ),
      
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
      
            Mybutton(
              onTap: signinUser,
            ),
      
            const SizedBox(
              height: 20,
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Squt(
                  imagePath: 'lib/images/google.png',
                ),
                SizedBox(
                  width: 20,
                ),
                Squt(
                  imagePath: 'lib/images/apple.png',
                ),
              ],
            ),
      
            const SizedBox(height: 15,),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
