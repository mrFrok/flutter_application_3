import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        portfolioDetails(context),
      ],
    ));
  }
}

Widget portfolioDetails(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Stack(
          fit: StackFit.loose,
          children: <Widget>[imageGroup(), titleGroup()],
        ),
      ],
    ),
  );
}

Widget titleGroup() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Захар Егоров',
            style: TextStyle(
                fontFamily: 'myfont', fontSize: 20, color: Colors.white)),
        Text('@mrfrok228',
            style: TextStyle(
                fontFamily: 'myfont', fontSize: 20, color: Colors.white)),
      ],
    ),
  );
}

Widget imageGroup() {
  return Image(
      image: AssetImage('assets/images/background.jpg'), fit: BoxFit.cover);
}
