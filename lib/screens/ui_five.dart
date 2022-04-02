import 'package:flutter/material.dart';
import 'package:ui_screens/functions.dart';
import 'package:ui_screens/screens/lists/listwo.dart';
import 'package:ui_screens/screens/ui_six.dart';

class UiScreenFive extends StatelessWidget {
  UiScreenFive({Key? key}) : super(key: key);

  String address = '''D11 Characted Bevely
Hills , SubamanyapuraP.O.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Order #1688062",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              child: ListTile(
                leading: const Text(
                  "May 31,05:44PM",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Delivered",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            divide(),
            screenfive("1 ITEM", "RECEIPT", Icons.receipt),
            ListTile(
              leading: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 64,
                  maxHeight: 64,
                ),
                child: Image.asset(imageThree[0]),
              ),
              title: const Text("Explore | Men | Navy Blue"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("1 Piece"),
                  const Text("Size: XL"),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEv,
                    children: [
                      Container(
                        decoration: boxDec(Colors.blue),
                        alignment: Alignment.center,
                        height: 30,
                        width: 25,
                        // color: Colors.amber,
                        child: const Text(
                          "1",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "X ₹799",
                        style: style(Colors.black),
                      ),
                      const SizedBox(
                        width: 180,
                      ),
                      Text(
                        "₹799",
                        style: style(Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            divide(),
            tail("Item Total", "₹799", Colors.black),
            tail("Delivery", "FREE", Colors.green),
            const ListTile(
              title: Text(
                "Grand Total",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              trailing: Text(
                "₹799",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            divide(),
            screenfive("CUSTOMER DETAILS", "SHARE", Icons.share),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    "Deepa",
                    style: style1(),
                  ),
                  subtitle: Text("+91-9978675645"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      cont(Icons.call),
                      SizedBox(
                        width: 17,
                      ),
                      Icon(
                        Icons.whatsapp,
                        size: 45,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    "Address",
                    style: style1(),
                  ),
                  subtitle: Text(
                    address,
                    style: style(Colors.grey),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "City",
                              style: style1(),
                            ),
                            Text(
                              "Banglore",
                              style: style(Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pincode",
                              style: style1(),
                            ),
                            Text(
                              "678045",
                              style: style(Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Payment",
                    style: style1(),
                  ),
                  subtitle: Text(
                    "Online",
                    style: style(Colors.grey),
                  ),
                )
              ],
            ),
            divide(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "ADDITIONAL INFORMATION",
                style: style(Colors.grey),
              ),
            ),
            listtail2("State", "Karnataka"),
            listtail2("Email", "muneer@gmail.com"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                decoration: boxDec(Colors.blue),
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UiScreenSix()));
                    },
                    child: Text(
                      "Share Reciept",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
