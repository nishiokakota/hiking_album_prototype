import 'package:flutter/material.dart';
import 'edit_page.dart';
import 'mounts_set_page.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/first_page.jpg"),
                  fit: BoxFit.cover,
                )
              ),
            ),

            Column(
              children: <Widget>[
                routePage("gallery list", EditPage()),
                routePage("insert image", MountSetPage()),
              ],
            )
          ],
        )
    );
  }


  Widget routePage(String title, Widget page) {
    return RaisedButton(
      child: Text(title),
      color: Colors.white,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return page;
            },
          ),
        );
      },
    );
  }
}