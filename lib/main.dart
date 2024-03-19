import 'package:bahalaka_tan/components/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Stack(
                alignment: Alignment.topCenter,
                children: [
                  const Image(
                      fit: BoxFit.fill,
                      width: double.infinity,
                      image: NetworkImage("https://i.imgur.com/QRST9VM.png")),
                  Positioned(
                    top: 1,
                    child: Text(
                      "*End of Debate*",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.red,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ]),
                    ),
                  ),
                  Positioned(
                    child: Text(
                      "Ikaw Bahala",
                      style: TextStyle(
                          fontSize: 75,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.red,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ]),
                    ),
                  )
                ],
              ),

              Container(
                height: 1600,
            child: Row(
              children: [

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 500,
                      child: Text(
                        "JUST LIKE HOME BUT BETTER",
                        style: TextStyle(
                            fontSize: 75,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  color: Colors.red,
                                  blurRadius: 4,
                                  offset: Offset(2, 2))
                            ]),
                      ),
                    ),
                    Container(
                      width: 500,
                      child: Text(
                        "Bahala Na is the restaurant to end all debates of where to dine and have a great time.",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  color: Colors.red,
                                  blurRadius: 4,
                                  offset: Offset(2, 2))
                            ]),
                      ),
                    ),
                  ],
                ),
                  
                    Expanded(
                      child: Wrap(
                      children: [
                        itemCard(),
                        itemCard(),
                        itemCard(),
                        itemCard(),
                        itemCard(),
                        itemCard(),
                        itemCard(),
                        itemCard(),
                      ],
                      ),
                    )
                    
                
              ],
            ),
              )
            ],
          ),
        ));
  }
}
