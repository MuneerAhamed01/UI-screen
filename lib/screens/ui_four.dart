import 'package:flutter/material.dart';
import 'package:ui_screens/functions.dart';
import 'package:ui_screens/screens/lists/listone.dart';
import 'package:ui_screens/screens/lists/listwo.dart';
import 'package:ui_screens/screens/ui_five.dart';

class UiScreenFour extends StatefulWidget {
  UiScreenFour({Key? key}) : super(key: key);

  @override
  State<UiScreenFour> createState() => _UiScreenFourState();
}

class _UiScreenFourState extends State<UiScreenFour> {
  bool expand = false;
  String text = '''Get Dukkan Premium for just 
                ₹4,999/year
''';

  String text1 = '''All the advance features for scaling your 
                         buisness
''';
  IconData cli = Icons.add;
  IconData clip = Icons.horizontal_rule_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dukkan Premium"),
        elevation: 0,
        backgroundColor: Colors.blue[800],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    height: 120,
                    color: Colors.blue[800],
                  ),
                  Positioned(
                    bottom: -90,
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 200,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assest/image/logo.png",
                                scale: 8,
                              ),
                              Text(
                                text,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                text1,
                              )
                            ],
                          ),
                        ),
                      ),
                      width: 350,
                    ),
                  )
                ],
                clipBehavior: Clip.none,
              ),
              const SizedBox(height: 110),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: textof("Features"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListView.builder(
                    controller: ScrollController(),
                    itemExtent: 70,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue,
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ]),
                          child: CircleAvatar(
                            radius: 30,
                            child: Icon(leadfour[index]),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        title: Text(titlefour[index]),
                        subtitle: Text(
                            "It is a long established fact that a reader will be distracted by the readable content."),
                      );
                    }),
              ),
              const Divider(),
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: textof("What is dukkan premium?")),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Image.asset(
                      'assest/image/images.jpg',
                      scale: 0.5,
                    ),
                    Image.asset(
                      "assest/image/youtube-logo-png-2067.png",
                      scale: 13,
                    )
                  ],
                  alignment: AlignmentDirectional.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: textof("Frequantly Asked Questions"),
              ),
              ListView.separated(
                  controller: ScrollController(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: InkWell(
                        child: ExpansionTile(
                          onExpansionChanged: ((value) {
                            setState(() {
                              expand = value;
                            });
                          }),
                          trailing: index == 0 && expand == true
                              ? Icon(clip)
                              : Icon(cli),
                          title: texttwo(expandtitle[index]),
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words"),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 6),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: textof("Need help? Get in touch"),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      container4(Icons.chat_bubble, 'Live Chat'),
                      container4(Icons.call_outlined, 'Phone Call')
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UiScreenFive(),
                          ));
                        },
                        child: Text(
                          "Select Domain",
                          style: TextStyle(fontSize: 18),
                        )),
                    Container(
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Get Primeum")),
                      width: 180,
                      height: 45,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
