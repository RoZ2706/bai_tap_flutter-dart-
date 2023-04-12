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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ).copyWith(
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(Color(0xFF746bde))
        )
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? cb = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        FocusScope.of(context).requestFocus(FocusNode());
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60, bottom: 20, right: 20, left: 20),
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Text('SIGN IN TO YOUR ACCOUNT', style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.bold, fontSize: 20),),
                      Divider(color: Colors.transparent, height: 30,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'roztheleopard@gmail.com',
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,),
                        ),
                      ),
                      Divider(color: Colors.transparent,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '********',
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,),
                        ),
                      ),
                      Divider(color: Colors.transparent,),
                      Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Checkbox(value: cb, onChanged: (value) {
                              setState(() {
                                cb = value;
                              });
                            }),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text('Keep me signed in', style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      Divider(color: Colors.transparent,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(onPressed: () {
                          print('hú');
                        }, child: Text('SIGN IN'), style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                          backgroundColor: MaterialStateProperty.all(Color(0xFF746bde))
                        ),),
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.transparent, height: 10,),
                Text('Forgot your password?', style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        )
      ),
    );
  }
}
