import 'package:flutter/material.dart';
import 'package:saloon_booking/colors/colors.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                height: 150.0,
                width: 30.0,
                child: GestureDetector(
                    // child: Stack(
                    //   children: <Widget>[
                    //     // const IconButton(
                    //     //   icon: Icon(
                    //     //     Icons.shopping_cart,
                    //     //     color: mainColor,
                    //     //   ),
                    //     //   onPressed: null,
                    //     // ),
                    //     // list.length ==0 ? new Container() :
                    //     // Positioned(
                    //     //     child: Stack(
                    //     //   children: <Widget>[
                    //     //     Icon(Icons.brightness_1,
                    //     //         size: 10.0, color: Colors.green[800]),
                    //     //   ],
                    //     // )),
                    //   ],
                    // ),
                    )),
          )
        ],
        // elevation: 0.6,
        leading: const Icon(Icons.arrow_back_ios_outlined),
        iconTheme: const IconThemeData(color: mainColor),
        // backgroundColor: Colors.white,
        title: const Text(
          "Checkout",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/beauty.jpg",
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Name",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Price',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    //   child: Text(
                    //     "",
                    //     style: Theme.of(context).textTheme.labelLarge,
                    //   ),
                    // ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/beauty.jpg",
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Name",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Price',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    //   child: Text(
                    //     "",
                    //     style: Theme.of(context).textTheme.labelLarge,
                    //   ),
                    // ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/beauty.jpg",
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Name",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Price',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    //   child: Text(
                    //     "",
                    //     style: Theme.of(context).textTheme.labelLarge,
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Total Amount",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Price',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    //   child: Text(
                    //     "",
                    //     style: Theme.of(context).textTheme.labelLarge,
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: mainColor),
                      child: const Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
