import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var itemCount = 10;

    // MAKING THE STATUS BAR TRANSPARENT
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark,
      //set brightness for icons, like dark background light icons
    ));
    return Scaffold(
      drawer: const Drawer(child: SizedBox(height: 50)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/home_icon.svg"), label: "HOME"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/categories_icon.svg"),
              label: "CATEGORIES"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/orders_icon.svg"),
              label: "ORDERS"),
          BottomNavigationBarItem(
              icon: Stack(alignment: AlignmentDirectional.center, children: [
                SvgPicture.asset("assets/profileBG_icon.svg"),
                Image.asset("assets/profile1_icon.png")
              ]),
              label: "PROFILE"),
          BottomNavigationBarItem(
              icon: Stack(alignment: AlignmentDirectional.center, children: [
                SvgPicture.asset("assets/circleOut_icon.svg"),
                SvgPicture.asset("assets/circleIn_icon.svg"),
                SvgPicture.asset("assets/plus_icon.svg")
              ]),
              label: "EXPLORE"),
        ],
      ),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFF614DE2), Color(0xFFFB2E86)])),
        ),
        title: const Text(
          "MastiGo",
          style: TextStyle(fontFamily: "Playfair Display"),
        ),
        titleSpacing: 5.0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            child: InkWell(
              onTap: () {},
              child: const Icon(Icons.favorite_border_outlined),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            child: InkWell(
                onTap: () {},
                child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Icon(CupertinoIcons.bag),
                      Icon(
                        Icons.done_rounded,
                        size: 10.0,
                      )
                    ])),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 12.0, left: 4.0, top: 8.0, bottom: 8.0),
            child: InkWell(
              onTap: () {},
              child: const Icon(Icons.notifications_none_rounded),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(50, 50),
          child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 15.0, bottom: 10.0, right: 13.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Material(
                  elevation: 5.0,
                  child: Container(
                    height: 40.0,
                    color: Colors.white,
                    child: Stack(
                        clipBehavior: Clip.hardEdge,
                        alignment: AlignmentDirectional.centerEnd,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: "Search Here...",
                              hintStyle: TextStyle(fontSize: 11.0),
                              prefixIcon: Icon(CupertinoIcons.search),
                            ),
                          ),
                          Material(
                            elevation: 5.0,
                            color: Colors.white,
                            // shadowColor: Colors.transparent,
                            // surfaceTintColor: Colors.transparent,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.mic_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              )),
        ),
        elevation: 5.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                height: 100,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemCount,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: Container(
                              // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0x44444440))),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundColor: const Color(0xFFFB2E86),
                                child: Image.asset(
                                  "assets/image1.png",
                                  scale: 0.75,
                                ),
                              ),
                            ),
                          ),
                          const Text("MENS"),
                        ],
                      );
                    })),
            SizedBox(
              height: 169.5,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/sale_image.png',
                // height: 200,
                // width: MediaQuery.of(context).size.width,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              height: 55,
              color: const Color(0xFFC4C4C4),
              child: const Center(
                child: Text(
                  "Information regarding customer",
                  style: TextStyle(fontSize: 20, color: Color(0xFF444444)),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Center(
              child: Text(
                "Must-Have Summer Wear",
                style: TextStyle(
                    color: Color(0xFFFB2E86),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Material(
              elevation: 5.0,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                // ****************** ERROR IN GRIDVIEW ***********************
                child: GridView.count(
                    crossAxisCount: 1,
                    padding: const EdgeInsets.all(0.0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                        child: Card(
                          child: Column(
                            children: [
                              SizedBox(
                                  width: 70,
                                  height: 100,
                                  child: Image.asset("assets/image2.png")),
                              Row(
                                children: [
                                  Image.asset("assets/H&M_icon.png"),
                                  Image.asset("assets/brand_name.png"),
                                  const Text("& more")
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Unbelievable Deals",
              style: TextStyle(
                  color: Color(0xFFFB2E86),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const Text("+ View All",
                style: TextStyle(
                  color: Color(0xFF614DE2),
                  fontSize: 14,
                )),
            const SizedBox(height: 10.0),
            Material(
              elevation: 5.0,
              child: Container(
                color: Colors.white,
                height: 220,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "MEN's HOUR",
              style: TextStyle(
                  color: Color(0xFFFB2E86),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Text("+ View All",
                style: TextStyle(
                  color: Color(0xFF614DE2),
                  fontSize: 14,
                )),
            const SizedBox(height: 10.0),
            Material(
              elevation: 5.0,
              child: Container(
                color: Colors.white,
                height: 220,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Deals Zone",
              style: TextStyle(
                  color: Color(0xFFFB2E86),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF614DE2), Color(0xFFFB2E86)]),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Flat",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Ribeye')),
                      Text(
                        "70%",
                        style: (TextStyle(color: Colors.white, fontSize: 30)),
                      ),
                      Text("Off",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Ribeye')),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xFF614DE2), Color(0xFFFB2E86)]),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Under",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Ribeye')),
                      Text(
                        "₹499",
                        style: (TextStyle(color: Colors.white, fontSize: 30)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xFF614DE2), Color(0xFFFB2E86)]),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Under",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Ribeye')),
                      Text(
                        "₹299",
                        style: (TextStyle(color: Colors.white, fontSize: 30)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Shop By Category",
              style: TextStyle(
                  color: Color(0xFFFB2E86),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const Text("+ View All",
                style: TextStyle(
                  color: Color(0xFF614DE2),
                  fontSize: 14,
                )),
            const SizedBox(height: 20.0),
            Stack(alignment: Alignment.center, children: [
              Material(
                elevation: 5.0,
                child: Container(
                  height: 139,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFFD0DBFF),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 139,
                        width: 40,
                      ),
                      SizedBox(
                        height: 139,
                        width: 160,
                        child: Image.asset(
                          "assets/Polygon4.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 139,
                        width: 160,
                        child: Image.asset(
                          "assets/Polygon3.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/beltWallet.png"),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Belts & Wallets",
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        "Up To 70% Off",
                        style: TextStyle(fontSize: 22, fontFamily: 'Ledger'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "+ SHOP NOW",
                        style: TextStyle(
                          color: Color(0xFF614DE2),
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ]),
            const SizedBox(
              height: 10.0,
            ),
            Stack(alignment: Alignment.center, children: [
              Material(
                elevation: 5.0,
                child: Container(
                  height: 139,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFFD0DBFF),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 139,
                        width: 180,
                        child: Image.asset(
                          "assets/polygon2.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 139,
                        width: 180,
                        child: Image.asset(
                          "assets/polygon1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Eyewear",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Up To 70% Off",
                        style: TextStyle(fontSize: 20, fontFamily: 'Ledger'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "+ SHOP NOW",
                        style: TextStyle(
                          color: Color(0xFF614DE2),
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  Image.asset("assets/goggles.png"),
                ],
              ),
            ]),
            const SizedBox(
              height: 10.0,
            ),
            Stack(alignment: Alignment.center, children: [
              Material(
                elevation: 5.0,
                child: Container(
                  height: 139,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFFD0DBFF),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 139,
                        width: 40,
                      ),
                      SizedBox(
                        height: 139,
                        width: 160,
                        child: Image.asset(
                          "assets/Polygon4.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 139,
                        width: 160,
                        child: Image.asset(
                          "assets/Polygon3.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/beltWallet.png"),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Belts & Wallets",
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        "Up To 70% Off",
                        style: TextStyle(fontSize: 22, fontFamily: 'Ledger'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "+ SHOP NOW",
                        style: TextStyle(
                          color: Color(0xFF614DE2),
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ]),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Explore More Brands",
              style: TextStyle(
                  color: Color(0xFFFB2E86),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Stack(alignment: Alignment.bottomCenter, children: [
                  Stack(alignment: Alignment.center, children: [
                    Material(
                      elevation: 5.0,
                      child: Container(
                        height: 139,
                        width: MediaQuery.of(context).size.width,
                        color: const Color(0xFFD0DBFF),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Image.asset(
                            "assets/Polygon5.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 125,
                        width: 345,
                        child: Image.asset(
                          "assets/jacket.png",
                          fit: BoxFit.fill,
                        )),
                  ]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/pantaloons.png"),
                      const SizedBox(
                        height: 2.0,
                      ),
                      const Text(
                        "Up To 50% Off",
                        style: TextStyle(
                            fontFamily: 'Ribeye',
                            color: Colors.white,
                            fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 75,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFB2E86),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Text(
                          "+ SHOP NOW",
                          style: TextStyle(fontSize: 8.0, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ])
              ]),
            ),
            // Stack(alignment: Alignment.center, children: [
            //   Material(
            //     elevation: 5.0,
            //     child: Container(
            //       height: 139,
            //       width: MediaQuery.of(context).size.width,
            //       color: const Color(0xFFD0DBFF),
            //       child: Padding(
            //         padding: const EdgeInsets.only(right: 35.0),
            //         child: Image.asset(
            //           "assets/Polygon5.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //     ),
            //   ),
            //   Image.asset("assets/jacket.png"),
            // ]),
          ],
        ),
      ),
    );
  }
}
