import 'package:flutter/material.dart';
import 'package:ui_screens/functions.dart';
import 'package:ui_screens/screens/lists/listwo.dart';

class UiScreenSix extends StatelessWidget {
  const UiScreenSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.search),
            )
          ],
          title: const Text("Catalogue"),
          bottom: const TabBar(tabs: [
            Tab(
              text: "Products",
            ),
            Tab(
              text: "Categories",
            )
          ]),
        ),
        body: ListView.builder(
          itemExtent: 210,
          itemCount: 7,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(names[index]),
                    ),
                    leading: Container(
                      width: 60,
                      height: 70,
                      child: Image.asset(imageThree[index]),
                      decoration: boxDec(const Color(0xFF000000)),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("1 peice"),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          money[index],
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            const Text(
                              "In stock",
                              style: TextStyle(color: Colors.green),
                            ),
                            const SizedBox(
                              width: 160,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Switch(
                                    value: (true), onChanged: (value) {}),
                              ),
                              // flex: 9,
                            )
                          ],
                        )
                      ],
                    ),
                    trailing: const Icon(Icons.more_vert_outlined),
                  ),
                  const Divider(),
                  TextButton.icon(
                      onPressed: null,
                      icon: const Icon(Icons.share, color: Colors.black),
                      label: const Text(
                        "Share Product",
                        style: const TextStyle(color: Colors.black),
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
