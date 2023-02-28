import 'package:flutter/material.dart';
import 'package:saloon_booking/colors/colors.dart';
import 'package:saloon_booking/model/user_data_model.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  AppUser? user;
  @override
  void initState() {
    super.initState();
    // _loadCounter();
    // OrderTable orderTable = OrderTable.fromJson(_chairCount);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/saloon.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ColoredBox(
                  color: mainColor.withOpacity(0.9),
                  child: Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(14.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundImage: AssetImage(
                              'images/saloon.png',
                            ),
                            radius: 45,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Yasin Khan',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 3,
                          offset: Offset(1, 4),
                          blurRadius: 9)
                    ],
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50)),
                    color: Colors.white),
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: mainColor,
                      ),
                      minLeadingWidth: 26,
                      title: const Text('Edit Profile'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.wallet_giftcard,
                        color: mainColor,
                      ),
                      minLeadingWidth: 26,
                      title: const Text('Wallet'),
                      onTap: () {
                        print('bakti');
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.app_blocking_outlined,
                        color: mainColor,
                      ),
                      minLeadingWidth: 26,
                      title: const Text('Appointments'),
                      onTap: () {},
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
