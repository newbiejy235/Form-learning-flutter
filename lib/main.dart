import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      home: Scaffold(body: Login()),
    );
  }
}

class LatihanTextfield extends StatefulWidget {
  const LatihanTextfield({super.key});

  @override
  State<LatihanTextfield> createState() => _LatihanTextfieldState();
}

class _LatihanTextfieldState extends State<LatihanTextfield> {
  final passwordController = TextEditingController();
  bool togglepass = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: TextField(
          controller: passwordController,
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "masukan password",
            prefixIcon: Icon(Icons.lock),
            suffix: IconButton(
              onPressed: () {
                setState(() {
                  togglepass = !togglepass;
                });
              },
              icon: Icon(Icons.remove_red_eye),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
          keyboardType: TextInputType.text,
          maxLength: 20,
          obscureText: togglepass,
          onSubmitted: (value) => {print(passwordController.text)},
          // onChanged: (value) => {print(value)},
        ),
      ),
    );
  }
}

class LatihanCheckBox extends StatefulWidget {
  const LatihanCheckBox({super.key});

  @override
  State<LatihanCheckBox> createState() => _LatihanCheckBoxState();
}

class _LatihanCheckBoxState extends State<LatihanCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text("Agree"),
      subtitle: Text("Verry agree"),
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.red,
      checkColor: Colors.lightBlueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(30),
      ),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class LatihanRadio extends StatefulWidget {
  const LatihanRadio({super.key});

  @override
  State<LatihanRadio> createState() => _LatihanRadioState();
}

class _LatihanRadioState extends State<LatihanRadio> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text("laki-laki"),
          value: "L",
          groupValue: gender,
          onChanged: (value) => {
            setState(() {
              gender = value;
            }),
          },
        ),
        RadioListTile(
          title: Text("perempuan"),
          value: "P",
          groupValue: gender,
          onChanged: (value) => {
            setState(() {
              gender = value;
            }),
          },
        ),
      ],
    );
  }
}

class LatihanDropDown extends StatefulWidget {
  const LatihanDropDown({super.key});

  @override
  State<LatihanDropDown> createState() => _LatihanDropDownState();
}

class _LatihanDropDownState extends State<LatihanDropDown> {
  String? selectedJurusan;

  List<String> daftarJurusan = ["RPL", "TKJ", "DKV"];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedJurusan,
      hint: Text("Jurusan"),
      // items: [
      //   DropdownMenuItem(value: "TKJ", child: Text('TKJ')),
      //   DropdownMenuItem(value: "RPL", child: Text('RPL')),
      // ],
      items: daftarJurusan.map((val) {
        return DropdownMenuItem(value: val, child: Text(val));
      }).toList(),

      onChanged: (value) {
        setState(() {
          selectedJurusan = value;
        });
      },
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
                              print(username.text);
                              print(password.text);

                            },
                            child: Text("Submit",style: TextStyle(color: Colors.white),),
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
