import 'package:buddiesgram/pages/HomePage.dart';
import 'package:buddiesgram/pages/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progy Gist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        cardColor: Colors.white70,
        accentColor: Colors.black,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(headline4: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold),
          button: TextStyle(
            color: kPrimaryColor,
          ),
          headline5: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
              child:
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/welcomeprogy.jpg"),
                      fit: BoxFit.cover,
                    ),
                ),
              ),
          ),
          Expanded(
            flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                    children: [TextSpan(text: "PROGY GIST\n",
                      style: TextStyle(fontSize: 60.0,  color: Colors.white, fontFamily: "Signatra"),
                    ),
                      TextSpan(text: " \n", style: TextStyle(fontSize: 15.0,  color: Colors.white, fontFamily: "monospace"),
                      ),
                      TextSpan(text: "Follow your Interest.\n", style: TextStyle(fontSize: 15.0,  color: Colors.white, fontFamily: "monospace"),
                      ),
                      TextSpan(text: " \n", style: TextStyle(fontSize: 15.0,  color: Colors.white, fontFamily: "monospace"),
                      ),
                      TextSpan(text: "Hear what People are Gisting about.\n", style: TextStyle(fontSize: 15.0,  color: Colors.white, fontFamily: "monospace"),
                      )
                    ]
                  ),
                  ),
                 FittedBox(
                   child: GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(
                           builder: (context){
                             return HomePage();
                             },
                       ));
                     },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                    color: kPrimaryColor,
                  ),
                    child: Row(
                      children: [
                        Text("START GIST",
                          style: Theme.of(context).textTheme.button.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                 ),
                 ),
                ],
              ),
          ),
        ],
      ),

    );
  }
}