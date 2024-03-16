import 'package:flutter/material.dart';

void checkvalidator(GlobalKey<FormState> formkey) {
  var formdata = formkey.currentState?.validate();

  if (formdata != true) {
    formkey.currentState!.context;
  }
}
