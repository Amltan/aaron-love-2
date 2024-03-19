import 'package:flutter/material.dart';



class itemCard extends StatelessWidget {
  const itemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(

child: Container(
   height: 600,
      width: 400,
  child: Column(
    children: [
      Image(  
        fit: BoxFit.fill,
        
        image: NetworkImage("https://i.imgur.com/QRST9VM.png")),

      Container(
       
        decoration: BoxDecoration(color: Colors.red),
      )
    ],
  ),
),

    );
  }
}