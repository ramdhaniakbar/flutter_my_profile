import 'package:flutter/material.dart';
import 'Page2.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'My Profile',
            style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            )),
            child: Stack(alignment: Alignment.center, children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.shortestSide,
                padding: const EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 68.0,
                          backgroundColor: Color(0xff0f2e4f),
                          child: CircleAvatar(
                            radius: 64.0,
                            backgroundImage:
                                AssetImage('images/ramdhaniakbar.jpg'),
                          ),
                        ),
                        Text(
                          'MUHAMAD RAMDHANI AKBAR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 18.0,
                              color: Colors.black,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Vacational High School Student of SMK Wikrama Bogor',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page2()),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.black
                          ),
                          child: Text('See More',
                          style: TextStyle(
                            color: Colors.white
                          )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ])));
  }
}