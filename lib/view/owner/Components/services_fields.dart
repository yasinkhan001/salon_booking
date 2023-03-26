import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:saloon_booking/colors/colors.dart';

class ServicesFields extends StatefulWidget {
  const ServicesFields({required this.onChange, Key? key}) : super(key: key);
  final void Function(Map<String, dynamic> service) onChange;

  static final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  State<ServicesFields> createState() => _ServicesFieldsState();
}

class _ServicesFieldsState extends State<ServicesFields> {
  TextEditingController price = TextEditingController();
  TextEditingController service = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AlertDialog(
        insetPadding: const EdgeInsets.symmetric(vertical: 250, horizontal: 40),
        content: Form(
          key: ServicesFields._formKey,
          child: Column(
            children: [
              FormBuilderTextField(
                name: "Service Name", cursorColor: mainColor,
                controller: service,
                decoration: InputDecoration(
                    hintText: "Service Name",
                    labelText: "Service Name",
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

                validator: (a) {
                  if (a!.isEmpty) {
                    return "Please add service name";
                  }
                  return null;
                },
                // name: '',
              ),
              const SizedBox(
                height: 20,
              ),
              FormBuilderTextField(
                name: "Service price", cursorColor: mainColor,
                controller: price,
                decoration: InputDecoration(
                    hintText: "Service price",
                    labelText: "Service price",
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
                validator: (a) {
                  if (a!.isEmpty) {
                    return "Please add service price";
                  }
                  return null;
                },

                // validator: [
                //   FormBuilderValidators.email(),
                //   FormBuilderValidators.required(),
                // ],
                // name: '',
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (ServicesFields._formKey.currentState!.validate()) {
                widget.onChange({"service": service.text, "price": price.text});
                Navigator.pop(context);
              }
            },
            child: const Text("Add"),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    service.dispose();
    price.dispose();
  }
}
