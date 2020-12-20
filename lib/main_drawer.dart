import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          padding: EdgeInsets.only(top: 30.0),
          child: Image(
            image: AssetImage('assets/images/ctfront.jpg'),
          ),
        ),
        Container(
          color: Colors.blue.withOpacity(0.8),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'CT GROUP OF INSTITUTION',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'https://www.ctgroup.in/',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.video_library),
          title: Text(
            'CT News',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.library_books),
          title: Text(
            'Ebooks',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.ondemand_video_outlined),
          title: Text(
            'Video Lecture',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.login_outlined),
          title: Text(
            'Logout',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          onTap: null,
        ),
      ],
    );
  }
}
