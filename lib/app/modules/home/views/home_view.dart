import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3366ff),
        elevation: 0,
        centerTitle: false,
        title: RichText(
          text: TextSpan(
              text: "Penghitung Skor",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.help_outline_outlined,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: Get.height * 0.24,
              width: Get.width,
              padding: EdgeInsets.all(15),
              color: Color(0xff3366ff),
              child: Container(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFe0f2f1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sports_handball_rounded,
                              color: Color(0xff3366ff),
                            ),
                            Text(
                              "50",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff3366ff),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFe0f2f1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.people_alt_outlined,
                              color: Color(0xff3366ff),
                            ),
                            Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff3366ff),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 180),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                height: double.infinity,
                                child: Icon(Icons.emoji_events_outlined),
                              ),
                              title: Text("Catur"),
                              subtitle: Text("Ade Fathudin menang"),
                              trailing: Text("08 Apr 22"),
                            ),
                          ],
                        ),
                        elevation: 8,
                        shadowColor: Color(0xff3366ff),
                        margin: EdgeInsets.only(
                            right: 20, left: 20, bottom: 5, top: 5),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                      Card(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                height: double.infinity,
                                child: Icon(Icons.refresh_outlined),
                              ),
                              title: Text("Poker"),
                              subtitle: Text("Permainan belum berakhir"),
                              trailing: Text("27 Mar 22"),
                            ),
                          ],
                        ),
                        elevation: 8,
                        shadowColor: Color(0xff3366ff),
                        margin: EdgeInsets.only(
                            right: 20, left: 20, bottom: 5, top: 5),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Create New",
        child: Icon(Icons.add_circle_outline),
        backgroundColor: Color(0xff285ced),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Players")
        ],
        selectedItemColor: Color(0xff285ced),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
