import 'package:flutter/material.dart';

class CustomFormInput extends StatelessWidget {
  const CustomFormInput({
    super.key,
    required this.label,
    required this.controller,
    this.validator,
    required this.hintText,
    this.icono,
  });

  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final Icon? icono;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: TextInputType.text,
      maxLength: 20,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: hintText,
        label: Text(label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        // suffix: Icon(Icons.person),
        errorText: null, //'El nombre es obligatorio',
        // suffixIcon: Icon(Icons.remove_red_eye),
        prefixIcon: icono,
        
      ),
      // decoration: InputDecoration(
      //   hintText: 'Ingrese su nombre',
      //   label: Text(label),
      //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      //   // suffix: Icon(Icons.person),
      //   errorText: null, //'El nombre es obligatorio',
      //   // suffixIcon: Icon(Icons.remove_red_eye),
      //   prefixIcon: Icon(Icons.person),
        
      // ),
    );
  }
}