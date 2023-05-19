import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[200],
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))
          ],
        ),
        body: Container(
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'lib/images/Beauty.jpg',
                    height: 300,
                    width: 350,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'lib/images/Drop.jpg',
                    height: 300,
                    width: 350,
                  ),
                ),
              ],
            ),
            Row(
            children: [
              Expanded(
                child: Image.asset('lib/images/sunref.jpg',height: 300,width: 350,),
              ),
              Expanded(
                child: Image.asset('lib/images/moon.jpg',height: 300,width: 40,),
              ),
            ],
          ),
          ]),
        ));
  }
}
