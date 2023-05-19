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
        border: Border.all(color: Colors.grey.shade300,),
        borderRadius: BorderRadius.circular(23),
        color: Colors.grey.shade100
        
      ),
      child: Image.asset(imagePath,height: 50,),
    );
  }
}