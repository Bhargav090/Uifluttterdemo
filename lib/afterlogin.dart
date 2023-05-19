import 'package:flutter/material.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                
                child: Image.asset('lib/images/Beauty.jpg', height: 350,width: 450,),
              ),
              Expanded(
                child: Image.asset('lib/images/Drop.jpg',height: 350,width: 450,),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset('lib/images/sunref.jpg',height: 350,width: 450,),
              ),
              Expanded(
                child: Image.asset('lib/images/moon.jpg',height: 450,width: 50,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
