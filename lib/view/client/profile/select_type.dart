import 'package:flutter/material.dart';
import 'package:saloon_booking/colors/colors.dart';
import 'package:saloon_booking/view/client/profile/user_registration.dart';
import 'package:saloon_booking/view/owner/SaloonRegister.dart';

class SelectType extends StatefulWidget {
  const SelectType({Key? key}) : super(key: key);

  @override
  State<SelectType> createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Who are you ?",
              style: TextStyle(fontSize: 22, color: mainColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SaloonRegister()));
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: mainColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xb9c63135),
                            blurRadius: 12.0,
                            spreadRadius: 1.0,
                            offset: Offset(4.0, 4.0),
                          ),
                        ]),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Owner',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserRegistration()));
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: mainColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xb9c63135),
                            blurRadius: 12.0,
                            spreadRadius: 1.0,
                            offset: Offset(4.0, 4.0),
                          ),
                        ]),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Client',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
