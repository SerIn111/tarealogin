import 'package:flutter/material.dart';
import 'package:tarealogin/widgets/custom_form_login.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  final correoController = TextEditingController();
  final contraseniaController = TextEditingController();

  //el controlador del Form
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Inicia Sesion')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              CustomFormInput(
                controller: correoController,
                label: 'Correo',
                hintText: 'Introduzca el correo',
                preicono: Icon(Icons.mail),
                validator: (valor){
                  if (valor==null)
                  {
                    return 'El correo es obligatoio';
                  }
                },

              ),
              CustomFormInput(
                controller: contraseniaController,
                label: 'Contraseña',
                hintText: 'Introduzca la contraseña',
                preicono: Icon(Icons.password),
                suicono: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 12.0),
                  child: Icon(Icons.remove_red_eye  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          if (!formkey.currentState!.validate()) return;

          final datos = {
            'correo': correoController.text,
            'contrasenia': contraseniaController.text,
          };

          print(datos);

          // mandar a guardar
        },
      ),
    );
  }
}