import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_screens/screens/lists/listwo.dart';
import 'package:ui_screens/screens/ui_four.dart';

import '../functions.dart';

class UiScreenThree extends StatelessWidget {
  UiScreenThree({Key? key}) : super(key: key);

  String text = ''' A free limit up to which you wil recieve 
the online payments directly in your bank
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payments",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 6),
            child: Icon(Icons.info_outline),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Transaction Limit",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  letterSpacing: 1),
                            ),
                            Text(
                              text,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: LinearProgressIndicator(
                                value: 0.3,
                              ),
                            ),
                            Text(
                              "36,668 left out of 50,000",
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  // navigation(context);
                                },
                                child: Text("Increase limt"))
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: Colors.black, width: 0.3)),
                    height: 200,
                    // color: Colors.white,
                  ),
                  ListTile(
                      leading: Text(
                        "Default Payment",
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            "Online Payment",
                            style: TextStyle(fontSize: 15),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      )),
                  ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UiScreenFour(),
                          )),
                      leading: Text(
                        "Payment Profile",
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            "Bank Account",
                            style: TextStyle(fontSize: 15),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      )),
                  ListTile(
                      leading: Text(
                        "Payment Overview",
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            "Lifetime",
                            // style: TextStyle(fontSize: 15),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined, size: 24),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "AMOUNT ON HOLD",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text("₹0",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white))
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.orange,
                          ),
                          alignment: Alignment.topLeft,
                          width: 170,
                          height: 80,
                        ),
                        const SizedBox(width: 10),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "AMOUNT RECIVED",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text("₹13,330",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white))
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.green,
                          ),
                          alignment: Alignment.topLeft,
                          width: 170,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Transaction",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        contains("On Hold"),
                        SizedBox(width: 8),
                        containsone("Payouts(15)"),
                        SizedBox(width: 8),
                        contains("Refunds")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ListView.separated(
                  controller: ScrollController(),
                  shrinkWrap: true,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 44,
                              minHeight: 44,
                              maxWidth: 64,
                              maxHeight: 64,
                            ),
                            child: Image.asset(imageThree[index]),
                          ),
                          title: Text(titleThree[index]),
                          subtitle: const Text("Apr 26, 07:47 AM "),
                          trailing: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  money[index],
                                  style: const TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.circle,
                                      size: 10,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Successful")
                                  ],
                                )
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "${money[index]} deposited to S83000003",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 12),
            )
          ],
        ),
      ),
    );
  }
}
