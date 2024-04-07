

import 'package:auth_test/core/utills/Decorations.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utills/validation.dart';
import '../../../../../core/utills/Decorations.dart'; 
class MainComponent extends StatelessWidget {
  const MainComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator: Validation().validateName,
          decoration: Decorations().setDecoTextFeild().copyWith( 
            label: Text("Username"),
            prefixIcon: Icon(Icons.person_add_alt_1_sharp),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          validator: Validation().validateEmail,
          decoration: Decorations().setDecoTextFeild().copyWith( 
            label: Text("Email"),
            prefixIcon: Icon(Icons.email_outlined),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.phone,
          validator: Validation().validatePhone,
          decoration: Decorations().setDecoTextFeild().copyWith( 
            label: Text("Phone number"),
            prefixIcon: Icon(Icons.phone),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.visiblePassword,
          validator: Validation().validatePassword,
          decoration: Decorations().setDecoTextFeild().copyWith( 
            label: Text("Password"),
            prefixIcon: Icon(Icons.lock_outline),
          ),
          obscureText: true,
          obscuringCharacter: "*",
        ),
      ],
    );
  }
}

