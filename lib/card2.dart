import 'package:flutter/material.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
 const Card2({super.key});
 @override
 Widget build(BuildContext context) {
 return Center(
 // 1
 child: Container(
 constraints: const BoxConstraints.expand(
 width: 350,
 height: 450,
 ),
 decoration: const BoxDecoration(
 image: DecorationImage(
 image: AssetImage('assets/mag5.png'),
 fit: BoxFit.cover,
 ),
 borderRadius: BorderRadius.all(
 Radius.circular(10.0),
 ),
 ),
 // 2
 child: const Column(
 children: [
  // ignore: unnecessary_const
  const AuthorCard(
 authorName: 'Mike Katz',
 title: 'Smoothie Connoisseur',
 imageProvider: AssetImage('assets/author_katz.jpeg'),
),
 // TODO: Add author information
 // TODO: Add Positioned text
 // 1
Expanded(
 // 2
 child: Stack(
 children: [
 // 3
 Positioned(
 bottom: 16,
 right: 16,
 child: Text(
 'Recipe',
 style:TextStyle(color: Colors.black)
 ),
 ),
 // 4
 Positioned(
 bottom: 70,
 left: 16,
 child: RotatedBox(
 quarterTurns: 3,
 child: Text(
 'Smoothies',
style:TextStyle(color: Colors.black)
 ),
 ),
 ),
 ],
 ),
),


 ],
 ),
 ),
 );
 }
}