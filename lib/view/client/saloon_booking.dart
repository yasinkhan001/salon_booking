import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:saloon_booking/colors/colors.dart';
import 'package:saloon_booking/view/client/checkout.dart';

import 'saloon_data.dart';

class SaloonBooking extends StatefulWidget {
  const SaloonBooking({Key? key}) : super(key: key);

  @override
  State<SaloonBooking> createState() => _SaloonBookingState();
}

class _SaloonBookingState extends State<SaloonBooking> {
  DateTime datetime = DateTime(2022, 12, 24, 5, 30);
  @override
  Widget build(BuildContext context) {
    final hours = datetime.hour.toString().padLeft(2, '0');
    final minutes = datetime.minute.toString().padLeft(2, '0');
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
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //       new MaterialPageRoute(
                  //           builder:(BuildContext context) =>
                  //           new CartItemsScreen()
                  //       )
                  //   );
                  // },

                  child: Stack(
                    children: <Widget>[
                      const IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: mainColor,
                        ),
                        onPressed: null,
                      ),
                      // list.length ==0 ? new Container() :
                      Positioned(
                          child: Stack(
                        children: <Widget>[
                          Icon(Icons.brightness_1,
                              size: 10.0, color: Colors.green[800]),
                          // new Positioned(
                          //     top: 3.0,
                          //     right: 4.0,
                          //     child: new Center(
                          //       child: new Text(
                          //         // list.length.toString(),
                          //         style: new TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 11.0,
                          //             fontWeight: FontWeight.w500
                          //         ),
                          //       ),
                          //     )),
                        ],
                      )),
                    ],
                  ),
                )),
          )
        ],
        // elevation: 0.6,
        leading: const Icon(Icons.arrow_back_ios_outlined),
        iconTheme: const IconThemeData(color: mainColor),
        // backgroundColor: Colors.white,
        title: const Text(
          "Book Service",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Select Service",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var a = 0; a < 6; a++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: SizedBox(
                          height: 90,
                          child: Card(
                            margin: const EdgeInsets.only(top: 12),
                            child: Container(
                              width: 200,
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(45),
                                    child: Image.asset(
                                      "images/beauty.jpg",
                                      height: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const Text(
                                          "Service",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        const Text(
                                          "Rs 1500",
                                          style: TextStyle(
                                              color: mainColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: const [
                                            Icon(
                                              Icons.circle,
                                              size: 8,
                                              color: Color(0xffC4C4C4),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Hair Cut",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(
                                        Icons.add_circle_outline_sharp,
                                        size: 26,
                                        color: mainColor,
                                      ),
                                      Icon(
                                        Icons.remove_circle_outline,
                                        size: 26,
                                        color: mainColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    // Dashboard(),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Select Date",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: mainColor,
                      ),
                      onPressed: () async {
                        final date = await pickDate();
                        if (date == null) return;
                        final newDateTime = DateTime(date.year, date.month,
                            date.day, datetime.hour, datetime.minute);
                        setState(() => datetime = newDateTime);
                      },
                      child: Text(
                          '${datetime.year}/${datetime.month}/${datetime.day}')),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              const Text(
                "Select Time",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: mainColor,
                      ),
                      onPressed: () async {
                        final time = await pickTime();
                        if (time == null) return;
                        final newDateTime = DateTime(
                            datetime.year,
                            datetime.month,
                            datetime.day,
                            time.hour,
                            time.minute);
                        setState(() => datetime = newDateTime);
                      },
                      child: Text('$hours:$minutes')),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Note",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Form(
                  // key: _formKey,
                  child: Container(
                    // margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: "Note", cursorColor: mainColor,

                          decoration: InputDecoration(
                              hintText: "Note",
                              labelText: "Note",
                              focusColor: mainColor,
                              fillColor: mainColor,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3))),

                          // validator: [
                          //   FormBuilderValidators.email(),
                          //   FormBuilderValidators.required(),
                          // ],
                          // name: '',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Total (1 Service)",
                        style: TextStyle(color: mainColor),
                      ),
                      Text(
                        "Rs 1500",
                        style: TextStyle(
                            color: mainColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.message,
                    size: 50,
                    color: mainColor,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Checkout()));
                    },
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: mainColor),
                      child: const Center(
                        child: Text(
                          "Checkout",
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

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: datetime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100));

  Future<TimeOfDay?> pickTime() => showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: datetime.hour, minute: datetime.minute));
}
