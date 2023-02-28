import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saloon_booking/colors/colors.dart';
import 'package:saloon_booking/view/client/saloon_booking.dart';

class SaloonData extends StatefulWidget {
  const SaloonData({Key? key}) : super(key: key);

  @override
  State<SaloonData> createState() => _SaloonDataState();
}

class _SaloonDataState extends State<SaloonData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/beauty.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: iconBack.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios_outlined,
                              color: mainColor,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: iconBack.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(
                                child: FaIcon(
                                  FontAwesomeIcons.heart,
                                  color: mainColor,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: iconBack.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(
                                child: Icon(
                                  Icons.line_weight_sharp,
                                  color: mainColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Plush Beauty Lounge",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "360 Stillwater Rd. Palm City, FL 34990",
                      style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Divider(color: Colors.black),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      "About",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      """Living up to our name Plush Beauty Lounge, the team is highly energetic and creative. We believe that if it matters to you, it matters to us. 

Keeping up to speed with the market’s latest trends, Plush Beauty Lounge recognizes the need for constant improvements. Our team receives regular training from hairdressers all... """
                      "",
                      style: TextStyle(fontSize: 14, color: primaryTextColor),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Opening Hours",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          color: mainColor,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Monday - Friday",
                              style: TextStyle(
                                  fontSize: 14, color: primaryTextColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "08:00am - 03:00pm",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.circle,
                          color: mainColor,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Saturday - Sunday",
                              style: TextStyle(
                                  fontSize: 14, color: primaryTextColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "09:00am - 02:00pm",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Our Services",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage("images/haircut.jpg"),
                              radius: 35,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Haircut",
                              style: TextStyle(
                                  fontSize: 16, color: primaryTextColor),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage("images/saloon.png"),
                              radius: 35,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Nails",
                              style: TextStyle(
                                  fontSize: 16, color: primaryTextColor),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage("images/saloon.png"),
                              radius: 35,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Facial",
                              style: TextStyle(
                                  fontSize: 16, color: primaryTextColor),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage("images/saloon.png"),
                              radius: 35,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Coloring",
                              style: TextStyle(
                                  fontSize: 16, color: primaryTextColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.message,
                    size: 50,
                    color: mainColor,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SaloonBooking()));
                    },
                    child: Container(
                      width: 270,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: mainColor),
                      child: const Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
