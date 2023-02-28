import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saloon_booking/colors/colors.dart';
import 'package:saloon_booking/controller/auth_service.dart';
import 'package:saloon_booking/view/client/dashboard.dart';
import 'package:saloon_booking/view/client/saloon_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            backgroundColor: mainColor,
            automaticallyImplyLeading: false,
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text('Saloon Home'),
            actions: [
              // Text("Logout"),
              IconButton(
                icon: Icon(Icons.logout_rounded),
                onPressed: () {
                  AuthServices().logout(context);
                },
              ),
            ],

            bottom: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: mainColor,
              title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 40,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusColor: mainColor,
                        hintText: 'Search for something',
                        prefixIcon: Icon(
                          Icons.search,
                          color: mainColor,
                        ),
                        suffixIcon: Icon(
                          Icons.search,
                          color: mainColor,
                        )),
                  ),
                ),
              ),
            ),
            // body: Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: const <Widget>[
            //       Text(
            //         'Main saloon page',
            //       ),
            //     ],
            //   ),
            // ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {},
            //   tooltip: 'Increment',
            //   child: const Icon(Icons.add),
            // ), // This trailing comma makes auto-formatting nicer for build methods.
          )
        ];
      },
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (var a = 0; a < 21; a++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    height: 150,
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SaloonData()))
                      },
                      child: Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  "images/beauty.jpg",
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text(
                                    "saloon name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                      "A blunt cut bob is a shorter hairstyle that's c.."),
                                ],
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              // Dashboard(),
            ],
          ),
        ),

        // BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: FaIcon(FontAwesomeIcons.houseUser),
        //       label: "",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: FaIcon(FontAwesomeIcons.locationArrow),
        //       label: "",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: FaIcon(FontAwesomeIcons.user),
        //       label: "",
        //     )
        //   ],
        // ),
      ),
    );
  }
}
