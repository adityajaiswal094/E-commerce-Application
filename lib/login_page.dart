import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masti_go/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // MAKING THE STATUS BAR TRANSPARENT
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark,
      //set brightness for icons, like dark background light icons
    ));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 217,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/rectangle1_1x.png',
                    fit: BoxFit.fitHeight,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Image.asset(
                      'assets/ellipse1_1x.png',
                      // height: 114,
                      // width: 114,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      'assets/ellipse2_1x.png',
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "LOGO",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Playfair Display",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Welcome to MastiGo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Fill Details In Order To Continue",
                          style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 22.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "FULL NAME",
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          // hoverColor: Colors.grey[300],
                          // fillColor: Colors.grey[200],
                          focusColor: Colors.grey[300],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 12.0),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "MOBILE NUMBER",
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 12.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "EMAIL",
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 12.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "PASSWORD",
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(
                            FontAwesomeIcons.solidEyeSlash,
                            color: Colors.grey,
                            size: 14,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 12.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Checkbox(
                        shape: CircleBorder(),
                        value: false,
                        onChanged: null,
                      ),
                      const Text(
                        "Get updates on WhatsApp.",
                        style: TextStyle(fontSize: 10.0),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Stack(alignment: AlignmentDirectional.center, children: [
                        Image.asset(
                          "assets/whatsapp_bg.png",
                        ),
                        Image.asset(
                          "assets/whatsapp.png",
                        ),
                      ]),
                    ],
                  ),
                  Row(
                    children: const [
                      Checkbox(
                        shape: CircleBorder(),
                        value: false,
                        onChanged: null,
                      ),
                      Expanded(
                        child: Text(
                          "By continuing you agree to our Terms of Service and Privacy Policy.",
                          style: TextStyle(fontSize: 10.0),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0))),
                  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                      horizontal: 100.0, vertical: 15.0)),
                  backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const HomePage())));
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 15.0),
                )),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.transparent,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    shadows: [
                      Shadow(
                          color: Colors.blue[800]!, offset: const Offset(0, -3))
                    ],
                    decorationColor: Colors.blue[800],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
