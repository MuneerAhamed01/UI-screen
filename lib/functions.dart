import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_screens/screens/lists/listwo.dart';
import 'package:ui_screens/screens/lists/ui_two.dart';
import 'package:ui_screens/screens/ui_three.dart';

navigation(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (ctx) => UiScreenTWo()));
}

gotoNav(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (ctx) => UiScreenThree()));
}

Widget contains(String textcontain) {
  return Container(
    width: 110,
    height: 28,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey[300],
    ),
    child: Center(child: Text(textcontain)),
  );
}

Widget containsone(String textcontain) {
  return Container(
    width: 116,
    height: 28,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue[900],
    ),
    child: Center(
        child: Text(
      textcontain,
      style: TextStyle(color: Colors.white),
    )),
  );
}

Widget textof(String data) {
  return Text(
    data,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  );
}

Widget texttwo(String data) {
  return Text(
    data,
    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.8),
  );
}

bool click = false;

change() {
  if (!click) {
    click = true;
  } else {
    click = false;
  }
}

Widget container4(IconData icons, String text) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromARGB(47, 0, 0, 0), width: 0.2),
      borderRadius: BorderRadius.circular(5),
      color: Colors.white,
    ),
    height: 120,
    width: 175,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 30,
          color: Colors.grey,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        )
      ],
    ),
  );
}

Widget screenfive(String text, String subtext, IconData icons) {
  return ListTile(
      title: Text(
        text,
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Row(
        children: [
          Icon(
            icons,
            color: Colors.blue,
          ),
          Text(
            subtext,
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ],
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ));
}

BoxDecoration boxDec(Color color) {
  return BoxDecoration(
    border: Border.all(color: color),
    borderRadius: BorderRadius.circular(3),
  );
}

TextStyle style(Color col) {
  return TextStyle(
    color: col,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );
}

Widget tail(String title, String trailing, Color col) {
  return Container(
    height: 25,
    child: ListTile(
      leading: Text(
        title,
        style: style(col),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(
          color: col,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
    ),
  );
}

Widget divide() {
  return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Divider(
        thickness: 1.3,
      ));
}

EdgeInsets padd() {
  return EdgeInsets.symmetric(horizontal: 20);
}

TextStyle style1() {
  return TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );
}

Widget cont(IconData icons) {
  return Container(
    decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
      BoxShadow(color: Colors.blue, blurRadius: 1, spreadRadius: 1)
    ]),
    child: CircleAvatar(
      radius: 20,
      child: Icon(icons),
      backgroundColor: Colors.white,
    ),
  );
}

Widget listtail2(String text, String subtext) {
  return ListTile(
    title: Text(
      text,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    ),
    subtitle: Text(subtext,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        )),
  );
}
