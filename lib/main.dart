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
          appBar: AppBar(
            elevation: 0,
            shape: const Border(
              bottom: BorderSide(color: Colors.black12)
            ),
            title: Row(
              children: const [
                Text(
                  '금호동3가',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                  size: 18,
                )
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30
                  )
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30
                  )
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                      size: 30
                  )
              ),
            ],
            backgroundColor: Colors.white,
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide( color: Colors.black12 ),
                      bottom: BorderSide(color: Colors.black12)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/camera.jpg', width: 160, height: 160, fit: BoxFit.cover), // Text(key['title']),
                      ),
                      SizedBox(
                        width: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),
                                Text('성동구 행당동 · 끌올 10분전', style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500)),
                                Text('210,000원', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, height: 1.6)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(Icons.favorite_border),
                                Text('4')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 180,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black12)
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/game_controller.jpg', width: 160, height: 160, fit: BoxFit.cover), // Text(key['title']),
                      ),
                      SizedBox(
                        width: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('엑스박스 시리즈 x 미개봉', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),
                                Text('성동구 행당동 · 6분전', style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500)),
                                Text('680,000원', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, height: 1.6)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(Icons.favorite_border),
                                Text('4')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}