import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Detail Profile',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 53.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/ramdhaniakbar.jpg'),
              ),
            ),
            Text('Muhamad Ramdhani Akbar',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                )),
            Text('STUDENT OF WIKRAMA',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.white70,
                  fontSize: 18.0,
                  letterSpacing: 2.2,
                  fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(
              height: 20.0,
              width: 180.0,
              child: Divider(
                color: Color.fromARGB(195, 255, 255, 255)
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              child: ListTile(
                leading: Text(
                  'About : ',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(
                  'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vitae dolor vel corrupti.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              child: ListTile(
                leading: Text(
                  'History : ',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate vitae excepturi expedita id amet quis qui, nesciunt nulla ducimus facilis.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              child: ListTile(
                leading: Text(
                  'Skills : ',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(
                  'HTML, CSS, PHP, Laravel, MySQL, Git.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
