import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: portfolioDetails(context),
      ),
    );
  }
}

Widget portfolioDetails(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          imageGroup(),
          titleGroup(),
          iconbuttonGroup(),
          buttonGroup()
        ],
      ),
    ),
  );
}

Widget titleGroup() {
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Захар Егоров',
            style: TextStyle(
                fontFamily: 'myfont', fontSize: 30, color: Colors.white)),
        Text('@mrFrok',
            style: TextStyle(
                fontFamily: 'myfont', fontSize: 30, color: Colors.white)),
      ],
    ),
  );
}

Widget imageGroup() {
  return const Center(
    child: CircleAvatar(
      radius: 100,
      backgroundImage: AssetImage("assets/images/me.jpg"),
    ),
  );
}

Widget iconbuttonGroup() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse('https://t.me/mrFrok228'));
          },
          icon: Icon(Icons.telegram),
          color: Colors.white,
          iconSize: 100,
        ),
        IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://github.com/mrFrok'));
            },
            icon: Icon(EvaIcons.github),
            color: Colors.white,
            iconSize: 100),
      ],
    ),
  );
}

Widget buttonGroup() {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              launchUrl(Uri.parse('https://www.fl.ru/users/egoroffzakhar/portfolio/'));
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0x100000FF),
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            child: Text('FL.ru', style: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              launchUrl(Uri.parse('https://vk.com/mrfrok'));
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0x100000FF),
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            child: Text('VK', style: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              launchUrl(Uri.parse('https://www.youtube.com/watch?v=dQw4w9WgXcQ'));
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0x100000FF),
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            child: Text('Youtube', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
  );
}
