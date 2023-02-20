import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class StatefulWidgetName extends StatefulWidget {
  const StatefulWidgetName({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetName> createState() => _StatefulWidgetNameState();
}

class _StatefulWidgetNameState extends State<StatefulWidgetName> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = [
    '김영숙',
    '홍길동',
    '피자집',
  ];
  var like = [ 0, 0, 0 ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('연락처 앱')),
          body: ListView.builder(
            itemCount: name.length,
            itemBuilder: (context, i) {
              return ListTile(
                leading:Text(like[i].toString()),
                title: Text(name[i], style: const TextStyle( color: Colors.black, fontSize: 18)),
                trailing: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      like[i]++;
                    });
                  },
                  child: const Text('좋아요'),
                ),
              );
            },
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
