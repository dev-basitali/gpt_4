import 'package:flutter/material.dart';

class TAB extends StatelessWidget {
  
 final String title ;
  const TAB({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.black,
      )
    ),
      child: Center(child: Text(title)),);
  }
}
