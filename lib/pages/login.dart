import 'package:flutter/material.dart';
import 'package:profile/pages/homePage.dart';
import 'package:profile/pages/register.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login")),
      body: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final username = TextEditingController();
  final password = TextEditingController();
  bool togglepass = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.tealAccent, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.asset("assets/images/anime.jpg", width: 400),
                    ),

                    Center(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                          controller: username,
                          decoration: InputDecoration(
                            labelText: "Username",
                            hintText: "Masukan Username",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Center(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Masukan Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  togglepass = !togglepass;
                                });
                              },
                              icon: Icon(Icons.remove_red_eye),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          maxLength: 20,
                          obscureText: togglepass,
                          onSubmitted: (value) => {print(password.text)},
                        ),
                      ),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.lightBlueAccent,
                              width: 2,
                            ),
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                "/homepage",
                                // arguments: {
                                //   "nama" : username.text,
                                //   "umur" : 10
                                // }
                              );
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 25),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                "/register"
                              );
                            },
                            child: const Text("buat akun"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
