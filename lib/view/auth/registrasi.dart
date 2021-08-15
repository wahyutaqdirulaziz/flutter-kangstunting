import 'package:flutter/material.dart';
import 'package:kangsunting/view/auth/registrasiviewmodel.dart';

class RegistrasiForm extends StatefulWidget {
  const RegistrasiForm({Key? key}) : super(key: key);

  @override
  _RegistrasiFormState createState() => _RegistrasiFormState();
}

class _RegistrasiFormState extends State<RegistrasiForm> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final c_password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.pink, Colors.amber])),
        child: Padding(
          padding: const EdgeInsets.only(top: 120, left: 24, right: 24),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: name,
                        decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                          labelText: 'Email *',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                          labelText: 'Username*',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: password,
                        decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: c_password,
                        decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                          labelText: 'Password Confirm',
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: FlatButton(
                    child: Text(
                      'Daftar Disini',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      PostRegister.connecAPI(name.text, email.text,
                              password.text, c_password.text)
                          .then((value) {
                        setState(() {
                          print(name.text);
                        });
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
