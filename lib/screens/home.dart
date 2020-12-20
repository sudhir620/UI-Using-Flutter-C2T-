import 'package:FlutterProjects/main_drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import './assignment.dart';
import './chat.dart';
import './about.dart';
import './notification.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final tabs = [
    ListView(
      scrollDirection: Axis.vertical,
      children: [
        //image slider
        CarouselSlider(
          height: 210.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
          viewportFraction: 0.8,
          items: [
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/one.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/two.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/three.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
          ],
        ),

        //institute name
        Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CT GROUP OF INSTITUTION',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),

        //ebooks cardview
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
          child: Container(
            child: FittedBox(
              child: Material(
                color: Colors.white,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(5.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.centerLeft,
                          image: AssetImage('assets/images/ebookimg.jpeg'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'eBooks',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 10),
                          ),
                          SizedBox(
                            height: 1,
                            width: 80,
                            child: Container(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Learn Something New',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 7),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),

        //grid cardview
        Container(
          margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: FittedBox(
                        child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Color(0x802196F3),
                          child: Column(
                            children: [
                              Container(
                                  width: 160,
                                  padding: EdgeInsets.fromLTRB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.centerLeft,
                                      image:
                                      AssetImage('assets/images/notes.jpg'),
                                    ),
                                  )),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  'Notes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: FittedBox(
                        child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Color(0x802196F3),
                          child: Column(
                            children: [
                              Container(
                                  width: 160,
                                  padding: EdgeInsets.fromLTRB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.centerLeft,
                                      image: AssetImage(
                                          'assets/images/syllabus.jpg'),
                                    ),
                                  )),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  'Syllabus',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: FittedBox(
                        child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Color(0x802196F3),
                          child: Column(
                            children: [
                              Container(
                                  width: 160,
                                  padding: EdgeInsets.fromLTRB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.centerLeft,
                                      image: AssetImage(
                                          'assets/images/teacherDetails.png'),
                                    ),
                                  )),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  'Teacher Details',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: FittedBox(
                        child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Color(0x802196F3),
                          child: Column(
                            children: [
                              Container(
                                  width: 160,
                                  padding: EdgeInsets.fromLTRB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.centerLeft,
                                      image: AssetImage(
                                          'assets/images/gallery.png'),
                                    ),
                                  )),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  'Gallery',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
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
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
          child: Container(
            child: FittedBox(
              child: Material(
                color: Colors.white,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(5.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.centerLeft,
                          image: AssetImage('assets/images/youtubeimg.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Video Lectures',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 9),
                          ),
                          SizedBox(
                            height: 1,
                            width: 80,
                            child: Container(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Easy to understand',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 7),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
    AssignmentPage(),
    ChatPage(),
    AboutPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "C 2 T",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=> NotificationPage())
              );
            },
            icon: Icon(Icons.notifications),
            color: Colors.white,
          )
        ],
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Assignment',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.compare_arrows),
              label: 'Chat',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label: 'About',
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
