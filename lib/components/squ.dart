import 'package:flutter/material.dart';

class Squt extends StatelessWidget {
  final String imagePath;
  const Squt({super.key,
  required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,),
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade100
        
      ),
      child: Image.asset(imagePath,height: 40,),
    );
  }
}