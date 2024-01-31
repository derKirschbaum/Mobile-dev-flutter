import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PAL Peer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff3498DB),
            primary: const Color(0xff3498DB)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PAL Peer'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
            child: Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Color(0xffffffff), fontWeight: FontWeight.bold))),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
            ),
            items: const <Widget>[
              Image(
                  image: AssetImage("assets/pexels-markus-spiske-3970332.jpg")),
              Image(
                  image: AssetImage("assets/pexels-markus-spiske-3970328.jpg"))
            ],
          ),
          const SizedBox(width: 30, height: 30), // Space padding between each row
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MockupMenu(),
                  MockupMenu(),
                  MockupMenu(),
                  MockupMenu()
                ],
              ),
              SizedBox(width: 30, height: 30),// Space padding between each row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MockupMenu(),
                  MockupMenu(),
                  MockupMenu(),
                  MockupMenu()
                ],
              ),
              SizedBox(width: 30, height: 30),//Space padding between each row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MockupMenu(),
                  MockupMenu(),
                  MockupMenu(),
                  MockupMenu()
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Color(0xff3498DB)),
        BottomNavigationBarItem(icon: Icon(Icons.description), label: "Forum", backgroundColor: Color(0xff3498DB)),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search", backgroundColor: Color(0xff3498DB)),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings", backgroundColor: Color(0xff3498DB)),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile", backgroundColor: Color(0xff3498DB)),

      ]),
    );
  }
}

class MockupMenu extends StatelessWidget {

  const MockupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 50,
        height: 50,
        child: Container(
          decoration: const BoxDecoration(
              color: Color(0xffd9d9d9),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Center(
              child: Text(
            "Menu",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff95A5A6)),
          )),
        ));
  }
}
