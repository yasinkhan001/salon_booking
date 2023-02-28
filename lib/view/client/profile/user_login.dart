import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:saloon_booking/colors/colors.dart';
import 'package:saloon_booking/controller/auth_service.dart';
import 'package:saloon_booking/view/client/dashboard.dart';
import 'package:saloon_booking/view/client/home/home.dart';
import 'package:saloon_booking/view/client/profile/select_type.dart';
import 'package:saloon_booking/view/client/profile/user_registration.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key, this.isAdmin = false}) : super(key: key);
  final bool isAdmin;

  @override
  State<UserLogin> createState() => _UserLoginState();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _UserLoginState extends State<UserLogin> {
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("User Registration"),
      //   backgroundColor: mainColor,
      // ),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                    // image: DecorationImage(
                    //   image: AssetImage(
                    //     'images/saloon.png',
                    //   ),
                    //   fit: BoxFit.fill,
                    // ),
                    ),
                child: ColoredBox(
                  color: mainColor.withOpacity(0.9),
                  child: Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundImage: AssetImage(
                              'images/saloon.png',
                            ),
                            radius: 45,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 40),
                          child: const Text(
                            "WELCOME BACK!",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.all(14.0),
                        //   child: Text(
                        //     'Yasin Khan',
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 450,
              // MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 3,
                        offset: Offset(1, 4),
                        blurRadius: 9)
                  ],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                  color: Colors.white),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      const Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Form(
                          key: _formKey,
                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                TextFormField(
                                  // style: mainColor,
                                  controller: email,
                                  // obscureText: true,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: mainColor,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(40),
                                          ),
                                          borderSide:
                                              BorderSide(color: mainColor)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(40),
                                          ),
                                          borderSide:
                                              BorderSide(color: mainColor)),
                                      labelText: 'Email',
                                      labelStyle: TextStyle(color: mainColor),
                                      hintText: 'Enter Email',
                                      hintStyle: TextStyle(color: mainColor)),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                TextFormField(
                                  // style: inputFieldTextColor,
                                  controller: pass,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.key,
                                      color: mainColor,
                                    ),
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.all(
                                    //       Radius.circular(40),
                                    //     ),
                                    //     borderSide: BorderSide(color: Colors.white)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                        borderSide:
                                            BorderSide(color: mainColor)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                        borderSide:
                                            BorderSide(color: mainColor)),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(color: mainColor),
                                    hintText: 'Enter Password',
                                    hintStyle: TextStyle(color: mainColor),
                                  ),
                                ),
                                const SizedBox(height: 40),
                                isLoading
                                    ? const SizedBox(
                                        height: 60,
                                        child: Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      )
                                    : ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: mainColor,
                                          shape: RoundedRectangleBorder(
                                              //to set border radius to button
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                        ),
                                        child: const Text(
                                          'Login',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xdc080c52)),
                                        ),
                                        onPressed: () async {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            setState(() {
                                              isLoading = true;
                                            });
                                            await AuthServices().login(context,
                                                email: email.text,
                                                password: pass.text);
                                            setState(() {
                                              isLoading = false;
                                            });
                                          }
                                        },
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      !widget.isAdmin
                          ? Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Don't have an account? ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SelectType()));
                                    },
                                    child: const Text(
                                      "REGISTER",
                                      style: TextStyle(
                                        color: mainColor,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Dashboard()));
                                    },
                                    child: const Text(
                                      "GUEST USER",
                                      style: TextStyle(
                                        color: mainColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              color: const Color(0xdc080c52),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
