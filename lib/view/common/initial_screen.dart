import 'package:flutter/material.dart';
import 'package:saloon_booking/colors/colors.dart';
import 'package:saloon_booking/main.dart';
import 'package:saloon_booking/view/client/dashboard.dart';
import 'package:saloon_booking/view/client/home/home.dart';
import 'package:saloon_booking/view/client/profile/user_login.dart';
import 'package:saloon_booking/view/client/profile/user_registration.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  initState() {
    super.initState();
    _init(context);
  }

  _init(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('table')) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => Home()), (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                image: AssetImage('images/saloon.png'),
              ),
              Column(
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Our Saloon services for\n       men and women",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserLogin()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 50.0),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF6F6F6F),
                            blurRadius: 6.0,
                            spreadRadius: 1.0,
                            offset: Offset(0.0, 4.0),
                          ),
                        ],
                        color: mainColor,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
