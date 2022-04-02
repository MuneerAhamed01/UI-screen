import 'package:flutter/material.dart';
import 'package:ui_screens/functions.dart';
import 'package:ui_screens/screens/lists/listwo.dart';
import 'package:ui_screens/screens/ui_three.dart';

class UiScreenTWo extends StatelessWidget {
  const UiScreenTWo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(242, 255, 255, 255),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Manage Store',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              itemCount: 7,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                  childAspectRatio: 7 / 5),
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                    child: SingleChildScrollView(
                      child: InkWell(
                        onTap: () => gotoNav(context),
                        child: GridTile(
                          child: Padding(
                            padding: const EdgeInsets.all(13),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Icon(
                                        icons[index],
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: colors[index],
                                      ),
                                      height: 50,
                                      width: 50,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      texts[index],
                                      style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                index == 6
                                    ? Positioned(
                                        right: 0,
                                        child: Container(
                                          height: 20,
                                          width: 35,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(3)),
                                          child: Text(
                                            "New",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    : Text("")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ));
              }),
        )),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          unselectedItemColor: Colors.grey,
          fixedColor: Colors.blue,
          currentIndex: 3,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopify_rounded), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.apps,
                ),
                label: 'Product'),
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_rounded), label: 'Manage'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ],
        ));
  }
}
