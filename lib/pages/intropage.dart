import 'package:flutter/material.dart';

import 'homepage.dart';



class FirstPage extends StatelessWidget {
   const FirstPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/images/logo.png',
              height: 120,
              ),

              const SizedBox(height: 19,),

              const Text("Just Do It",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              ),

              const SizedBox(height: 19,),

              const Text("Only true  fans come here...! Marvel Comics is a New York City-based comic book publisher, a property of The Walt Disney Company since December 31, 2009",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black12,
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24,),

              GestureDetector(
                onTap: ()=> Navigator.push(
                  context,MaterialPageRoute(builder: (context)=> HomePage())
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: EdgeInsets.all(25),
                  child: const Center(
                    child: Text("shop now",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}