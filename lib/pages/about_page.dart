import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 128, horizontal: 64),
      child: Text(
        """
Hermes Travel is a modern space travel agency with over 25 years of history. 
We specialize in organizing space journeys, offering the richest travel program that will allow you to discover previously unknown secrets of the universe.
Our spacecraft are equipped with state-of-the-art technologies, ensuring your comfort and safety throughout the entire journey. Our teams of entertainers will provide you with a variety of unique attractions to enhance your travel experience.
What sets Hermes Travel apart from the competition is the unique blend of classical Greek aesthetics and modern design, creating an unforgettable atmosphere inside our shuttles.
We take pride in our position as Leaders  in the field of commercial space travel. Our presence in the market since 2100 reflects our commitment and passion for travel. 
We invite you not only on a journey but on a unique and unparalleled experience. With us, you will transcend boundaries and connect your dreams with our very own Olympus.

Discover a new level of adventure and treat yourself to a touch of luxury with Hermes Travel. From outer space to Olympus - that's where we will take you.""",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
