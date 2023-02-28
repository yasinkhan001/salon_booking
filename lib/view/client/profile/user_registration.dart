import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saloon_booking/colors/colors.dart';
import 'package:saloon_booking/controller/auth_service.dart';
import 'package:saloon_booking/model/user_data_model.dart';
import 'dart:io';

class UserRegistration extends StatefulWidget {
  const UserRegistration({Key? key}) : super(key: key);

  @override
  _UserRegistration createState() => _UserRegistration();
}

class _UserRegistration extends State<UserRegistration> {
  final TextEditingController userPhone = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController desc = TextEditingController();
  bool isLoading = false;
  XFile? img;
  final _formKey = GlobalKey<FormBuilderState>();
  final List<String> _gender = [
    'Male',
    'Female',
    'Other',
  ]; // Option 2
  String? _selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   iconTheme: IconThemeData(color: Color(0xdc080c52)),
        //   title: const Text(
        //     "Register ",
        //     style: TextStyle(color: Color(0xdc080c52)),
        //   ),
        //   backgroundColor: Color(0xF8FFC313),
        // ),
        body: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Container(
          // color: const Color(0xdc080c52),
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (img?.path != null)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: ColoredBox(
                              color: Colors.black26,
                              child: Image.file(
                                File(img!.path),
                                // File(img!.path),
                                height: 120,
                                width: 120,
                              ),
                            ),
                          )
                        else
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: const ColoredBox(
                                color: Colors.black26,
                                child: Padding(
                                  padding: EdgeInsets.all(25.0),
                                  child: Icon(
                                    Icons.person,
                                    size: 55,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        MaterialButton(
                          color: mainColor,

                          onPressed: () async {
                            ImagePicker imagePicker = ImagePicker();
                            img = (await imagePicker.pickImage(
                                source: ImageSource.gallery))!;
                            print(img!.path);
                            // mem = await img.readAsBytes();
                            setState(() {});
                          },
                          child: const Text('Pick Image',
                              style: TextStyle(color: Color(0xdc080c52))),

                          // controller: _image,
                          // decoration: const InputDecoration(labelText: 'Image'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      // style: Colors.white,
                      controller: userName,
                      // obscureText: true,
                      validator: (na) {
                        return !(na!.isNotEmpty) ? "Put your name first" : null;
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: mainColor,
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: Colors.red)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          labelText: 'Name',
                          labelStyle: TextStyle(color: mainColor),
                          hintText: 'Name',
                          hintStyle: TextStyle(color: mainColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      // style: inputFieldTextColor,
                      controller: email,
                      validator: (value) => EmailValidator.validate(value!)
                          ? null
                          : "Please enter a valid email",
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
                              borderSide: BorderSide(color: mainColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: mainColor),
                          hintText: 'Enter Email',
                          hintStyle: TextStyle(color: mainColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      // style: inputFieldTextColor,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: userPhone,
                      validator: (value) {
                        return !(value!.length > 10 && value.length < 12)
                            ? 'Phone number should be 11 digits long'
                            : null;
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.contact_phone_outlined,
                            color: mainColor,
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          labelText: 'Contact',
                          labelStyle: TextStyle(color: mainColor),
                          hintText: 'Contact Number',
                          hintStyle: TextStyle(color: mainColor)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      // style: inputFieldTextColor,
                      controller: pass,
                      obscureText: true,
                      validator: (pa) {
                        return !(pa!.length > 5)
                            ? 'Password should be 6 digits long'
                            : null;
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.key,
                            color: mainColor,
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: mainColor)),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: mainColor),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: mainColor)),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: mainColor,
                        border: Border.all(color: mainColor)),
                    child: DropdownButton(
                      hint: Row(
                        children: const [
                          Text(
                            'Select Gender',
                            style: TextStyle(color: mainColor),
                          ),
                        ],
                      ),
                      //
                      isExpanded: true,
                      value: _selectedGender,

                      underline: Container(),

                      items: _gender.map((item) {
                        return DropdownMenuItem<String>(
                            value: item,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  item,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ));
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedGender = newValue.toString();
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      // style: inputFieldTextColor,
                      controller: desc,
                      validator: (na) {
                        return !(na!.isNotEmpty)
                            ? "Put your descriptions first"
                            : null;
                      },
                      maxLines: 5,
                      decoration: const InputDecoration(
                          // prefixIcon: Icon(
                          //   Icons.email_outlined,
                          //   color: Colors.white,
                          // ),
                          focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.all(
                              //   Radius.circular(40),
                              // ),
                              borderSide: BorderSide(color: mainColor)),
                          enabledBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.all(
                              //   Radius.circular(40),
                              // ),
                              borderSide: BorderSide(color: mainColor)),
                          labelText: 'Descriptions',
                          labelStyle: TextStyle(color: mainColor),
                          hintText: 'Descriptions',
                          hintStyle: TextStyle(color: mainColor)),
                    ),
                  ),
                  !isLoading
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: ElevatedButton(
                              // style: ElevatedButton.styleFrom(primary: Colors.pink),
                              // textColor: Colors.white,
                              // color: Colors.blue,

                              style: ElevatedButton.styleFrom(
                                primary: mainColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  submit();
                                }
                              },
                            ),
                          ),
                        )
                      : SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),

                  // ElevatedButton(
                  //   // style: ElevatedButton.styleFrom(primary: Colors.pink),
                  //   // textColor: Colors.white,
                  //   // color: Colors.blue,
                  //
                  //   child: Text('get Table'),
                  //   onPressed: () async {
                  //     chair = (await getText())!;
                  //     setState(() {});
                  //   },
                  // ),
                  // Text(chair),
                  // Text(desc),
                ],
              )),
        ),
      ),
    ));
  }

  void submit() async {
    if (img != null && _selectedGender != null) {
      // setState(() {
      //   isLoading = true;
      // });

      await AuthServices().register(context,
          path: img!.path,
          extension: img!.path.split('.').last,
          name: '${DateTime.now()}',
          data: AppUser(
              name: userName.text,
              email: email.text,
              phone: userPhone.text,
              description: desc.text,
              gender: _selectedGender,
              password: pass.text,
              img: img!.path));
      // setState(() {
      //   isLoading = false;
      // });

    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          'Please fill all fields first',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ));
    }
  }
}
