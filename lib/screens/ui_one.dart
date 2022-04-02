import 'package:flutter/material.dart';
import 'package:ui_screens/screens/lists/listone.dart';
import 'package:ui_screens/screens/lists/ui_two.dart';

import '../functions.dart';

class UiScreenOne extends StatelessWidget {
  const UiScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Additional Information",
            style: TextStyle(fontSize: 25)),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => navigation(context),
                leading: leadings[index],
                title: titles[index],
                trailing: trailings[index],
              );
            }),
      ),
    );
  }
}
