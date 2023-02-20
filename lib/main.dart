import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: ListView(
            children: [
              Row(
                children: const [
                  Icon(Icons.account_circle, size: 50),
                  Text('홍길동', style: TextStyle(fontSize: 18))
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.account_circle, size: 50),
                  Text('홍길동', style: TextStyle(fontSize: 18))
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.account_circle, size: 50),
                  Text('홍길동', style: TextStyle(fontSize: 18))
                ],
              )
            ],
          ),
          bottomNavigationBar: const BottomNavigationBar(),
        ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.phone),
            Icon(Icons.chat),
            Icon(Icons.contact_page)
          ],
        ),
      ),
    );
  }
}
