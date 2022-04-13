import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myIndex = 0;

  List<Widget> screens = [
    HomeWidget(),
    Text(
      'Community',
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'Services',
      style: TextStyle(fontSize: 30),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.cyan, foregroundColor: Colors.white)),
      home: Scaffold(
        // backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('Housing Management'),
          automaticallyImplyLeading: true,
          leading: BackButton(
            color: Colors.white,
          ),
        ),
        body: Center(
          child: screens[myIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.apartment), label: 'Community'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Services'),
          ],
          selectedItemColor: Colors.orange,
          currentIndex: myIndex,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Container(
          width: 500,
          child: Card(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.teal),
                      alignment: Alignment.center,
                      child: const Text(
                        'AH',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Rajat Palankar',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.cyan,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'bijal3@outlook.com',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                const Text('+91-99091 55292'),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Card(
          color: Colors.grey.shade200,
          child: Container(
            padding: EdgeInsets.all(20),
            width: 500,
            height: 300,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Flat is'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
