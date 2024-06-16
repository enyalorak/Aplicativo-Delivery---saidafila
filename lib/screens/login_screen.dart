import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Form(
      //key: _formkey,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Cadastro'),
            centerTitle: true,
          ),
          body: Center(

            child: Column(

              children: [

                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 45,
                      child: TextFormField(
                        //controller
                        //validator
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          hintText: 'Nome completo',
                          labelText: 'Nome completo',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      ),
                    ),

                ),
    ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 350,
                    height: 45,
                    child: TextFormField(
                      //controller
                      //validator
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email_rounded),
                        hintText: 'Email',
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      ),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 350,
                    height: 45,
                    child: TextFormField(
                      //controller
                      //validator
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        icon: Icon(Icons.password_sharp),
                        hintText: 'Senha',
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      ),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 350,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {  },
                      child: Text('Enviar'),

                    ),
                )
                    ), ],


        ))));
  }
}
