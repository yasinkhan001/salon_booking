import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:saloon_booking/colors/colors.dart';

class SaloonRegister extends StatefulWidget {
  const SaloonRegister({Key? key}) : super(key: key);

  @override
  State<SaloonRegister> createState() => _SaloonRegisterState();
}

final _formKey = GlobalKey<FormBuilderState>();

class _SaloonRegisterState extends State<SaloonRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("User Registration"),
      //   backgroundColor: mainColor,
      // ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Register as a salon owner",
                    style: TextStyle(color: mainColor),
                  ),
                  const CircleAvatar(
                    radius: 50,
                    foregroundImage: AssetImage('images/saloon.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    color: mainColor,

                    onPressed: () async {
                      // ImagePicker imagePicker = ImagePicker();
                      // img = (await imagePicker.pickImage(
                      //     source: ImageSource.gallery))!;
                      // // print(img!.path);
                      // // mem = await img.readAsBytes();
                      // setState(() {});
                    },
                    child: const Text('Pick Image',
                        style: TextStyle(color: Colors.white)),

                    // controller: _image,
                    // decoration: const InputDecoration(labelText: 'Image'),
                  ),
                  const SizedBox(
                    height: 54,
                  ),
                  FormBuilderTextField(
                    name: "User Name", cursorColor: mainColor,

                    decoration: InputDecoration(
                        hintText: "User Name",
                        labelText: "User Name",
                        focusColor: mainColor,
                        fillColor: mainColor,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: mainColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),

                    // validator: [
                    //   FormBuilderValidators.email(),
                    //   FormBuilderValidators.required(),
                    // ],
                    // name: '',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  FormBuilderTextField(
                    name: "Salon Name", cursorColor: mainColor,

                    decoration: InputDecoration(
                        hintText: "Salon Name",
                        labelText: "Salon Name",
                        focusColor: mainColor,
                        fillColor: mainColor,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: mainColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),

                    // validator: [
                    //   FormBuilderValidators.email(),
                    //   FormBuilderValidators.required(),
                    // ],
                    // name: '',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  FormBuilderTextField(
                    name: "Email", cursorColor: mainColor,

                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        focusColor: mainColor,
                        fillColor: mainColor,
                        prefixIcon: const Icon(
                          Icons.email,
                          color: mainColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),

                    // validator: [
                    //   FormBuilderValidators.email(),
                    //   FormBuilderValidators.required(),
                    // ],
                    // name: '',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  FormBuilderTextField(
                    name: "Address", cursorColor: mainColor,

                    decoration: InputDecoration(
                        hintText: "Address",
                        labelText: "Address",
                        focusColor: mainColor,
                        fillColor: mainColor,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: mainColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),

                    // validator: [
                    //   FormBuilderValidators.email(),
                    //   FormBuilderValidators.required(),
                    // ],
                    // name: '',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  FormBuilderTextField(
                    name: "Phone Number", cursorColor: mainColor,

                    decoration: InputDecoration(
                        hintText: "Phone Number",
                        labelText: "Phone Number",
                        focusColor: mainColor,
                        fillColor: mainColor,
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: mainColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),

                    // validator: [
                    //   FormBuilderValidators.email(),
                    //   FormBuilderValidators.required(),
                    // ],
                    // name: '',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  FormBuilderTextField(
                    name: "Password", cursorColor: mainColor,

                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        focusColor: mainColor,
                        fillColor: mainColor,
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: mainColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),

                    // validator: [
                    //   FormBuilderValidators.email(),
                    //   FormBuilderValidators.required(),
                    // ],
                    // name: '',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  FormBuilderTextField(
                    name: "Confirm Password", cursorColor: mainColor,

                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        labelText: "Confirm Password",
                        focusColor: mainColor,
                        fillColor: mainColor,
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: mainColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),

                    // validator: [
                    //   FormBuilderValidators.email(),
                    //   FormBuilderValidators.required(),
                    // ],
                    // name: '',
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: mainColor,
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
