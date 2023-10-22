import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text('C'),
                ),
                accountName: Text('CAT'),
                accountEmail: Text('CAT@CAT.com')),
            ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text('Help'),
              leading: Icon(Icons.help),
              onTap: () {},
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.help_center),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 209, 207, 207),
      appBar: AppBar(
        title: Text(
          'Task 1',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 140,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.black),
                      gradient: LinearGradient(
                          colors: [Colors.black, Colors.white],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      shape: BoxShape.circle),
                  padding: EdgeInsets.only(bottom: 8),
                ),
                Container(
                  width: 120,
                  height: 140,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 5, color: Colors.blue),
                      gradient:
                          RadialGradient(colors: [Colors.blue, Colors.black])),
                  padding: EdgeInsets.only(bottom: 8),
                ),
                Container(
                  width: 120,
                  height: 140,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.blue),
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.red],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      shape: BoxShape.circle),
                  padding: EdgeInsets.only(bottom: 8),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                ),
                // color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                    colors: [Colors.blueGrey, Colors.blue, Colors.black],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft),
              ),
              padding: EdgeInsets.only(bottom: 8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'POSTS ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              alignment: Alignment.topCenter,
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/R (1).png')),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'CAT',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('It\'s Flutter task .. good luck. ^^  ',
                        style: TextStyle(fontSize: 18)),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.thumb_up_off_alt_outlined),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text('Like',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.speaker_notes_outlined),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text('Comment',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.share_outlined),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text('Share',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      ' Hello CAT ^^ \n Flutter task is great :) ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
