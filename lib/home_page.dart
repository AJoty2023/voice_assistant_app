import 'package:flutter/material.dart';
import 'package:voice_app/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Allen'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // virtual assistant picture
          Stack(
            children: [
              Center(
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.only(top: 4),
                decoration: const BoxDecoration(
                  color: Pallete.assistantCircleColor,
                  shape: BoxShape.circle,
                ),
              )
             ),
              Center(
                child: Container(
                  height: 123,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/virtualAssistant.png'))
                  ),

                ),
              ),
            ],
            ),

          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 15,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              ),
            ),

            child: const Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.0),
              child: Text('Good Morning, What task can I do for you?',style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontSize: 25,

              ),),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(
              top: 10,
          ),

          child: const Text('Here are a few features', style: TextStyle(
            fontFamily: 'Cera Pro',
            color: Pallete.mainFontColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)
          ),
          //suggestion list
        ],
      ),
    );
  }
}