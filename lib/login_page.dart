import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tarealogin/widgets/custom_form_login.dart';

class LogInPage extends StatefulWidget {
  LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
                  if (valor=='')
                  {
                    return 'El correo no debe de estar vacio';
                  }
                  else if (valor!='sergio.inestroza@unah.hn')
                  {
                    return 'El correo es incorrecto';
                  }
                },
                texto: false,
              ),
              CustomFormInput(
                controller: contraseniaController,
                label: 'Contraseña',
                hintText: 'Introduzca la contraseña',
                texto: true,
                preicono: Icon(Icons.password),
                suicono: Padding(
                  padding: EdgeInsetsDirectional.only(end: 12.0),
                  child: ElevatedButton(
                    onPressed: (){
                      Icon(Icons.remove_red_eye);
                      setState(() {
                        
                      });
                    }, 
                    child: Icon(Icons.remove_red_eye_outlined),
                    ),
                ),
                validator: (valor){
                  if (valor == '')
                  {
                    return 'La contraseña no debe de estar vacia';
                  }
                  else if (valor!='20182002621')
                    {
                      return 'la contraseña es incorrecta';
                      
                    }
                },
                
              ),
              FloatingActionButton(
                child: Text(
                  'Iniciar sesion', 
                  style: TextStyle(
                    fontSize: 20
                    ),
                  ),
                onPressed: () {
                  if (!formkey.currentState!.validate()) return;

                  final datos = {
                    'correo': correoController.text,
                    'contrasenia': contraseniaController.text,
                  };

                  print(datos);

                },
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.save),
      //   onPressed: () {
      //     if (!formkey.currentState!.validate()) return;

      //     final datos = {
      //       'correo': correoController.text,
      //       'contrasenia': contraseniaController.text,
      //     };

      //     print(datos);

      //     // mandar a guardar
      //   },
      // ),
    );
  }
}